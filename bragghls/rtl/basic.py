import enum
from dataclasses import dataclass
from textwrap import dedent, indent

from bragghls.flopoco.convert_flopoco import convert_float_to_flopoco_binary_str
from bragghls.state import USING_FLOPOCO


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
        v = 0.0

    # %val_cst_00
    assert isinstance(v, (float, int))
    return f"{signal_width}'b{convert_float_to_flopoco_binary_str(v, width_exp, width_frac)}"


class CombOrSeq(enum.Enum):
    COMB = "*"
    SEQ = "posedge clk"


def make_always_tree(conds, vals_to_init, comb_or_seq=CombOrSeq.SEQ):
    vals_to_init = [f"\t{v} = 1'b0;" for v in vals_to_init]

    return "\n".join(
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


def make_fmac_branches(pe, fmul_states, fadd_states, init_val, args):
    return indent(
        dedent(
            "\n".join(
                [
                    f"""\
        if (1'b1 == {fsm_state}) begin
            {pe.fmul.x} <= {args[2 * i]};
            {pe.fmul.y} <= {args[2 * i + 1]};
        end
        if (1'b1 == {fadd_states[i]}) begin
            {pe.fadd.x} <= {init_val if i == 0 else pe.fadd.r};
            {pe.fadd.y} <= {pe.fmul.r};
        end
        """
                    for i, fsm_state in enumerate(fmul_states)
                ]
            )
        ),
        "\t",
    )
