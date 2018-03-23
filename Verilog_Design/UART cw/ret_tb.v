module ret_tb();

wire dv, tick, serial, done, active;
wire[15:0] addr;
reg[7:0] data;
reg clk = 0;
reg start = 1;

uart_tx tx(.i_Clock(clk), .i_Tx_DV(dv), .i_Tx_Byte(data), .o_Tx_Active(active),
					.o_Tx_Serial(serial), .o_Tx_Done(tick));
					
Data_retrieve ret(.Start(start), .Tx_tick(tick), .Wen(dv), .Addr(addr), .fin(done));

	
	parameter c_CLOCK_PERIOD_NS = 100;
	
	always #(c_CLOCK_PERIOD_NS/2) clk <= !clk;
	
initial
begin

data <= 59;

#50000
start <= 1'b0;

#200
start <= 1'b1;

end

endmodule
