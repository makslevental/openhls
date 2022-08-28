from dataclasses import dataclass
from textwrap import dedent
from typing import Tuple

from bragghls.config import KEEP_IPS, USE_UNIQUE_IP_PARAM
from bragghls.ir.ops import OpType
from bragghls.rtl.basic import Reg, Wire
from bragghls.util import remove_all_leading_whitespace


def generate_flopoco_fp(op_type, instance_name, id, signal_width, x, y, r, keep):
    params = f"{id}, {signal_width}" if op_type == OpType.MAX else id
    return dedent(
        f"""\
            {'(* keep = "true" *) ' if keep else ''}{op_type} #({params}) {instance_name}(
                .clk(clk),
                .X({x}),
                .Y({y}),
                .R({r})
            );
        """
    )


# def generate_xilinx_fp(op_type, instance_name, id, signal_width, a, b, res, keep):
#     return f"""\
#             {'(* keep = "true" *) ' if keep else ''}{op_type} #({id}, {signal_width}) {instance_name}(
#                 .clk(clk),
#                 .rst(0'b1),
#                 .clk_enable(1'b1),
#                 .a({a}),
#                 .b({b}),
#                 .res({res})
#             );
#             """


IP_ID = 0


class IP:
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], signal_width: int, keep=KEEP_IPS
    ):
        global IP_ID
        IP_ID += 1

        self.id = IP_ID
        self.op_type = op_type
        self.pe_idx_str = "_".join(map(str, pe_idx))
        self.signal_width = signal_width
        self.keep = keep
        self.instance_name = f"{self.op_type}_{self.pe_idx_str}"


class BinOpIp(IP):
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], signal_width: int, keep=KEEP_IPS
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
            self.id if USE_UNIQUE_IP_PARAM else 1,
            self.signal_width,
            self.x,
            self.y,
            self.r,
            self.keep,
        )
        return wires_regs + instance


class FAdd(BinOpIp):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.ADD, pe_idx, signal_width)


class FSub(BinOpIp):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.SUB, pe_idx, signal_width)


class FMul(BinOpIp):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.MUL, pe_idx, signal_width)


class FDiv(BinOpIp):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.DIV, pe_idx, signal_width)


class FMax(BinOpIp):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.MAX, pe_idx, signal_width)


def generate_unary(op_type, id, signal_width, instance_name, x, r):
    op = dedent(
        f"""\
            {op_type} #({id}, {signal_width}) {instance_name}(
                .clk(clk),
                .X({x}),
                .R({r})
            );
        """
    )
    return op


class UnaryOp(IP):
    def __init__(
        self, op_type: OpType, pe_idx: Tuple[int, ...], signal_width: int, keep=True
    ):
        super().__init__(op_type, pe_idx, signal_width, keep)
        self.x = Reg(f"{self.instance_name}_x", signal_width)
        self.r = Wire(f"{self.instance_name}_r", signal_width)

    def instantiate(self):
        wires_regs = remove_all_leading_whitespace(
            f"""\
                {self.x.instantiate()}
                {self.r.instantiate()}
            """
        )
        instance = generate_unary(
            self.op_type,
            self.id if USE_UNIQUE_IP_PARAM else 1,
            self.signal_width,
            self.instance_name,
            self.x,
            self.r,
        )
        return wires_regs + instance


class ReLU(UnaryOp):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.RELU, pe_idx, signal_width)


class Neg(UnaryOp):
    def __init__(self, pe_idx, signal_width):
        super().__init__(OpType.NEG, pe_idx, signal_width)


@dataclass(frozen=True)
class PE:
    fadd: FAdd
    fdiv: FDiv
    fmul: FMul
    fsub: FSub
    fmax: FMax
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
    
    add_files -norecurse -scan_for_includes flopoco_max.sv -force
    import_files -norecurse flopoco_max.sv -force

    add_files -norecurse -scan_for_includes flopoco_fadd_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fadd_{width_exponent}_{width_fraction}.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_fcmplt_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fcmplt_{width_exponent}_{width_fraction}.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_fdiv_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fdiv_{width_exponent}_{width_fraction}.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_fmul_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fmul_{width_exponent}_{width_fraction}.sv -force
    
    sub_files -norecurse -scan_for_includes flopoco_fsub_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fsub_{width_exponent}_{width_fraction}.sv -force

    update_compile_order -fileset sources_1
    """
    )


if __name__ == "__main__":
    print(FAdd((0, 0), 11).instantiate())
    print(FMul((0, 0), 11).instantiate())
    print(ReLU((0, 0), 11).instantiate())
    print(Neg((0, 0), 11).instantiate())
