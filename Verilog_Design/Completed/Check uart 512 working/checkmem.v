module checkmem(clk,dout,wen,addr,d);

input clk,wen,d;
input [17:0]addr;
output [7:0] dout;
wire cl;
reg [7:0] data1=8'd213;
reg [7:0] data2=8'd143;
reg [7:0] data=8'd65;
dram_512 dd(.address(addr),.clock(cl),.data(data),.wren(~wen),.q(dout));
pll mypll(.inclk0(clk), .c0(cl));

always @(d)
begin
case (d)
	0:data<=data1;
	1:data<=data2;
endcase
end
endmodule
