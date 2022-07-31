import inspect
import io
import itertools
from textwrap import indent, dedent

import numpy as np

from bragghls import state
from bragghls.flopoco.ops import (
    MemRef as FPMemRef,
    GlobalMemRef as FPGlobalMemRef,
    FMAC as FPFMAC,
)
from bragghls.memref import MemRef, GlobalMemRef
from bragghls.ops import LATENCIES, OpType
from bragghls.state import logger
from bragghls.util import extend_idx


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


def MLIRForward(args, forward):
    inputs, globals, outputs = get_py_module_args_globals(args)

    input_names = sorted(
        [str(name) for inp in inputs.values() for name in inp.val_names_map.values()]
    )
    global_names = sorted(
        [str(name) for inp in globals.values() for name in inp.val_names_map.values()]
    )

    assert len(outputs) == 1
    output_arg = next(iter(outputs.values()))
    output_dtypes = ", ".join([state.state.dtype] * len(output_arg.val_names_map))
    inps_globals = [f"{v}: {state.state.dtype}" for v in input_names + global_names]
    state.state.emit(
        f"func.func @forward({', '.join(inps_globals)}) -> ({output_dtypes})\n"
    )

    OLD_FILE = state.state.swap_output_file(io.StringIO())
    forward()
    OLD_FILE.write(make_latency_attrs())

    logger.debug(f"num unique pes {state.state.num_unique_pes}")

    OLD_FILE.write(state.state.read_output_file())
    state.state.swap_output_file(OLD_FILE)

    output_names = sorted([str(val) for val in output_arg.val_names_map.values()])
    state.state.emit(f"return {', '.join(output_names)}: {output_dtypes}")
    state.state.emit("}")


def parfor(ranges):
    def wrapper(body):
        for i, idx in enumerate(itertools.product(*ranges)):
            state.state.pe_idx = extend_idx(idx)
            body(*idx)

    return wrapper


def make_output_file(fp=None):
    if state.state is None:
        state.state = state.State(open(fp.replace(".py", ".mlir"), "w"))


def Forward(forward):
    args = get_default_args(forward)
    MLIRForward(args, forward)


def run_model_with_fp_number(mod, inputs, wE, wF):
    file = io.StringIO()
    state.state = state.State(file)
    args = get_default_args(mod.forward)
    test_args = {}
    outputs = {}
    for name, arg in args.items():
        if isinstance(arg, MemRef) and arg.input:
            test_args[name] = FPMemRef.from_memref(arg, wE, wF, inputs[name])
        elif isinstance(arg, MemRef) and arg.output:
            outputs[name] = test_args[name] = FPMemRef.from_memref(
                arg, wE, wF, np.zeros(arg.shape)
            )
        elif isinstance(arg, GlobalMemRef):
            test_args[name] = FPGlobalMemRef.from_global_memref(arg, wE, wF)
        else:
            raise Exception("wtfbbq")

    FPFMAC.wE = wE
    FPFMAC.wF = wF
    mod.FMAC = FPFMAC
    mod.MemRef = FPMemRef
    mod.GlobalMemRef = FPGlobalMemRef
    mod.forward(**test_args)
    return test_args, outputs
