`default_nettype none
`include "generated_fmac_{{ n_elements }}.sv"
`timescale 1ns/1ps

module fmac_{{n_elements}}_tb;
    localparam PERIOD = 2;
    localparam HALF_PERIOD = PERIOD/2;
    reg clk;
    reg reset;

    {% for fsm_state in all_fsm_states %}
    parameter fsm_state{{zfill ( fsm_state, max_thing = all_fsm_states[-1], base = 10)}} = {{fsm_idx_width}}'d{{2**(fsm_state-1)}};
    {%-endfor%}

    reg[{{fsm_idx_width-1}}:0] current_state_fsm = {{fsm_idx_width}}'b0;
    {%for fsm_state in all_fsm_states%}
    wire current_state_fsm_state{{zfill(fsm_state, max_thing = all_fsm_states[-1], base = 10)}};
    {%-endfor%}

    always @(posedge clk) begin
        if (current_state_fsm == {{fsm_idx_width}}'b0) begin
            current_state_fsm <= {{fsm_idx_width}}'b{{zfill(1, all_fsm_states[-1])}};
        end else begin
            current_state_fsm <= current_state_fsm << 1;
        end
    end
    {% for fsm_state in all_fsm_states%}
    assign current_state_fsm_state{{zfill(fsm_state, max_thing = all_fsm_states[-1], base = 10)}} = current_state_fsm[{{get_bit_width(all_fsm_states[-1], 2)}}'d{{fsm_state-1}}];
    {%-endfor%}
    {% for arg in args%}
    wire [{{wE+wF +3-1}}:0] arg{{loop.index0+1}};
    assign arg{{loop.index0+1}} = {{wE+wF+3}}'b{{arg}};
    {%-endfor%}

    {%- for arg in args%}
    (* dont_touch = "true" *)  reg [{{wE +wF+3-1}}:0] fmul{{loop.index0}}_x;
    (* dont_touch = "true" *)  reg [{{wE+wF +3-1}}:0] fmul{{loop.index0}}_y;
    {#- reg fmul_ce; #}
    wire[{{wE+wF+3-1 }}:0] fmul{{loop.index0}}_r;

    (* dont_touch = "true" *) fmul #({{loop.index0}}) fmul_{{loop.index0}}(
        .clk(clk),
        {#-.ce(fmul_ce), #}
        .X(fmul{{loop.index0}}_x),
        .Y(fmul{{loop.index0}}_y),
        .R(fmul{{loop.index0}}_r)
    );

    (* dont_touch = "true" *) reg [{{wE+wF+3- 1}}:0] fadd{{loop.index0}}_x;
    (* dont_touch = "true" *) reg [{{wE+wF+3-1}}:0] fadd{{loop.index0}}_y;
    {#- reg fadd_ce; #}
    (* dont_touch = "true" *) wire [{{wE+ wF+3-1}}:0] fadd{{loop.index0}}_r;

    (* dont_touch = "true" *) fadd #({{loop.index0}}) fadd_{{loop.index0}}(
        .clk(clk),
        {#-.ce(fadd_ce), #}
        .X(fadd{{loop.index0}}_x),
        .Y(fadd{{loop.index0}}_y),
        .R(fadd{{loop.index0}}_r)
    );
    {%-endfor%}

endmodule