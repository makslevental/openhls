from dataclasses import dataclass
from textwrap import dedent
from typing import Tuple

from bragghls.ops import OpType
from bragghls.rtl.basic import Reg, Wire
from bragghls.util import remove_all_leading_whitespace


def generate_flopoco_fp(op_type, instance_name, id, ce, x, y, r, keep):
    return dedent(
        f"""\
            {'(* keep = "true" *) ' if keep else ''}{op_type} #({id}) {instance_name}(
                .clk(clk),
                .ce({ce}),
                .X({x}),
                .Y({y}),
                .R({r})
            );
        """
    )


def generate_xilinx_fp(op_type, instance_name, id, precision, a, b, res, keep):
    return f"""\
            {'(* keep = "true" *) ' if keep else ''}{op_type} #({id}, {precision}) {instance_name}(
                .clk(clk),
                .reset(0'b1),
                .clk_enable(1'b1),
                .a({a}),
                .b({b}),
                .res({res})
            );
            """


IP_ID = 0


class IP:
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], precision: int, keep=True
    ):
        global IP_ID
        IP_ID += 1

        self.id = IP_ID
        self.op_type = op_type.value
        self.pe_idx_str = "_".join(map(str, pe_idx))
        self.precision = precision
        self.keep = keep
        self.instance_name = f"{self.op_type}_{self.pe_idx_str}"


class FAddOrMulIP(IP):
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], precision: int, keep=True
    ):
        super().__init__(op_type, pe_idx, precision, keep)
        self.ce = Reg(f"{self.instance_name}_ce", 1)
        self.x = Reg(f"{self.instance_name}_x", precision)
        self.y = Reg(f"{self.instance_name}_y", precision)
        self.r = Wire(f"{self.instance_name}_r", precision)

    def instantiate(self):
        wires_regs = remove_all_leading_whitespace(
            f"""\
                {self.ce.instantiate()}
                {self.x.instantiate()}
                {self.y.instantiate()}
                {self.r.instantiate()}
            """
        )
        instance = generate_flopoco_fp(
            self.op_type,
            self.instance_name,
            self.id,
            self.ce,
            self.x,
            self.y,
            self.r,
            self.keep,
        )
        return wires_regs + instance


class FAdd(FAddOrMulIP):
    def __init__(self, pe_idx, precision):
        super().__init__(OpType.ADD, pe_idx, precision)


class FMul(FAddOrMulIP):
    def __init__(self, pe_idx, precision):
        super().__init__(OpType.MUL, pe_idx, precision)


def generate_relu_or_neg(op_type, id, precision, instance_name, a, res):
    op = dedent(
        f"""\
            {op_type} #({id}, {precision}) {instance_name}(
                .a({a}),
                .res({res})
            );
        """
    )
    return op


class ReLUOrNegIP(IP):
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], precision: int, keep=True
    ):
        super().__init__(op_type, pe_idx, precision, keep)
        self.a = Reg(f"{self.instance_name}_a", precision)
        self.res = Wire(f"{self.instance_name}_res", precision)

    def instantiate(self):
        wires_regs = remove_all_leading_whitespace(
            f"""\
                {self.a.instantiate()}
                {self.res.instantiate()}
            """
        )
        instance = generate_relu_or_neg(
            self.op_type, self.id, self.precision, self.instance_name, self.a, self.res
        )
        return wires_regs + instance


class ReLU(ReLUOrNegIP):
    def __init__(self, pe_idx, precision):
        super().__init__(OpType.RELU, pe_idx, precision)


class Neg(ReLUOrNegIP):
    def __init__(self, pe_idx, precision):
        super().__init__(OpType.NEG, pe_idx, precision)


@dataclass(frozen=True)
class PE:
    fadd: FAdd
    fmul: FMul
    frelu: ReLU
    fneg: Neg
    idx: Tuple[int, ...]


if __name__ == "__main__":
    print(FAdd((0, 0), 11).instantiate())
    print(FMul((0, 0), 11).instantiate())
    print(ReLU((0, 0), 11).instantiate())
    print(Neg((0, 0), 11).instantiate())
