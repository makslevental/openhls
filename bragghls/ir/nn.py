import logging

import numpy as np
import torch
from torch import nn
from torch_mlir import run_pipeline_with_repro_report
from torch_mlir.dialects.torch.importer.jit_ir import ClassAnnotator, ModuleBuilder
from torch_mlir.dialects.torch.importer.jit_ir.torchscript_annotations import (
    extract_annotations,
)

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

LOWERING_PIPELINE = [
    "func.func(cse)",
    # "func.func(convert-linalg-to-loops)",
    # TODO fix emitter to handle parallel scf loops (this is hella lazy)
    # "func.func(convert-linalg-to-affine-loops)",
    "func.func(convert-linalg-to-parallel-loops)",
    "func.func(scf-parallel-loop-fusion)",
    # "func.func(lower-affine)",
    "func.func(promote-buffers-to-stack{max-alloc-size-in-bytes=1000000000 max-rank-of-allocated-memref=10})",
    "cse",
]

PIPELINE = (
    [
        "torchscript-module-to-torch-backend-pipeline",
        "torch-backend-to-linalg-on-tensors-backend-pipeline",
    ]
    + BUFFERIZATION_PIPELINE
    + LOWERING_PIPELINE
)


def script_module_with_annotations(test_module, annotations=None):
    class_annotator = ClassAnnotator()
    recursivescriptmodule = torch.jit.script(test_module)
    torch._C._jit_pass_inline(recursivescriptmodule.graph)

    if annotations is not None:
        type = recursivescriptmodule._c._type()
        class_annotator.exportNone(type)
        class_annotator.exportPath(type, ["forward"])
        class_annotator.annotateArgs(type, ["forward"], annotations)
    else:
        extract_annotations(test_module, recursivescriptmodule, class_annotator)
    return recursivescriptmodule, class_annotator


def compile_nn_module_to_mlir(nn_mod, shapes_dtypes=None):
    logger.info("Compiling PyTorch to MLIR")
    if shapes_dtypes is not None:
        shapes_dtypes = [None] + [
            (in_shape, dtype, True) for in_shape, dtype in shapes_dtypes
        ]

    recursivescriptmodule, class_annotator = script_module_with_annotations(
        nn_mod, shapes_dtypes
    )

    mb = ModuleBuilder()
    mb.import_module(recursivescriptmodule._c, class_annotator)
    run_pipeline_with_repro_report(mb.module, ",".join(PIPELINE), "")

    return mb.module


FIXED = np.linspace(0, 0.1, 101)


def set_weights(mod, typ=torch.float32, val=1, requires_grad=False, fixed=False):
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
            else:
                nn.init.constant_(m.bias, val)
                m.bias.requires_grad_(False)
                m.bias = torch.nn.Parameter(
                    m.bias.type(typ), requires_grad=requires_grad
                )
