module DRAM(address_bus,clk,din,dout,wen);


input wen,clk;
input [7:0] din;
output [15:0] address_bus;
output [7:0] dout;
reg button;

ram_1 dataram(.address(address_bus),.clock(clk),
	.data(din),
	.wren(wen),
	.q(dout));
	

always @(posedge clk)
begin
button<=!wen;
end
endmodule
