`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 21:55:45
// Design Name: 
// Module Name: updown_counter
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


module updown_counter(
    input  wire clk,      
    input  wire reset,      
    input  wire up_down,    
    output reg  [3:0] count 
);

always @(posedge clk) begin
    if (reset)
        count <= 4'b0000;
    else if (up_down)
        count <= count + 1; 
    else
        count <= count - 1;
end

endmodule

