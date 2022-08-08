import argparse
import os
from collections import OrderedDict
from pathlib import Path

import torch

from bragghls.ir.nn import set_weights, compile_nn_module_to_mlir
from examples.simple_nns import Softmax, Mul, Add


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
        self.soft = Softmax()

    def forward(self, x):
        theta = self.theta_layer(x)
        phi = self.phi_layer(x)
        g = self.g_layer(x)

        theta_phi = theta * phi
        theta_phi = self.soft(theta_phi)
        theta_phi_g = theta_phi * g

        _out_tmp = self.out_cnn(theta_phi_g)
        _out_tmp = _out_tmp + x

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
                # torch.nn.ReLU(),
            ]
            fsz -= 2
        self.nlb = NLB(in_ch=cnn_out_chs[0])
        self.dense_ops = []
        dense_in_chs = (fsz * fsz * cnn_out_chs[-1],) + fcsz[:-1]
        for ic, oc in zip(dense_in_chs, fcsz):
            self.dense_ops += [
                torch.nn.Linear(ic, oc),
                # torch.nn.ReLU(),
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
        mod = BraggNN(scale=scale, imgsz=img_size)
        # weights = torch.load(
        #     "my_fc16_8_4_2-sz11.pth", map_location=torch.device("cpu")
        # )
        torch.save(mod.state_dict(), "braggnn.pth")
        if os.path.exists("braggnn.pth"):
            mod.load_state_dict(torch.load("braggnn.pth"))
        mod.eval()
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
    parser = argparse.ArgumentParser(description="make stuff")
    parser.add_argument(
        "--out_dir",
        type=Path,
        default=Path(__file__).parent / "braggnn_bragghls_artifacts",
    )
    parser.add_argument("--scale", type=int, default=1)
    parser.add_argument("--img_size", type=int, default=11)
    args = parser.parse_args()
    args.out_dir = args.out_dir.resolve()
    dot_str = make_braggn(args.scale, img_size=args.img_size, simplify_weights=False)
    os.makedirs(f"{args.out_dir}", exist_ok=True)
    open(f"{args.out_dir}/braggnn.mlir", "w").write(dot_str)
