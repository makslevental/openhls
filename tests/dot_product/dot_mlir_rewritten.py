import numpy as np
from bragghls.ir.memref import MemRef, GlobalMemRef
from bragghls.ir.ops import FMAC, ReduceAdd, Copy
from bragghls.runner import parfor, Forward, make_output_file
import os
make_output_file(os.getenv('RUNNER_OUTPUT_FP') or __file__)


def forward(_arg0=MemRef('_arg0', 8, input=True), _arg1=MemRef('_arg1', 8,
    input=True), _2=MemRef('_2', 1, output=True)):
    _0 = MemRef('_0', 8)

    @parfor(ranges=(range(0, 8, 1),))
    def body(_arg2):
        _3 = _arg0[_arg2,]
        _4 = _arg1[_arg2,]
        _5 = _3 * _4
        _0[_arg2,] = _5
    _1 = MemRef('_1', 1)
    _1[0,] = 0.0
    _2.alias(_1)

    _2[0] = _0.reduce_add()

if __name__ == '__main__':
    Forward(forward)
