`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2018 05:34:22 PM
// Design Name: 
// Module Name: cla_adder
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

module cla_adder(input [3:0] A, B, input c0, output [3:0] Sum, output cOut);

wire [3:0] P_inst, G_inst;
wire C3_inst, C2_inst, C1_inst, C0_inst;


 
/*module half_adder(output sum, output c_out,input a,b);*/
half_adder HA3(P_inst[3], G_inst[3], A[3], B[3]);
half_adder HA2(P_inst[2], G_inst[2], A[2], B[2]);
half_adder HA1(P_inst[1], G_inst[1], A[1], B[1]);
half_adder HA0(P_inst[0], G_inst[0], A[0], B[0]);


wire [4:0] output_sum;

// (input [3:0] P,G, input c0,output [4:0] C);
CLA CLA(P_inst, G_inst, c0, output_sum);

wire xor_sum3,xor_sum2,xor_sum1,xor_sum0;

/*module xor (input a, b ,output c);*/
xor_mod X3(P_inst[3], output_sum[3], xor_sum3);
xor_mod X2(P_inst[2], output_sum[2], xor_sum2);
xor_mod X1(P_inst[1], output_sum[1], xor_sum1);
xor_mod X0(P_inst[0], c0, xor_sum0);

assign Sum[3] = xor_sum3;
assign Sum[2] = xor_sum2;
assign Sum[1] = xor_sum1;
assign Sum[0] = xor_sum0;

assign cOut = output_sum[4];
endmodule