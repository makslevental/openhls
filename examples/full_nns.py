import argparse
import os
from pathlib import Path

import torch

from openhls.ir.nn import compile_nn_module_to_mlir, set_weights
from examples.braggnn import MyBraggNN
from examples.lenet import LeNet
from examples.mobilenet import MobileNet
from examples.resnet18 import ResNet18
from examples.vgg16 import VGG16


def make_braggn(img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = MyBraggNN()
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)
        x = torch.randn((1, 1, img_size, img_size))
        z = mod(x)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 1, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_lenet(img_size=32, simplify_weights=True):
    with torch.no_grad():
        mod = LeNet()
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)
        x = torch.randn((1, 3, img_size, img_size))
        z = mod(x)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 3, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_mobilenet(img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = MobileNet()
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)
        x = torch.randn((1, 3, img_size, img_size))
        z = mod(x)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 3, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_resnet18(img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = ResNet18()
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)
        x = torch.randn((1, 3, img_size, img_size))
        z = mod(x)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 3, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


def make_vgg16(img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = VGG16()
        mod.eval()
        print(mod)
        if simplify_weights:
            mod.apply(set_weights)
        x = torch.randn((1, 3, img_size, img_size))
        z = mod(x)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 3, img_size, img_size], torch.float32),
        ],
    )
    return str(mlir_module)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate MLIR for NN")
    parser.add_argument(
        "net",
        choices=["braggnn", "lenet", "mobilenet", "resnet18", "vgg16"],
        default="braggnn",
    )
    parser.add_argument("size", type=int)
    parser.add_argument("--out_dir", type=Path, default=Path(__file__).parent)
    args = parser.parse_args()

    out_dir = (args.out_dir / f"{args.net}_{args.size}").resolve()
    os.makedirs(out_dir, exist_ok=True)
    if args.net == "braggnn":
        mlir_str = make_braggn(img_size=args.size)
    elif args.net == "lenet":
        mlir_str = make_lenet(img_size=args.size)
    elif args.net == "mobilenet":
        mlir_str = make_mobilenet(img_size=args.size)
    elif args.net == "resnet18":
        mlir_str = make_resnet18(img_size=args.size)
    elif args.net == "vgg16":
        mlir_str = make_vgg16(img_size=args.size)
    else:
        raise Exception(f"unknown net {args.net}")

    open(f"{out_dir}/{args.net}.mlir", "w").write(mlir_str)
