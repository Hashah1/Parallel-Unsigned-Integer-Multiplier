`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 03:17:22 PM
// Design Name: 
// Module Name: shifter
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


module shifter(input [3:0]  out_inst3, out_inst2, out_inst1, out_inst0,
               output [7:0] PP3, PP2, PP1, PP0);
wire [7:0] out_inst8Bit3, out_inst8Bit2, out_inst8Bit1, out_inst8Bit0;

//extend to 8 bit, pad with 0's
               assign out_inst8Bit3 = {4'b0000, out_inst3};
               assign out_inst8Bit2 = {4'b0000, out_inst2};
               assign out_inst8Bit1 = {4'b0000, out_inst1};
               assign out_inst8Bit0 = {4'b0000, out_inst0};
                
               assign PP3 = {out_inst8Bit3 << 3};
               assign PP2 = {out_inst8Bit2 << 2};
               assign PP1 = {out_inst8Bit1 << 1};
               assign PP0 = out_inst8Bit0;               
endmodule
