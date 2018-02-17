module Up_Counter #(
	parameter WIDTH = 32,
	parameter OUT_WIDTH = 8
	
	)
	
	(
		input clk,
		input resetn,
		output [ OUT_WIDTH - 1 : 0] cout
	);
	
	reg [WIDTH - 1 : 0] counter_value;
	
	assign out = counter_value[WIDTH -1 : WIDTH - OUT_WIDTH];
	
	always @ (posedge clk or negedge resetn) begin
		if(!resetn) begin
			counter_value <= 0;
		end else begin
			counter_value <= counter_value + 1;
			
		end
	end
endmodule



			