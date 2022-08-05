from dataclasses import dataclass
from textwrap import dedent
from typing import Tuple

from bragghls.ir.ops import OpType
from bragghls.rtl.basic import Reg, Wire
from bragghls.util import remove_all_leading_whitespace


def generate_flopoco_fp(op_type, instance_name, id, x, y, r, keep):
    return dedent(
        f"""\
            {'(* keep = "true" *) ' if keep else ''}{op_type} #({id}) {instance_name}(
                .clk(clk),
                .rst(rst),
                .X({x}),
                .Y({y}),
                .R({r})
            );
        """
    )


def generate_xilinx_fp(op_type, instance_name, id, signal_width, a, b, res, keep):
    return f"""\
            {'(* keep = "true" *) ' if keep else ''}{op_type} #({id}, {signal_width}) {instance_name}(
                .clk(clk),
                .rst(0'b1),
                .clk_enable(1'b1),
                .a({a}),
                .b({b}),
                .res({res})
            );
            """


IP_ID = 0


class IP:
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], signal_width: int, keep=True
    ):
        global IP_ID
        IP_ID += 1

        self.id = IP_ID
        self.op_type = op_type.value
        self.pe_idx_str = "_".join(map(str, pe_idx))
        self.signal_width = signal_width
        self.keep = keep
        self.instance_name = f"{self.op_type}_{self.pe_idx_str}"


class FAddOrMulIP(IP):
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], signal_width: int, keep=True
    ):
        super().__init__(op_type, pe_idx, signal_width, keep)
        self.x = Reg(f"{self.instance_name}_x", signal_width)
        self.y = Reg(f"{self.instance_name}_y", signal_width)
        self.r = Wire(f"{self.instance_name}_r", signal_width)

    def instantiate(self):
        wires_regs = remove_all_leading_whitespace(
            f"""\
                {self.x.instantiate()}
                {self.y.instantiate()}
                {self.r.instantiate()}
            """
        )
        instance = generate_flopoco_fp(
            self.op_type,
            self.instance_name,
            self.id,
            self.x,
            self.y,
            self.r,
            self.keep,
        )
        return wires_regs + instance


class FAdd(FAddOrMulIP):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.ADD, pe_idx, signal_width)


class FMul(FAddOrMulIP):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.MUL, pe_idx, signal_width)


def generate_relu_or_neg(op_type, id, signal_width, instance_name, a, res):
    op = dedent(
        f"""\
            {op_type} #({id}, {signal_width}) {instance_name}(
                .a({a}),
                .res({res})
            );
        """
    )
    return op


class ReLUOrNegIP(IP):
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], signal_width: int, keep=True
    ):
        super().__init__(op_type, pe_idx, signal_width, keep)
        self.a = Reg(f"{self.instance_name}_a", signal_width)
        self.res = Wire(f"{self.instance_name}_res", signal_width)

    def instantiate(self):
        wires_regs = remove_all_leading_whitespace(
            f"""\
                {self.a.instantiate()}
                {self.res.instantiate()}
            """
        )
        instance = generate_relu_or_neg(
            self.op_type,
            self.id,
            self.signal_width,
            self.instance_name,
            self.a,
            self.res,
        )
        return wires_regs + instance


class ReLU(ReLUOrNegIP):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.RELU, pe_idx, signal_width)


class Neg(ReLUOrNegIP):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.NEG, pe_idx, signal_width)


@dataclass(frozen=True)
class PE:
    fadd: FAdd
    fmul: FMul
    frelu: ReLU
    fneg: Neg
    idx: Tuple[int, ...]


def generate_imports_tcl(sv_filename, width_exponent, width_fraction):
    return dedent(
        f"""\
    add_files -fileset constrs_1 -norecurse alveo-u280-xdc.xdc
    import_files -fileset constrs_1 alveo-u280-xdc.xdc

    add_files -norecurse -scan_for_includes {sv_filename} -force
    import_files -norecurse {sv_filename} -force

    add_files -norecurse -scan_for_includes flopoco_relu.sv -force
    import_files -norecurse flopoco_relu.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_neg.sv -force
    import_files -norecurse flopoco_neg.sv -force

    add_files -norecurse -scan_for_includes flopoco_fadd_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fadd_{width_exponent}_{width_fraction}.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_fmul_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fmul_{width_exponent}_{width_fraction}.sv -force

    update_compile_order -fileset sources_1
    """
    )


if __name__ == "__main__":
    print(FAdd((0, 0), 11).instantiate())
    print(FMul((0, 0), 11).instantiate())
    print(ReLU((0, 0), 11).instantiate())
    print(Neg((0, 0), 11).instantiate())
