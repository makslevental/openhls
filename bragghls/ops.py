from dataclasses import dataclass
from enum import Enum
from functools import reduce
from typing import Tuple, Any

from bragghls import state
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
    copy = overload_op(OpType.COPY)
    relu = overload_op(OpType.RELU)

    def __repr__(self):
        return f"{state.state.val_prefix}val_{self.id}"


@dataclass(frozen=True)
class Op:
    type: OpType
    pe_idx: Tuple[int, ...]
    op_id: int
    args: Tuple[Any, ...]
    res: str
    overload: str = None
    attrs: dict = None

    def __post_init__(self):
        if state.state is not None:
            object.__setattr__(self, "op_id", state.state.curr_op_id)
            state.state.incr_op_id()

    def _make_args_attrs(self):
        args_str = ", ".join(map(str, self.args))
        attrs = {
            "pe": self.pe_idx,
            "opr": self.type.value
            if self.overload is None
            else f"{self.type.value}.{self.overload}",
            "op_id": self.op_id,
        }
        if self.attrs:
            attrs.update(self.attrs)
        attrs_str = ", ".join([f'{n} = "{v}"' for n, v in attrs.items()])
        return args_str, attrs_str

    def __repr__(self):
        args_str, attrs_str = self._make_args_attrs()
        return f"{self.type.value}({args_str}) {{{attrs_str}}}"

    def emit(self):
        args_str, attrs_str = self._make_args_attrs()
        if self.type == OpType.CST:
            return f'{self.res} = "{self.type.value}" () {{  {attrs_str}, value = {self.args[0]} : {state.state.dtype}  }} : () -> {state.state.dtype}'
        else:
            return f'{self.res} = "{self.type.value}" ({args_str}) {{  {attrs_str}  }} : ({", ".join([state.state.dtype] * len(self.args))}) -> {state.state.dtype}'


FMAC_LATENCY = lambda n_args: ((n_args - 1) // 2) * 4 + 3 - 1


class Latencies:
    latencies = {
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
    fmacs = set()

    def __getitem__(self, op: Op):
        if op.type == OpType.FMAC:
            return FMAC_LATENCY(len(op.args) - 1)
        else:
            return self.latencies[op.type]

    def add(self, op):
        assert (
            isinstance(op, tuple)
            and len(op) == 2
            and op[0] == OpType.FMAC
            and isinstance(op[1], int)
        )
        self.fmacs.add(op[1])

    def items(self):
        return tuple(
            list(self.latencies.items())
            + [(f"fmac.{n_args}", FMAC_LATENCY(n_args)) for n_args in self.fmacs]
        )


LATENCIES = Latencies()

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
        state.state.emit(cst_op.emit())
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
        op_type,
        pe_idx=pe_idx,
        op_id=state.state.curr_op_id,
        args=tuple(args),
        res=res,
        overload=op_overload,
    )

    for arg in args:
        if "cst" in arg.id:
            continue
        state.state.add_edge(op, arg, op.res)

    state.state.emit(op.emit())

    if add_aux_dep:
        state.state.maybe_add_aux_dep(pe_idx, op)

    state.state.maybe_add_op(op)
    state.state.map_val_to_pe(res, pe_idx)
    state.state.add_op_res(res, op)

    return res


class FMAC:
    def __init__(self, *pe_idx):
        assert pe_idx
        pe_idx = extend_idx(pe_idx)
        self.pe_idx = pe_idx
        state.state.debug_print(f"MAC {pe_idx} starts")
        self.mul_vals = []
        self.add_vals = []

    def Add(self, a, b):
        self.add_vals.extend((a, b))
        return Val(f"FAKE_ADD_{self.pe_idx}({a}, {b})")

    def Mul(self, a, b):
        self.mul_vals.extend((a, b))
        return Val(f"FAKE_MUL_{self.pe_idx}({a}, {b})")

    def Result(self):
        init_val = [v for v in self.add_vals if "FAKE" not in v.name]
        assert len(init_val) == 1
        args = init_val + self.mul_vals
        op_res = FMACOp(len(args), self.pe_idx)(*args)
        op_res = op_res.copy()
        return op_res


def chunks(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i : i + n]


def reducer(accum, val):
    state.state.pe_idx = state.state.get_arg_src(val[0]).pe_idx
    if len(val) > 1:
        return accum + [val[0] + val[1]]
    else:
        return accum + [val[0].copy()]


def ReduceAdd(vals):
    pairs = list(chunks(list(vals), 2))
    while len(pairs) > 1:
        pairs = list(chunks(reduce(reducer, pairs, []), 2))
    state.state.pe_idx = state.state.get_arg_src(pairs[0][0]).pe_idx
    return pairs[0][0] + pairs[0][1]


def FMACOp(n_args, pe_idx):
    non_init_args = n_args - 1
    LATENCIES.add((OpType.FMAC, non_init_args))

    def f(*args: "Tuple[Val]"):
        return create_new_op(
            OpType.FMAC,
            args,
            pe_idx=pe_idx,
            add_aux_dep=True,
            op_overload=f"{non_init_args}",
        )

    return f
