module UM(din,dout,addr,ready,wen);
input ready;
input [7:0] din;
output [7:0] dout;
output reg [15:0] addr=16'b0;

always @(posedge ready)
begin
 
end

