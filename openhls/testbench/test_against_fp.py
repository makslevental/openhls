import numpy as np
import torch

from openhls.compiler.runner import (
    get_default_args,
    get_py_module_args_globals,
    run_model_with_fp_number,
)


def test_against_fp(pytorch_mod, flopoco_mod, width_exponent, width_fraction):
    args = get_default_args(flopoco_mod.forward)
    input_memrefs, *_ = get_py_module_args_globals(args)
    for i in range(100):
        np_test_inputs = {}
        for inp_name, inp_memref in input_memrefs.items():
            scale = np.random.randint(-10, 10) or 1
            print(f"{scale=}", end=", ")
            np_test_inputs[inp_name] = np.ones(inp_memref.curr_shape) * scale
        test_inputs, outputs = run_model_with_fp_number(
            flopoco_mod,
            np_test_inputs,
            width_exponent=width_exponent,
            width_fraction=width_fraction,
        )
        print(str(outputs["_6"][0]).split(":")[0].split(" ")[1], end=", ")

        res = (
            pytorch_mod(torch.from_numpy(np_test_inputs[inp_name]).to(torch.float32))
            .numpy()
            .item()
        )
        print(res)
