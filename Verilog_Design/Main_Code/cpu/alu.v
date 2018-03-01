module alu(Abus, Bbus, Cbus, alu_control, z);

input[16:0] Abus, Bbus;
input[2:0] alu_control;
output reg z;
output reg[16:0] Cbus;

//control instructions
parameter ZERO = 3'b000;
parameter ADD = 3'b001;
parameter SUB = 3'b010;
parameter PAS = 3'b011;
parameter MUL2 = 3'b100;
parameter DIV2 = 3'b101;
parameter DECAC = 3'b110;

always @(Abus or Bbus or alu_control)
begin
	case(alu_control)
		ZERO: begin
			Cbus = Abus;
			z = 1'b0;
		end
		
		ADD: begin
			Cbus = Abus + Bbus;
			z = 1'b0;
		end
		
		SUB: begin
			Cbus = Abus - Bbus;
			if (Abus == 16'd0)
				z = 1'b1;
			else
				z = 1'b0;
		end
		
		PAS: begin 
			Cbus = Bbus;
			if (Abus == 16'd0)
				z = 1'b1;
			else
				z = 1'b0;
		end
		
		DIV2: begin
			Cbus = Bbus >> 1;
			z = 0;
		end
		
		DECAC: begin
			Cbus = Abus - 1;
			z = 0;
		end
	endcase
end

endmodule
