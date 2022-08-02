import numpy as np
from bragghls.ir.memref import MemRef, GlobalMemRef
from bragghls.ir.ops import FMAC, ReduceAdd, Copy
from bragghls.runner import parfor, Forward, make_output_file
import os

make_output_file(os.getenv("RUNNER_OUTPUT_FP") or __file__)



 # fmt: off
__constant_16x1x3x3xf32 = np.array([-1.847873e-01, -3.298000e-01, 2.210009e-02, -2.645055e-01, -2.110293e-01, -1.295287e-01, 9.988853e-02, 9.386441e-02, 2.161790e-01, -2.499162e-01, -7.262453e-02, -6.057045e-02, -2.486963e-01, 1.073529e-01, 2.127275e-01, 1.787395e-01, -3.009138e-01, 2.346630e-01, 1.666481e-01, -3.091958e-01, 1.886747e-01, 2.093328e-01, -2.974340e-01, -2.019651e-01, 3.248110e-02, 2.120338e-01, -4.721665e-02, -1.119096e-01, 2.947986e-01, -2.087098e-01, -8.154467e-02, -2.020397e-01, -1.475104e-01, 2.811975e-01, -1.524335e-01, -3.115426e-01, -3.362146e-02, 4.987946e-02, -3.435910e-04, 1.030022e-01, 3.278185e-01, 1.228372e-01, 2.874794e-01, -2.346767e-01, 3.048283e-01, 4.810095e-04, -3.552350e-02, -2.594352e-01, -2.847552e-03, -1.129074e-01, 7.646534e-02, -1.818082e-01, 2.477376e-01, 1.287559e-01, 3.211114e-01, -2.469324e-01, -1.862040e-01, -2.629148e-01, 1.491815e-01, 1.048879e-01, -2.492932e-01, -3.776029e-02, 6.262973e-02, -1.321054e-02, 2.556724e-01, -1.646391e-01, 1.368887e-01, 3.245378e-02, -7.418871e-02, -5.696222e-02, -3.114633e-01, 3.037576e-01, 1.574802e-01, 2.799997e-01, -2.594855e-02, 2.923711e-01, -3.542939e-02, 1.286229e-02, -1.032337e-01, 2.437351e-01, 2.928131e-01, 1.051510e-01, -1.097859e-01, -2.212567e-01, -1.530285e-01, -2.917947e-01, 3.154807e-01, -1.647743e-01, -8.275720e-02, 1.355301e-01, 3.307818e-01, 2.487868e-01, 1.718783e-01, -7.133737e-02, 1.926729e-02, -7.423759e-02, 1.595397e-01, 8.031458e-03, -2.562255e-01, 1.629463e-01, -8.294347e-02, -2.189004e-01, -1.070077e-01, -5.092046e-02, 1.138839e-02, 2.809216e-01, -7.099399e-02, 2.167450e-01, 2.420194e-01, 3.202347e-01, 1.839541e-01, 2.929058e-01, -2.165711e-01, 1.076972e-02, -2.407734e-01, -2.054408e-01, 1.924540e-01, 1.524329e-01, 9.767294e-02, -2.845900e-01, 2.055514e-02, 2.658388e-01, 1.469209e-01, -1.395880e-01, -2.202945e-01, 1.210504e-01, 2.634080e-01, 4.476118e-02, 1.841199e-01, -2.663258e-01, 2.740692e-01, -3.192256e-01, -1.668153e-01, -2.011618e-01, 5.710471e-02, 3.257250e-01, -8.584492e-02, -2.058337e-01, -7.247409e-02, 2.823961e-02, -1.971460e-01, 9.448802e-02, -2.823949e-03, 6.779030e-02, ]).reshape(16, 1, 3, 3, )
__constant_16xf32_0 = np.array([-1.295602e-01, 2.545625e-01, -3.202486e-02, -3.055753e-01, 2.894851e-01, 1.826051e-01, 2.660146e-01, 1.214567e-01, -2.598063e-01, 3.328672e-01, 2.449909e-01, -2.339048e-01, -1.406018e-01, 2.298832e-01, -1.197844e-01, 1.090395e-01, ]).reshape(16, )
__constant_8x16x1x1xf32_1 = np.array([4.242897e-02, 8.261260e-02, -2.379310e-01, 1.018343e-01, 3.872931e-03, 1.939953e-01, 1.166322e-01, -1.997505e-01, -2.333932e-01, 2.154695e-01, 8.007103e-02, 2.069477e-01, 2.151141e-02, 2.336409e-01, 1.210253e-01, 1.465171e-01, -2.713236e-02, 1.443487e-01, -1.612480e-01, 1.617742e-01, -1.839675e-01, -1.679959e-01, -7.905450e-02, 1.175419e-01, -1.449247e-01, -2.102854e-01, 7.658899e-04, -2.115912e-01, 5.561352e-03, 7.292330e-03, 2.459122e-01, -2.480898e-01, 9.475228e-02, 5.222419e-02, -1.018088e-01, 9.041378e-02, -6.860462e-02, -5.340645e-02, -1.103664e-01, 2.072085e-01, 6.476840e-02, -6.362864e-02, 1.080126e-01, 3.463301e-02, -1.890185e-01, 1.594748e-01, 1.141693e-01, 2.559057e-02, -2.124841e-01, -1.180135e-01, 2.183585e-01, 9.455580e-02, -1.793668e-01, -1.437475e-01, -2.090523e-01, 8.340165e-02, 1.713349e-01, -3.915194e-02, 4.152879e-02, -2.048103e-01, -4.644743e-02, -2.191519e-01, 1.564738e-01, 1.695284e-01, 1.988606e-01, -9.302071e-02, 1.717500e-01, -1.919252e-01, 6.925032e-02, -9.899199e-02, 1.587741e-01, -9.590080e-02, -2.487465e-01, 1.398921e-01, 1.668562e-01, 1.570790e-01, 6.577253e-03, 2.019722e-01, 2.323985e-01, -1.837471e-01, 4.230192e-02, 6.640252e-02, -1.668946e-01, -3.119501e-02, 1.011833e-01, -2.347529e-01, 2.441761e-01, -1.447689e-01, 3.651783e-02, -2.082342e-02, 1.188007e-01, -1.667547e-01, -1.932806e-02, -5.646169e-02, 7.829109e-02, 2.220171e-01, -1.328113e-01, 1.910011e-01, -1.269174e-02, 1.822105e-01, -2.391932e-01, -2.663460e-02, -1.844199e-01, -1.939672e-01, 9.354135e-02, -3.567964e-02, 1.721542e-01, -1.741888e-01, -2.063712e-01, -2.940029e-03, 1.394754e-01, 2.443983e-01, 2.149725e-01, 9.703180e-02, -2.008167e-02, 5.116189e-02, 7.461765e-02, 2.302619e-01, 1.220713e-01, -1.531669e-02, 1.554286e-01, 1.148182e-01, -1.404712e-02, -9.652305e-02, -1.927418e-01, 7.415459e-02, -1.762761e-01, -1.622890e-01, ]).reshape(8, 16, 1, 1, )
__constant_8xf32_1 = np.array([6.114161e-02, 2.281763e-01, -9.337157e-03, 1.655439e-01, 1.751651e-01, 1.885397e-01, 4.481083e-02, -3.859890e-02, ]).reshape(8, )
__constant_8x16x1x1xf32_0 = np.array([2.250121e-01, -1.838887e-01, 2.633059e-02, 1.383259e-01, -1.241988e-01, 1.003601e-01, 2.292994e-02, 1.288117e-01, 1.248527e-01, 2.317023e-01, 6.894794e-02, 1.844409e-01, 6.656605e-02, -7.421103e-02, 1.902637e-01, -9.714565e-02, -2.376056e-01, -1.433708e-01, 1.333960e-01, -2.368816e-01, 4.905379e-02, -2.267436e-01, 6.340951e-03, 1.082554e-01, -1.746803e-01, 2.329157e-01, 1.569219e-01, 2.285371e-01, 1.328993e-02, 2.480626e-02, 1.343106e-01, 1.374786e-01, 9.955585e-03, 2.433255e-01, 1.659983e-01, -1.628983e-01, 2.356912e-01, -1.207551e-01, 1.725856e-01, -5.273163e-02, 2.414489e-01, 1.364405e-01, -1.830727e-01, -5.572277e-02, 2.327994e-01, 1.359716e-02, 1.353359e-01, 2.415524e-01, -6.968689e-02, 1.345887e-01, 9.822619e-02, -3.291786e-03, -1.966222e-01, 1.110068e-01, 1.186232e-01, -1.127066e-01, -1.218376e-01, 2.429231e-01, -1.772773e-01, 6.407368e-02, -2.493204e-01, -2.217255e-01, 2.269905e-01, 6.004140e-02, -2.172670e-01, -1.019732e-01, -1.797863e-01, -2.490658e-01, -6.341642e-02, 2.420214e-01, -1.252195e-01, -2.355498e-01, 1.636299e-01, 1.218698e-01, 1.545566e-01, -2.151662e-01, 1.817370e-01, -1.875445e-01, 1.036699e-01, -2.152967e-02, -1.212491e-01, 2.353373e-01, 1.773622e-01, -5.829424e-02, 4.893050e-02, 9.251800e-02, -2.061980e-01, -1.339033e-02, -6.192327e-04, -1.260649e-01, 9.432814e-02, 9.041569e-02, -6.357694e-02, 3.016445e-02, -2.360457e-01, 1.918394e-01, -1.356328e-02, 2.081929e-01, -2.320963e-01, -2.186925e-01, 7.835004e-02, 2.262969e-01, 1.502854e-02, -2.338898e-01, -9.484231e-03, 1.519313e-01, -2.185980e-01, -2.491633e-01, 2.191060e-01, 1.940737e-01, -1.392379e-01, -1.880919e-01, -2.781379e-02, 2.229528e-01, -2.074099e-01, 1.298589e-01, -5.631775e-03, 2.123712e-01, -9.751275e-02, -8.460441e-02, 2.058876e-01, 5.350536e-02, 1.994121e-01, -1.008685e-01, 2.360404e-01, 1.809845e-01, 9.915036e-02, 1.654087e-01, ]).reshape(8, 16, 1, 1, )
__constant_8xf32_0 = np.array([8.498189e-02, -1.848614e-01, -4.759645e-02, 1.319923e-01, -4.228199e-02, -2.325271e-01, -6.344485e-02, -1.301682e-01, ]).reshape(8, )
__constant_8x16x1x1xf32 = np.array([7.546255e-02, 1.098881e-01, 1.588708e-01, 1.518073e-01, 1.463838e-01, -2.376058e-01, 2.005726e-01, 3.356013e-02, 1.095939e-01, 1.152041e-01, -1.802689e-01, -2.439394e-01, -1.369145e-01, 2.385000e-01, 2.282428e-01, -1.316318e-02, -4.962239e-02, -2.305424e-01, -1.518631e-02, -2.152142e-01, -6.137532e-02, -2.217586e-01, -2.294080e-01, -1.120907e-01, 1.260150e-01, -2.571803e-02, 1.554648e-01, -7.665741e-02, 3.986183e-02, 1.873982e-02, -1.644436e-01, 1.851183e-02, -1.706187e-01, -2.095531e-01, 2.335245e-01, -2.020711e-01, -1.207754e-01, 2.110361e-01, 1.417335e-01, -1.781691e-01, 6.595713e-02, 1.048785e-01, 5.255577e-02, -2.869633e-02, 1.753644e-01, -8.968949e-02, -5.193192e-02, -1.340952e-01, -1.299551e-01, -1.623846e-01, -2.106130e-01, -2.356657e-01, -1.449115e-01, 1.434004e-02, -2.419635e-01, -8.377346e-02, 2.235382e-01, 1.998102e-01, -4.405415e-02, 1.400906e-02, -1.561546e-01, 1.444035e-01, -9.330821e-02, -7.672513e-02, -9.381405e-02, -1.515516e-01, -7.383054e-02, 5.801272e-02, 5.516809e-02, -2.242488e-01, -1.355375e-01, -1.377381e-01, 1.966359e-01, -6.338319e-02, 1.036521e-01, -1.043382e-01, -1.768994e-01, 1.404570e-01, -1.273121e-01, -4.456449e-02, -5.533534e-02, 1.662841e-01, -3.851992e-02, 2.163551e-01, -3.092825e-03, 2.662015e-02, 2.314356e-01, 2.456987e-01, -7.763168e-02, 2.078123e-01, 1.961547e-02, 1.531332e-01, -1.082814e-01, -2.304779e-01, 1.586965e-01, 1.999516e-01, 1.174564e-01, 1.220123e-01, -4.427040e-02, 4.647097e-02, -1.868121e-01, -2.053400e-01, -9.189060e-02, -1.795790e-01, 2.138596e-01, 1.380310e-01, 1.799302e-01, 1.513488e-01, 2.137907e-01, 1.999858e-01, -1.502865e-01, 1.279911e-01, 1.440655e-01, 2.272180e-01, -2.716497e-02, -4.094276e-02, -1.378488e-01, 2.064807e-01, 6.935993e-02, 1.055649e-01, -1.621820e-01, -4.863080e-02, -2.053390e-01, -6.652832e-02, -3.479636e-02, 1.248877e-01, -1.573158e-01, -2.194023e-01, ]).reshape(8, 16, 1, 1, )
__constant_8xf32 = np.array([-8.419040e-02, 1.115094e-01, 1.986570e-01, -2.328494e-01, 6.600064e-02, -2.240910e-01, -1.990570e-01, 1.947909e-01, ]).reshape(8, )
__constant_16x8x1x1xf32 = np.array([3.428923e-01, 7.906854e-04, 1.640599e-01, 1.935160e-01, 1.422094e-01, 2.762284e-01, -1.571642e-01, 5.347720e-02, -1.343550e-01, -1.631011e-01, 7.723624e-02, 2.557583e-01, -5.352312e-02, 2.441341e-01, -3.397551e-01, -4.441512e-02, 1.798042e-01, 2.602865e-01, -1.068356e-01, 1.831242e-01, -2.255699e-01, 8.338037e-02, 2.867531e-01, -1.578113e-01, 1.268908e-01, 1.319170e-01, 3.387981e-01, 1.283015e-01, 9.981886e-02, -1.804680e-01, -3.531558e-01, -9.513816e-02, 2.903604e-01, 1.652471e-01, 2.879628e-01, 1.174462e-01, 1.274504e-01, -3.414206e-01, -2.728464e-01, 1.701552e-01, -1.625955e-03, 8.472291e-02, -3.376579e-01, 9.567615e-02, -1.078471e-01, 1.677198e-01, -4.905280e-02, -1.922408e-01, -1.889363e-01, 5.433121e-02, -6.935027e-02, -2.609278e-01, 2.801712e-01, 8.218315e-02, 6.031695e-02, 2.679496e-01, 3.933731e-02, 3.176064e-01, -7.076591e-03, 3.325269e-01, 1.751423e-01, 2.062683e-01, -2.511531e-01, -1.684381e-01, 1.880997e-01, -2.802971e-01, -2.680142e-01, 2.670875e-02, -2.160830e-01, -1.628105e-01, -2.403860e-01, -2.791123e-01, 1.606467e-01, -8.308908e-02, 2.481388e-01, 1.178792e-01, -5.410537e-02, 7.124099e-02, -3.244199e-01, 4.305342e-02, -3.251075e-01, 2.174145e-02, -2.760329e-01, 2.161618e-01, 9.851447e-02, -1.190540e-01, -5.809605e-03, -3.255539e-01, -2.971196e-01, -2.328035e-02, -2.920735e-01, 3.807083e-02, -3.129811e-01, 1.602769e-01, -1.127878e-01, -3.266971e-01, 8.098185e-03, -1.329634e-01, 2.463655e-01, 2.702910e-01, 2.677804e-01, 2.957797e-01, -1.136751e-01, 4.305571e-02, -1.089196e-01, 2.854686e-01, 3.262453e-01, -1.324868e-01, -1.447649e-01, -1.435035e-02, -1.339522e-01, 1.548620e-01, 3.269629e-01, 3.233379e-01, 1.502596e-01, -5.987340e-02, 3.627756e-02, 3.515681e-01, 2.397676e-01, 1.060075e-01, 2.695294e-01, -2.809514e-01, 3.090076e-01, 1.323271e-01, -2.650000e-01, -2.533444e-01, -3.605434e-02, -2.165803e-01, ]).reshape(16, 8, 1, 1, )
__constant_16xf32 = np.array([1.125063e-01, 7.254702e-02, -2.084548e-01, 1.950869e-01, 8.284849e-02, 3.584582e-02, -2.287339e-01, 3.232640e-01, -5.153379e-02, 1.450147e-01, -4.747808e-03, 4.376099e-02, 4.019508e-02, 3.598005e-03, 2.863926e-01, 2.977565e-01, ]).reshape(16, )
 # fmt: on


