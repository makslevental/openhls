import flopoco_converter

X, Y = 5.2, 2.5


def convert_float_to_flopoco_binary_str(f, width_exp=4, width_frac=4):
    s = flopoco_converter.fp2bin(width_exp, width_frac, str(f))
    assert len(s) == width_exp + width_frac + 2 + 1
    return s


def convert_flopoco_binary_str_to_float(s, width_exp=4, width_frac=4):
    assert len(s) == width_exp + width_frac + 2 + 1
    return float(flopoco_converter.bin2fp(width_exp, width_frac, s))


X, Y = 2.5, 5.5
print(X, convert_float_to_flopoco_binary_str(X))
print(Y, convert_float_to_flopoco_binary_str(Y))
X_plus_Y = convert_float_to_flopoco_binary_str(X + Y)
print("X+Y", X_plus_Y)
print(convert_flopoco_binary_str_to_float(X_plus_Y))
