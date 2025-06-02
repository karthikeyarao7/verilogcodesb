`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 15:21:49
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
    input  wire [1:0] sel,       
    input  wire [3:0] data_in,  
    output reg        out       
);

always @(*) begin
    case (sel)
        2'b00: out = data_in[0];
        2'b01: out = data_in[1];
        2'b10: out = data_in[2];
        2'b11: out = data_in[3];
        default: out = 1'b0;
    endcase
end
endmodule
