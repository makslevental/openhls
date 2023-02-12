import argparse
import os
from pathlib import Path

import torch
from torch import nn

from openhls.ir.nn import (
    compile_nn_module_to_mlir,
    set_weights,
    TosaOrLinalg,
    BufferizationStrategy,
    LoopLoweringType,
)

SCALE_HLS_COMPILE = int(os.getenv("SCALE_HLS_COMPILE", default=0))
UNROLL_FACTOR = int(os.getenv("UNROLL_FACTOR", default=0))


def compile(mod, annots):
    if SCALE_HLS_COMPILE:
        return compile_nn_module_to_mlir(
            mod,
            annots,
            backend_pipeline=TosaOrLinalg.LINALG,
            lower=True,
            bufferization_strategy=BufferizationStrategy.FULL,
            bufferize=True,
            loop_lowering=LoopLoweringType.AFFINE_LOOPS,
            unroll=True if UNROLL_FACTOR > 0 else False,
            unroll_factor=UNROLL_FACTOR,
        )
    else:
        return compile_nn_module_to_mlir(
            mod,
            annots,
            backend_pipeline=TosaOrLinalg.LINALG,
            lower=True,
            bufferization_strategy=BufferizationStrategy.FULL,
            bufferize=True,
            loop_lowering=LoopLoweringType.PARALLEL_LOOPS,
        )


class SimpleTernarySum(nn.Module):
    def __init__(self):
        super().__init__()

    def forward(self, x, y, z):
        return x + y + z


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


class MatMul(nn.Module):
    def __init__(self):
        super().__init__()

    def forward(self, mat1, mat2):
        return torch.mm(mat1, mat2)


class DoubleCNN(nn.Module):
    def __init__(self, scale1, scale2=8, in_channels=1):
        super().__init__()
        self.conv1 = torch.nn.Conv2d(in_channels, scale2 * scale1, 3)
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


class SimpleSumAfterTiling(nn.Module):
    def __init__(self):
        super().__init__()
        self.conv1_1 = torch.nn.Conv2d(2, 8, 3)
        self.conv1_2 = torch.nn.Conv2d(2, 8, 3)

    def forward(self, x):
        z = self.conv1_1(x)
        w = self.conv1_2(x)
        zz = z + 1
        ww = w + 2
        return (zz + ww).sum()


class ConvPlusReLU(nn.Module):
    def __init__(self, in_channels, out_channels, bias=True):
        super().__init__()
        self.conv1 = torch.nn.Conv2d(in_channels, out_channels, 3, bias=bias)
        self.conv2 = torch.nn.Conv2d(out_channels, in_channels, 3, bias=bias)
        self.relu = torch.nn.ReLU()

    def forward(self, x):
        x = self.conv1(x)
        x = self.conv2(x)
        x = self.relu(x)
        return x


class Conv(nn.Module):
    def __init__(self, in_channels, out_channels, bias=True):
        super().__init__()
        self.conv1 = torch.nn.Conv2d(in_channels, out_channels, 3, bias=bias)

    def forward(self, x):
        x = self.conv1(x)
        return x


class Exp(nn.Module):
    def __init__(self):
        super().__init__()

    # https://dl.acm.org/doi/pdf/10.1145/2851507
    # https://hal.inria.fr/inria-00071879/document
    def forward(self, x):
        y1 = x
        y2 = y1 * y1 * 0.5
        y3 = y2 * 0.03333333333333328
        y4 = y2 * y2 * 0.08333333333333333
        return (y1 + y2) + (y3 + y4) + 1
        # return (
        #     x
        #     + (x * x) * 0.5
        #     + (x * x * x) * 0.16666666666666666
        #     + (x * x * x * x) * 0.041666666666666664
        #     + 1
        # )


class SoftMax(nn.Module):
    def __init__(self):
        super().__init__()
        self.exp = Exp()

    def forward(self, x):
        # x += -x.max()
        y = self.exp(x)
        z = y.sum()
        factor = 1 / z
        return y * factor


class Max(nn.Module):
    def __init__(self, size):
        super().__init__()

    def forward(self, x):
        return x.max()


class Neg(nn.Module):
    def __init__(self, size):
        super().__init__()

    def forward(self, x):
        return -x


class SubMax(nn.Module):
    def __init__(self, size):
        super().__init__()

    def forward(self, x):
        return x - x.max()


class Sub(nn.Module):
    def __init__(self, size):
        super().__init__()

    def forward(self, x):
        return x - 1


class SubSelf(nn.Module):
    def __init__(self, size):
        super().__init__()

    def forward(self, x):
        return x - x


