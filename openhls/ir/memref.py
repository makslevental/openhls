import sys
from dataclasses import dataclass
from typing import Tuple

import numpy as np

from openhls.compiler import state
from openhls.ir.ops import Val, make_constant, ReduceAdd, ReduceMax
from openhls.util import idx_to_str

MemRefIndex = Tuple[int, ...]


@dataclass(frozen=True)
class MemRefVal(Val):
    id: MemRefIndex = None

    def __post_init__(self):
        assert self.id
        object.__setattr__(self, "id", idx_to_str(self.id))

    def __repr__(self):
        return f"%{self.name}_{self.id}"


class MemRef:
    def __init__(self, name, *shape, input=False, output=False):
        self.arr_name = name
        self.shape = shape
        self.registers = np.empty(shape, dtype=object)
        self.input = input
        self.output = output
        if self.input:
            for idx, v in np.ndenumerate(self.registers):
                self[idx]

    def __setitem__(self, index, value):
        assert not self.input
        if isinstance(value, (float, bool, int)):
            value = make_constant(value)
        self.registers[index] = value

    def zero(self):
        for idx in np.ndindex(*self.shape):
            self.registers[idx] = make_constant(0.0)

    def __getitem__(self, index: MemRefIndex):
        if self.registers[index] is None:
            assert self.input
            v = MemRefVal(self.arr_name, index)
            state.state.add_memref_arg(v)
            self.registers[index] = v

        v = self.registers[index]
        return v

    def reshape(self, *shape):
        self.registers = self.registers.reshape(shape)
        return self

    @property
    def val_names_map(self):
        assert self.input or self.output
        val_names = {}
        if self.input:
            for idx in np.ndindex(*self.shape):
                val_names[idx] = f"%{self.arr_name}_{idx_to_str(idx)}"
        elif self.output:
            assert len(self.registers)
            for idx, val in np.ndenumerate(self.registers):
                val_names[idx] = val

        return val_names

    @property
    def numel(self):
        return np.prod(self.shape)

    def reduce_add(self):
        return ReduceAdd(list(self.registers.flatten()))

    def reduce_max(self):
        return ReduceMax(list(self.registers.flatten()))

    def alias(self, other_memref, offsets=None, sizes=None, strides=None):
        assert isinstance(other_memref, MemRef)
        if offsets is not None and sizes is not None and strides is not None:
            subview = []
            for o, si, st in zip(offsets, sizes, strides):
                subview.append(slice(o, o + si, st))
            print("subview", subview, file=sys.stderr)
            print("before subview", self.registers.shape, file=sys.stderr)
            self.registers = other_memref.registers[tuple(subview)]
            print("aftier subview", self.registers.shape, file=sys.stderr)
        else:
            self.registers = other_memref.registers


class GlobalMemRef:
    def __init__(self, global_name, global_array: np.ndarray):
        self.name = global_name
        self.global_array = global_array
        self.shape = global_array.shape
        self.vals = np.empty(self.shape, dtype=object)
        for idx, v in np.ndenumerate(global_array):
            v = MemRefVal(f"{self.name}", idx)
            state.state.add_global_memref_arg(v)
            self.vals[idx] = v

    @property
    def val_names_map(self):
        val_names = {}
        for idx, val in np.ndenumerate(self.vals):
            val_names[idx] = val

        return val_names

    def __getitem__(self, index: MemRefIndex):
        if isinstance(index, int):
            index = (index,)
        return self.vals[index]

    @property
    def numel(self):
        return np.prod(self.shape)

    def reduce_max(self):
        return ReduceMax(list(self.vals.flatten()))
