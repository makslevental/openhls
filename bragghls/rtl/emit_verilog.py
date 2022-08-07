import logging
from collections import defaultdict
from io import StringIO
from textwrap import dedent

from bragghls.config import DEBUG, USING_FLOPOCO
from bragghls.ir.ops import Op, OpType, LATENCIES
from bragghls.rtl.basic import (
    Wire,
    Reg,
    make_constant,
    make_always_tree,
    make_always_branch,
    make_fmac_branches,
    CombOrSeq,
)
from bragghls.rtl.fsm import FSM
from bragghls.rtl.ip import FAdd, FMul, ReLU, Neg, PE
from bragghls.rtl.module import make_top_module_decl

logger = logging.getLogger(__name__)


def build_ip_res_val_map(pe, op_datas: list[Op], vals):
    ip_res_val_map = {}
    for op in op_datas:
        res_val = vals.get(op.res, op.res)
        if op.type in {OpType.MUL, OpType.DIV, OpType.ADD, OpType.SUB, OpType.GT}:
            if op.type == OpType.ADD:
                ip_res_val_map[res_val] = pe.fadd.r
            # elif op.type == OpType.MUL:
            #     ip_res_val_map[res_val] = pe.fmul.r
            else:
                logger.warning(f"not mapping {res_val} to {op} in ip_res_val_map")
        elif op.type in {OpType.NEG, OpType.RELU}:
            ip = getattr(pe, op.type.value, None)
            ip_res_val_map[res_val] = ip.res
        elif op.type in {OpType.COPY}:
            # this is a hack for when a copy is the last thing just prior to a return
            ip_res_val_map[res_val] = res_val
        elif op.type == OpType.FMAC:
            ip_res_val_map[res_val] = pe.fadd.r
        else:
            raise NotImplementedError

    return ip_res_val_map


def make_pe_always(fsm, pe, op_datas: list[Op], vals, input_wires, ip_res_val_map):
    tree_conds = []
    not_latches = {pe.fadd.x, pe.fadd.y, pe.fmul.x, pe.fmul.y}
    for op in op_datas:
        if DEBUG:
            tree_conds.append(f"\n\t// {op.emit()} start")
        ip = getattr(pe, op.type.value, None)
        args = op.args
        start_time = op.attrs["start_time"]
        end_time = start_time + LATENCIES[op]
        res_val = vals.get(op.res, op.res)
        in_a = vals.get(args[0], input_wires.get(args[0], args[0]))
        in_a = ip_res_val_map.get(in_a, in_a)

        if op.type in {OpType.MUL, OpType.DIV, OpType.ADD}:
            in_b = vals.get(args[1], input_wires.get(args[1], args[1]))
            in_b = ip_res_val_map.get(in_b, in_b)

            tree_conds.append(
                make_always_branch(
                    [ip.x, ip.y],
                    [in_a, in_b],
                    fsm.make_fsm_conditions([start_time]),
                )
            )
        elif op.type in {OpType.NEG, OpType.RELU}:
            tree_conds.append(
                make_always_branch(
                    [ip.a], [in_a], fsm.make_fsm_conditions([start_time])
                )
            )
            tree_conds.append(
                make_always_branch(
                    [res_val], [ip.res], fsm.make_fsm_conditions([end_time])
                )
            )
        elif op.type in {OpType.COPY}:
            tree_conds.append(
                make_always_branch(
                    [res_val], [in_a], fsm.make_fsm_conditions([start_time])
                )
            )
        elif op.type == OpType.FMAC:
            fmul_states, fadd_states, done_state = fsm.generate_mac_fsm_states(
                (len(args) - 1) // 2, start_time
            )
            args = []
            for arg in op.args[1:]:
                arg = vals.get(arg, input_wires.get(arg, ip_res_val_map.get(arg)))
                assert arg is not None
                args.append(arg)
            tree_conds.append(
                make_fmac_branches(pe, fmul_states, fadd_states, in_a, args)
            )
        else:
            raise NotImplementedError(str(op))

        if DEBUG:
            tree_conds.append(f"\t// {op.emit()} end\n")

    return make_always_tree(tree_conds, not_latches, comb_or_seq=CombOrSeq.SEQ)


def cluster_pes(pes, op_id_data):
    pe_to_ops = defaultdict(list)
    for (op_id, op), data in op_id_data.items():
        if op == OpType.CST:
            continue
        pe_to_ops[pes[data.pe_idx]].append(data)

    return pe_to_ops


def emit_verilog(
    ip_name,
    width_exp,
    width_frac,
    op_id_data,
    func_args,
    returns,
    return_time,
    vals,
    csts,
    pe_idxs,
    include_outer_module=True,
):
    if USING_FLOPOCO:
        signal_width = width_exp + width_frac + 3
    else:
        raise Exception("precision not right since not using flopoco")
    input_wires = {v: Wire(v, signal_width) for v in func_args}
    output_wires = {v: Wire(v, signal_width) for v in returns}
    vals = {v: Reg(v, signal_width) for v in vals}

    s = StringIO()

    def emit(*args):
        print(*args, file=s)
        print(file=s)

    emit(
        make_top_module_decl(
            ip_name,
            list(input_wires.values()),
            list(f"output_{v}" for v in output_wires.values()),
            width_exp,
            width_frac,
            include_outer_module,
        )
    )

    for name, val_reg in sorted(vals.items()):
        if name in csts:
            emit(
                val_reg.instantiate()[:-1],
                "=",
                f"{make_constant(csts[name], width_exp, width_frac)};",
            )
        else:
            emit(val_reg.instantiate())

    fsm = FSM(50, max_fsm_stage=return_time + 1)
    emit(fsm.make_fsm_params())
    emit(fsm.make_fsm_wires())

    pes = {}
    for pe_idx in pe_idxs:
        if pe_idx[0] < 0:
            continue

        fadd = FAdd(pe_idx, signal_width)
        emit(fadd.instantiate())
        fmul = FMul(pe_idx, signal_width)
        emit(fmul.instantiate())
        frelu = ReLU(pe_idx, signal_width)
        emit(frelu.instantiate())
        fneg = Neg(pe_idx, signal_width)
        emit(fneg.instantiate())
        pes[pe_idx] = PE(fadd, fmul, frelu, fneg, pe_idx)

    pe_to_ops = cluster_pes(pes, op_id_data)
    logger.info(f"Number unique processing elements in design {len(pe_to_ops)}")
    ip_res_val_map = {}
    for pe, op_datas in pe_to_ops.items():
        ip_res_val_map.update(build_ip_res_val_map(pe, op_datas, vals))
    for pe, op_datas in pe_to_ops.items():
        emit(make_pe_always(fsm, pe, op_datas, vals, input_wires, ip_res_val_map))
    emit(fsm.make_fsm())

    for v, wire in output_wires.items():
        reg = Reg(wire.id, wire.signal_width)
        emit(f"assign output_{wire} = {ip_res_val_map[reg]};")

    emit(
        dedent(
            f"""\
            `ifdef COCOTB_SIM
            initial begin
              $dumpfile ("{ip_name}.vcd");
              $dumpvars (0, {ip_name});
              #1;
            end
            `endif
            """
        )
    )
    emit("endmodule")

    s.seek(0)
    return s.read(), input_wires, output_wires, fsm.max_fsm_stage
