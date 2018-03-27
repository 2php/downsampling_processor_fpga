module dram_512(address,clock,data,wren,q);

input	[17:0]  address;
input	  clock;
input	[7:0]  data;
input	  wren;
output	[7:0]  q;

wire [1:0] selector;
wire [7:0] q1,q2,q3,q4;
reg wren1=0;
reg wren2=0;
reg wren3=0;
reg wren4=0;

parameter DM1=2'b00;
parameter DM2=2'b01;
parameter DM3=2'b10;
parameter DM4=2'b11;

assign selector[1:0]=address[17:16];


dram d1(.address(address[15:0]),.clock(clock),.data(data),.wren(wren1),.q(q1));
dram d2(.address(address[15:0]),.clock(clock),.data(data),.wren(wren2),.q(q2));
dram d3(.address(address[15:0]),.clock(clock),.data(data),.wren(wren3),.q(q3));
dram d4(.address(address[15:0]),.clock(clock),.data(data),.wren(wren4),.q(q4));
multiplexer mux(.data0x(q1),.data1x(q2),.data2x(q3),.data3x(q4),.sel(selector),.result(q));

//always @(posedge clock)
//	begin
//		case(selector)
//			begin
//				D1:q<=q1;
//				D2:q<=q2;
//				D3:q<=q3;
//				D4:q<=q4;
//				default:q<=q1;
//			end
//	end


always @(address,wren)
	begin
		case(selector)
			DM1:
				begin
				wren1<=wren;	
				wren2<=0;
				wren3<=0;
				wren4<=0;
				end
			DM2:
				begin
				wren1<=0;	
				wren2<=wren;
				wren3<=0;
				wren4<=0;
				end
			DM3:
				begin
				wren1<=0;	
				wren2<=0;
				wren3<=wren;
				wren4<=0;
				end
			DM4:
				begin
				wren1<=0;	
				wren2<=0;
				wren3<=0;
				wren4<=wren;
				end
			default:
				begin
				wren1<=wren;	
				wren2<=0;
				wren3<=0;
				wren4<=0;
				end
		
		endcase
	end
endmodule
