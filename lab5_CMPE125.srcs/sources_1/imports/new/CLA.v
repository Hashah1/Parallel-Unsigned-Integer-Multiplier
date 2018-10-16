module CLA(input [3:0] P,G,
           input c0,
           output [4:0] C);


//assign C outputs
assign C[0] = c0;
assign C[1] = G[0] | P[0] & (c0);// G[0] + P[0]&C[0]
assign C[2] = G[1] | P[1]&(G[0] | P[0] & (c0));
assign C[3] = G[2] | P[2]& (G[1] | P[1]&(G[0] | P[0] & (c0)));
assign C[4] = G[3] | P[3]& (G[2] | P[2]& (G[1] | P[1]&(G[0] | P[0] & (c0))));

endmodule
