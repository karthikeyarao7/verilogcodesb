`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 21:46:41
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input  wire a,    
    input  wire b,      
    input  wire cin,    
    output wire sum,    
    output wire cout    
);

assign sum  = a ^ b ^ cin;                  
assign cout = (a & b) | (b & cin) | (a & cin); 

endmodule