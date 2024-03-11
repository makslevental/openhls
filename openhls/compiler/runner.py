import inspect
import io
import itertools
import os
from textwrap import indent, dedent

import numpy as np

from openhls.compiler import state
from openhls.compiler.state import logger
from openhls.flopoco.ops import (
    MemRef as FPMemRef,
    GlobalMemRef as FPGlobalMemRef,
    FMAC as FPFMAC,
    Div as FPDiv,
)
from openhls.ir.memref import MemRef, GlobalMemRef
from openhls.ir.ops import OpType, LATENCIES, FMAC
from openhls.util import extend_idx, zip_with_scalar


def make_latency_attrs():
    if state.state.include_aux_deps:
        aux_deps = sorted([list(dep) for dep in state.state.pe_deps])
    else:
        aux_deps = []
    operator_types = [
        f"""{{ name = "{op.value if isinstance(op, OpType) else op}", latency = {lat}, limit = 2592 }}"""
        for op, lat in LATENCIES.items()
    ]
    lats = indent(
        dedent(
            f"""\
            attributes {{
                auxdeps = {aux_deps},
                operatortypes = [
                    {', '.join(operator_types)}
                ] 
            }} {{
            """
        ),
        "\t",
    )
    return lats


def get_default_args(func):
    signature = inspect.signature(func)
    return {
        k: v.default
        for k, v in signature.parameters.items()
        if v.default is not inspect.Parameter.empty
    }


def get_py_module_args_globals(args):
    inputs = {}
    outputs = {}
    globals = {}
    for arg_name, arg in args.items():
        if isinstance(arg, MemRef):
            if arg.input:
                inputs[arg_name] = arg
            elif arg.output:
                outputs[arg_name] = arg
        elif isinstance(arg, GlobalMemRef):
            globals[arg_name] = arg

    return inputs, globals, outputs


def Forward(forward):
    args = get_default_args(forward)
    inputs, globals, outputs = get_py_module_args_globals(args)

    input_names = sorted(
        [str(name) for inp in inputs.values() for name in inp.val_names_map.values()]
    )
    global_names = sorted(
        [str(name) for inp in globals.values() for name in inp.val_names_map.values()]
    )
    inps_globals = [f"{v}: {state.state.dtype}" for v in input_names + global_names]

    output_dtypes = []
    for output_arg in outputs.values():
        output_dtypes += [state.state.dtype] * len(output_arg.val_names_map)
    state.state.emit(
        f"func.func @forward({', '.join(inps_globals)}) -> ({', '.join(output_dtypes)})\n"
    )

    OLD_FILE = state.state.swap_output_file(io.StringIO())
    forward()
    OLD_FILE.write(make_latency_attrs())

    logger.debug(f"num unique pes {state.state.num_unique_pes}")

    OLD_FILE.write(state.state.read_output_file())
    state.state.swap_output_file(OLD_FILE)

    # sort by lexico order in the index for determinism
    output_names = []
    for name, output_arg in outputs.items():
        output_names += sorted(
            [
                (name, idx, val_name)
                for idx, val_name in output_arg.val_names_map.items()
            ]
        )
    for name, idx, val in output_names:
        state.state.debug_print(f"output_map;{val}:{name}:{idx}")
    state.state.emit(
        f"return {', '.join([str(v) for _name, _idx, v in output_names])}: {', '.join(output_dtypes)}"
    )
    state.state.emit("}")


def parfor(**kwargs):
    kwargs = tuple(tuple(zip_with_scalar(k, range(*v))) for k, v in kwargs.items())

    def wrapper(body):
        for args in itertools.product(*kwargs):
            print(f"{args=}")
            idx = tuple(i for arg, i in args)
            pe_idx = extend_idx(idx)
            state.state.update_current_pe_idx(pe_idx=pe_idx)
            signature = inspect.signature(body)
            if "fma" in signature.parameters:
                # TODO: this is hacky but this code runs both during tb and regular code gen
                if os.getenv("TB_RANDOM") is not None:
                    fma = FPFMAC(*pe_idx)
                else:
                    fma = FMAC(*pe_idx)
                res_arr = body(**dict(args + (("fma", fma),)))
                res_arr[idx] = fma.Result()
            else:
                body(**dict(args))

    return wrapper


def make_output_file(fp=None):
    if state.state is None:
        state.state = state.State(open(fp.replace(".py", ".mlir"), "w"))


def run_model_with_fp_number(mod, inputs, width_exponent, width_fraction):
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
    mod.forward(**test_args)
    return test_args, outputs
