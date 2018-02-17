module test1mem ();
reg [15:0] address;
reg [7:0] data;
reg ren;
wire [7:0] dout;

RAM_1_port ram1(.data(data), .address(address), .wren(ren), .q(dout));

initial begin

address = 16'b0000000000000000;
data = 8'b00000000;
ren = 1'b1;

#5
address = 16'b0000000000000001;
ren = 1'b0;

#5
ren = 1'b1;

#5
//address = 16'b0000000000000002;

#5
address = 16'b0000000000000001;

end

endmodule
