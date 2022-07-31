import os
from collections import namedtuple
from dataclasses import dataclass
from functools import reduce

import numpy as np

import bragghls.state
from bragghls.ops import chunks
from bragghls.util import idx_to_str

try:
    from . import flopoco_converter
except:
    import flopoco_converter

WE = int(os.getenv("WE", "4"))
WF = int(os.getenv("WE", "4"))

FPNUMBER = namedtuple("FPNUMBER", "pe_idx")(None)


def reducer(accum, val):
    if len(val) > 1:
        return accum + [val[0] + val[1]]
    else:
        return accum + [val[0].copy()]


def ReduceAdd(vals):
    pairs = list(chunks(list(vals), 2))
    while len(pairs) > 1:
        pairs = list(chunks(reduce(reducer, pairs, []), 2))
    return pairs[0][0] + pairs[0][1]


@dataclass(frozen=True)
class Val:
    ieee: float
    wE: int = WE
    wF: int = WF
    fp: flopoco_converter.FPNumber = None
    name: str = None

    def __post_init__(self):
        if self.fp is None:
            object.__setattr__(
                self, "fp", flopoco_converter.FPNumber(self.ieee, self.wE, self.wF)
            )
        object.__setattr__(self, "name", str(self))

    def __mul__(self, other: "Val"):
        v = mul(self, other)
        return v

    def __eq__(self, other):
        return self.fp == other.fp

    def __add__(self, other: "Val"):
        v = add(self, other)
        return v

    # def __sub__(self, other: "Val"):
    #     v = sub(self, other)
    #     return v

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
        return str(f"<IEEE {self.ieee}> {self.fp}")


def mul(x: Val, y: Val):
    assert x.wE == y.wE
    assert x.wF == y.wF
    return Val(x.ieee * y.ieee, x.wE, x.wF, x.fp * y.fp)


def add(x: Val, y: Val):
    assert x.wE == y.wE
    assert x.wF == y.wF
    return Val(x.ieee + y.ieee, x.wE, x.wF, x.fp + y.fp)


# def sub(x: Val, y: Val):
#     assert x.wE == y.wE
#     assert x.wF == y.wF
#     diff = x.ieee + y.ieee
#     return Val(diff, x.wE, x.wF, x.fp - y.fp)


class MemRef:
    def __init__(
        self, name, *shape, input=False, output=False, registers=None, wE=WE, wF=WF
    ):
        self.arr_name = name
        self.shape = shape
        self.pe_index = shape
        if registers is not None:
            self.registers = registers
        else:
            self.registers = np.empty(shape, dtype=object)
        self.input = input
        self.output = output
        self.wE = wE
        self.wF = wF

    def __setitem__(self, index, value):
        assert not self.input
        if isinstance(value, (float, int)):
            value = Val(value, self.wE, self.wF)
        self.registers[index] = value

    def __getitem__(self, index):
        v = self.registers[index]
        return v

    def reshape(self, *shape):
        self.registers = self.registers.reshape(shape)
        return self

    @property
    def numel(self):
        return np.prod(self.shape)

    def reduce_add(self):
        return ReduceAdd(self.registers.flatten())

    @property
    def val_names_map(self):
        assert self.input or self.output
        val_names = {}
        for idx, val in np.ndenumerate(self.registers):
            val_names[f"%{self.arr_name}_{idx_to_str(idx)}"] = val

        return val_names

    def alias(self, other_memref):
        assert isinstance(other_memref, MemRef)
        self.registers = other_memref.registers

    @staticmethod
    def from_memref(memref, wE, wF, vals: np.ndarray = None):
        registers = None
        if vals is not None:
            assert vals.shape == memref.shape
            registers = np.empty(memref.shape, dtype=object)
            for idx, x in np.ndenumerate(vals):
                v = Val(x, wE, wF)
                try:
                    bragghls.state.state.add_val_source(v, FPNUMBER)
                except:
                    pass
                registers[idx] = v
        return MemRef(
            memref.arr_name,
            memref.shape,
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
        self.shape = global_array.shape
        self.vals = np.empty(self.shape, dtype=object)
        for idx, v in np.ndenumerate(global_array):
            v = Val(v, wE, wF)
            try:
                bragghls.state.state.add_val_source(v, FPNUMBER)
            except:
                pass
            self.vals[idx] = v

    @property
    def val_names_map(self):
        val_names = {}
        for idx, val in np.ndenumerate(self.vals):
            val_names[f"%{self.name}_{idx_to_str(idx)}"] = val

        return val_names

    def __getitem__(self, index):
        if isinstance(index, int):
            index = (index,)
        return self.vals[index]

    @property
    def numel(self):
        return np.prod(self.shape)

    @staticmethod
    def from_global_memref(memref, wE, wF):
        return GlobalMemRef(memref.name, global_array=memref.global_array, wE=wE, wF=wF)

    def __repr__(self):
        return str(self.vals)


class FMAC:
    wE = WE
    wF = WF

    def __init__(self, *pe_idx):
        assert pe_idx
        self.pe_idx = pe_idx
        self.result = Val(0, self.wE, self.wF)

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
    for i in range(100):
        fp2bin = flopoco_converter.fp2binstr(4, 4, str(i))
        fpnumber = str(Val(i, 4, 4)).split(" ")[1].split(":")[1].replace(">", "")
        if fp2bin != fpnumber:
            print(i, f"{fp2bin=}", f"{fpnumber=}")
            print(
                flopoco_converter.bin2fp(4, 4, fp2bin),
                flopoco_converter.bin2fp(4, 4, fpnumber),
            )
