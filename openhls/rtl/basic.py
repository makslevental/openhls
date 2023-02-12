import enum
from dataclasses import dataclass
from textwrap import dedent, indent

import numpy as np

from openhls.config import USING_FLOPOCO
from openhls.flopoco.ops import check_make_val


@dataclass(frozen=True)
class Wire:
    id: str
    signal_width: int

    def __str__(self):
        return f"{self.id}"

    def instantiate(self):
        if self.signal_width > 1:
            return f"wire [{self.signal_width - 1}:0] {self};"
        else:
            return f"wire {self};"

    def __lt__(self, other):
        return str(self) < str(other)


@dataclass(frozen=True)
class Reg:
    id: str
    signal_width: int

    def __str__(self):
        return f"{self.id}"

    def instantiate(self):
        if self.signal_width > 1:
            return f"reg [{self.signal_width - 1}:0] {self};"
        else:
            return f"reg {self};"


def make_constant(v, width_exp, width_frac):
    if USING_FLOPOCO:
        signal_width = width_exp + width_frac + 3
    else:
        raise Exception("not using flopoco thus invalid signal width")

    if v is None:
        v = np.random.random()

    # %val_cst_00
    assert isinstance(v, (float, int))
    return f"{signal_width}'b{check_make_val(v, width_exp, width_frac).fp.binstr()}"


class CombOrSeq(enum.Enum):
    COMB = "*"
    SEQ = "posedge clk"


def make_always_tree(conds, vals_to_init, comb_or_seq=CombOrSeq.SEQ):
    vals_to_init = sorted([f"\t{v} <= 1'b0;" for v in vals_to_init])

    return "\n".join(
        # [f"always @ ({comb_or_seq.value}) begin"] + vals_to_init + conds + ["end"]
        [f"always @ ({comb_or_seq.value}) begin"] + vals_to_init + conds + ["end"]
    )


def make_always_branch(lefts, rights, cond, comb_or_seq=CombOrSeq.SEQ):
    return indent(
        dedent(
            "\n".join(
                [f"if {cond} begin"]
                + [
                    f"    {left} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} {right};"
                    for left, right in zip(lefts, rights)
                ]
                + ["end"]
            )
        ),
        "\t",
    )


def make_fmac_branches(pe, fmul_states, fadd_states, init_val, args, comb_or_seq=CombOrSeq.SEQ):
    return indent(
        dedent(
            "\n".join(
                [
                    f"""\
        if (1'b1 == {fsm_state}) begin
            {pe.fmul.x} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} {args[2 * i]};
            {pe.fmul.y} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} {args[2 * i + 1]};
        end
        if (1'b1 == {fadd_states[i]}) begin
            {pe.fadd.x} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} {init_val if i == 0 else pe.fadd.r};
            {pe.fadd.y} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} {pe.fmul.r};
        end
        """
                    for i, fsm_state in enumerate(fmul_states)
                ]
            )
        ),
        "\t",
    )


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
    
    add_files -norecurse -scan_for_includes flopoco_fsqrt_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fsqrt_{width_exponent}_{width_fraction}.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_fdiv_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fdiv_{width_exponent}_{width_fraction}.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_fmul_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fmul_{width_exponent}_{width_fraction}.sv -force
    
    add_files -norecurse -scan_for_includes flopoco_fsub_{width_exponent}_{width_fraction}.sv -force
    import_files -norecurse flopoco_fsub_{width_exponent}_{width_fraction}.sv -force

    """
    )


def gen_clock_xdc(inputs, outputs, clock_period=10):
    s = f"create_clock -name clk -period {{{clock_period}}} -waveform {{0.000 {clock_period/2}}} [get_ports clk]\n"
    for input in inputs:
        s += f"set_input_delay -clock [get_clocks clk] 0 [get_ports {input}]\n"

    for output in outputs:
        s += f"set_output_delay -clock [get_clocks clk] 0 [get_ports {output}]\n"

    return s
