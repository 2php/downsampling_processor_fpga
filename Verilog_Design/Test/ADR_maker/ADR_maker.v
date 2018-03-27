module ADR_maker (in_Clock, A, ART, ARG, AWT, AWG, TOG_inc, SEL, dout, 
						QUAD_inc, QUAD_out, QUAD_Z);

input in_Clock;
wire  clk;
input wire[7:0] A;

input wire[7:0] ART;
input wire[7:0] ARG;
input wire[7:0] AWT;
input wire[7:0] AWG;

input wire TOG_inc;
reg TOG;
input wire[2:0] SEL;

output reg[17:0] dout;

input wire QUAD_inc;					//QUAD is inside the address maker.
output reg[ 1:0] QUAD_out;
output reg QUAD_Z;

pll mypll(.inclk0(in_Clock), .c0(clk));

always @ (QUAD_out)					//Update Z output
begin

	if(QUAD_out == 0)
	begin
		QUAD_Z = 1;
	end
	
end



always @ (negedge clk)				//Control signals given in posedge, we check them in negedge
begin
	
	if(QUAD_inc)						//Increment Quad
	begin
		QUAD_out <= QUAD_out + 1;
	end
	
	
	if(TOG_inc)							//Toggle
	begin
		TOG <= ~TOG;
	end
	
	case (SEL)
	
	`adr_none:
		begin
			QUAD_out <= 18'd0;
		end
	endcase
	
end


endmodule
