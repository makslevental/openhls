import io

import numpy as np
import torch

from bragghls.compiler import state
from bragghls.compiler.runner import (
    get_default_args,
    get_py_module_args_globals,
)
from bragghls.flopoco.ops import (
    MemRef as FPMemRef,
    GlobalMemRef as FPGlobalMemRef,
    FMAC as FPFMAC,
    Div as FPDiv,
)
from bragghls.ir.memref import MemRef, GlobalMemRef
from bragghls.util import import_module_from_fp
from examples.braggnn import BraggNN


def make_fp_number_model(mod, inputs, width_exponent, width_fraction):
    file = io.StringIO()
    state.state = state.State(file)
    args = get_default_args(mod.forward)
    test_args = {}
    outputs = {}
    for name, arg in args.items():
        if isinstance(arg, MemRef) and arg.input:
            test_args[name] = FPMemRef.from_memref(
                arg, width_exponent, width_fraction, inputs[name]
            )
        elif isinstance(arg, MemRef) and arg.output:
            outputs[name] = test_args[name] = FPMemRef.from_memref(
                arg, width_exponent, width_fraction, np.zeros(arg.shape)
            )
        elif isinstance(arg, GlobalMemRef):
            test_args[name] = FPGlobalMemRef.from_global_memref(
                arg, width_exponent, width_fraction
            )
        else:
            raise Exception("neither a globalmemref nor a memref")

    FPFMAC.width_exponent = width_exponent
    FPFMAC.width_fraction = width_fraction
    mod.FMAC = FPFMAC
    mod.Div = FPDiv
    mod.MemRef = FPMemRef
    mod.GlobalMemRef = FPGlobalMemRef
    return mod, test_args, outputs


def run_model_with_fp_number(mod, inputs, width_exponent, width_fraction):
    mod, test_args, outputs = make_fp_number_model(
        mod, inputs, width_exponent, width_fraction
    )
    mod.forward(**test_args)
    return test_args, outputs


def test_against_fp(pytorch_mod, flopoco_mod, width_exponent, width_fraction):
    args = get_default_args(flopoco_mod.forward)
    input_memrefs, *_ = get_py_module_args_globals(args)
    for i in range(10):
        np_test_inputs = {}
        for inp_name, inp_memref in input_memrefs.items():
            np_test_inputs[inp_name] = np.random.randn(*inp_memref.shape)
        test_inputs, outputs = run_model_with_fp_number(
            flopoco_mod,
            np_test_inputs,
            width_exponent=width_exponent,
            width_fraction=width_fraction,
        )

        print("bragghls", [l.fp for l in list(list(outputs.values())[0].registers.flatten())])
        with torch.no_grad():
            res = (
                pytorch_mod(torch.from_numpy(np_test_inputs[inp_name]).to(torch.float32))
                .numpy()
            )
            print("pytorch", [f"<IEEE {r:.10e}>" for r in res[0]])


if __name__ == "__main__":
    braggnn = BraggNN(scale=1, imgsz=11)
    braggnn.load_state_dict(torch.load("/home/mlevental/dev_projects/bragghls/examples/braggnn.pth"))
    mlir_braggnn = import_module_from_fp(
        "test_module",
        "/home/mlevental/dev_projects/bragghls/examples/braggnn_bragghls_artifacts/braggnn_rewritten.py",
    )
    test_against_fp(braggnn, mlir_braggnn, 6, 6)
