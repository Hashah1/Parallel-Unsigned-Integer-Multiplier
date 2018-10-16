`timescale 1ns / 1ps

module tb_multiplier();

reg [3:0] A, b;
reg [7:0] exp_out;
wire [7:0] out;

integer i, j; 

multiplier DUT( 
               .A(A),
               .b(b),
               .out(out)
               );

initial
begin
$display ("Begin Simulation");

    for (i = 0; i <= 15; i = i + 1)
    begin
        for (j = 0; j <= 15; j = j + 1)
        begin
            A = i;
            b = j;
            #1; //delay
            exp_out = A * b;
            if (exp_out !== out) 
            begin
            $display("Error in output!");
            $display("A: %d, b: %d, exp_out: %d, out:%d",A,b,exp_out,out);
            end
        end
    end
    $display("End simulation!");
    $stop;
end
endmodule
