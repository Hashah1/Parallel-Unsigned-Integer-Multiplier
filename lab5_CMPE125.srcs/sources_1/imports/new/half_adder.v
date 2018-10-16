module half_adder(output sum, output c_out, input a, b);
                  
assign sum = a ^ b;
assign c_out = a & b;
endmodule
