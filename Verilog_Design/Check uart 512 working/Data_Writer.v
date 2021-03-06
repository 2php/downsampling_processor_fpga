module Data_Writer(clk,Rx_tick,Din,Wen,Addr,Dout,fin);

input Rx_tick,clk;
input [7:0] Din;
output reg [17:0] Addr=18'b0;
output reg [7:0] Dout;
output reg Wen=1'b0;
output reg fin=0; 

reg flag = 0;
reg [1:0] STATE=2'b0;

parameter IDLE=2'b0;
parameter STORING=2'b01;
parameter DONE=2'b10;

always @(posedge clk)
begin
	case(STATE)
		IDLE:
			if(Rx_tick==1)
				begin
				fin<=0;
				Wen<=1;
				Dout<=Din;
				STATE<=STORING;
				end
		STORING:
			if ((Addr==18'd14) & (flag==0))
				begin
				flag<=1;
				Addr<=18'b0;
				STATE<=IDLE;
				end
			else if(Addr==18'd262143) 
				begin
				STATE<=DONE;
				end
			else if(Rx_tick==1)
				begin
				Dout<=Din;
				Addr<=Addr+1;
				end

		DONE:
			begin
			Addr<=0;
			fin<=1;
			Wen<=0;
			end
	endcase	
	
end

endmodule