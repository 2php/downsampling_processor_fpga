module Data_retriever(clk,addr,wen,fin,start,Tx_tick);

input clk,Tx_tick,start;
output reg [15:0] addr=16'b0;
output reg wen=0;
output reg fin=0;
reg flag=0;
reg [1:0]STATE=2'b00;

parameter IDLE=2'b0;
parameter TRANSMITTING=2'b01; 
parameter DONE=2'b10;


always @(posedge clk)
 case(STATE)
 IDLE:
	begin
	addr<=16'b0;
	if (start==0)
		begin
			fin<=0;
			STATE<=TRANSMITTING;
		end
	end
 TRANSMITTING:
	begin
		wen<=1;
		if (addr==16'd65535 )
			begin
			STATE<=DONE;
			end
		else if(Tx_tick==1)
			begin
			addr<=addr+1;
			end
	end
 DONE:
		if(Tx_tick==1 & flag==1)
		begin
			STATE<=IDLE;
			fin<=1;
			wen<=0;
			flag<=0;
		end
		else if (Tx_tick==1)
		begin
			flag<=1;
		end
 endcase
endmodule 