`default_nettype none
`include "generated_fmac_{{ n_elements }}.sv"
`timescale 1ns/1ps

module fmac_conv_{{ n_elements }}_tb;
    localparam PERIOD = 2;
    localparam HALF_PERIOD = PERIOD/2;
    localparam NUM_PES = {{ num_pes }};
    localparam PE_VECTOR_WIDTH = {{ wE + wF + 3 }}*NUM_PES;
    reg clk;
    reg reset;
    always #HALF_PERIOD clk = ~clk;

    initial begin
        $dumpfile("fmac_conv_{{ n_elements }}.vcd");
        $dumpvars(0, fmac_conv_{{ n_elements }}_tb);
        clk = 0;
        reset = 1;
    end
    {% for fsm_state in fsm_states %}
    parameter fsm_state{{ zfill(fsm_state, max_thing=fsm_states[-1], base=10) }} = {{ fsm_idx_width }}'d{{ 2**(fsm_state - 1) }};
    {%- endfor %}

    reg[{{ fsm_idx_width - 1 }}:0] current_state_fsm = {{ fsm_idx_width }}'b0;
    {% for fsm_state in fsm_states %}
    wire current_state_fsm_state{{ zfill(fsm_state, max_thing=fsm_states[-1], base=10) }};
    {%- endfor %}

    always @(posedge clk) begin
        if (current_state_fsm == {{ fsm_idx_width }}'b0) begin
            current_state_fsm <= {{ fsm_idx_width }}'b{{ zfill(1, fsm_states[-1]) }};
        end else begin
            current_state_fsm <= current_state_fsm << 1;
        end
    end
    {% for fsm_state in fsm_states %}
    assign current_state_fsm_state{{ zfill(fsm_state, max_thing=fsm_states[-1], base=10) }} = current_state_fsm[{{ get_bit_width(fsm_states[-1], 2) }}'d{{ fsm_state - 1 }}];
    {%- endfor %}
    {% for arg in args %}
    wire[{{ wE + wF + 3 - 1 }}:0] arg{{loop.index0 + 1}};
    assign arg{{loop.index0 + 1}} = {{ wE + wF + 3 }}'b{{ arg }};
    {%- endfor %}

    reg[{{ wE + wF + 3 - 1 }}:0] fmul_x[PE_VECTOR_WIDTH-1:0];
    reg[{{ wE + wF + 3 - 1 }}:0] fmul_y[PE_VECTOR_WIDTH-1:0];
    reg fmul_ce[NUM_PES-1:0];
    wire[{{ wE + wF + 3 - 1 }}:0] fmul_r[PE_VECTOR_WIDTH-1:0];

    reg[{{ wE + wF + 3 - 1 }}:0] fadd_x[PE_VECTOR_WIDTH-1:0];
    reg[{{ wE + wF + 3 - 1 }}:0] fadd_y[PE_VECTOR_WIDTH-1:0];
    reg fadd_ce[NUM_PES-1:0];
    wire[{{ wE + wF + 3 - 1 }}:0] fadd_r[PE_VECTOR_WIDTH-1:0];

    genvar i;
    generate
        for (i = 0; i < NUM_PES; i = i+1) begin : generate_block_identifier // <-- example block name
            fmul#(i) fmul_dut(
                .clk(clk),
                .ce(fmul_ce[i]),
                .X(fmul_x[i]),
                .Y(fmul_y[i]),
                .R(fmul_r[i])
            );

            fadd#(2*i) fadd_dut(
                .clk(clk),
                .ce(fadd_ce[i]),
                .X(fadd_x[i]),
                .Y(fadd_y[i]),
                .R(fadd_r[i])
            );

            fmac#(i) fmac_conv_dut(
                clk,
                {{ wE + wF + 3 }}'b0,
                {%- for arg in args %}
                arg{{loop.index0 + 1}},
                {%- endfor %}
                fmul_x[i],
                fmul_y[i],
                fmul_ce[i],
                fmul_r[i],
                fadd_x[i],
                fadd_y[i],
                fadd_ce[i],
                fadd_r[i],
                {%- for fsm_state in fsm_states[:-1] %}
                current_state_fsm_state{{ zfill(fsm_state, max_thing=fsm_states[-1], base=10) }},
                {%- endfor %}
                current_state_fsm_state{{ zfill(fsm_states[-1], max_thing=fsm_states[-1], base=10) }}
            );
        end
    endgenerate

    integer j, k;
    initial begin
        for (j = 0; j < {{ done_state }}; j = j+1) begin
            $display("count #%0d fmul_r %{{ wE + wF + 3 }}b fadd_r %{{ wE + wF + 3 }}b current_state %{{ fsm_idx_width }}b", j, fmul_r[0], fadd_r[0], current_state_fsm);
            #PERIOD;
        end
        for (k = 0; k < NUM_PES; k = k+1) begin
            $display("pe #%0d count #%0d fmul_r %{{ wE + wF + 3 }}b fadd_r %{{ wE + wF + 3 }}b current_state %{{ fsm_idx_width }}b", k, j, fmul_r[k], fadd_r[k], current_state_fsm);
            if (fadd_r[k] !== {{ wE + wF + 3 }}'b{{ res }}) // 100
                $display("failed with accum %{{ wE + wF + 3 }}b expected {{ wE + wF + 3 }}'b{{ res }}", fadd_r[k]);
            else
                $display("passed with accum %{{ wE + wF + 3 }}b", fadd_r[k]);
        end
        $finish();
    end

endmodule