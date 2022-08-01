`default_nettype none
`include "generated_fmac_{{ n_elements }}.sv"
`timescale 1ns/1ps

module fmac_{{ n_elements }}_tb;
    localparam PERIOD = 2;
    localparam HALF_PERIOD = PERIOD/2;
    reg clk;
    reg reset;
    always #HALF_PERIOD clk = ~clk;

    initial begin
        $dumpfile("fmac_{{ n_elements }}.vcd");
        $dumpvars(0, fmac_{{ n_elements }}_tb);
        clk = 0;
        reset = 1;
    end
    {% for fsm_state in all_fsm_states %}
    parameter fsm_state{{ zfill(fsm_state, max_thing=all_fsm_states[-1], base=10) }} = {{ fsm_idx_width }}'d{{ 2**(fsm_state - 1) }};
    {%- endfor %}

    reg[{{ fsm_idx_width - 1 }}:0] current_state_fsm = {{ fsm_idx_width }}'b0;
    {% for fsm_state in all_fsm_states %}
    wire current_state_fsm_state{{ zfill(fsm_state, max_thing=all_fsm_states[-1], base=10) }};
    {%- endfor %}

    always @(posedge clk) begin
        if (current_state_fsm == {{ fsm_idx_width }}'b0) begin
            current_state_fsm <= {{ fsm_idx_width }}'b{{ zfill(1, all_fsm_states[-1]) }};
        end else begin
            current_state_fsm <= current_state_fsm << 1;
        end
    end
    {% for fsm_state in all_fsm_states %}
    assign current_state_fsm_state{{ zfill(fsm_state, max_thing=all_fsm_states[-1], base=10) }} = current_state_fsm[{{ get_bit_width(all_fsm_states[-1], 2) }}'d{{ fsm_state - 1 }}];
    {%- endfor %}
    {% for arg in args %}
    wire[{{ wE + wF + 3 - 1 }}:0] arg{{loop.index0 + 1}};
    assign arg{{loop.index0 + 1}} = {{ wE + wF + 3 }}'b{{ arg }};
    {%- endfor %}

    reg[{{ wE + wF + 3 - 1 }}:0] fmul_x;
    reg[{{ wE + wF + 3 - 1 }}:0] fmul_y;
    {#- reg fmul_ce; #}
    wire[{{ wE + wF + 3 - 1 }}:0] fmul_r;

    fmul#(2) fmul_dut(
        .clk(clk),
        {#- .ce(fmul_ce), #}
        .X(fmul_x),
        .Y(fmul_y),
        .R(fmul_r)
    );

    reg[{{ wE + wF + 3 - 1 }}:0] fadd_x;
    reg[{{ wE + wF + 3 - 1 }}:0] fadd_y;
    {#- reg fadd_ce; #}
    wire[{{ wE + wF + 3 - 1 }}:0] fadd_r;

    fadd#(1) fadd_dut(
        .clk(clk),
        {#- .ce(fadd_ce), #}
        .X(fadd_x),
        .Y(fadd_y),
        .R(fadd_r)
    );

    fmac fmac_dut(
        clk,
        {{ init_val }},
        {%- for arg in args %}
        arg{{loop.index0 + 1}},
        {%- endfor %}
        fmul_x,
        fmul_y,
        {#- fmul_ce, #}
        fmul_r,
        fadd_x,
        fadd_y,
        {#- fadd_ce, #}
        fadd_r,
        {%- for fsm_state in fmac_states[:-1] %}
        current_state_fsm_state{{ zfill(fsm_state, max_thing=all_fsm_states[-1], base=10) }},
        {%- endfor %}
        current_state_fsm_state{{ zfill(fmac_states[-1], max_thing=all_fsm_states[-1], base=10) }}
    );

    integer i;
    initial begin
        for (i = 0; i < {{ done_state }}; i = i+1) begin
            $display("count #%0d current_state %{{ fsm_idx_width }}b", i, current_state_fsm);
            $display("count #%0d fmul_x %{{ wE + wF + 3 }}b fmul_y %{{ wE + wF + 3 }}b fmul_r %{{ wE + wF + 3 }}b", i, fmul_x, fmul_y, fmul_r);
            $display("count #%0d fadd_x %{{ wE + wF + 3 }}b fadd_y %{{ wE + wF + 3 }}b fadd_r %{{ wE + wF + 3 }}b", i, fadd_x, fadd_y, fadd_r);
            #PERIOD;
        end
        $display("count #%0d fmul_r %{{ wE + wF + 3 }}b fadd_r %{{ wE + wF + 3 }}b current_state %{{ fsm_idx_width }}b", i, fmul_r, fadd_r, current_state_fsm);

        $display("***********");
        if (fadd_r !== {{ wE + wF + 3 }}'b{{ res.binstr() }})
            $display("failed with accum %{{ wE + wF + 3 }}b expected {{ wE + wF + 3 }}'b{{ res.binstr() }}", fadd_r);
        else
            $display("passed with accum %{{ wE + wF + 3 }}b {{ res }}", fadd_r);
        $display("***********");

        for (i = {{ done_state }} + 1; i < {{ done_state }} + 5; i = i+1) begin
            $display("count #%0d current_state %{{ fsm_idx_width }}b", i, current_state_fsm);
            $display("count #%0d fmul_x %{{ wE + wF + 3 }}b fmul_y %{{ wE + wF + 3 }}b fmul_r %{{ wE + wF + 3 }}b", i, fmul_x, fmul_y, fmul_r);
            $display("count #%0d fadd_x %{{ wE + wF + 3 }}b fadd_y %{{ wE + wF + 3 }}b fadd_r %{{ wE + wF + 3 }}b", i, fadd_x, fadd_y, fadd_r);
            #PERIOD;
        end
        $finish();
    end

endmodule