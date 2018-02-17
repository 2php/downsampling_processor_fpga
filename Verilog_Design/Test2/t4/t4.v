
module t4;
	reg i1;
	reg i2;
	wire o1;
	
	wire out;
	wire carry_out;
	
	simpleand uut (.a(i1) , .b (i2), .c(o1));
	
	initial begin
		i1 = 0;
		i2 = 1;
		
		#20;
		
		i1 = 1;
		i2 = 1;
		
		#40;
	
	end
	
	initial
	begin
		$monitor("time = %2d, CIN =%1b, IN1=%1b, IN2=%1b, COUT=%1b, OUT=%1b", $time,in1,in2, o1);
	end

endmodule

module simpleand (a,b,c);

	input a,b;
	output c;
	reg c;
	
	always @ (*)
	c = a & b;

endmodule
