import enum
from dataclasses import dataclass
from textwrap import dedent, indent

from bragghls.rtl.convert_flopoco import convert_float_to_flopoco_binary_str


@dataclass(frozen=True)
class Wire:
    id: str
    bit_width: int

    def __str__(self):
        return f"{self.id}_wire"

    def instantiate(self):
        if self.bit_width > 1:
            return f"wire [{self.bit_width - 1}:0] {self};"
        else:
            return f"wire {self};"

    def __lt__(self, other):
        return str(self) < str(other)


@dataclass(frozen=True)
class Reg:
    id: str
    bit_width: int

    def __str__(self):
        return f"{self.id}_reg"

    def instantiate(self):
        if self.bit_width > 1:
            return f"reg [{self.bit_width - 1}:0] {self};"
        else:
            return f"reg {self};"


def make_constant(v, precision):
    if v is None:
        # return f"{precision}'d{random.randint(0, 2 ** precision - 1)}"
        return f"{precision}'b01001110000"
    else:
        # %val_cst_00
        assert isinstance(v, (float, int))
        return f"{precision}'b{convert_float_to_flopoco_binary_str(v)}"


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


def make_fmac_branches(pe, fsm_states, init_val, args):
    return indent(
        dedent(
            "\n".join(
                [
                    f"""\
        if (1'b1 == {fsm_states[0]}) begin
            {pe.fmul.x} <= {args[0]}; 
            {pe.fmul.y} <= {args[1]}; 
            {pe.fmul.ce} <= 1;
        end
        if (1'b1 == {fsm_states[1]}) begin
            {pe.fadd.x} <= {init_val};
            {pe.fadd.y} <= {pe.fmul.r}; 
            {pe.fadd.ce} <= 1;
        end
    """
                ]
                + [
                    f"""\
        if (1'b1 == {fsm_state}) begin
            {pe.fmul.x} <= {args[2 * (i + 1)]};
            {pe.fmul.y} <= {args[2 * (i + 1) + 1]};
            {pe.fmul.ce} <= 1;
            {pe.fadd.ce} <= 1;
        end
        if (1'b1 == {fsm_states[2 * i + 2 + 1]}) begin
            {pe.fadd.x} <= {pe.fadd.r};
            {pe.fadd.y} <= {pe.fmul.r};
            {pe.fadd.ce} <= 1;
        end
        """
                    for i, fsm_state in enumerate(fsm_states[2:-1:2])
                ]
                + [
                    f"""\
        if (1'b1 == {fsm_states[-1]}) begin
            {pe.fadd.ce} <= 1;
        end
    """
                ]
            )
        ),
        "\t",
    )
