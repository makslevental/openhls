from dataclasses import dataclass
from enum import Enum
from functools import reduce
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
    FMAC = "fmac"


FMAC_LATENCY = lambda n_args: ((n_args - 1) // 2) * 4 + 3
LATENCIES = {
    OpType.ADD: 3,
    OpType.SUB: 3,
    OpType.MUL: 2,
    OpType.DIV: 3,
    OpType.GT: 1,
    OpType.NEG: 1,
    OpType.RELU: 1,
    OpType.CST: 0,
    OpType.COPY: 1,
    OpType.FMAC: -1,
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
    overload: str = None

    def __post_init__(self):
        object.__setattr__(self, "op_id", state.state.curr_op_id)
        state.state.incr_op_id()

    def __repr__(self):
        args = (", ".join(map(str, self.args)),)
        attrs = {"pe": self.pe_idx, "opr": self.type.value if self.overload is None else f"{self.type.value}.{self.overload}", "op_id": self.op_id}
        attrs_str = ", ".join([f'{n} = "{v}"' for n, v in attrs.items()])
        if self.type == OpType.CST:
            return f'{self.res} = "{self.type.value}" () {{  {attrs_str}, value = {args[0]} : {state.state.dtype}  }} : () -> {state.state.dtype}'
        else:
            return f'{self.res} = "{self.type.value}" ({", ".join(args)}) {{  {attrs_str}  }} : ({", ".join([state.state.dtype] * len(self.args))}) -> {state.state.dtype}'


CONSTANTS = set()


def make_constant(arg):
    assert isinstance(arg, (float, bool, int)), arg
    arg = str(arg)
    cst_v = Val(id=f'cst_{arg.replace(".", "")}')
    if cst_v not in CONSTANTS:
        cst_op = Op(
            OpType.CST,
            pe_idx=(-1,),
            op_id=state.state.curr_op_id,
            args=(arg,),
            res=str(cst_v),
        )
        state.state.emit(cst_op)
        CONSTANTS.add(cst_v)
    # TODO
    # state.state.add_op_res(cst_v, cst_op)
    # state.state.add_edge(cst_op, "CONSTANT", cst_v)
    return cst_v


def create_new_op(
    op_type: OpType, args, *, pe_idx=None, res=None, add_aux_dep=False, op_overload=None
):
    if pe_idx is None:
        pe_idx = state.state.pe_idx
    if res is None:
        res = Val()

    args = list(args)
    for i, arg in enumerate(args):
        if not isinstance(arg, Val):
            assert isinstance(arg, (float, bool, int)), arg
            args[i] = make_constant(arg)

    op = Op(
        op_type, pe_idx=pe_idx, op_id=state.state.curr_op_id, args=tuple(args), res=res, overload=op_overload
    )

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
        self.first_add = None
        self.mul_vals = []
        self.add_vals = []

    def _collapse(self, op_type, prev_res, a, b):
        prev_op = state.state.get_arg_src(prev_res)
        res = create_new_op(op_type, (a, b), pe_idx=prev_op.pe_idx, res=prev_res)
        return res

    def Add(self, a, b):
        self.add_vals.extend((a, b))
        return Val(f"FAKE_ADD_{self.pe_idx}({a}, {b})")

    def Mul(self, a, b):
        self.mul_vals.extend((a, b))
        return Val(f"FAKE_MUL_{self.pe_idx}({a}, {b})")

    def Result(self):
        from bragghls.memref import MemRefVal

        init_val = [v for v in self.add_vals if isinstance(v, MemRefVal)]
        assert len(init_val) == 1
        args = init_val + self.mul_vals
        op_res = FMACOp(len(args), self.pe_idx)(*args)
        op_res = Copy(op_res)
        return op_res


def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i : i + n]


def reducer(accum, val):
    state.state.pe_idx = state.state.get_arg_src(val[0]).pe_idx
    if len(val) > 1:
        return accum + [val[0] + val[1]]
    else:
        return accum + [Copy(val[0])]


def ReduceAdd(vals):
    pairs = list(chunks(list(vals), 2))
    while len(pairs) > 1:
        pairs = list(chunks(reduce(reducer, pairs, []), 2))
    state.state.pe_idx = state.state.get_arg_src(pairs[0][0]).pe_idx
    return pairs[0][0] + pairs[0][1]


ReLU = lambda x: overload_op(OpType.RELU)(x)
Copy = lambda x: overload_op(OpType.COPY)(x)


def FMACOp(n_args, pe_idx):
    LATENCIES[f"{OpType.FMAC.value}.{n_args - 1}"] = ((n_args - 1)//2) * 3 + 3
    def f(*args: "Tuple[Val]"):
        return create_new_op(OpType.FMAC, args, pe_idx=pe_idx, add_aux_dep=True, op_overload=f"{n_args - 1}")

    return f
