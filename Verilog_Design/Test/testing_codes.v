module testing_codes(clk,out);

input clk;
output[7:0] out;
wire w1,w2;

mypll pll1(.inclk0(clk), .c0(w1));
mypll pll2(.inclk0(w1), .c0(w2));
upcounter u1(.clk(w2), .out(out));

endmodule
