`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2025 10:54:09
// Design Name: 
// Module Name: d_flipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module d_flipflop_tb;

reg clk;
reg reset;
reg d;
wire q;

d_flipflop uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    reset = 1; d = 0;
    #10 reset = 0; d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 reset = 1;
    #10 reset = 0; d = 0;
    #20 $finish;
end

initial begin
    $monitor("Time=%0t | clk=%b reset=%b d=%b q=%b", $time, clk, reset, d, q);
end

endmodule

