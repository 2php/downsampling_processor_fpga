module upcounter(clk, out);

input clk;
output[7:0] out;
reg[7:0] out;


always @(posedge clk)
begin 
	if (out < 8'b11111111)
		out = out + 1;
	else
		out <= 8'b00000000;
end
endmodule
