import inspect
import io
import itertools
from textwrap import indent, dedent

from bragghls import state
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


def make_args_globals(args):
    inputs = []
    output = []
    globals = []
    for _arg_name, arg in args.items():
        if isinstance(arg, MemRef):
            if arg.input:
                inputs.extend(arg.val_names)
            elif arg.output:
                output.append(arg)
        elif isinstance(arg, GlobalMemRef):
            globals.extend(arg.val_names)

    assert len(output) == 1
    output = output[0]
    return inputs, globals, output


def MLIRForward(args, forward):
    inputs, globals, output = make_args_globals(args)
    output_dtypes = ", ".join([state.state.dtype] * output.numel)
    inps_globals = [f"{v}: {state.state.dtype}" for v in inputs + globals]
    state.state.emit(
        f"func.func @forward({', '.join(inps_globals)}) -> ({output_dtypes})\n"
    )

    OLD_FILE = state.state.swap_output_file(io.StringIO())
    forward()
    OLD_FILE.write(make_latency_attrs())

    logger.debug(f"num unique pes {state.state.num_unique_pes}")

    OLD_FILE.write(state.state.read_output_file())
    state.state.swap_output_file(OLD_FILE)

    state.state.emit(f"return {', '.join(output.val_names)}: {output_dtypes}")
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
