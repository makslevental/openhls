`include "inverter.v"

module inverter_tb;
    reg[31:0] a;
    wire[31:0] b;

    inverter uut(
        .a(a),
        .b(b)
    );

    initial begin
        a = 0;
        // Not needed on Cloud V:
        $dumpfile("signals.vcd"); // Name of the signal dump file
        $dumpvars(0, inverter_tb); // Signals to dump
        #3000;  // Simulation time
        $finish();  // Don't forget this or the simulation will run forever and fill up your hard drive.
    end

endmodule