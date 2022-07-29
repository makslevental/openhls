import itertools
from dataclasses import dataclass
from typing import Tuple

import numpy as np

from bragghls import state
from bragghls.ops import make_constant, Val, ReduceAdd
from bragghls.state import idx_to_str

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
        self.curr_shape = shape
        self.prev_shape = shape
        self.pe_index = shape
        self.registers = np.empty(shape, dtype=object)
        self.input = input
        self.output = output

    def __setitem__(self, index, value):
        if isinstance(value, (float, bool, int)):
            value = make_constant(value)
        assert not self.input
        self.registers[index] = value

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
    def val_names(self):
        assert self.input or self.output
        val_names = []
        if self.input:
            for idx in itertools.product(*[range(s) for s in self.curr_shape]):
                val_names.append(f"%{self.arr_name}_{idx_to_str(idx)}")
        elif self.output:
            assert len(self.registers)
            val_names = sorted([str(v) for v in self.registers.ravel()])

        return sorted(val_names)

    @property
    def numel(self):
        return np.prod(self.curr_shape)

    def reduce_add(self):
        return ReduceAdd(self.registers.flatten())

    def alias(self, other_memref):
        assert isinstance(other_memref, MemRef)
        other_memref.registers = self.registers
        return other_memref


class GlobalMemRef:
    def __init__(self, global_name, global_array: np.ndarray):
        self.name = global_name
        self.global_array = global_array
        self.curr_shape = global_array.shape
        self.vals = np.empty(self.curr_shape, dtype=object)
        for idx, v in np.ndenumerate(global_array):
            v = MemRefVal(f"{self.name}__", idx)
            state.state.add_global_memref_arg(v)
            self.vals[idx] = v

    @property
    def val_names(self):
        return sorted([str(v) for v in self.vals.ravel()])

    def __getitem__(self, index: MemRefIndex):
        if isinstance(index, int):
            index = (index,)
        return self.vals[index]

    @property
    def numel(self):
        return np.prod(self.curr_shape)
