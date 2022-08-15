import argparse
import ast
import logging
from _ast import (
    For,
    Subscript,
    FunctionDef,
    Expr,
    Div,
    Return,
    keyword,
    Constant,
    Module, ClassDef,
)
from ast import Assign, Mult, Add, BinOp, Name, Call, IfExp, Compare, Num

import astor

from bragghls.config import LOOP_TILING_FACTOR
from bragghls.ir.parse import parse_mlir_module, reg_idents

logger = logging.getLogger(__name__)


def stringify_node(node):
    return str(astor.code_gen.to_source(node))


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
                        targets=[self.final_assign],
                        value=Call(
                            func=Name(id="fma"),
                            args=[
                                assign1.value.left,
                                assign1.value.right,
                                assign2.value.left,
                            ],
                            keywords=[],
                        ),
                        type_comment=None,
                    )
                    del node.body[i + 2]
                    del node.body[i + 1]

        self.generic_visit(node)
        return node

    def visit_FunctionDef(self, node):
        if node.name == "body":
            self.body_args = node.args.args
            self.visit_body(node)
            self.generic_visit(node)
            if self.has_fma and node.name == "body":
                fma = Name(id="fma")
                node.args.args.append(fma)
                node.body.append(Expr(Return(self.final_assign.value)))
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


class NestedForLoopVisitor(ast.NodeVisitor):
    match = False

    def __init__(self, body_predicate):
        self.body_predicate = body_predicate

    def visit_For(self, node):

        fors = [(i, b) for i, b in enumerate(node.body) if isinstance(b, For)]
        if fors:
            self.generic_visit(node)
        else:
            self.match = self.body_predicate(node.body)


class ReduceForLoops(ast.NodeTransformer):
    @staticmethod
    def body_predicate(nodes):
        res = len(nodes) == 4 and all(isinstance(n, Assign) for n in nodes)
        res = res and isinstance(nodes[0].value, Subscript)
        if not res:
            return None
        dst = nodes[1].value
        res = res and nodes[1].value.slice.elts[0].value == 0
        if not res:
            return None
        res = (
            res
            and dst.value.id == nodes[3].targets[0].value.id
            and nodes[3].targets[0].slice.elts[0].value == 0
        )
        if not res:
            return None

        src = nodes[0].value.value.id
        return dst, src

    def visit_FunctionDef(self, node):
        if node.name == "forward":
            fors = [(i, b) for i, b in enumerate(node.body) if isinstance(b, For)]
            if fors:
                for i, for_loop in fors:
                    nested_for_loop_visitor = NestedForLoopVisitor(self.body_predicate)
                    nested_for_loop_visitor.visit_For(for_loop)
                    if nested_for_loop_visitor.match is not None:
                        dst, src = nested_for_loop_visitor.match
                        node.body[i] = Assign(
                            targets=[dst],
                            value=Call(
                                func=Name(id=f"torch.sum"),
                                args=[Name(id=src)],
                                keywords=[],
                            ),
                            type_comment=None,
                        )
        return node


pat = f"""\
_24 = _13[0, _arg2, _arg3, _arg4]
_25 = _15[0, _arg2, _arg3, _arg4]
_26 = _24 + _25
_18[_arg1, _arg2, _arg3, _arg4] = _26
"""


class CopyParFors(ast.NodeTransformer):
    @staticmethod
    def body_predicate(nodes):
        res = all(isinstance(n, Assign) for n in nodes)
        if not res:
            return None

        res = res and any(
            isinstance(n.value, BinOp)
            or (isinstance(n.value, Call) and "relu" in n.value.func.id)
            for n in nodes
        )
        if not res:
            return None

        return nodes[-1].targets[0].value

    def visit_FunctionDef(self, node):
        if node.name == "forward":
            parfors = [
                (i, b)
                for i, b in enumerate(node.body)
                if isinstance(b, FunctionDef) and b.name == "body"
            ]

            insertion_points = []
            for i, parfor in parfors:
                copy_target = self.body_predicate(parfor.body)
                if copy_target is not None:
                    call = Expr(
                        Call(func=Name(id="SelfCopy"), args=[copy_target], keywords=[])
                    )
                    insertion_points.append((i + 1, call))

            for i, call in reversed(insertion_points):
                node.body.insert(i, call)

        self.generic_visit(node)
        return node


