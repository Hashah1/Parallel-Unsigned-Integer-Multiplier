`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2018 09:28:38 PM
// Design Name: 
// Module Name: CLA_8Bit
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

module CLA_8Bit(input [7:0] A, B,
                output [7:0] sum);

wire W2, cOut;
cla_adder CLA_FirstHalf(
                        .A(A[3:0]), 
                        .B(B[3:0]),
                        .c0(1'b0),
                        .Sum(sum[3:0]),
                        .cOut(W2)
                        );
                        
cla_adder CLA_SecondHalf(
                        .A(A[7:4]), 
                        .B(B[7:4]),
                        .c0(W2),
                        .Sum(sum[7:4]),
                        .cOut(cOut)
                        );
endmodule
