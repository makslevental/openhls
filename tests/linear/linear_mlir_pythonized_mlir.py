import numpy as np
from bragghls.ir.memref import MemRef, GlobalMemRef
from bragghls.ir.ops import FMAC, ReduceAdd, Copy
from bragghls.runner import parfor, Forward, make_output_file
import os

make_output_file(os.getenv("RUNNER_OUTPUT_FP") or __file__)



 # fmt: off
__constant_8x8xf32 = np.array([1.304048e-01, 3.469125e-01, 1.297030e-01, -2.542492e-01, -2.026010e-01, 1.439184e-01, 1.586966e-01, -1.368326e-01, 2.329560e-01, 1.773488e-01, 2.063322e-01, -2.862665e-01, 2.228700e-01, -1.991481e-01, -8.981687e-02, -8.294734e-02, -4.878372e-03, -2.104550e-01, 2.711399e-01, -9.092382e-02, 1.947095e-01, 1.137656e-01, -4.275751e-02, 1.042730e-01, -3.388956e-01, -2.645175e-01, 1.234690e-01, -1.340921e-01, 2.933517e-01, 5.981907e-02, 4.204899e-02, 3.745821e-02, -2.680266e-01, -1.687801e-02, -6.506991e-02, -1.273775e-01, 1.955418e-01, 2.705900e-01, 1.962415e-01, -1.489364e-01, 2.865826e-01, 2.254491e-01, 3.293650e-01, -3.186656e-01, -4.424360e-02, -8.763012e-02, -2.150738e-02, -2.497101e-01, 2.366084e-01, 5.800107e-02, -2.227788e-01, -2.862878e-01, 1.818449e-01, 3.315871e-01, 1.026785e-01, 3.090168e-01, -3.406772e-01, -3.025852e-01, 1.232794e-01, 2.458094e-01, -2.609193e-04, -1.517156e-01, -3.054589e-01, 6.027606e-02, ]).reshape(8, 8, )
__constant_8xf32 = np.array([2.558564e-01, -2.449426e-02, 1.749274e-01, -2.866452e-01, -1.196595e-01, 1.375466e-01, 2.009414e-01, 8.172500e-02, ]).reshape(8, )
 # fmt: on


def forward(
  _arg0 = MemRef('_arg0', 1, 8, input=True),
  _6 = MemRef('_6', 1,output=True)
):
  _0 = GlobalMemRef('__constant_8xf32', __constant_8xf32)
  _1 = GlobalMemRef('__constant_8x8xf32', __constant_8x8xf32)
  _2 = MemRef('_2', 1, 8, )

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1)  ,))
  def body(_arg1, _arg2):
    _7 = _0[_arg2,]
    _2[_arg1,_arg2,] = _7

  _3 = MemRef('_3', 8, 8, )

  @parfor(ranges=(range(0, 8, 1), range(0, 8, 1)  ,))
  def body(_arg1, _arg2):
    _7 = _1[_arg2,_arg1,]
    _3[_arg1,_arg2,] = _7

  _4 = MemRef('_4', 1, 8, )
  _4.alias(_2)

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1)  ,))
  def body(_arg1, _arg2):
    for _arg3 in range(0, 8, 1):
      _7 = _arg0[_arg1,_arg3,]
      _8 = _3[_arg3,_arg2,]
      _9 = _4[_arg1,_arg2,]
      _10 = _7 * _8
      _11 = _9 + _10
      _4[_arg1,_arg2,] = _11
    

  _5 = MemRef('_5', 1,)
  _5[0,] = 0.000000
  _6.alias(_5)
  for _arg1 in range(0, 1, 1):
    for _arg2 in range(0, 8, 1):
      _7 = _4[_arg1,_arg2,]
      _8 = _6[0,]
      _9 = _7 + _8
      _6[0,] = _9
    
  



if __name__ == "__main__":
    Forward(forward)