class SubOne(nn.Module):
    def __init__(self, size):
        super().__init__()
        self.y = torch.ones(5)

    def forward(self, x):
        # return x + (-x.max())
        return self.y - 1


class ReLU(nn.Module):
    def __init__(self, size):
        super().__init__()
        self.relu = torch.nn.ReLU()

    def forward(self, x):
        return self.relu(x)


class MaxPool2dCeilModeTrueModule(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.mp2d = torch.nn.MaxPool2d(
            kernel_size=[3, 3], stride=[2, 2], dilation=[1, 1]
        )

    def forward(self, x):
        return self.mp2d(x)


class Div(nn.Module):
    def __init__(self):
        super(Div, self).__init__()

    def forward(self, y):
        return 1 / y


class BatchNorm2DModule(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.bn2d = torch.nn.BatchNorm2d(2)
        self.bn2d.eval()
        self.bn2d.running_mean = torch.tensor([0.5, 0.4])
        self.bn2d.running_var = torch.tensor([3.0, 2.0])
        self.bn2d.weight = torch.nn.Parameter(torch.tensor([3.0, 2.0]))
        self.bn2d.bias = torch.nn.Parameter(torch.tensor([0.5, 0.4]))

    def forward(self, x):
        return self.bn2d(x)


class AddmmModuleFloat(torch.nn.Module):
    def __init__(self):
        super().__init__()

    def forward(self, M, mat1, mat2):
        return torch.addmm(M, mat1, mat2, beta=3.0, alpha=7.0)


def make_dot_product(size=11):
    with torch.no_grad():
        mod = Dot()
        mod.eval()
        print(mod)
    mlir_module = compile(
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
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)
    mlir_module = compile(
        mod,
        [
            ([1, size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_matmul(size):
    N = M = K = size
    with torch.no_grad():
        mod = MatMul()
        mod.eval()
    mlir_module = compile(
        mod,
        [
            ([M, N], torch.float32),
            ([N, K], torch.float32),
        ],
    )
    return str(mlir_module)


def make_linear_no_sum(size=11, simplify_weights=False, bias=True):
    with torch.no_grad():
        mod = LinearNoSum(size, bias=bias)
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)
    mlir_module = compile(
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
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)

    mlir_module = compile(
        mod,
        [
            ([1, in_channels, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_conv(
    img_size=11, in_channels=1, out_channels=3, simplify_weights=False, bias=True
):
    with torch.no_grad():
        mod = Conv(in_channels, out_channels, bias)
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)

    mlir_module = compile(
        mod,
        [
            ([1, in_channels, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_double_small_cnn(
    img_size=11, scale1=2, scale2=8, in_channels=2, simplify_weights=False
):
    with torch.no_grad():
        mod = DoubleCNN(scale1, scale2, in_channels)
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)

    mlir_module = compile(
        mod,
        [
            ([1, in_channels, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_soft_max(scale=3, img_size=11):
    with torch.no_grad():
        mod = SoftMax()
        mod.eval()
        print(mod)
        x = torch.randn((1, scale, img_size, img_size))
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([1, scale, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_max(size=8):
    with torch.no_grad():
        mod = Max(size)
        mod.eval()
        print(mod)
        x = torch.randn(size)
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_sub_max(size=8):
    with torch.no_grad():
        mod = SubMax(size)
        mod.eval()
        print(mod)
        x = torch.randn(size)
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_sub(size=8):
    with torch.no_grad():
        mod = Sub(size)
        mod.eval()
        print(mod)
        x = torch.randn(size)
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_sub_self(size=8):
    with torch.no_grad():
        mod = SubSelf(size)
        mod.eval()
        print(mod)
        x = torch.randn(size)
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_sub_one(size=8):
    with torch.no_grad():
        mod = SubOne(size)
        mod.eval()
        print(mod)
        x = torch.randn(size)
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_relu(size=8):
    with torch.no_grad():
        mod = ReLU(size)
        mod.eval()
        print(mod)
        x = torch.randn(size)
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_neg(size=8):
    with torch.no_grad():
        mod = Neg(size)
        mod.eval()
        print(mod)
        x = torch.randn(size)
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_exp(scale=8, img_size=11):
    with torch.no_grad():
        mod = Exp()
        mod.eval()
        print(mod)
        x = torch.randn((1, scale, img_size, img_size))
        z = mod(x)
    mlir_module = compile(
        mod,
        [
            ([1, scale, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_ternary_sum(img_size=11):
    with torch.no_grad():
        mod = SimpleTernarySum()
        mod.eval()
        print(mod)
    mlir_module = compile(
        mod,
        [
            ([img_size], torch.float32),
            ([img_size], torch.float32),
            ([img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_div(img_size=11):
    with torch.no_grad():
        mod = Div()
        mod.eval()
        print(mod)
        y = torch.randn(img_size)
        z = mod(y)
    mlir_module = compile(
        mod,
        [
            ([img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_simple_sum(img_size=11):
    with torch.no_grad():
        mod = SimpleSumAfterTiling()
        mod.eval()
        print(mod)
        y = torch.randn(1, 2, img_size, img_size)
        z = mod(y)
    mlir_module = compile(
        mod,
        [
            ([1, 2, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_max_pool_2d(img_size=11):
    with torch.no_grad():
        mod = MaxPool2dCeilModeTrueModule()
        mod.eval()
        print(mod)
        y = torch.randn(1, 3, img_size, img_size)
        z = mod(y)
    mlir_module = compile(
        mod,
        [
            ([1, 3, img_size, img_size], torch.float32),
            # ([-1, -1, -1, -1], torch.float32),
        ],
    )
    return str(mlir_module)


def make_batch_norm(img_size=11):
    with torch.no_grad():
        mod = BatchNorm2DModule()
        mod.eval()
        # print(mod)
        # y = torch.randn(1, 1, img_size, img_size)
        # z = mod(y)
    mlir_module = compile(
        mod,
        [
            ([10, 2, 3, 3], torch.float32),
            # ([-1, -1, -1, -1], torch.float32),
        ],
    )
    return str(mlir_module)


def make_addmm(img_size=11):
    with torch.no_grad():
        mod = AddmmModuleFloat()
        mod.eval()
        # print(mod)
        # y = torch.randn(1, 1, img_size, img_size)
        # z = mod(y)
    mlir_module = compile(
        mod,
        [
            ([img_size, img_size], torch.float32),
            ([img_size, img_size], torch.float32),
            ([img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate MLIR for NN")
    parser.add_argument("--size", type=int, default=11)
    parser.add_argument("--out_dir", type=Path, default=Path(__file__).parent)
    parser.add_argument(
        "net",
        choices=[
            "dot_product",
            "linear",
            "linear_no_sum",
            "matmul",
            "conv",
            "batch_norm",
            "addmm",
            "small_cnn",
            "double_cnn",
            "soft_max",
            "exp",
            "div",
            "simple_sum",
            "max_pool_2d",
            "max",
            "sub",
            "sub_self",
            "sub_one",
            "sub_max",
            "relu",
            "neg",
        ],
        default="linear",
    )
    args = parser.parse_args()

    out_dir = (args.out_dir / f"{args.net}_{args.size}").resolve()
    os.makedirs(out_dir, exist_ok=True)
    if args.net == "dot_product":
        mlir_str = make_dot_product(size=args.size)
    elif args.net == "linear":
        mlir_str = make_linear(size=args.size)
    elif args.net == "linear_no_sum":
        mlir_str = make_linear_no_sum(size=args.size)
    elif args.net == "matmul":
        mlir_str = make_matmul(args.size)
    elif args.net == "small_cnn":
        mlir_str = make_single_small_cnn(img_size=args.size)
    elif args.net == "conv":
        mlir_str = make_conv(img_size=args.size)
    elif args.net == "batch_norm":
        mlir_str = make_batch_norm(img_size=args.size)
    elif args.net == "addmm":
        mlir_str = make_addmm(img_size=args.size)
    elif args.net == "double_cnn":
        mlir_str = make_double_small_cnn(img_size=args.size)
    elif args.net == "soft_max":
        mlir_str = make_soft_max(img_size=args.size)
    elif args.net == "max":
        mlir_str = make_max(size=args.size)
    elif args.net == "relu":
        mlir_str = make_relu(size=args.size)
    elif args.net == "sub":
        mlir_str = make_sub(size=args.size)
    elif args.net == "sub_self":
        mlir_str = make_sub_self(size=args.size)
    elif args.net == "sub_one":
        mlir_str = make_sub_one(size=args.size)
    elif args.net == "sub_max":
        mlir_str = make_sub_max(size=args.size)
    elif args.net == "neg":
        mlir_str = make_neg(size=args.size)
    elif args.net == "exp":
        mlir_str = make_exp(img_size=args.size)
    elif args.net == "div":
        mlir_str = make_div(img_size=args.size)
    elif args.net == "simple_sum":
        mlir_str = make_simple_sum(img_size=args.size)
    elif args.net == "max_pool_2d":
        mlir_str = make_max_pool_2d(img_size=args.size)
    else:
        raise Exception(f"unknown net {args.net}")

    if UNROLL_FACTOR:
        open(f"{out_dir}/{args.net}_{UNROLL_FACTOR}.mlir", "w").write(mlir_str)
    else:
        open(f"{out_dir}/{args.net}.mlir", "w").write(mlir_str)
