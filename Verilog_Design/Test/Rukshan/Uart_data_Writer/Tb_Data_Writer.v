module Tb_Data_writer();

reg clk,Rx_tick;
reg [7:0] Din;

wire fin,Wen;
wire [15:0] addr;
wire [7:0] Dout;

Data_Writer DStore(.clk(clk),.Din(Din),.Rx_tick(Rx_tick),.fin(fin),.Wen(Wen),.Addr(addr),.Dout(Dout));

 initial begin
    clk = 1'b0;
    forever #10 clk = ~clk; // generate a clock
 end
 
 initial
 begin
 #60;
 Din<=8'b01101000;
 #10;
 Rx_tick<=1;
 #20;
 Rx_tick<=0;
 #60;
  Rx_tick<=1;
 #20;
 Rx_tick<=0;
 #60;
  Rx_tick<=1;
 #20;
 Rx_tick<=0;
 #60;
  Rx_tick<=1;
 #20;
 Rx_tick<=0;
 #60;
 end
 
 endmodule
 
 
