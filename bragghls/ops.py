from dataclasses import dataclass
from enum import Enum
from typing import Tuple

from bragghls import state
from bragghls.state import idx_to_str
from bragghls.util import extend_idx


def overload_op(type):
    def f(*args: "Tuple[Val]"):
        return create_new_op(type, args)

    return f


class OpType(Enum):
    ADD = "fadd"
    SUB = "fsub"
    MUL = "fmul"
    DIV = "fdiv"
    GT = "fcmpugt"
    NEG = "fneg"
    RELU = "frelu"
    CST = "arith.constant"
    COPY = "copy"


LATENCIES = {
    OpType.ADD: 4,
    OpType.SUB: 4,
    OpType.MUL: 3,
    OpType.DIV: 3,
    OpType.GT: 1,
    OpType.NEG: 1,
    OpType.RELU: 1,
    OpType.CST: 0,
    OpType.COPY: 1,
}

OPS = {op.value: op for op in OpType}


@dataclass(frozen=True)
class Val:
    name: str = ""
    id: str = None

    def __post_init__(self):
        state.state.incr_var()
        if self.id is None:
            object.__setattr__(self, "id", str(state.state.curr_var_id))

    __add__ = overload_op(OpType.ADD)
    __sub__ = overload_op(OpType.SUB)
    __mul__ = overload_op(OpType.MUL)
    __truediv__ = overload_op(OpType.DIV)
    __gt__ = overload_op(OpType.GT)
    __neg__ = overload_op(OpType.NEG)

    def __repr__(self):
        return f"{state.state.val_prefix}val_{self.id}"


@dataclass(frozen=True)
class Op:
    type: OpType
    pe_idx: Tuple[int, ...]
    op_id: int
    args: Tuple[str]
    res: str
    arity: int = 0

    def __post_init__(self):
        if self.type in {OpType.ADD, OpType.SUB, OpType.MUL, OpType.DIV, OpType.GT}:
            object.__setattr__(self, "arity", 2)
        else:
            object.__setattr__(self, "arity", 1)
        object.__setattr__(self, "op_id", state.state.curr_op_id)
        state.state.incr_op_id()

    def __repr__(self):
        args = (", ".join(map(str, self.args)),)
        attrs = {"pe": self.pe_idx, "opr": self.type.value, "op_id": self.op_id}
        attrs_str = ", ".join([f'{n} = "{v}"' for n, v in attrs.items()])
        if self.type == OpType.CST:
            return f'{self.res} = "{self.type.value}" () {{  {attrs_str}, value = {args[0]} : {state.state.dtype}  }} : () -> {state.state.dtype}'
        else:
            return f'{self.res} = "{self.type.value}" ({", ".join(args)}) {{  {attrs_str}  }} : ({", ".join([state.state.dtype] * self.arity)}) -> {state.state.dtype}'


def make_constant(arg):
    assert isinstance(arg, (float, bool, int)), arg
    arg = str(arg)
    cst_v = Val(id=f'cst_{arg.replace(".", "")}')
    cst_op = Op(
        OpType.CST,
        pe_idx=(-1,),
        op_id=state.state.curr_op_id,
        args=(arg,),
        res=str(cst_v),
    )
    state.state.emit(cst_op)
    # TODO
    # state.state.add_op_res(cst_v, cst_op)
    # state.state.add_edge(cst_op, "CONSTANT", cst_v)
    return cst_v


def create_new_op(
    op_type: OpType, args, *, pe_idx=None, res=None, add_aux_dep=False, res_reg=None
):
    if pe_idx is None:
        pe_idx = state.state.pe_idx
    if res is None:
        res = Val()

    for i, arg in enumerate(args):
        if not isinstance(arg, Val):
            assert isinstance(arg, (float, bool, int)), arg
            args[i] = make_constant(arg)

    op = Op(op_type, pe_idx=pe_idx, op_id=state.state.curr_op_id, args=args, res=res)

    for arg in args:
        if "cst" in arg.id:
            continue
        state.state.add_edge(op, arg, op.res)

    state.state.emit(op)

    if add_aux_dep:
        state.state.maybe_add_aux_dep(pe_idx, op)

    state.state.maybe_add_op(op)
    state.state.map_val_to_pe(res, pe_idx)
    state.state.add_op_res(res, op)

    return res


def Alias(dst: "MemRef", src: "MemRef"):
    from bragghls.memref import MemRef

    assert isinstance(src, MemRef)
    registers_to_copy = src.registers
    dst.registers = registers_to_copy


class FMAC:
    def __init__(self, *pe_idx):
        assert pe_idx
        pe_idx = extend_idx(pe_idx)
        self.pe_idx = pe_idx
        self.res_reg = idx_to_str(pe_idx)
        state.state.debug_print(f"MAC {pe_idx} starts")
        self.most_recent_add = None
        self.most_recent_mul = None

    def _collapse(self, op_type, prev_res, a, b):
        prev_op = state.state.get_arg_src(prev_res)
        res = create_new_op(op_type, (a, b), pe_idx=prev_op.pe_idx, res=prev_res)
        return res

    def Add(self, a, b):
        if self.most_recent_add is None or not state.state.collapse_macs:
            self.most_recent_add = a + b
        else:
            self.most_recent_add = self._collapse(
                OpType.ADD, self.most_recent_add, a, b
            )
        return self.most_recent_add

    def Mul(self, a, b):
        if self.most_recent_mul is None or not state.state.collapse_macs:
            self.most_recent_mul = create_new_op(OpType.MUL, (a, b), add_aux_dep=True)
        else:
            self.most_recent_mul = self._collapse(
                OpType.MUL, self.most_recent_mul, a, b
            )
        return self.most_recent_mul

    def Result(self):
        if state.state.collapse_macs:
            state.state.debug_print(f"MAC {self.pe_idx} ends")
        op_res = Copy(self.most_recent_add)
        return op_res


def ReduceAdd(vals):
    prev_sums = list(vals)
    while len(prev_sums) > 1:
        next_sums = []
        while len(prev_sums) > 1:
            left = prev_sums.pop()
            state.state.pe_idx = state.state.get_arg_src(left).pe_idx
            next_sums.append(left + prev_sums.pop())
        if len(prev_sums) == 1:
            left = next_sums[-1]
            state.state.pe_idx = state.state.get_arg_src(left).pe_idx
            next_sums[-1] = left + prev_sums[0]
        prev_sums = next_sums
    return prev_sums[0]


ReLU = lambda x: overload_op(OpType.RELU)(x)
Copy = lambda x: overload_op(OpType.COPY)(x)
