import argparse
import os
from collections import defaultdict

from bragghls.ops import OpType, LATENCIES
from bragghls.parse import parse_mlir_module
from bragghls.rtl.basic import (
    Wire,
    Reg,
    make_constant,
    make_always_tree,
    make_always_branch,
)
from bragghls.rtl.fsm import FSM
from bragghls.rtl.ip import FAdd, FMul, ReLU, Neg, PE
from bragghls.rtl.module import make_top_module_decl

DEBUG = True


# def make_op_always(data, fsm, pes, vals, input_wires):
#     op = data.opr
#     ip = getattr(pes[data.pe_idx], op.value, None)
#     args = data.op_inputs
#     trees = []
#     start_time = data.start_time
#     end_time = start_time + LATENCIES[op]
#     res_val = vals.get(data.res_val, data.res_val)
#     in_a = vals.get(args[0], input_wires.get(args[0], args[0]))
#     if op in {OpType.MUL, OpType.DIV, OpType.ADD, OpType.SUB, OpType.GT}:
#         in_b = vals.get(args[1], input_wires.get(args[1], args[1]))
#         trees.append(make_always_tree(ip.x, in_a, fsm.make_fsm_states([start_time])))
#         trees.append(make_always_tree(ip.y, in_b, fsm.make_fsm_states([start_time])))
#         trees.append(make_always_tree(res_val, ip.r, fsm.make_fsm_states([end_time])))
#     elif op in {OpType.NEG, OpType.RELU}:
#         trees.append(make_always_tree(ip.a, in_a, fsm.make_fsm_states([start_time])))
#         trees.append(make_always_tree(res_val, ip.res, fsm.make_fsm_states([end_time])))
#     elif op in {OpType.COPY}:
#         trees.append(make_always_tree(res_val, in_a, fsm.make_fsm_states([start_time])))
#     else:
#         raise NotImplementedError
#
#     return "\n".join(trees)


def make_pe_always(fsm, pe, op_datas, vals, input_wires):
    tree_conds = []
    not_latches = set()
    for data in op_datas:
        op = data.opr
        ip = getattr(pe, op.value, None)
        args = data.op_inputs
        start_time = data.start_time
        end_time = start_time + LATENCIES[op]
        res_val = vals.get(data.res_val, data.res_val)
        in_a = vals.get(args[0], input_wires.get(args[0], args[0]))

        if op in {OpType.MUL, OpType.DIV, OpType.ADD, OpType.SUB, OpType.GT}:
            in_b = vals.get(args[1], input_wires.get(args[1], args[1]))
            tree_conds.append(
                make_always_branch(ip.x, in_a, fsm.make_fsm_states([start_time]))
            )
            tree_conds.append(
                make_always_branch(ip.y, in_b, fsm.make_fsm_states([start_time]))
            )
            tree_conds.append(
                make_always_branch(res_val, ip.r, fsm.make_fsm_states([end_time]))
            )
            if "val" in str(res_val):
                not_latches.add(res_val)
        elif op in {OpType.NEG, OpType.RELU}:
            tree_conds.append(
                make_always_branch(ip.a, in_a, fsm.make_fsm_states([start_time]))
            )
            tree_conds.append(
                make_always_branch(res_val, ip.res, fsm.make_fsm_states([end_time]))
            )
            if "val" in str(res_val):
                not_latches.add(res_val)
        elif op in {OpType.COPY}:
            debug_emit(f"copy {in_a} to {res_val}")
            tree_conds.append(
                make_always_branch(res_val, in_a, fsm.make_fsm_states([start_time]))
            )
            # this does not need to be a latch so don't init it
        else:
            raise NotImplementedError

    return make_always_tree(tree_conds, not_latches)


def cluster_pes(pes, op_id_data):
    pe_to_ops = defaultdict(list)
    for (op_id, op), data in op_id_data.items():
        if op == OpType.CST:
            continue
        pe_to_ops[pes[data.pe_idx]].append(data)

    return pe_to_ops

VERILOG_FILE = None

def emit(*args):
    print(*args, file=VERILOG_FILE)
    print(file=VERILOG_FILE)

def debug_emit(*args):
    if DEBUG:
        emit(*["//"] + list(args))

def main(mac_rewritten_sched_mlir_fp, precision):
    dirname, filename = os.path.split(mac_rewritten_sched_mlir_fp)
    filebasename, _ext = os.path.splitext(filename)
    ip_name = filebasename.split("_")[0]

    mac_rewritten_sched_mlir_str = open(mac_rewritten_sched_mlir_fp).read()
    (
        op_id_data,
        func_args,
        returns,
        return_time,
        vals,
        csts,
        pe_idxs,
    ) = parse_mlir_module(mac_rewritten_sched_mlir_str)
    input_wires = {v: Wire(v, precision) for v in func_args}
    output_wires = {v: Wire(v, precision) for v in returns}
    vals = {v: Reg(v, precision) for v in vals}

    global VERILOG_FILE
    VERILOG_FILE = open(f"{dirname}/{ip_name}.v", "w")

    emit(
        make_top_module_decl(
            ip_name,
            list(input_wires.values()),
            list(f"output_{v}" for v in output_wires.values()),
            precision,
        )
    )
    for name, val_reg in vals.items():
        if name in csts:
            emit(val_reg.instantiate()[:-1], "=", f"{make_constant(None, precision)};")
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
        pes[pe_idx] = PE(fadd, fmul, frelu, fneg)

    pe_to_ops = cluster_pes(pes, op_id_data)
    for pe, op_datas in pe_to_ops.items():
        emit(make_pe_always(fsm, pe, op_datas, vals, input_wires))
    emit(fsm.make_fsm())

    for v, wire in output_wires.items():
        reg = Reg(wire.id, wire.precision)
        emit(f"assign output_{wire} = {reg};")

    emit("endmodule")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("fp")
    parser.add_argument("--precision", default=11)
    args = parser.parse_args()
    main(args.fp, args.precision)
