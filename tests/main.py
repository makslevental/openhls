import os
import shutil

import torch

from bragghls.compiler.compile import scf_to_affine, translate, rewrite
from tests.registry import GLOBAL_TEST_REGISTRY
from tests.test_suite import register_all_tests
from bragghls.ir.nn import compile_nn_module_to_mlir


class FakeModuleForShapes:
    shapes = []

    def __init__(self, model):
        self.model = model

    def forward(self, *args, **kwargs):
        self.shapes = []
        if kwargs:
            raise Exception
        for arg in args:
            self.shapes.append((list(arg.shape), arg.dtype))
        return self.model(*args)

def main():
    register_all_tests()
    for test in GLOBAL_TEST_REGISTRY:
        name, program_factory, program_invoker = test
        artifacts_dir = f"{name}"
        model = program_factory()
        model.eval()
        fake = FakeModuleForShapes(model)
        try:
            program_invoker(fake, torch)
            mlir_module = compile_nn_module_to_mlir(
                model,
                fake.shapes
            )
            os.makedirs(artifacts_dir, exist_ok=True)
            affine_mlir_str = scf_to_affine(str(mlir_module))
            with open(f"{artifacts_dir}/{name}_affine.mlir", "w") as f:
                f.write(affine_mlir_str)
            pythonized_mlir = translate(affine_mlir_str)
            with open(f"{artifacts_dir}/{name}_pythonized.py", "w") as f:
                f.write(pythonized_mlir)
            rewritten_py_code = rewrite(pythonized_mlir)
            with open(f"{artifacts_dir}/{name}_rewritten.py", "w") as f:
                f.write(rewritten_py_code)
        except Exception as e:
            print(name, "failed")
            if os.path.exists(artifacts_dir):
                shutil.rmtree(artifacts_dir)


if __name__ == "__main__":
    main()