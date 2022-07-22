import numpy as np

from hls.scripts.refactor.memref import MemRef, GlobalMemRef
from hls.scripts.refactor.ops import Alias, ReduceAdd, FMAC
from hls.scripts.refactor.runner import parfor, Forward

from hls.scripts.refactor import state
pref = ".macs" if state.COLLAPSE_MACS else ""
state.state = state.State(__file__.replace(".py", pref + ".mlir"))

def forward(
    _arg1=MemRef("_arg1", 1, output=True),
    _19=GlobalMemRef("_19", np.random.rand(2, 4, 1, 1)),
    _23=GlobalMemRef("_23", np.random.rand(1, 4, 3, 3)),
    _24=GlobalMemRef("_24", np.random.rand(1, 2, 3, 3)),
):
    _255 = MemRef("_255", 4, 1, 2, 3, 3)
    _255[:] = _24[:, :, :, :]

    @parfor(
        ranges=(
            range(0, 4, 1),
            range(0, 1, 1),
            range(0, 2, 1),
            range(0, 3, 1),
            range(0, 3, 1),
        )
    )
    def body(_arg6, _arg2, _arg3, _arg4, _arg5):
        for _arg7 in range(0, 1, 1):
            for _arg8 in range(0, 1, 1):
                _76 = _arg4 + _arg7
                _77 = _arg5 + _arg8
                _78 = _23[_arg2, _arg6, _76, _77]
                _79 = _19[_arg3, _arg6, _arg7, _arg2]
                _80 = _255[_arg6, _arg2, _arg3, _arg4, _arg5]
                _81 = _78 * _79
                _82 = _80 + _81
                _255[_arg6, _arg2, _arg3, _arg4, _arg5] = _82

    _25 = MemRef("_25", 1, 2, 3, 3)
    _25[:, :, :, :] = np.apply_along_axis(ReduceAdd, 0, _255.registers)
    _arg1[0] = ReduceAdd(list(_25.registers.flatten()))


if __name__ == "__main__":
    Forward(forward, __file__)
