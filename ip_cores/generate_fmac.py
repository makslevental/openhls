import argparse
import math
from pathlib import Path

import numpy as np
from jinja2 import Template

from bragghls.rtl.convert_flopoco import convert_float_to_flopoco_binary_str


def get_bit_width(max_thing, base=10):
    return math.ceil(math.log(max_thing, base))


OP_LATENCY = 2


def generate_fsm_states(n_elements):
    n_pair_states = n_elements - 1
    return sorted(
        [1 + 3 * i for i in range(n_pair_states + 2)]
        + [3 * i for i in range(1, n_pair_states + 2)]
    )


def generate_core(precision, n_elements=4):
    input_wires = [f"arg{i}" for i in range(1, 2 * n_elements + 1)]
    fsm_states = generate_fsm_states(n_elements)
    template = Template(open("fmac.jinja.sv").read())
    return template.render(
        precision=precision,
        input_wires=input_wires,
        fsm_states=fsm_states,
        fsm_idx_width=get_bit_width(fsm_states[-1]),
    )


def generate_tb(precision, n_elements):
    template = Template(open("fmac_tb.jinja.sv").read())
    fsm_states = generate_fsm_states(n_elements)

    def zfill(i, width=None, max_thing=None, base=None):
        if width is None:
            assert max_thing is not None
            width = get_bit_width(max_thing, base)
        return str(i).zfill(width)

    args = [
        convert_float_to_flopoco_binary_str(i) for i in range(1, 2 * n_elements + 1)
    ]
    res = convert_float_to_flopoco_binary_str(
        np.apply_along_axis(
            np.prod, 1, np.arange(1, 2 * n_elements + 1).reshape(2 * n_elements // 2, 2)
        ).sum()
    )
    return template.render(
        precision=precision,
        args=args,
        n_elements=n_elements,
        fsm_states=fsm_states,
        fsm_idx_width=fsm_states[-1] + 2,
        get_bit_width=get_bit_width,
        zfill=zfill,
        res=res,
    )


def generate(precision, n_elements, out_dir):
    with open(f"{out_dir}/generated_fmac_{n_elements}.sv", "w") as f:
        f.write(generate_core(precision, n_elements))
    with open(f"{out_dir}/generated_fmac_{n_elements}_tb.sv", "w") as f:
        f.write(generate_tb(precision, n_elements))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("precision", type=int)
    parser.add_argument("n_elements", type=int)
    parser.add_argument("--out_dir", type=Path, default=Path("."))
    args = parser.parse_args()
    args.out_dir = args.out_dir.resolve()
    generate(args.precision, args.n_elements, args.out_dir)