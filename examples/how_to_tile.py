tile_factor = 2
_55 = MemRef('_55', 16 // tile_factor, 1, 4, 9, 9, )
_55.registers[:] = _4.registers


@parfor(ranges=(range(0, 16 // tile_factor, 1), range(0, 1, 1), range(0, 4, 1), range(0, 9, 1), range(0, 9, 1),))
def body(_arg55, _arg1, _arg2, _arg3, _arg4):
    for _arg5 in range(_arg55, _arg55 + tile_factor, 1):
        for _arg6 in range(0, 3, 1):
            for _arg7 in range(0, 3, 1):
                _10 = (_arg3 + _arg6)
                _11 = (_arg4 + _arg7)
                _12 = _arg0[_arg1, _arg5, _10, _11,]
                _13 = _3[_arg2, _arg5, _arg6, _arg7,]
                _14 = _55[_arg55, _arg1, _arg2, _arg3, _arg4,]
                _15 = _12 * _13
                _16 = _14 + _15
                _55[_arg55, _arg1, _arg2, _arg3, _arg4,] = _16


_5 = MemRef('_5', 1, 4, 9, 9, )
_5.registers[:, :, :, :] = np.apply_along_axis(ReduceAdd, 0, _55.registers)