def forward(
  _arg0 = MemRef('_arg0', 1, 1, 5, 5, input=True),
  _23 = MemRef('_23', 1,output=True)
):
  _0 = GlobalMemRef('__constant_16xf32', __constant_16xf32)
  _1 = GlobalMemRef('__constant_16x8x1x1xf32', __constant_16x8x1x1xf32)
  _2 = GlobalMemRef('__constant_8xf32', __constant_8xf32)
  _3 = GlobalMemRef('__constant_8x16x1x1xf32', __constant_8x16x1x1xf32)
  _4 = GlobalMemRef('__constant_8xf32_0', __constant_8xf32_0)
  _5 = GlobalMemRef('__constant_8x16x1x1xf32_0', __constant_8x16x1x1xf32_0)
  _6 = GlobalMemRef('__constant_8xf32_1', __constant_8xf32_1)
  _7 = GlobalMemRef('__constant_8x16x1x1xf32_1', __constant_8x16x1x1xf32_1)
  _8 = GlobalMemRef('__constant_16xf32_0', __constant_16xf32_0)
  _9 = GlobalMemRef('__constant_16x1x3x3xf32', __constant_16x1x3x3xf32)
  _10 = MemRef('_10', 1, 16, 3, 3, )

  @parfor(ranges=(range(0, 1, 1), range(0, 16, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    _24 = _8[_arg2,]
    _10[_arg1,_arg2,_arg3,_arg4,] = _24

  _11 = MemRef('_11', 1, 16, 3, 3, )
  _11.alias(_10)

  @parfor(ranges=(range(0, 1, 1), range(0, 16, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    for _arg5 in range(0, 1, 1):
      for _arg6 in range(0, 3, 1):
        for _arg7 in range(0, 3, 1):
          _24 = (_arg3 + _arg6)
          _25 = (_arg4 + _arg7)
          _26 = _arg0[_arg1,_arg5,_24,_25,]
          _27 = _9[_arg2,_arg5,_arg6,_arg7,]
          _28 = _11[_arg1,_arg2,_arg3,_arg4,]
          _29 = _26 * _27
          _30 = _28 + _29
          _11[_arg1,_arg2,_arg3,_arg4,] = _30
        
      
    

  _12 = MemRef('_12', 1, 8, 3, 3, )

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    _24 = _6[_arg2,]
    _12[_arg1,_arg2,_arg3,_arg4,] = _24

  _13 = MemRef('_13', 1, 8, 3, 3, )
  _13.alias(_12)

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    for _arg5 in range(0, 16, 1):
      for _arg6 in range(0, 1, 1):
        for _arg7 in range(0, 1, 1):
          _24 = (_arg3 + _arg6)
          _25 = (_arg4 + _arg7)
          _26 = _11[_arg1,_arg5,_24,_25,]
          _27 = _7[_arg2,_arg5,_arg6,_arg7,]
          _28 = _13[_arg1,_arg2,_arg3,_arg4,]
          _29 = _26 * _27
          _30 = _28 + _29
          _13[_arg1,_arg2,_arg3,_arg4,] = _30
        
      
    

  _14 = MemRef('_14', 1, 8, 3, 3, )

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    _24 = _4[_arg2,]
    _14[_arg1,_arg2,_arg3,_arg4,] = _24

  _15 = MemRef('_15', 1, 8, 3, 3, )
  _15.alias(_14)

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    for _arg5 in range(0, 16, 1):
      for _arg6 in range(0, 1, 1):
        for _arg7 in range(0, 1, 1):
          _24 = (_arg3 + _arg6)
          _25 = (_arg4 + _arg7)
          _26 = _11[_arg1,_arg5,_24,_25,]
          _27 = _5[_arg2,_arg5,_arg6,_arg7,]
          _28 = _15[_arg1,_arg2,_arg3,_arg4,]
          _29 = _26 * _27
          _30 = _28 + _29
          _15[_arg1,_arg2,_arg3,_arg4,] = _30
        
      
    

  _16 = MemRef('_16', 1, 8, 3, 3, )

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    _24 = _2[_arg2,]
    _16[_arg1,_arg2,_arg3,_arg4,] = _24

  _17 = MemRef('_17', 1, 8, 3, 3, )
  _17.alias(_16)

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    for _arg5 in range(0, 16, 1):
      for _arg6 in range(0, 1, 1):
        for _arg7 in range(0, 1, 1):
          _24 = (_arg3 + _arg6)
          _25 = (_arg4 + _arg7)
          _26 = _11[_arg1,_arg5,_24,_25,]
          _27 = _3[_arg2,_arg5,_arg6,_arg7,]
          _28 = _17[_arg1,_arg2,_arg3,_arg4,]
          _29 = _26 * _27
          _30 = _28 + _29
          _17[_arg1,_arg2,_arg3,_arg4,] = _30
        
      
    

  _18 = MemRef('_18', 1, 8, 3, 3, )

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    _24 = _13[0,_arg2,_arg3,_arg4,]
    _25 = _15[0,_arg2,_arg3,_arg4,]
    _26 = _24 + _25
    _18[_arg1,_arg2,_arg3,_arg4,] = _26

  _19 = MemRef('_19', 1, 8, 3, 3, )

  @parfor(ranges=(range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    _24 = _18[0,_arg2,_arg3,_arg4,]
    _25 = _17[0,_arg2,_arg3,_arg4,]
    _26 = _24 + _25
    _19[_arg1,_arg2,_arg3,_arg4,] = _26

  _20 = MemRef('_20', 1, 16, 3, 3, )

  @parfor(ranges=(range(0, 1, 1), range(0, 16, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    _24 = _0[_arg2,]
    _20[_arg1,_arg2,_arg3,_arg4,] = _24

  _21 = MemRef('_21', 1, 16, 3, 3, )
  _21.alias(_20)

  @parfor(ranges=(range(0, 1, 1), range(0, 16, 1), range(0, 3, 1), range(0, 3, 1)  ,))
  def body(_arg1, _arg2, _arg3, _arg4):
    for _arg5 in range(0, 8, 1):
      for _arg6 in range(0, 1, 1):
        for _arg7 in range(0, 1, 1):
          _24 = (_arg3 + _arg6)
          _25 = (_arg4 + _arg7)
          _26 = _19[_arg1,_arg5,_24,_25,]
          _27 = _1[_arg2,_arg5,_arg6,_arg7,]
          _28 = _21[_arg1,_arg2,_arg3,_arg4,]
          _29 = _26 * _27
          _30 = _28 + _29
          _21[_arg1,_arg2,_arg3,_arg4,] = _30
        
      
    

  _22 = MemRef('_22', 1,)
  _22[0,] = 0.000000
  _23.alias(_22)
  for _arg1 in range(0, 1, 1):
    for _arg2 in range(0, 16, 1):
      for _arg3 in range(0, 3, 1):
        for _arg4 in range(0, 3, 1):
          _24 = _21[_arg1,_arg2,_arg3,_arg4,]
          _25 = _23[0,]
          _26 = _24 + _25
          _23[0,] = _26
        
      
    
  



if __name__ == "__main__":
    Forward(forward)
