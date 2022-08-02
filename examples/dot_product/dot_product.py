import argparse
import os
from pathlib import Path

import torch
from torch import nn

from bragghls.ir.nn import compile_nn_module_to_mlir


class Dot(nn.Module):
    def __init__(self):
        super().__init__()

    def forward(self, x, y):
        return (x * y).sum()


def make_dot(size=11):
    with torch.no_grad():
        mod = Dot()
        mod.eval()
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([size], torch.float32),
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="make stuff")
    parser.add_argument(
        "--out_dir",
        type=Path,
        default=Path(__file__).parent / "dot_bragghls_artifacts",
    )
    parser.add_argument("--size", type=int, default=8)
    args = parser.parse_args()
    args.out_dir = args.out_dir.resolve()
    dot_str = make_dot(args.size)
    os.makedirs(f"{args.out_dir}", exist_ok=True)
    open(f"{args.out_dir}/dot.mlir", "w").write(dot_str)
