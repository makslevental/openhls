import argparse
from pathlib import Path

import math
import numpy as np
from jinja2 import Template

from bragghls.flopoco.convert_flopoco import convert_float_to_flopoco_binary_str
from bragghls.flopoco.ops import Val


def get_bit_width(max_thing, base=10):
    return math.ceil(math.log(max_thing, base))


def generate_mac_fsm_states(n_elements, start_time):
    fmul_states = [start_time]
    fadd_states = [start_time + MUL_LATENCY]
    for i in range(n_elements - 1):
        fadd_states.append(fadd_states[-1] + ADD_LATENCY)
        fmul_states.append(fadd_states[-1] - MUL_LATENCY)
    done_state = fadd_states[-1] + ADD_LATENCY
    return fmul_states, fadd_states, done_state


def generate_core(wE, wF, n_elements=4):
    input_wires = [f"arg{i}" for i in range(1, 2 * n_elements + 1)]
    fmul_states, fadd_states, done_state = generate_mac_fsm_states(n_elements, 1)
    all_states = range(1, fadd_states[-1] + 1)
    template = Template(open("fmac.jinja.sv").read())
    return template.render(
        wE=wE,
        wF=wF,
        input_wires=input_wires,
        fmul_states=fmul_states,
        fadd_states=fadd_states,
        all_fsm_states=all_states,
        fsm_idx_width=get_bit_width(done_state),
    )


def generate_tb(wE, wF, n_elements):
    template = Template(open("fmac_tb.jinja.sv").read())
    fmul_states, fadd_states, done_state = generate_mac_fsm_states(
        n_elements, start_time=1
    )
    fmac_states = range(1, fadd_states[-1] + 1)
    all_fsm_states = range(1, done_state + 1)

    def zfill(i, width=None, max_thing=None, base=None):
        if width is None:
            assert max_thing is not None
            width = get_bit_width(max_thing, base)
        return str(i).zfill(width)

    if DEBUG:
        vals = np.linspace(-n_elements, n_elements, 2 * n_elements + 1)[:-1] + 2
        print("test vals ", vals)
    else:
        vals = np.linspace(0, 1, 2 * n_elements)

    args = [convert_float_to_flopoco_binary_str(i, wE, wF) for i in vals]
    res = Val(0.0, wE, wF)
    ieee_res = np.apply_along_axis(
        np.prod, 1, vals.reshape(2 * n_elements // 2, 2)
    ).sum()
    for x, y in vals.reshape(2 * n_elements // 2, 2):
        res += Val(x, wE, wF) * Val(y, wE, wF)
    print(res, ieee_res)

    standard = template.render(
        args=args,
        wE=wE,
        wF=wF,
        init_val=Val(0.0, wE, wF).fp.binstr(),
        n_elements=n_elements,
        all_fsm_states=all_fsm_states,
        fmac_states=fmac_states,
        fsm_idx_width=all_fsm_states[-1] + 2,
        get_bit_width=get_bit_width,
        zfill=zfill,
        res=res.fp,
        done_state=done_state,
    )
    return standard


def generate(wE, wF, n_elements, out_dir):
    with open(f"{out_dir}/generated_fmac_{n_elements}.sv", "w") as f:
        f.write(generate_core(wE, wF, n_elements))
    standard = generate_tb(wE, wF, n_elements)
    with open(f"{out_dir}/generated_fmac_{n_elements}_tb.sv", "w") as f:
        f.write(standard)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--wE", type=int, default=4)
    parser.add_argument("--wF", type=int, default=4)
    parser.add_argument("--mul_pipeline_depth", type=int, default=1)
    parser.add_argument("--add_pipeline_depth", type=int, default=2)
    parser.add_argument("--n_elements", type=int, default=8)
    parser.add_argument("--out_dir", type=Path, default=Path("."))
    args = parser.parse_args()
    args.out_dir = args.out_dir.resolve()

    MUL_LATENCY = args.mul_pipeline_depth + 1
    ADD_LATENCY = args.add_pipeline_depth + 1
    DEBUG = True

    generate(args.wE, args.wF, args.n_elements, args.out_dir)
