module Data_retrieve(Start,Tx_tick,Wen,Addr,fin);

input Start;   
input Tx_tick;
output reg [15:0] Addr=0;
output reg Wen=1'b0;
output reg fin=0;
reg STATE=0;

//always @(posedge Start)
//begin
//Wen<=~Wen;
//end
  
//always @(posedge Tx_tick)
//begin
//	if (Addr==16'd65535)
//		begin
//		fin<=1;
//		end
//	Addr<=Addr+1;
//	
//end
//
//endmodule


parameter IDLE =0;
parameter TRANSMITTING=1;

always @(posedge Tx_tick,negedge Start)
begin
 case (STATE)
	IDLE: 
	begin
	Wen<=1;
	STATE<=TRANSMITTING;
	end
	TRANSMITTING: 
	begin
		Addr<=Addr+1;
		if (Addr==16'd65535)
			begin
				Wen<=0;
				fin<=1;
				STATE <= IDLE;
			end
	end 
 endcase
end
endmodule
