import numpy as np
from bragghls.ir.memref import MemRef, GlobalMemRef
from bragghls.ir.ops import FMAC, ReduceAdd, Copy
from bragghls.runner import parfor, Forward, make_output_file
import os
make_output_file(os.getenv('RUNNER_OUTPUT_FP') or __file__)
__constant_8x8xf32 = np.array([0.1304048, 0.3469125, 0.129703, -0.2542492, 
    -0.202601, 0.1439184, 0.1586966, -0.1368326, 0.232956, 0.1773488, 
    0.2063322, -0.2862665, 0.22287, -0.1991481, -0.08981687, -0.08294734, -
    0.004878372, -0.210455, 0.2711399, -0.09092382, 0.1947095, 0.1137656, -
    0.04275751, 0.104273, -0.3388956, -0.2645175, 0.123469, -0.1340921, 
    0.2933517, 0.05981907, 0.04204899, 0.03745821, -0.2680266, -0.01687801,
    -0.06506991, -0.1273775, 0.1955418, 0.27059, 0.1962415, -0.1489364, 
    0.2865826, 0.2254491, 0.329365, -0.3186656, -0.0442436, -0.08763012, -
    0.02150738, -0.2497101, 0.2366084, 0.05800107, -0.2227788, -0.2862878, 
    0.1818449, 0.3315871, 0.1026785, 0.3090168, -0.3406772, -0.3025852, 
    0.1232794, 0.2458094, -0.0002609193, -0.1517156, -0.3054589, 0.06027606]
    ).reshape(8, 8)
__constant_8xf32 = np.array([0.2558564, -0.02449426, 0.1749274, -0.2866452,
    -0.1196595, 0.1375466, 0.2009414, 0.081725]).reshape(8)


def forward(_arg0=MemRef('_arg0', 1, 8, input=True), _6=MemRef('_6', 1,
    output=True), _1=GlobalMemRef('__constant_8x8xf32', __constant_8x8xf32),
    _0=GlobalMemRef('__constant_8xf32', __constant_8xf32)):
    _2 = MemRef('_2', 1, 8)

    @parfor(ranges=(range(0, 1, 1), range(0, 8, 1)))
    def body(_arg1, _arg2):
        _7 = _0[_arg2,]
        _2[_arg1, _arg2] = _7
    _3 = MemRef('_3', 8, 8)

    @parfor(ranges=(range(0, 8, 1), range(0, 8, 1)))
    def body(_arg1, _arg2):
        _7 = _1[_arg2, _arg1]
        _3[_arg1, _arg2] = _7


    # _4 = MemRef('_4', 1, 8)
    # _4.alias(_2)
    #
    # @parfor(ranges=(range(0, 1, 1), range(0, 8, 1)))
    # def body(_arg1, _arg2):
    #     fma = FMAC(_arg1, _arg2)
    #     for _arg3 in range(0, 8, 1):
    #         _7 = _arg0[_arg1, _arg3]
    #         _8 = _3[_arg3, _arg2]
    #         _9 = _4[_arg1, _arg2]
    #         _10 = fma.Mul(_7, _8)
    #         _11 = fma.Add(_9, _10)
    #         _4[_arg1, _arg2] = _11
    #     _4[_arg1, _arg2] = fma.Result()

    #############################
    # linear
    ###########################
    _4 = MemRef("_4", 8, 8)
    _4.zero()

    @parfor(ranges=(range(0, 8, 1), range(0, 1, 1), range(0, 8, 1)))
    def body(_arg3, _arg1, _arg2):
        fma = FMAC(_arg3, _arg1, _arg2)
        _7 = _arg0[_arg1, _arg3]
        _8 = _3[_arg3, _arg2]
        _9 = _4[_arg3, _arg2]
        _10 = fma.Mul(_7, _8)
        _11 = fma.Add(_9, _10)
        _4[_arg3, _arg2] = _11
        _4[_arg3, _arg2] = fma.Result(copy=False)

    _4.registers = np.vstack([_4.registers, _2.registers])
    _4.registers = np.apply_along_axis(ReduceAdd, 0, _4.registers)[np.newaxis]
    Copy(_4, _4)
    #############################
    # linear
    ###########################

    _5 = MemRef('_5', 1)
    _5[0,] = 0.0
    _6.alias(_5)
    for _arg1 in range(0, 1, 1):
        for _arg2 in range(0, 8, 1):
            _7 = _4[_arg1, _arg2]
            _8 = _6[0,]
            _9 = _7 + _8
            _6[0,] = _9


if __name__ == '__main__':
    Forward(forward)
