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
    return f"{precision}'d{random.randint(0, 2 ** precision - 1)}"


def make_always_tree(conds, vals_to_init):
    vals_to_init = [
        f"\t{v} = 1'b0;"
        for v in vals_to_init
    ]

    return "\n".join(["always @ (*) begin"] + vals_to_init + conds + ["end"])


def make_always_branch(left, right, cond):
    return indent(
        dedent(
            f"""\
            if ({cond}) begin
                {left} = {right}; 
            end
        """
        ),
        "\t",
    )
