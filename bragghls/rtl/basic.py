import enum
import random
from dataclasses import dataclass
from textwrap import dedent, indent


@dataclass(frozen=True)
class Wire:
    id: str
    precision: int

    def __str__(self):
        return f"{self.id}_wire"

    def instantiate(self):
        return f"wire [{self.precision - 1}:0] {self};"

    def __lt__(self, other):
        return str(self) < str(other)


@dataclass(frozen=True)
class Reg:
    id: str
    precision: int

    def __str__(self):
        return f"{self.id}_reg"

    def instantiate(self):
        return f"reg [{self.precision - 1}:0] {self};"


def make_constant(v, precision):
    if v is None:
        return f"{precision}'d{random.randint(0, 2 ** precision - 1)}"
    else:
        # %val_cst_00
        assert "cst" in v, v
        v = v.split("_")[-1]
        # TODO: put real constants here
        return f"{precision}'b{int(v)}"


class CombOrSeq(enum.Enum):
    COMB = "*"
    SEQ = "posedge clk"


def make_always_tree(conds, vals_to_init, comb_or_seq=CombOrSeq.COMB):
    vals_to_init = [f"\t{v} = 1'b0;" for v in vals_to_init]

    return "\n".join(
        [f"always @ ({comb_or_seq.value}) begin"] + vals_to_init + conds + ["end"]
    )


def make_always_branch(left, right, cond, comb_or_seq=CombOrSeq.COMB):
    return indent(
        dedent(
            f"""\
            if ({cond}) begin
                {left} {'=' if comb_or_seq == CombOrSeq.COMB else '<='} {right}; 
            end
        """
        ),
        "\t",
    )
