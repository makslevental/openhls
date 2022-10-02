import argparse
import os
from collections import OrderedDict
from pathlib import Path

import torch
from torch.nn import Conv2d, Sequential, ReLU, Linear

from bragghls.ir.nn import set_weights, compile_nn_module_to_mlir
from simple_nns import SoftMax


class Part1(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.cnn_layers_1 = Conv2d(1, 16, kernel_size=(3, 3), stride=(1, 1))
        self.theta_layer = Conv2d(16, 8, kernel_size=(1, 1), stride=(1, 1))
        self.phi_layer = Conv2d(16, 8, kernel_size=(1, 1), stride=(1, 1))
        self.g_layer = Conv2d(16, 8, kernel_size=(1, 1), stride=(1, 1))
        self.soft = SoftMax()

    def forward(self, inp):
        # print(inp.shape)
        x = self.cnn_layers_1(inp)

        theta = self.theta_layer(x)
        phi = self.phi_layer(x)
        g = self.g_layer(x)

        theta_phi = theta * phi
        theta_phi = self.soft(theta_phi)
        theta_phi_g = theta_phi * g

        return theta_phi_g, x


class Part2(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.out_cnn = Conv2d(8, 16, kernel_size=(1, 1), stride=(1, 1))
        self.cnn_layers_2 = Sequential(
            ReLU(),
            Conv2d(16, 8, kernel_size=(3, 3), stride=(1, 1)),
            ReLU(),
        )

    def forward(self, theta_phi_g, x):
        # print(theta_phi_g.shape, x.shape)
        out = self.out_cnn(theta_phi_g)
        out = out * x
        out = self.cnn_layers_2(out)
        return out


class Part3(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.cnn_layers_2 = Sequential(
            Conv2d(8, 2, kernel_size=(3, 3), stride=(1, 1)),
            ReLU(),
        )
        self.dense_layers = Sequential(
            Linear(in_features=50, out_features=16, bias=True),
            ReLU(),
            Linear(in_features=16, out_features=8, bias=True),
            ReLU(),
            Linear(in_features=8, out_features=4, bias=True),
            ReLU(),
            Linear(in_features=4, out_features=2, bias=True),
            ReLU(),
        )

    def forward(self, inp):
        # print(inp.shape)
        out = self.cnn_layers_2(inp)
        out = out.flatten(start_dim=1)
        return self.dense_layers(out)


class MyBraggNN(torch.nn.Module):
    def __init__(self):
        super().__init__()
        self.part1 = Part1()
        self.part2 = Part2()
        self.part3 = Part3()

    def forward(self, x):
        theta_phi_g, x = self.part1(x)
        out = self.part2(theta_phi_g, x)
        return self.part3(out)


class NLB(torch.nn.Module):
    def __init__(self, in_ch, relu_a=0.01):
        self.inter_ch = in_ch // 2
        super().__init__()
        self.theta_layer = torch.nn.Conv2d(
            in_channels=in_ch, out_channels=self.inter_ch, kernel_size=1, padding=0
        )
        self.phi_layer = torch.nn.Conv2d(
            in_channels=in_ch, out_channels=self.inter_ch, kernel_size=1, padding=0
        )
        self.g_layer = torch.nn.Conv2d(
            in_channels=in_ch, out_channels=self.inter_ch, kernel_size=1, padding=0
        )

        self.out_cnn = torch.nn.Conv2d(
            in_channels=self.inter_ch, out_channels=in_ch, kernel_size=1, padding=0
        )
        self.soft = SoftMax()

    def forward(self, x):
        theta = self.theta_layer(x)
        phi = self.phi_layer(x)
        g = self.g_layer(x)

        theta_phi = theta * phi
        theta_phi = self.soft(theta_phi)
        theta_phi_g = theta_phi * g

        _out_tmp = self.out_cnn(theta_phi_g)
        _out_tmp = _out_tmp * x

        return _out_tmp


SCALE = 4


class BraggNN(torch.nn.Module):
    def __init__(self, imgsz=11, scale=SCALE):
        super().__init__()
        fcsz = tuple(map(int, (16 * scale, 8 * scale, 4 * scale, 2 * scale)))
        self.cnn_ops = []
        cnn_out_chs = tuple(map(int, (16 * scale, 8 * scale, 2 * scale)))
        cnn_in_chs = (1,) + cnn_out_chs[:-1]
        fsz = imgsz
        for (ic, oc) in zip(cnn_in_chs, cnn_out_chs):
            self.cnn_ops += [
                torch.nn.Conv2d(
                    in_channels=ic, out_channels=oc, kernel_size=3, stride=1, padding=0
                ),
                torch.nn.ReLU(),
            ]
            fsz -= 2
        self.nlb = NLB(in_ch=cnn_out_chs[0])
        self.dense_ops = []
        dense_in_chs = (fsz * fsz * cnn_out_chs[-1],) + fcsz[:-1]
        for ic, oc in zip(dense_in_chs, fcsz):
            self.dense_ops += [
                torch.nn.Linear(ic, oc),
                torch.nn.ReLU(),
            ]
        # output layer
        if fcsz[-1] != 2:
            self.dense_ops += [torch.nn.Linear(fcsz[-1], 2)]

        self.cnn_layers_1 = self.cnn_ops[0]
        self.cnn_layers_2 = torch.nn.Sequential(*self.cnn_ops[1:])
        self.dense_layers = torch.nn.Sequential(*self.dense_ops)

    def forward(self, x):
        _out = x
        _out = self.cnn_layers_1(_out)
        _out = self.nlb(_out)
        _out = self.cnn_layers_2(_out)
        _out = _out.flatten(start_dim=1)
        _out = self.dense_layers(_out)

        return _out


def make_braggn(scale, img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = MyBraggNN()
        # weights = torch.load(
        #     "my_fc16_8_4_2-sz11.pth", map_location=torch.device("cpu")
        # )
        # mod.load_state_dict(weights)
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
    # def get_asm(self, binary: bool = False, large_elements_limit: Optional[int] = None, enable_debug_info: bool = False, pretty_debug_info: bool = False, print_generic_op_form: bool = False, use_local_scope: bool = False, assume_verified: bool = False) -> object: ...
    # asm = mlir_module.operation.get_asm(
    #     large_elements_limit=10, enable_debug_info=True, pretty_debug_info=True, use_local_scope=True)
    return str(mlir_module)


def make_braggn_part1(scale, img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = Part1()
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


def make_braggn_part2(scale, img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = Part2()
        mod.eval()
        if simplify_weights:
            mod.apply(set_weights)
        z = mod(
            torch.randn(1, 8, img_size - 2, img_size - 2),
            torch.randn(1, 16, img_size - 2, img_size - 2),
        )
        print(z.shape)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 8, img_size - 2, img_size - 2], torch.float32),
            ([1, 16, img_size - 2, img_size - 2], torch.float32),
        ],
    )
    return str(mlir_module)


def make_braggn_part3(scale, img_size=11, simplify_weights=True):
    with torch.no_grad():
        mod = Part3()
        mod.eval()
        if simplify_weights:
            mod.apply(set_weights)

        z = mod(torch.randn(1, 8, img_size - 4, img_size - 4))
        print(z.shape)
    mlir_module = compile_nn_module_to_mlir(
        mod,
        [
            ([1, 8, img_size - 4, img_size - 4], torch.float32),
        ],
    )
    return str(mlir_module)


def rename_state_dict_keys(source, key_transformation, target=None):
    if target is None:
        target = source

    state_dict = torch.load(source, map_location=torch.device("cpu"))
    new_state_dict = OrderedDict()

    for key, value in state_dict.items():
        new_key = key_transformation(key)
        new_state_dict[new_key] = value

    torch.save(new_state_dict, target)


def map_zhengchun_weights():
    weights_map = dict(
        zip(
            (
                "cnn_layers.0.weight",
                "cnn_layers.0.bias",
                "cnn_layers.2.weight",
                "cnn_layers.2.bias",
                "cnn_layers.4.weight",
                "cnn_layers.4.bias",
            ),
            (
                "cnn_layers_1.weight",
                "cnn_layers_1.bias",
                "cnn_layers_2.1.weight",
                "cnn_layers_2.1.bias",
                "cnn_layers_2.3.weight",
                "cnn_layers_2.3.bias",
            ),
        )
    )

    def key_transform(old_key):
        return weights_map.get(old_key, old_key)

    rename_state_dict_keys(
        "fc16_8_4_2-sz11.pth", key_transform, "my_fc16_8_4_2-sz11.pth"
    )


if __name__ == "__main__":
    # map_zhengchun_weights()
    parser = argparse.ArgumentParser(description="make stuff")
    parser.add_argument("--out_dir", type=Path, default=Path(__file__).parent)
    parser.add_argument("--scale", type=int, default=1)
    parser.add_argument("--img_size", type=int, default=11)
    args = parser.parse_args()
    args.out_dir = args.out_dir.resolve()

    for i, make in enumerate(
        [make_braggn_part1, make_braggn_part2, make_braggn_part3], start=1
    ):
        out_dir = (
            args.out_dir / f"braggnn_{args.scale}_bragghls_artifacts_3_parts" / f"part_{i}"
        ).resolve()
        os.makedirs(f"{out_dir}", exist_ok=True)
        dot_str = make(args.scale, img_size=args.img_size, simplify_weights=False)
        open(f"{out_dir}/braggnn_part_{i}.mlir", "w").write(dot_str)
    out_dir = (
        args.out_dir / f"braggnn_{args.scale}_bragghls_artifacts"
    ).resolve()
    os.makedirs(f"{out_dir}", exist_ok=True)
    dot_str = make_braggn(args.scale, img_size=args.img_size, simplify_weights=False)
    open(f"{out_dir}/braggnn.mlir", "w").write(dot_str)
