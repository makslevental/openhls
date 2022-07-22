import ast
import re
from dataclasses import dataclass
from typing import Tuple, Dict

from torch_mlir._mlir_libs._torchMlir import get_val_identifier

from bragghls.ops import OPS, OpType
from torch_mlir._mlir_libs._mlir.ir import Context, Module, OpView, FunctionType


def traverse_op_region_block_iterators(op, handler):
    for i, region in enumerate(op.regions):
        for j, block in enumerate(region):
            for k, child_op in enumerate(block):
                handler(child_op)
                traverse_op_region_block_iterators(child_op, handler)


def parse_attrs_to_dict(attrs):
    d = {}
    for named_attr in attrs:
        if named_attr.name in {"lpStartTime", "value"}:
            d[named_attr.name] = ast.literal_eval(
                str(named_attr.attr).split(":")[0].strip()
            )
        elif named_attr.name in {"opr"}:
            d[named_attr.name] = ast.literal_eval(str(named_attr.attr))
        else:
            d[named_attr.name] = ast.literal_eval(str(named_attr.attr).replace('"', ""))
    return d


reg_idents = re.compile(r"(%[\da-z_]*|([0-9]*[.])+[0-9]+)")
reg_start_time = re.compile(r"lpStartTime = (\d+)")
reg_opr = re.compile(r'opr = "(.*?)"')
reg_pe = re.compile(r'pe = "(.*?)"')
reg_op_id = re.compile(r'op_id = "(.*?)"')


def module_ops_iter(module_str):
    for line in module_str.splitlines():
        if "op_id" not in line:
            continue
        yield line


@dataclass
class OpIdData:
    res_val: str
    opr: OpType
    pe_idx: Tuple[int, ...]
    op_inputs: Dict[str, str]
    start_time: int

    def __iter__(self):
        return iter(
            (self.res_val, self.opr, self.pe_idx, self.op_inputs, self.start_time)
        )

    def __post_init__(self):
        object.__setattr__(self, "start_time", (self.start_time or 0) + 1)

    def __getitem__(self, item):
        return tuple(self)[item]


def parse_mlir_module(module_str):
    vals = set()
    csts = {}
    pe_idxs = set()
    op_id_data = {}
    func_args = None
    returns = None
    for line in module_str.splitlines():
        idents = reg_idents.findall(line)
        if "op_id" in line:
            op_id = reg_op_id.findall(line)[0]
            opr = reg_opr.findall(line)[0]
            pe_idx = ast.literal_eval(reg_pe.findall(line)[0])
            pe_idxs.add(pe_idx)

            res_val = idents[0][0]
            op_inputs = [inp[0] for inp in idents[1:]]
            if opr == "arith.constant":
                op_inputs = [float(op_inputs[0])]
                csts[res_val] = float(op_inputs[0])
            else:
                vals.update(set(op_inputs))

            start_time = reg_start_time.findall(line)
            if start_time:
                start_time = int(start_time[0])
            else:
                start_time = None
            opr = OPS[opr]
            op_id_data[op_id, opr] = OpIdData(
                res_val, opr, pe_idx, op_inputs, start_time
            )
        elif "func.func" in line:
            assert idents
            func_args = set(idn[0] for idn in idents)
        elif "return" in line:
            start_time = reg_start_time.findall(line)
            if start_time:
                start_time = int(start_time[0])
            else:
                start_time = None
            returns, return_time = idents[0][0], start_time
            if not isinstance(returns, list):
                returns = [returns]
                for r in returns:
                    vals.add(r)
        else:
            continue
    assert func_args and returns
    vals -= func_args
    return op_id_data, func_args, returns, return_time, vals, csts, pe_idxs


def parse_mlir_module_using_mlir(module_str):
    ctx = Context()
    ctx.allow_unregistered_dialects = True
    module = Module.parse(module_str, ctx)
    op = module.operation

    def handler(mlir_op):
        if not isinstance(mlir_op, OpView) or (
            hasattr(mlir_op, "type") and isinstance(mlir_op.type, FunctionType)
        ):
            return

        if list(mlir_op.results) and hasattr(mlir_op, "operands"):
            res = get_val_identifier(mlir_op.results[0]._CAPIPtr)
            args = [get_val_identifier(op._CAPIPtr) for op in mlir_op.operands]
            print(
                res,
                mlir_op.operation.name,
                args,
                parse_attrs_to_dict(mlir_op.attributes),
            )

    traverse_op_region_block_iterators(op, handler)


# MLIRContext context;
# FailureOr<IntegerPolyhedron> fac;
#
# fac = parseIntegerSetToFAC("(x)", &context, false);
# EXPECT_TRUE(failed(fac))
# << "should not accept strings with no constraint list";
