`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 21:57:35
// Design Name: 
// Module Name: updown_counter_tb
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


module updown_counter_tb;

    reg clk, reset, up_down;
    wire [3:0] count;

    updown_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        up_down = 1;

        $display("Time\t up_down reset count");
        $monitor("%0dns\t %b\t   %b\t  %b", $time, up_down, reset, count);

        #10 reset = 0;
        up_down = 1;
        #50;
        up_down = 0;
        #50;
        reset = 1;
        #10;
        reset = 0;
        #20;

        $finish;
    end

endmodule

