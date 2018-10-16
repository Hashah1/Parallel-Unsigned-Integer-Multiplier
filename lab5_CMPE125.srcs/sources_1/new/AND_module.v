`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2018 08:28:12 PM
// Design Name: 
// Module Name: AND_module
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


module AND_module(input [3:0] A, input b,
                  output [3:0] out);


assign out[3] = A[3] & b;
assign out[2] = A[2] & b;
assign out[1] = A[1] & b;
assign out[0] = A[0] & b;

endmodule
