module uart_control(clk_50m, din, dout, serial_rx, serial_tx, addr,
							recieve_enable, transmit_enable, busy, mem_write);

input serial_rx, recieve_enable, transmit_enable, clk_50m;
output serial_tx, busy;
output reg mem_write;
input[7:0] din;
output[7:0] dout;
output[15:0] addr;

parameter IDLE = 2'b01;
parameter RXING = 2'b01;
parameter TXING = 2'b10;

wire Txclk_en, Rxclk_en, busy_tx, busy_rx, rx_byte_done, tx_byte_done;
reg[15:0] addr;
reg[1:0] state;

baudrate uart_baud(	.clk_50m(clk_50m),
							.Rxclk_en(Rxclk_en),
							.Txclk_en(Txclk_en)
							);
							
transmitter uart_tx(.data_in(din), .wr_en(transmit_enable), .clk_50m(clk_50m),
							.clken(Txclk_en),
							.Tx(serial_tx), .Tx_busy(busy_tx), .byte_end(tx_byte_done));
							
receiver uart_Rx(	.Rx(serial_rx),
						.clk_50m(clk_50m),
						.clken(Rxclk_en), //We assign Tx clock to enable clock 
						.data(dout),
						.rx_byte_done(rx_byte_done)
						);
						

always @(posedge recieve_enable)
begin
	state <= RXING;
end

always @(posedge(clk_50m))
begin
	case (state)
	RXING: begin
		mem_write <= rx_byte_done;
	end
	TXING: begin
	end
	default: begin
	end
	endcase
	
	if (addr > 16'b1111111111111111)
		state <= IDLE;
end

always @(posedge rx_byte_done)
begin
	addr <= addr + 1;
end

endmodule
