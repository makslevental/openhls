import enum
import random
from dataclasses import dataclass
from textwrap import dedent, indent


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


def generate_mac_fsm_states(n_elements, start_time):
    n_pair_states = n_elements - 1
    return sorted(
        [1 + 3 * i + start_time for i in range(n_pair_states + 2)]
        + [3 * i + start_time for i in range(1, n_pair_states + 2)]
    )


def make_fmac_branches(pe_idx, fsm_states, init_val, args):
    return indent(
        dedent(
            "\n".join(
                [
                    f"""\
        if ((1'b1 == current_fsm_state{fsm_states[0]})) begin
            fmul_{pe_idx}_x <= {args[0]}; 
            fmul_{pe_idx}_y <= {args[1]}; 
            fmul_{pe_idx}_ce <= 1;
        end
        if ((1'b1 == current_fsm_state{fsm_states[1]})) begin
            fadd_{pe_idx}_x <= {init_val};
            fadd_{pe_idx}_y <= fmul_{pe_idx}_r; 
            fadd_{pe_idx}_ce <= 1;
        end
    """
                ]
                + [
                    f"""\
        // ****************
        if ((1'b1 == current_fsm_state{fsm_state})) begin
            fmul_{pe_idx}_x <= {args[2 * (i + 1)]};
            fmul_{pe_idx}_y <= {args[2 * (i + 1) + 1]};
            fmul_{pe_idx}_ce <= 1;
            fadd_{pe_idx}_ce <= 1;
        end
        if ((1'b1 == current_fsm_state{fsm_states[2 * i + 2 + 1]})) begin
            fadd_{pe_idx}_x <= fadd_{pe_idx}_r;
            fadd_{pe_idx}_y <= fmul_{pe_idx}_r;
            fadd_{pe_idx}_ce <= 1;
        end
        """
                    for i, fsm_state in enumerate(fsm_states[2:-1:2])
                ]
                + [
                    f"""\
        if ((1'b1 == current_fsm_state{fsm_states[-1]})) begin
            fadd_{pe_idx}_ce <= 1;
        end
    """
                ]
            )
        ),
        "\t",
    )
