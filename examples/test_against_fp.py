import torch

from bragghls.nn import set_weights
from bragghls.runner import (
    run_model_with_fp_number,
    get_default_args,
    get_py_module_args_globals,
)
import numpy as np
import os

from linear_bragghls_artifacts import linear_rewritten as fp_mod
from linear import Linear


def test_against_fp(wE, wF):
    args = get_default_args(fp_mod.forward)
    input_memrefs, *_ = get_py_module_args_globals(args)
    pytorch_mod = Linear(imgsz=2)
    pytorch_mod.apply(set_weights)
    for i in range(100):
        np_test_inputs = {}
        for inp_name, inp_memref in input_memrefs.items():
            scale = np.random.randint(-10, 10) or 1
            print(f"{scale=}", end=", ")
            np_test_inputs[inp_name] = np.ones(inp_memref.curr_shape) * scale
        test_inputs, outputs = run_model_with_fp_number(
            fp_mod, np_test_inputs, wE=wE, wF=wF
        )
        print(str(outputs["_6"][0]).split(":")[0].split(" ")[1], end=", ")

        res = pytorch_mod(torch.from_numpy(np_test_inputs[inp_name]).to(torch.float32)).numpy().item()
        print(res)


test_against_fp(4, 4)