class RemoveDiv(ast.NodeTransformer):
    def visit_FunctionDef(self, node):
        for i, b in enumerate(node.body):
            if (
                isinstance(b, Assign)
                and isinstance(b.value, BinOp)
                and isinstance(b.value.op, Div)
            ):
                node.body[i] = Assign(
                    targets=b.targets,
                    value=Call(
                        func=Name(id=f"Div"),
                        args=[b.value.left, b.value.right],
                        keywords=[],
                    ),
                    type_comment=None,
                )

        self.generic_visit(node)
        return node


class TileLoops(ast.NodeTransformer):
    loops_to_tile = []

    def __init__(self, tile_factor=2):
        self.tile_factor = tile_factor

    def tile_loop(self, parfor, memrefs, top_level):
        first_for_loop = parfor.body[0]
        indvar = first_for_loop.target.id
        tiling_indvar = indvar + "_tiled"

        start, stop, step = first_for_loop.iter.args
        if stop.value < self.tile_factor:
            self.tile_factor = stop.value
        return_stmt = parfor.body[1]

        assert isinstance(return_stmt.value, Return), return_stmt.value
        target_name = return_stmt.value.value.id

        memref_i, memref = memrefs[target_name]
        assert target_name == memref.value.args[0].value
        assert memref.value.args[1].value == 1

        parfor.args.args.insert(0, tiling_indvar)
        memref.value.args.insert(1, Num(self.tile_factor))

        parfor.decorator_list[0].keywords.insert(
            0,
            keyword(
                tiling_indvar,
                ast.Tuple(
                    [
                        start,
                        Constant(self.tile_factor),
                        Constant(1),
                    ]
                ),
            ),
        )

        inner_loop = first_for_loop
        while not isinstance(inner_loop.body[0], Assign):
            inner_loop = inner_loop.body[0]

        for stmt in inner_loop.body:
            if (
                isinstance(stmt, Assign)
                and isinstance(stmt.targets[0], Subscript)
                and stmt.targets[0].value.id == target_name
            ):
                stmt.targets[0].slice.elts.insert(0, Name(tiling_indvar))
            if (
                isinstance(stmt, Assign)
                and isinstance(stmt.value, Subscript)
                and stmt.value.value.id == target_name
            ):
                stmt.value.slice.elts.insert(0, Name(tiling_indvar))

        if (
            isinstance(top_level.body[memref_i + 1], Expr)
            and top_level.body[memref_i + 1].value.func.value.id == target_name
            and top_level.body[memref_i + 1].value.func.attr == "alias"
        ):
            alias = top_level.body[memref_i + 1].value.args[0].id
            del top_level.body[memref_i + 1].value.args[0]
            top_level.body[memref_i + 1].value.func.attr = "zero"
            parfor_idx = top_level.body.index(parfor)
            top_level.body.insert(
                parfor_idx + 1,
                Expr(
                    Call(
                        func=Name(id="ReduceTiling"),
                        args=[Name(target_name), Name(alias)],
                        keywords=[],
                    )
                ),
            )
        else:
            print("wtfbbq")

        first_for_loop.iter.args = [
            BinOp(
                BinOp(
                    Constant(stop.value // self.tile_factor),
                    Mult(),
                    Name(tiling_indvar),
                ),
                Add(),
                start,
            ),
            BinOp(
                Constant(stop.value // self.tile_factor),
                Mult(),
                BinOp(Name(tiling_indvar), Add(), Constant(1)),
            ),
            Constant(1),
        ]

    def visit_FunctionDef(self, node):
        self.generic_visit(node)
        if node.name == "forward":
            memrefs = dict(
                [
                    (b.targets[0].id, (i, b))
                    for i, b in enumerate(node.body)
                    if isinstance(b, Assign)
                    and isinstance(b.value, Call)
                    and isinstance(b.value.func, Name)
                    and b.value.func.id == "MemRef"
                ]
            )
            for parfor in reversed(self.loops_to_tile):
                try:
                    # TODO: this breaks for braggnn because it tries to tile against the output
                    # which doesn't have memref in `memref`
                    self.tile_loop(parfor, memrefs, top_level=node)
                except Exception as e:
                    logger.warning(f"{e}")
                    logger.warning(f"couldn't tile loop {stringify_node(parfor)}")

        else:
            b = node.body[0]
            if (
                isinstance(node.args.args[-1], Name)
                and node.args.args[-1].id == "fma"
                and isinstance(b, For)
                and b.iter.func.id == "range"
                and b.iter.args[1].n > 1
            ):
                self.loops_to_tile.append(node)

        return node


class MoveBodiesOut(ast.NodeTransformer):
    mod_node = None

    def visit_Module(self, node: Module):
        j, forward = next((i, n) for i, n in enumerate(node.body) if isinstance(n, ClassDef) and n.name == "Forward")
        init_fn = forward.body[0]
        forward_fn = forward.body[1]
        parameters = {b.targets[0].id: (i, b) for i, b in enumerate(forward_fn.body) if isinstance(b, Assign) and hasattr(b.value, "func") and hasattr(b.value.func, "id") and b.value.func.id == "Parameter"}
        for i, assign_param in reversed(list(parameters.values())):
            assign_param.targets[0] = Name(f"self.{assign_param.targets[0].id}")
            init_fn.body.insert(1, assign_param)
            del forward_fn.body[i]

        kernel_defs = [(i, b) for i, b in enumerate(forward_fn.body) if isinstance(b, ClassDef)]
        for i, kernel in reversed(list(kernel_defs)):
            kernel_forward = kernel.body[1]
            init_fn.body.insert(1, Assign(
                        targets=[Name(id=f"self.{kernel.name.lower()}")],
                        value=Call(
                            func=Name(id=kernel.name),
                            args=[],
                            keywords=[],
                        ),
                        type_comment=None,
                    ))
            forward_fn.body[i] = Assign(
                        targets=[kernel_forward.body[-1].value],
                        value=Call(
                            func=Name(id=f"self.{kernel.name.lower()}"),
                            args=[],
                            keywords=[ast.keyword(arg.arg, Name(f"self.{arg.arg}" if arg.arg in parameters else Name(arg.arg))) for arg in kernel_forward.args.args[1:]],
                        ),
                        type_comment=None,
                    )
            node.body.insert(j, kernel)

        if isinstance(forward_fn.body[-1].targets[0], Subscript):
            forward_fn.body.append(Return(forward_fn.body[-1].targets[0].value))
        else:
            forward_fn.body.append(Return(forward_fn.body[-1].targets[0]))


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
    # logger.info("Discovering MACs")
    # new_tree = RemoveMAC().visit(new_tree)
    logger.info("Reducing for loops")
    new_tree = ReduceForLoops().visit(new_tree)
    logger.info("Copying parfors")
    new_tree = CopyParFors().visit(new_tree)
    logger.info("Removing div")
    new_tree = RemoveDiv().visit(new_tree)
    if LOOP_TILING_FACTOR > 1:
        logger.info("Tiling loops")
        new_tree = TileLoops(tile_factor=LOOP_TILING_FACTOR).visit(new_tree)
    logger.info("Moving bodies out")
    new_tree = MoveBodiesOut().visit(new_tree)
    return new_tree


def transform_forward_py(fp):
    tree = astor.parse_file(fp)
    new_tree = transform_forward(tree)
    new_fp = f"{fp.replace('.py', '_rewritten.py')}"
    with open(new_fp, "w") as f:
        f.write(astor.code_gen.to_source(new_tree))
    return new_fp


def rewrite_schedule_vals(sched_str, macs_str):
    macs_op_id_data, mac_func_args, _returns, output_map, *_ = parse_mlir_module(
        macs_str
    )
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
        if "return" in line:
            for val, (name, idx) in output_map.items():
                lines.append(f"// output_map;{val}:{name}:{idx}")
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
