import flopoco_converter


def convert_float_to_flopoco_binary_str(f, width_exp=4, width_frac=4):
    s = flopoco_converter.fp2bin(width_exp, width_frac, str(f))
    assert len(s) == width_exp + width_frac + 2 + 1
    return s


def convert_flopoco_binary_str_to_float(s, width_exp=4, width_frac=4):
    assert len(s) == width_exp + width_frac + 2 + 1
    return float(flopoco_converter.bin2fp(width_exp, width_frac, s))


if __name__ == "__main__":
    for i in range(20):
        print("//", i, f"b{convert_float_to_flopoco_binary_str(i)}")
