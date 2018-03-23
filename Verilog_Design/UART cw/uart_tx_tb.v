module uart_tx_tb();
	reg clk = 0;
	reg dv = 0;
	reg[7:0] data;
	wire tx_active, tx_done, tx_serial;
	
	parameter c_CLOCK_PERIOD_NS = 100;
	
	always #(c_CLOCK_PERIOD_NS/2) clk <= !clk;
	
	uart_tx tx(.i_Clock(clk), .i_Tx_DV(dv), .i_Tx_Byte(data), .o_Tx_Active(tx_active),
					.o_Tx_Serial(tx_serial), .o_Tx_Done(tx_done));
	
	initial
	begin
	#1000
	data <= 75;
	
	#1000
	dv <= 1;
		
	#100
	dv <= 0;
	
	#100
	data <= 0;
	
	#10000000
	data <= 58;
	
	#10000
	dv <= 1;
	
	end
	
endmodule
