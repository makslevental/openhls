import os
from collections import namedtuple
from dataclasses import dataclass

import numpy as np

import bragghls.state
from bragghls.ops import ReduceAdd
from . import flopoco_converter

WE = int(os.getenv("WE", "4"))
WF = int(os.getenv("WE", "4"))

FPNUMBER = namedtuple("FPNUMBER", "pe_idx")(None)


@dataclass(frozen=True)
class Val:
    ieee: float
    wE: int = WE
    wF: int = WF
    fp: flopoco_converter.FPNumber = None
    name: str = None

    def __post_init__(self):
        object.__setattr__(
            self, "fp", flopoco_converter.FPNumber(self.ieee, self.wE, self.wF)
        )
        object.__setattr__(self, "name", str(self))

    def __mul__(self, other: "Val"):
        v = mul(self, other)
        bragghls.state.state.add_val_source(v, FPNUMBER)
        return v

    def __add__(self, other: "Val"):
        v = add(self, other)
        bragghls.state.state.add_val_source(v, FPNUMBER)
        return v

    def copy(self):
        return self

    def relu(self):
        if self.fp.sign() == 0:
            return self
        else:
            return flopoco_converter.FPNumber(0, self.wE, self.wF)

    # __add__ = overload_op(OpType.ADD)
    # __sub__ = overload_op(OpType.SUB)
    # __mul__ = overload_op(OpType.MUL)
    # __truediv__ = overload_op(OpType.DIV)
    # __gt__ = overload_op(OpType.GT)
    # __neg__ = overload_op(OpType.NEG)
    # copy = overload_op(OpType.COPY)
    # relu = overload_op(OpType.RELU)

    def __repr__(self):
        return str(self.fp)


def mul(x: Val, y: Val):
    assert x.wE == y.wE
    assert x.wF == y.wF
    prod = x.ieee * y.ieee
    return Val(prod, x.wE, x.wF, flopoco_converter.FPNumber(prod, x.wE, y.wF))


def add(x: Val, y: Val):
    assert x.wE == y.wE
    assert x.wF == y.wF
    sum = x.ieee + y.ieee
    return Val(sum, x.wE, x.wF, flopoco_converter.FPNumber(sum, x.wE, y.wF))


class MemRef:
    def __init__(self, name, *shape, input=False, output=False, registers=None):
        self.arr_name = name
        self.curr_shape = shape
        self.prev_shape = shape
        self.pe_index = shape
        if registers is not None:
            self.registers = registers
        else:
            self.registers = np.empty(shape, dtype=object)
        self.input = input
        self.output = output

    def __setitem__(self, index, value):
        assert not self.input
        if isinstance(value, (float, int)):
            value = Val(value, WE, WF)
        self.registers[index] = value

    def __getitem__(self, index):
        v = self.registers[index]
        return v

    def reshape(self, *shape):
        self.registers = self.registers.reshape(shape)
        return self

    @property
    def numel(self):
        return np.prod(self.curr_shape)

    def reduce_add(self):
        return ReduceAdd(self.registers.flatten())

    def alias(self, other_memref):
        assert isinstance(other_memref, MemRef)
        other_memref.registers = self.registers
        return other_memref

    @staticmethod
    def from_memref(memref, wE, wF, vals: np.ndarray = None):
        registers = None
        if vals is not None:
            assert vals.shape == memref.curr_shape
            registers = np.empty(memref.curr_shape, dtype=object)
            for idx, x in np.ndenumerate(vals):
                v = Val(x, wE, wF)
                bragghls.state.state.add_val_source(v, FPNUMBER)
                registers[idx] = v
        return MemRef(
            memref.arr_name,
            memref.curr_shape,
            input=memref.input,
            output=memref.output,
            registers=registers,
        )

    def __repr__(self):
        return str(self.registers)

    def __len__(self):
        return len(self.registers)


class GlobalMemRef:
    def __init__(self, global_name, global_array: np.ndarray, wE=WE, wF=WF):
        self.name = global_name
        self.global_array = global_array
        self.curr_shape = global_array.shape
        self.vals = np.empty(self.curr_shape, dtype=object)
        for idx, v in np.ndenumerate(global_array):
            v = Val(v, wE, wF)
            bragghls.state.state.add_val_source(v, FPNUMBER)
            self.vals[idx] = v

    @property
    def val_names(self):
        return sorted([str(v) for v in self.vals.ravel()])

    def __getitem__(self, index):
        if isinstance(index, int):
            index = (index,)
        return self.vals[index]

    @property
    def numel(self):
        return np.prod(self.curr_shape)

    @staticmethod
    def from_global_memref(memref, wE, wF):
        return GlobalMemRef(memref.name, global_array=memref.global_array, wE=wE, wF=wF)

    def __repr__(self):
        return str(self.vals)


class FMAC:
    def __init__(self, *pe_idx):
        assert pe_idx
        self.pe_idx = pe_idx
        self.result = Val(0, WE, WF)

    def Add(self, a, b):
        self.result = a + b
        return self.result

    def Mul(self, a, b):
        self.result = a * b
        return self.result

    def Result(self):
        return self.result

    def __repr__(self):
        return str(self.result)


if __name__ == "__main__":
    a = Val(1.1, 4, 4)
    b = Val(-2.1, 4, 4)
    print(f"{a * b=}")
    print(a, f"a.relu()={a.relu()}")
    print(b, f"b.relu()={b.relu()}")
