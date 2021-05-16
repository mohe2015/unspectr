`timescale 1ns / 1ns

module top(input logic clk, reset, output logic out);
    initial begin
        $dumpfile("top.vcd");
        $dumpvars;
    end
    
    assign out = reset | clk;
endmodule