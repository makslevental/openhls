import logging
from collections import defaultdict
from io import StringIO
from textwrap import dedent, indent

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
from bragghls.rtl.ip import FAdd, FMul, FDiv, ReLU, Neg, PE, FMax, FSub

logger = logging.getLogger(__name__)


def build_ip_res_val_map(pe, op_datas: list[Op], vals):
    ip_res_val_map = {}
    for op in op_datas:
        res_val = vals.get(op.res, op.res)
        assert res_val not in ip_res_val_map
        if op.type in {OpType.ADD, OpType.SUB, OpType.MUL, OpType.DIV, OpType.MAX}:
            ip = getattr(pe, op.type.value, None)
            ip_res_val_map[res_val] = ip.r
        elif op.type in {OpType.NEG, OpType.RELU}:
            ip = getattr(pe, op.type.value, None)
            ip_res_val_map[res_val] = ip.res
        elif op.type in {OpType.COPY}:
            # this is a hack for when a copy is the last thing just prior to a return
            ip_res_val_map[res_val] = res_val
        elif op.type == OpType.FMAC:
            ip_res_val_map[res_val] = pe.fadd.r
        else:
            raise NotImplementedError(f"{op}")

    return ip_res_val_map


def make_pe_always(fsm, pe, op_datas: list[Op], vals, input_wires, ip_res_val_map):
    tree_conds = []
    not_latches = set()
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

        if op.type in {OpType.ADD, OpType.SUB, OpType.MUL, OpType.DIV, OpType.MAX}:
            in_b = vals.get(args[1], input_wires.get(args[1], args[1]))
            in_b = ip_res_val_map.get(in_b, in_b)

            tree_conds.append(
                make_always_branch(
                    [ip.x, ip.y],
                    [in_a, in_b],
                    fsm.make_fsm_conditions([start_time]),
                )
            )
            not_latches.update({ip.x, ip.y})
        elif op.type in {OpType.NEG, OpType.RELU}:
            tree_conds.append(
                make_always_branch(
                    [ip.a], [in_a], fsm.make_fsm_conditions([start_time])
                )
            )
            not_latches.update({ip.a})
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


def make_pblock_bridge(ip_name, input_wires, output_wires, width_exp, width_frac):
    if USING_FLOPOCO:
        signal_width = width_exp + width_frac + 3
    else:
        raise Exception("not using flopoco thus invalid signal width")

    prefix = f"_{ip_name}"

    s = StringIO()
    prefixed_launch_wires = [
        f"{prefix}_launch_{input_wire}" for input_wire in input_wires
    ]
    prefixed_land_wires = [f"{prefix}_land_{input_wire}" for input_wire in input_wires]
    prefixed_output_wires = [f"{prefix}_{output_wire}" for output_wire in output_wires]

    s.writelines(
        [f"\treg [{signal_width - 1}:0] {wire};\n" for wire in prefixed_launch_wires]
    )
    s.writelines(
        [f"\treg [{signal_width - 1}:0] {wire};\n" for wire in prefixed_land_wires]
    )
    s.writelines(
        [f"\twire [{signal_width - 1}:0] {wire};\n" for wire in prefixed_output_wires]
    )

    s.write("\talways @(posedge clk) begin\n")
    s.writelines(
        [
            f"\t\t{wire} <= {wire.replace('land', 'output')};\n"
            for wire in prefixed_launch_wires
        ]
    )
    s.write("end\n")

    s.write(f"{ip_name} _{ip_name}(\n")
    s.writelines([f"\t{input_wire},\n" for input_wire in prefixed_launch_wires])
    s.writelines([f"\t{output_wire},\n" for output_wire in prefixed_output_wires[:-1]])
    s.write(f"\t{prefixed_output_wires[-1]}\n")
    s.writelines([")\n"])

    s.seek(0)
    return s.read()


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
    for_testbench=False,
):
    if USING_FLOPOCO:
        signal_width = width_exp + width_frac + 3
    else:
        raise Exception("precision not right since not using flopoco")
    if not for_testbench:
        input_wires = {
            v: Wire(v, signal_width) for v in func_args if "constant" not in v
        }
    else:
        input_wires = {v: Wire(v, signal_width) for v in func_args}

    output_wires = {v: Wire(v, signal_width) for v in returns}

    vals = {v: Reg(v, signal_width) for v in vals}
    if not for_testbench:
        for v in func_args:
            if "constant" in v:
                vals[v] = Reg(v, signal_width)
                csts[v] = None

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
        )
    )

    for name, val_reg in sorted(vals.items()):
        if name in csts:
            cst = csts[name]
            emit(
                val_reg.instantiate()[:-1],
                "=",
                f"{make_constant(cst, width_exp, width_frac)}; // {cst}",
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

        # TODO: don't emit ip for pes that don't use (like eg div, of which there's only one)
        fadd = FAdd(pe_idx, signal_width)
        fsub = FSub(pe_idx, signal_width)
        fmul = FMul(pe_idx, signal_width)
        fdiv = FDiv(pe_idx, signal_width)
        fmax = FMax(pe_idx, signal_width)
        frelu = ReLU(pe_idx, signal_width)
        fneg = Neg(pe_idx, signal_width)
        pes[pe_idx] = PE(fadd, fsub, fmul, fdiv, fmax, frelu, fneg, pe_idx)

    ips_to_instantiate = defaultdict(set)
    pe_to_ops = defaultdict(list)
    for (op_id, op), data in op_id_data.items():
        if op == OpType.CST:
            continue
        pe_to_ops[pes[data.pe_idx]].append(data)
        if op == OpType.FMAC:
            ips_to_instantiate[pes[data.pe_idx]].add(OpType.ADD)
            ips_to_instantiate[pes[data.pe_idx]].add(OpType.MUL)
        else:
            ips_to_instantiate[pes[data.pe_idx]].add(op)

    logger.info(f"Number unique processing elements in design {len(pe_to_ops)}")
    for pe, pe_ops in ips_to_instantiate.items():
        for op in pe_ops:
            ip = getattr(pe, op.value, None)
            if ip is None:
                assert op in {OpType.COPY}, op
                continue
            emit(ip.instantiate())

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


def make_top_module_decl(ip_name, input_wires, output_wires, width_exp, width_frac):
    if USING_FLOPOCO:
        signal_width = width_exp + width_frac + 3
    else:
        raise Exception("not using flopoco thus invalid signal width")
    inputs = input_wires
    outputs = output_wires
    base_inputs = ["clk", "rst"]
    input_ports = [f"[{signal_width - 1}:0] {i}" for i in inputs]
    output_ports = [f"[{signal_width - 1}:0] {o}" for o in outputs]
    input_wires = ",\n".join([f"input wire {inp}" for inp in base_inputs + input_ports])
    output_wires = ",\n".join([f"output wire {outp}" for outp in output_ports])

    mod_top = "`default_nettype none"
    mod_inner = dedent(
        f"""\
        module {ip_name} (
        """
    )
    mod_inner += indent(dedent(input_wires + ",\n" + output_wires), "\t")
    mod_inner += "\n);\n"

    return "\n".join([mod_top, mod_inner])
