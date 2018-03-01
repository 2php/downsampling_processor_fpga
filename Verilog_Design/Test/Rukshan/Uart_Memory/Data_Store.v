module Data_Store(din,dout,addr,ready,wen,done);

input ready;
input [7:0] din;
output reg [7:0] dout;
output reg [15:0] addr=16'b65535;
output reg wen=1;
output reg done=1'b0;


always @ (posedge clk)
begin
	if (ready==1 & done==0)
		begin
			dout<=din;
			addr<=addr+1;
			if(addr==16'b65535)
				begin
					done<=1;
					wen<=0;
				end
		end
end

endmodule
