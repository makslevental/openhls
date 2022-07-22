from textwrap import dedent, indent

from bragghls.rtl.basic import make_constant


def make_top_module_decl(input_wires, output_wires, precision):
    inputs = input_wires
    outputs = output_wires
    base_inputs = ["clk", "reset", "ce"]
    input_ports = [f"[{precision - 1}:0] {i}" for i in inputs]

    base_outputs = []
    output_ports = [f"[{precision - 1}:0] {o}" for o in outputs]

    input_wires = ",\n".join([f"input wire {inp}" for inp in base_inputs + input_ports])
    output_wires = ",\n".join(
        [f"output wire {outp}" for outp in base_outputs + output_ports]
    )

    mod_top = dedent(
        f"""\
        `default_nettype none
        module forward (
        """
    )

    mod_top += indent(
        dedent(
            ",\n".join([f"input wire {inp}" for inp in base_inputs + input_ports[:2]])
        ),
        "\t",
    )
    mod_top += ",\n"
    mod_top += indent(
        dedent(",\n".join([f"output wire {inp}" for inp in output_ports])), "\t"
    )
    mod_top += "\n);\n\n"
    mod_top += dedent(
        "\n".join(
            [
                f"""reg {inp} = {make_constant(None, precision)};"""
                for inp in input_ports[2:]
            ]
        )
    )

    mod_top += "\n"
    mod_top += "\nforward_inner _forward_inner(\n"
    mod_top += indent(
        dedent(
            ",\n".join([f".{port}({port})" for port in base_inputs + inputs + outputs])
        ),
        "\t",
    )
    mod_top += "\n"
    mod_top += dedent(
        f"""\
        );
        endmodule
        """
    )

    mod_inner = dedent(
        f"""\
        module forward_inner (
        """
    )
    mod_inner += indent(dedent(input_wires + ",\n" + output_wires), "\t")
    mod_inner += "\n);\n"

    return "\n".join([mod_top, mod_inner])
