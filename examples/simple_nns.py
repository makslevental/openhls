import argparse
import os
from pathlib import Path

import torch
from torch import nn

from bragghls.ir.nn import compile_nn_module_to_mlir, set_weights


class Linear(nn.Module):
    def __init__(self, imgsz, bias=True):
        super().__init__()
        self.linear1 = torch.nn.Linear(imgsz, imgsz, bias=bias)

    def forward(self, x):
        return self.linear1(x).sum()


class LinearNoSum(nn.Module):
    def __init__(self, imgsz, bias=True):
        super().__init__()
        self.linear1 = torch.nn.Linear(imgsz, imgsz, bias=bias)

    def forward(self, x):
        return self.linear1(x)


class Dot(nn.Module):
    def __init__(self):
        super().__init__()

    def forward(self, x, y):
        return (x * y).sum()


class DoubleCNN(nn.Module):
    def __init__(self, scale1, scale2=8):
        super().__init__()
        self.conv1 = torch.nn.Conv2d(1, scale2 * scale1, 3)
        self.conv2_1 = torch.nn.Conv2d(scale2 * scale1, scale2 // 2 * scale1, 1)
        self.conv2_2 = torch.nn.Conv2d(scale2 * scale1, scale2 // 2 * scale1, 1)
        self.conv2_3 = torch.nn.Conv2d(scale2 * scale1, scale2 // 2 * scale1, 1)
        self.conv3 = torch.nn.Conv2d(scale2 // 2 * scale1, scale2 * scale1, 1)
        self.conv4 = torch.nn.Conv2d(scale2 * scale1, scale2 // 2 * scale1, 3)

    def forward(self, x):
        y = self.conv1(x)
        z = self.conv2_1(y)
        w = self.conv2_2(y)
        u = self.conv2_3(y)
        uuu = z + w + u
        uu = self.conv3(uuu)
        return uu.sum()


class ConvPlusReLU(nn.Module):
    def __init__(self, in_channels, out_channels, bias=True):
        super().__init__()
        self.conv1 = torch.nn.Conv2d(in_channels, out_channels, 3, bias=bias)
        self.conv2 = torch.nn.Conv2d(out_channels, in_channels, 3, bias=bias)
        self.relu = torch.nn.ReLU()

    def forward(self, x):
        x = self.conv1(x)
        x = self.conv2(x).sum()
        return x


def make_dot_product(size=11):
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


def make_linear(size=11, simplify_weights=False, bias=True):
    with torch.no_grad():
        mod = Linear(size, bias=bias)
        mod.eval()
        if simplify_weights:
            mod.apply(set_weights)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_linear_no_sum(size=11, simplify_weights=False, bias=True):
    with torch.no_grad():
        mod = LinearNoSum(size, bias=bias)
        mod.eval()
        if simplify_weights:
            mod.apply(set_weights)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_single_small_cnn(
    img_size=11, in_channels=2, out_channels=8, simplify_weights=False, bias=True
):
    with torch.no_grad():
        mod = ConvPlusReLU(in_channels, out_channels, bias)
        mod.eval()
        if simplify_weights:
            mod.apply(set_weights)

    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, in_channels, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_double_small_cnn(img_size=11, scale1=1, scale2=8, simplify_weights=False):
    with torch.no_grad():
        mod = DoubleCNN(scale1, scale2)
        mod.eval()
        if simplify_weights:
            mod.apply(set_weights)

    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 1, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate MLIR for NN")
    parser.add_argument("--size", type=int, default=11)
    parser.add_argument("--out_dir", type=Path, default=Path(__file__).parent)
    parser.add_argument(
        "net",
        choices=["dot_product", "linear", "linear_no_sum", "small_cnn", "double_cnn"],
        default="linear",
    )
    args = parser.parse_args()

    out_dir = (args.out_dir / f"{args.net}_{args.size}_bragghls_artifacts").resolve()
    os.makedirs(out_dir, exist_ok=True)
    if args.net == "dot_product":
        mlir_str = make_dot_product(size=args.size)
    elif args.net == "linear":
        mlir_str = make_linear(size=args.size)
    elif args.net == "linear_no_sum":
        mlir_str = make_linear_no_sum(size=args.size)
    elif args.net == "small_cnn":
        mlir_str = make_single_small_cnn(img_size=args.size)
    elif args.net == "double_cnn":
        mlir_str = make_double_small_cnn(img_size=args.size)
    else:
        raise Exception(f"unknown net {args.net}")

    open(f"{out_dir}/{args.net}.mlir", "w").write(mlir_str)
