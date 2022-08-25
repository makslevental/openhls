try:
    from . import flopoco_converter
except:
    import flopoco_converter


# def convert_float_to_flopoco_binary_str(f, width_exp, width_frac):
#     s = flopoco_converter.fp2binstr(width_exp, width_frac, str(f))
#     assert len(s) == width_exp + width_frac + 2 + 1
#     return s


def convert_flopoco_binary_str_to_float(s, width_exp, width_frac):
    assert len(s) == width_exp + width_frac + 2 + 1
    return float(
        flopoco_converter.bin2fp(width_exp, width_frac, s).strip().replace("\x01", "")
    )


if __name__ == "__main__":
    print("fmul_x", convert_flopoco_binary_str_to_float("010100001010000", 6, 6))
