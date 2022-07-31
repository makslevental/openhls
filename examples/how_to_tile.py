_55 = MemRef('_55', 2, 1, 8, 3, 3, )
_55.registers[:] = _2.registers


@parfor(ranges=(range(0, 2, 1), range(0, 1, 1), range(0, 8, 1), range(0, 3, 1), range(0, 3, 1),))
def body(_arg5, _arg1, _arg2, _arg3, _arg4):
    for _arg6 in range(0, 3, 1):
        for _arg7 in range(0, 3, 1):
            _8 = (_arg3 + _arg6)
            _9 = (_arg4 + _arg7)
            _10 = _arg0[_arg1, _arg5, _8, _9,]
            _11 = _1[_arg2, _arg5, _arg6, _arg7,]
            _12 = _55[_arg5, _arg1, _arg2, _arg3, _arg4,]
            _13 = _10 * _11
            _14 = _12 + _13
            _55[_arg5, _arg1, _arg2, _arg3, _arg4,] = _14


_3 = MemRef('_3', 1, 8, 3, 3, )
_3.registers = np.apply_along_axis(ReduceAdd, 0, _55.registers)