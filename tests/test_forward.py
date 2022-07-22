import numpy as np

# fmt: off
from bragghls.memref import MemRef, GlobalMemRef
from bragghls.ops import Alias, FMAC, ReLU, ReduceAdd
from bragghls.runner import parfor, Forward

__constant_4x2x3x3xf32 = np.array(
    [1.403888e-01, 8.624066e-02, 1.651159e-01, 2.332027e-01, 1.479630e-01, -2.282581e-02, -2.067856e-01, 9.142201e-02,
     5.971028e-02, -1.843355e-01, -1.424960e-01, 1.071325e-01, 8.692603e-02, 2.007311e-01, -2.068093e-01, 2.748184e-02,
     8.313268e-03, -1.194543e-01, -6.867029e-02, 9.765770e-02, 2.171435e-01, -7.033056e-02, -8.171074e-02,
     -1.730724e-02, 3.379659e-02, -1.968567e-01, -1.794282e-01, -2.120030e-01, -2.036651e-01, 6.245892e-02,
     -6.466886e-02, 1.739038e-01, -2.146429e-02, -2.144785e-01, 5.490686e-02, 2.383120e-02, -4.683833e-02, 3.178032e-02,
     -2.753760e-02, 1.955692e-01, -2.353589e-01, 8.610354e-02, 1.414332e-01, 1.804206e-01, 1.740918e-01, -2.207662e-01,
     7.270573e-02, 1.024771e-01, -7.588428e-02, 1.148753e-01, -2.156757e-01, -1.111534e-01, -1.876847e-02,
     -1.139860e-01, 1.334889e-01, 1.772302e-01, -9.338115e-02, -1.543136e-02, 1.864517e-01, -1.837242e-01,
     -1.622678e-01, -1.186846e-01, -1.634779e-01, 2.074828e-01, 5.339138e-02, 2.092106e-01, -1.863816e-01, 1.985963e-01,
     -2.915180e-02, 1.605494e-01, 1.660044e-02, 1.224160e-02, ]).reshape(4, 2, 3, 3, )
__constant_4xf32 = np.array([1.100237e-01, 2.519597e-02, -9.701620e-02, 4.430200e-02, ]).reshape(4, )
__constant_2x4x3x3xf32 = np.array(
    [-1.501981e-01, -1.568187e-01, -1.485117e-01, 1.581082e-01, -3.422131e-02, 6.737520e-02, 1.047159e-01, 1.160237e-01,
     6.961727e-02, -4.406093e-02, 3.514765e-02, 1.587882e-01, 1.533214e-01, 1.241328e-01, -5.399130e-02, -6.221300e-02,
     2.481002e-02, -1.458845e-01, 1.249586e-02, 3.711237e-02, -1.443921e-01, -7.174246e-02, 6.281440e-02, 8.508168e-02,
     -7.096601e-02, 1.110854e-01, 2.728988e-02, -1.432033e-01, 1.379513e-01, 1.641894e-01, 1.194215e-01, -1.411501e-01,
     4.645592e-02, 6.483178e-02, -1.695439e-03, -5.626485e-03, -1.274041e-01, 1.449111e-01, 8.742748e-02, 4.193586e-02,
     1.361896e-01, -1.227544e-01, -1.040387e-01, -1.259277e-01, -5.806770e-02, 5.541247e-02, 6.384313e-03,
     -1.112197e-02, 9.143312e-02, 5.848938e-02, -7.781732e-02, 1.573558e-01, 2.856661e-02, -7.610439e-02, -1.534136e-01,
     1.015674e-02, -7.555312e-02, 5.742180e-02, 1.445850e-01, -9.851430e-02, 1.592270e-01, 1.477535e-01, 1.227562e-01,
     5.508499e-02, 9.581853e-02, 3.037558e-02, 2.469455e-02, 6.886321e-02, 4.280841e-02, -1.813692e-02, 2.481803e-03,
     -5.242026e-02, ]).reshape(2, 4, 3, 3, )
