`timescale 1ns / 1ns

module top(input logic clk, reset, output logic out);
    initial begin
        $dumpfile("top.vcd");
        $timeformat(-9, 0, " ns", 8);
        $dumpvars;
    end
    
    assign out = reset | clk;
endmodule