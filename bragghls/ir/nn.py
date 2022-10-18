import logging
from enum import Enum

import numpy as np
import torch
from torch import nn
from torch_mlir import run_pipeline_with_repro_report
from torch_mlir.dialects.torch.importer.jit_ir import ClassAnnotator, ModuleBuilder

logger = logging.getLogger(__name__)

BUFFERIZATION_PIPELINE = [
    # Bufferize.
    "func.func(scf-bufferize)",
    "func.func(tm-tensor-bufferize)",
    "func.func(linalg-init-tensor-to-alloc-tensor)",
    "func.func(linalg-bufferize)",
    "func-bufferize",
    "arith-bufferize",
    "func.func(tensor-bufferize)",
    "func.func(buffer-loop-hoisting)",
    "func.func(finalizing-bufferize)",
]

ONE_SHOT_BUFFERIZATION_PIPELINE = [
    "func.func(linalg-init-tensor-to-alloc-tensor)",
    "one-shot-bufferize",
    "func-bufferize",
    "arith-bufferize",
    "func.func(finalizing-bufferize)",
]


class TosaOrLinalg(Enum):
    TOSA = "tosa"
    LINALG = "linalg"


class BufferizationStrategy(Enum):
    FULL = "full"
    ONE_SHOT = "one_shot"


class LoopLoweringType(Enum):
    LOOPS = "loops"
    AFFINE_LOOPS = "affine_loops"
    PARALLEL_LOOPS = "parallel_loops"


def lowering_pipeline(loop_type: LoopLoweringType):
    if loop_type == LoopLoweringType.LOOPS:
        loop_lowering = "func.func(convert-linalg-to-loops)"
    elif loop_type == LoopLoweringType.AFFINE_LOOPS:
        loop_lowering = "func.func(convert-linalg-to-affine-loops)"
    elif loop_type == LoopLoweringType.PARALLEL_LOOPS:
        loop_lowering = "func.func(convert-linalg-to-parallel-loops)"
    else:
        raise Exception(f"unknown loop type {loop_type}")

    return [
        "func.func(cse)",
        loop_lowering,
        # "func.func(lower-affine)",
        "func.func(promote-buffers-to-stack{max-alloc-size-in-bytes=1000000000 max-rank-of-allocated-memref=10})",
        "cse",
    ]


def unrolling_pipeline(unroll_factor):
    return [
        # f"func.func(affine-loop-unroll{{unroll-full unroll-full-threshold={unroll_factor}}})",
        f"func.func(affine-loop-unroll{{unroll-factor={unroll_factor} unroll-up-to-factor=1}})"
        if unroll_factor < 100
        else f"func.func(affine-loop-unroll{{unroll-full unroll-full-threshold={unroll_factor}}})",
        # f"func.func(affine-loop-unroll{{unroll-factor={unroll_factor} unroll-up-to-factor=0}})",
        # f"func.func(affine-loop-unroll-jam{{unroll-jam-factor={unroll_factor}}})",
    ]


def script_module_with_annotations(test_module, annotations):
    class_annotator = ClassAnnotator()
    recursivescriptmodule = torch.jit.script(test_module)
    torch._C._jit_pass_inline(recursivescriptmodule.graph)

    type = recursivescriptmodule._c._type()
    class_annotator.exportNone(type)
    class_annotator.exportPath(type, ["forward"])
    class_annotator.annotateArgs(type, ["forward"], annotations)
    return recursivescriptmodule, class_annotator


def compile_nn_module_to_mlir(
    nn_mod,
    shapes_dtypes,
    backend_pipeline=TosaOrLinalg.LINALG,
    lower=True,
    bufferization_strategy=BufferizationStrategy.FULL,
    bufferize=True,
    loop_lowering=LoopLoweringType.PARALLEL_LOOPS,
    unroll=False,
    unroll_factor=2 ** 10,
):
    logger.info("Compiling PyTorch to MLIR")
    recursivescriptmodule, class_annotator = script_module_with_annotations(
        nn_mod,
        [None] + [(in_shape, dtype, True) for in_shape, dtype in shapes_dtypes],
    )

    mb = ModuleBuilder()
    mb.import_module(recursivescriptmodule._c, class_annotator)
    pipeline = ["torchscript-module-to-torch-backend-pipeline"]
    if backend_pipeline == TosaOrLinalg.LINALG:
        pipeline.append("torch-backend-to-linalg-on-tensors-backend-pipeline")
    elif backend_pipeline == TosaOrLinalg.TOSA:
        pipeline.append("torch-backend-to-tosa-backend-pipeline")
    else:
        raise Exception(f"unknown backend pipeline {backend_pipeline}")

    if bufferize:
        if bufferization_strategy == BufferizationStrategy.FULL:
            pipeline.extend(BUFFERIZATION_PIPELINE)
        elif bufferization_strategy == BufferizationStrategy.ONE_SHOT:
            pipeline.extend(ONE_SHOT_BUFFERIZATION_PIPELINE)
        else:
            raise Exception(f"unknown bufferization strategy {bufferization_strategy}")

    if lower:
        pipeline.extend(lowering_pipeline(loop_lowering))

    if unroll:
        pipeline.extend(unrolling_pipeline(unroll_factor))

    print(pipeline)
    run_pipeline_with_repro_report(mb.module, ",".join(pipeline), "")

    return mb.module


FIXED = np.linspace(0, 0.1, 101)


def set_weights(
    mod, typ=torch.float32, val=1, requires_grad=False, fixed=False, random=True
):
    np.random.random_sample()
    for m in mod.modules():
        if hasattr(m, "weight"):
            if fixed:
                m.weight = torch.nn.Parameter(
                    torch.from_numpy(
                        np.random.choice(FIXED, m.weight.numel())
                        .astype(np.float16, casting="unsafe")
                        .reshape(m.weight.shape)
                    ).type(typ),
                    requires_grad=requires_grad,
                )
            elif random:
                nn.init.constant_(m.weight, np.random.randint(1, 100))
                m.weight.requires_grad_(False)
                m.weight = torch.nn.Parameter(
                    m.weight.type(typ), requires_grad=requires_grad
                )
            else:
                nn.init.constant_(m.weight, val)
                m.weight.requires_grad_(False)
                m.weight = torch.nn.Parameter(
                    m.weight.type(typ), requires_grad=requires_grad
                )
        if hasattr(m, "bias") and m.bias is not None:
            if fixed:
                m.bias = torch.nn.Parameter(
                    torch.from_numpy(
                        np.random.choice(FIXED, m.bias.numel())
                        .astype(np.float16, casting="unsafe")
                        .reshape(m.bias.shape)
                    ).type(typ),
                    requires_grad=requires_grad,
                )
            elif random:
                nn.init.constant_(m.bias, np.random.randint(1, 100))
                m.bias.requires_grad_(False)
                m.bias = torch.nn.Parameter(
                    m.bias.type(typ), requires_grad=requires_grad
                )
            else:
                nn.init.constant_(m.bias, val)
                m.bias.requires_grad_(False)
                m.bias = torch.nn.Parameter(
                    m.bias.type(typ), requires_grad=requires_grad
                )
