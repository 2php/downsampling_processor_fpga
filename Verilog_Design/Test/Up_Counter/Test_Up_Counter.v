module Test_Up_Counter();
	
	localparam WIDTH_LP = 32;
	localparam OUT_WIDTH_LP = 8;
	
	reg clk_tb;
	reg resetn_tb;
	
	wire [OUT_WIDTH_LP - 1 : 0] out_tb;
	
	Up_Counter #(
		.WIDTH (WIDTH_LP),
		.OUT_WIDTH (OUT_WIDTH_LP)
	)
	
	uut (
		.clk(clk_tb),
		.resetn(resetn_tb),
		.out (out_tb)
	);
	
	integer fileResult;
	integer i;
	
	initial begin
		resetn_tb = 1;
		clk_tb = 1;
		
		fileResult = $fopen("D:/result.txt", "w");
		
		#2;
		
		resetn_tb = 0;
		
		#100;
		
		resetn_tb = 1;
		
		for (i=0 ; i > -1; i = i+1) begin
		
			fileResult = $fopen ("D:/result.txt", "a");
			$fwrite (fileResult, "%x\n", uut.counter_value);
			$fclose(fileResult);
			#10;
		
		end
	end
	
	always begin
		#5;
		
		clk_tb = ! clk_tb;
	end
	
endmodule
		
		
		
		
		
		
		
		
		
		
		
	