__constant_2xf32 = np.array([1.039099e-01, -1.627121e-01, ]).reshape(2, )


# fmt: on
from bragghls import state
pref = ".macs" if state.COLLAPSE_MACS else ""
state.state = state.State(__file__.replace(".py", pref + ".mlir"))

def forward(
    _arg0=MemRef("_arg0", 1, 2, 7, 7, input=True),
    _arg1=MemRef("_arg1", 1, output=True),
    _0=GlobalMemRef("__constant_2xf32", __constant_2xf32),
    _1=GlobalMemRef("__constant_2x4x3x3xf32", __constant_2x4x3x3xf32),
    _2=GlobalMemRef("__constant_4xf32", __constant_4xf32),
    _3=GlobalMemRef("__constant_4x2x3x3xf32", __constant_4x2x3x3xf32),
    _4=MemRef("_4", 1, 4, 5, 5),
):
    @parfor(ranges=(range(0, 1, 1), range(0, 4, 1), range(0, 5, 1), range(0, 5, 1)))
    def body(_arg2, _arg3, _arg4, _arg5):
        _8 = _2[_arg3,]
        _4[_arg2, _arg3, _arg4, _arg5] = _8

    _5 = MemRef("_5", 1, 4, 5, 5)
    Alias(_5, _4)

    @parfor(ranges=(range(0, 1, 1), range(0, 4, 1), range(0, 5, 1), range(0, 5, 1)))
    def body(_arg2, _arg3, _arg4, _arg5):
        for _arg6 in range(0, 2, 1):
            for _arg7 in range(0, 3, 1):
                for _arg8 in range(0, 3, 1):
                    _8 = _arg4 + _arg7
                    _9 = _arg5 + _arg8
                    _10 = _arg0[_arg2, _arg6, _8, _9]
                    _11 = _3[_arg3, _arg6, _arg7, _arg8]
                    _12 = _5[_arg2, _arg3, _arg4, _arg5]
                    _13 = _10 * _11
                    _14 = _12 + _13
                    _5[_arg2, _arg3, _arg4, _arg5] = _14

    _6 = MemRef("_6", 1, 2, 3, 3)

    @parfor(ranges=(range(0, 1, 1), range(0, 2, 1), range(0, 3, 1), range(0, 3, 1)))
    def body(_arg2, _arg3, _arg4, _arg5):
        _8 = _0[_arg3,]
        _6[_arg2, _arg3, _arg4, _arg5] = _8

    _7 = MemRef("_7", 1, 2, 3, 3)
    Alias(_7, _6)

    @parfor(ranges=(range(0, 1, 1), range(0, 2, 1), range(0, 3, 1), range(0, 3, 1)))
    def body(_arg2, _arg3, _arg4, _arg5):
        for _arg6 in range(0, 4, 1):
            for _arg7 in range(0, 3, 1):
                for _arg8 in range(0, 3, 1):
                    _8 = _arg4 + _arg7
                    _9 = _arg5 + _arg8
                    _10 = _5[_arg2, _arg6, _8, _9]
                    _11 = _1[_arg3, _arg6, _arg7, _arg8]
                    _12 = _7[_arg2, _arg3, _arg4, _arg5]
                    _13 = _10 * _11
                    _14 = _12 + _13
                    _7[_arg2, _arg3, _arg4, _arg5] = _14

    _88 = MemRef("_arg1", 1, 2, 3, 3, output=True)
    @parfor(ranges=(range(0, 1, 1), range(0, 2, 1), range(0, 3, 1), range(0, 3, 1)))
    def body(_arg2, _arg3, _arg4, _arg5):
        _8 = _7[0, _arg3, _arg4, _arg5]
        _9 = _8 > 0.000000
        _10 = _8 if _9 else 0.000000
        _88[_arg2, _arg3, _arg4, _arg5] = _10

    _arg1[0] = ReduceAdd(list(_88.registers.flatten()))


if __name__ == "__main__":
    Forward(forward, __file__)
