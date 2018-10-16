`timescale 1ns / 1ps

module multiplier(input [3:0] A, b, output [7:0] out);

wire [3:0] out_inst3, out_inst2, out_inst1, out_inst0;

AND_module AND_3 (
                  .A (A),
                  .b (b[3]),
                  .out (out_inst3)  
                  );

AND_module AND_2 (
                  .A (A),
                  .b (b[2]),
                  .out (out_inst2)  
                  );
 
AND_module AND_1 (
                  .A (A),
                  .b (b[1]),
                  .out (out_inst1)  
                  );

AND_module AND_0 (
                  .A (A),
                  .b (b[0]),
                  .out (out_inst0)  
                  );

wire [7:0] PP3, PP2, PP1, PP0;

//This will extend the out_inst to 8 bits and shift
shifter s1(out_inst3, out_inst2, out_inst1, out_inst0,PP3, PP2, PP1, PP0);
wire [7:0] output_PP32, output_PP10, output_PP30;

CLA_8Bit CLA_PP32(
                  .A(PP3),
                  .B(PP2),
                  .sum(output_PP32)
                  );
                  
CLA_8Bit CLA_PP10(
                  .A(PP1),
                  .B(PP0),
                  .sum(output_PP10)
                  );

CLA_8Bit CLA_PP30(
                  .A(output_PP32),
                  .B(output_PP10),
                  .sum(output_PP30)
                  );
                  
assign out = output_PP30; //store final output
endmodule
