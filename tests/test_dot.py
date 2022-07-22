from hls.scripts.refactor.memref import MemRef, GlobalMemRef
from hls.scripts.refactor.ops import Alias, FMAC, ReduceAdd, ReLU, Copy
from hls.scripts.refactor.runner import parfor, Forward

# fmt: off
# fmt: on


def forward(
    _arg0=MemRef("_arg0", 1, 10, input=True),
    _arg1=MemRef("_arg1", 10, 1, input=True),
    _arg2=MemRef("_arg2", 1, output=True),
):
    _0 = MemRef("_0", 1)
    _0[0,] = 0.000000

    @parfor(ranges=([0],))
    def body(_arg2):
        for _arg3 in range(10):
            _2 = _arg0[0, _arg3]
            _3 = _arg1[_arg3, 0]
            _4 = _0[0,]
            _5 = _2 * _3
            _6 = _4 + _5
            _0[0,] = _6

    _arg2[0] = _0[0]


if __name__ == "__main__":
    Forward(forward, __file__)
