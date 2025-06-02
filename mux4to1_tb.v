`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 15:25:17
// Design Name: 
// Module Name: mux4to1_tb
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

module mux4to1_tb;


    reg [1:0] sel;
    reg [3:0] data_in;


    wire out;


    mux4to1 uut (
        .sel(sel),
        .data_in(data_in),
        .out(out)
    );

    initial begin
        $display("Time\t sel data_in out");
        $monitor("%0dns\t %b   %b    %b", $time, sel, data_in, out);

        data_in = 4'b1001; 
        
        sel = 2'b00; #10;

        sel = 2'b01; #10;
        
        sel = 2'b10; #10;
      
        sel = 2'b11; #10;

        
        data_in = 4'b0110; sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end

endmodule
