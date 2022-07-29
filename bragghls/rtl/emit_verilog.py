import argparse
import os
from collections import defaultdict
from io import StringIO

from bragghls.ops import OpType, LATENCIES, Op
from bragghls.parse import parse_mlir_module
from bragghls.rtl.basic import (
    Wire,
    Reg,
    make_constant,
    make_always_tree,
    make_always_branch,
    make_fmac_branches,
    generate_mac_fsm_states,
    CombOrSeq,
)
from bragghls.rtl.fsm import FSM
from bragghls.rtl.ip import FAdd, FMul, ReLU, Neg, PE
from bragghls.rtl.module import make_top_module_decl
from bragghls.state import idx_to_str


def make_pe_always(fsm, pe, op_datas: list[Op], vals, input_wires):
    tree_conds = []
    not_latches = set()
    for op in op_datas:
        ip = getattr(pe, op.type.value, None)
        args = op.args
        start_time = op.attrs["start_time"]
        end_time = start_time + LATENCIES[op]
        res_val = vals.get(op.res, op.res)
        in_a = vals.get(args[0], input_wires.get(args[0], args[0]))

        if op.type in {OpType.MUL, OpType.DIV, OpType.ADD, OpType.SUB, OpType.GT}:
            in_b = vals.get(args[1], input_wires.get(args[1], args[1]))
            tree_conds.append(
                make_always_branch(ip.x, in_a, fsm.make_fsm_conditions([start_time]))
            )
            tree_conds.append(
                make_always_branch(ip.y, in_b, fsm.make_fsm_conditions([start_time]))
            )
            tree_conds.append(
                make_always_branch(res_val, ip.r, fsm.make_fsm_conditions([end_time]))
            )
            not_latches.update({ip.x, ip.y, ip.r})
            if "val" in str(res_val):
                not_latches.add(res_val)
        elif op.type in {OpType.NEG, OpType.RELU}:
            tree_conds.append(
                make_always_branch(ip.a, in_a, fsm.make_fsm_conditions([start_time]))
            )
            tree_conds.append(
                make_always_branch(res_val, ip.res, fsm.make_fsm_conditions([end_time]))
            )
            if "val" in str(res_val):
                not_latches.add(res_val)
        elif op.type in {OpType.COPY}:
            tree_conds.append(
                make_always_branch(res_val, in_a, fsm.make_fsm_conditions([start_time]))
            )
        elif op.type == OpType.FMAC:
            mac_fsm_states = generate_mac_fsm_states((len(args) - 1) // 2, start_time)
            init_val = vals.get(op.args[0], input_wires[op.args[0]])
            args = [vals.get(a, input_wires[a]) for a in op.args[1:]]
            tree_conds.append(
                make_fmac_branches(idx_to_str(pe.idx), mac_fsm_states, init_val, args)
            )
        else:
            raise NotImplementedError

    return make_always_tree(tree_conds, not_latches, comb_or_seq=CombOrSeq.SEQ)


def cluster_pes(pes, op_id_data):
    pe_to_ops = defaultdict(list)
    for (op_id, op), data in op_id_data.items():
        if op == OpType.CST:
            continue
        pe_to_ops[pes[data.pe_idx]].append(data)

    return pe_to_ops


def emit_verilog(
    ip_name, precision, op_id_data, func_args, returns, return_time, vals, csts, pe_idxs
):
    input_wires = {v: Wire(v, precision) for v in func_args}
    output_wires = {v: Wire(v, precision) for v in returns}
    vals = {v: Reg(v, precision) for v in vals}

    s = StringIO()

    def emit(*args):
        print(*args, file=s)
        print(file=s)

    emit(
        make_top_module_decl(
            ip_name,
            list(input_wires.values()),
            list(f"output_{v}" for v in output_wires.values()),
            precision,
        )
    )
    for name, val_reg in sorted(vals.items()):
        if name in csts:
            emit(val_reg.instantiate()[:-1], "=", f"{make_constant(name, precision)};")
        else:
            emit(val_reg.instantiate())

    fsm = FSM(50, max_fsm_stage=return_time + 1)
    emit(fsm.make_fsm_params())
    emit(fsm.make_fsm_wires())

    pes = {}
    for pe_idx in pe_idxs:
        if pe_idx[0] < 0:
            continue

        fadd = FAdd(pe_idx, precision)
        emit(fadd.instantiate())
        fmul = FMul(pe_idx, precision)
        emit(fmul.instantiate())
        frelu = ReLU(pe_idx, precision)
        emit(frelu.instantiate())
        fneg = Neg(pe_idx, precision)
        pes[pe_idx] = PE(fadd, fmul, frelu, fneg, pe_idx)

    pe_to_ops = cluster_pes(pes, op_id_data)
    for pe, op_datas in pe_to_ops.items():
        emit(make_pe_always(fsm, pe, op_datas, vals, input_wires))
    emit(fsm.make_fsm())

    for v, wire in output_wires.items():
        reg = Reg(wire.id, wire.bit_width)
        emit(f"assign output_{wire} = {reg};")

    emit("endmodule")

    s.seek(0)
    return s.read()


def main(fp):
    dirname, filename = os.path.split(args.fp)
    filebasename, _ext = os.path.splitext(filename)
    ip_name = filebasename.split("_")[0]
    rewritten_sched_mlir_str = open(args.fp).read()

    (
        op_id_data,
        func_args,
        returns,
        return_time,
        vals,
        csts,
        pe_idxs,
    ) = parse_mlir_module(rewritten_sched_mlir_str)

    verilog_file = emit_verilog(
        ip_name,
        args.precision,
        op_id_data,
        func_args,
        returns,
        return_time,
        vals,
        csts,
        pe_idxs,
    )
    verilog_file = verilog_file.replace("%", "v_")
    with open(f"{dirname}/{ip_name}.v", "w") as f:
        f.write(verilog_file)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("fp")
    parser.add_argument("--precision", default=11)
    args = parser.parse_args()
