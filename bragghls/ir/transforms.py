import argparse
import ast
import logging
from ast import Assign, Mult, Add, BinOp, Name, Call, IfExp, Compare

import astor

from bragghls.ir.parse import parse_mlir_module, reg_idents

logger = logging.getLogger(__name__)


class RemoveMAC(ast.NodeTransformer):
    body_args = []
    has_fma = False
    final_assign = None

    def visit_body(self, node):
        assigns = [b for b in node.body if isinstance(b, Assign)]
        if len(assigns) > 1:
            for i in range(len(assigns) - 1):
                assign1, assign2 = assigns[i], assigns[i + 1]
                if (
                    isinstance(assign1.value, BinOp)
                    and isinstance(assign1.value.op, Mult)
                    and isinstance(assign2.value, BinOp)
                    and isinstance(assign2.value.op, Add)
                ):
                    self.has_fma = True
                    self.final_assign = assigns[-1].targets[0]
                    node.body[i] = Assign(
                        targets=assign1.targets,
                        value=Call(
                            func=Name(id="fma.Mul"),
                            args=[assign1.value.left, assign1.value.right],
                            keywords=[],
                        ),
                        type_comment=None,
                    )
                    node.body[i + 1] = Assign(
                        targets=assign2.targets,
                        value=Call(
                            func=Name(id="fma.Add"),
                            args=[assign2.value.left, assign2.value.right],
                            keywords=[],
                        ),
                        type_comment=None,
                    )

        self.generic_visit(node)
        return node

    def visit_FunctionDef(self, node):
        if node.name == "body":
            self.body_args = node.args.args
            self.visit_body(node)
            self.generic_visit(node)
            if self.has_fma and node.name == "body":
                fma = Name(id="fma")
                node.body.insert(
                    0,
                    Assign(
                        targets=[fma],
                        value=Call(
                            func=Name(id="FMAC"), args=self.body_args, keywords=[]
                        ),
                        type_comment=None,
                    ),
                )
                node.body.append(
                    Assign(
                        targets=[self.final_assign],
                        value=Call(func=Name(id="fma.Result"), args=[], keywords=[]),
                        type_comment=None,
                    )
                )
                self.has_fma = False

        self.generic_visit(node)
        return node

    def visit_For(self, node):
        return self.visit_body(node)


class RemoveIfExp(ast.NodeTransformer):
    subs = {}
    dels = set()
    body_args = []

    def visit_FunctionDef(self, node):
        if node.name == "body":
            self.body_args = node.args.args
            assigns = [b for b in node.body if isinstance(b, Assign)]
            if len(assigns) > 1:
                for i in range(len(assigns) - 1):
                    assign1, assign2 = assigns[i], assigns[i + 1]
                    if isinstance(assign1.value, Compare) and isinstance(
                        assign2.value, IfExp
                    ):
                        self.dels.add(assign1)
                        self.subs[assign2] = (assign1.value.left,)

        self.generic_visit(node)
        return node

    def visit_Assign(self, node):
        if node in self.dels:
            return None
        elif node in self.subs:
            return Assign(
                targets=node.targets,
                value=Call(
                    func=Name(id=f"{self.subs[node][0].id}.relu"), args=[], keywords=[]
                ),
                type_comment=None,
            )
        else:
            return node


class HoistGlobals(ast.NodeTransformer):
    def visit_FunctionDef(self, node):
        if node.name == "forward":
            assigns = [
                (i, b)
                for i, b in enumerate(node.body)
                if isinstance(b, Assign)
                and isinstance(b.value, Call)
                and isinstance(b.value.func, Name)
                and b.value.func.id == "GlobalMemRef"
            ]
            for i, a in reversed(assigns):
                del node.body[i]
                node.args.args.append(a.targets[0].id)
                node.args.defaults.append(a.value)
        return node


def traverse_mlir_op_region_block_iterators(op, handler):
    for i, region in enumerate(op.regions):
        for j, block in enumerate(region):
            for k, child_op in enumerate(block):
                handler(child_op)
                traverse_mlir_op_region_block_iterators(child_op, handler)


def transform_forward(new_tree):
    logger.info("Hoisting globals to parameters")
    new_tree = HoistGlobals().visit(new_tree)
    logger.info("Substituting ReLUs")
    new_tree = RemoveIfExp().visit(new_tree)
    logger.info("Discovering MACs")
    new_tree = RemoveMAC().visit(new_tree)
    return new_tree


def transform_forward_py(fp):
    tree = astor.parse_file(fp)
    new_tree = transform_forward(tree)
    new_fp = f"{fp.replace('.py', '_rewritten.py')}"
    with open(new_fp, "w") as f:
        f.write(astor.code_gen.to_source(new_tree))
    return new_fp


def rewrite_schedule_vals(sched_str, macs_str):
    macs_op_id_data, mac_func_args, *_ = parse_mlir_module(macs_str)
    sched_op_id_data, sched_func_args, *_ = parse_mlir_module(sched_str)
    assert len(sched_op_id_data) == len(macs_op_id_data) and set(
        macs_op_id_data
    ) == set(sched_op_id_data)
    assert len(mac_func_args) == len(sched_func_args)
    sched_val_to_macs_val = {
        op.res: macs_op_id_data[op_id_opr].res
        for op_id_opr, op in sched_op_id_data.items()
    }
    sched_val_to_macs_val.update(dict(zip(sched_func_args, mac_func_args)))

    def repl(match):
        g = match.group()
        if g in sched_val_to_macs_val:
            return sched_val_to_macs_val[match.group()]
        else:
            assert "arg" in g or float(g) + 1, g
            return g

    lines = []
    for line in sched_str.splitlines():
        line = reg_idents.sub(repl, line)
        lines.append(line)

    return "\n".join(lines)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("fp")
    parser.add_argument("--macs_fp")
    parser.add_argument("--py", action="store_true")
    parser.add_argument("--mlir", action="store_true")
    args = parser.parse_args()
    if args.py:
        transform_forward_py(args.fp)
    if args.mlir:
        sched_module_str = open(args.fp).read()
        macs_module_str = open(args.macs_fp).read()
        rewritten = rewrite_schedule_vals(sched_module_str, macs_module_str)
        open(args.macs_fp.replace("macs", "macs_rewritten"), "w").write(rewritten)
