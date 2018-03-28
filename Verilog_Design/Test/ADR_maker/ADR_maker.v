`include "define.v"

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
reg TOG=0;
input wire[2:0] SEL;

output reg[17:0] dout=18'd0;

input wire QUAD_inc;					//QUAD is inside the address maker.
output reg[ 1:0] QUAD_out=2'd0;
output reg QUAD_Z = 1;

pll mypll(.inclk0(in_Clock), .c0(clk));
//assign clk=in_Clock;

always @ (QUAD_out)					//Update Z output
begin

	if(QUAD_out == 2'b0)
		QUAD_Z <= 1;
	else
		QUAD_Z <= 0;
	
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
	 
	`adr_matrix_r:						//MDAR is formed by read registers
	   begin
			
			if(TOG == 0)
			begin
				dout <= {QUAD_out[1], ARG, QUAD_out[0], ART};
			end
			
			else
			begin
				dout <= {QUAD_out[1], ART, QUAD_out[0], ARG};
			end
		end
		
	`adr_matrix_w:						//MDAR is formed by write registers
	   begin
			if(TOG == 0)
			begin
				dout <= {QUAD_out[1], AWG, QUAD_out[0], AWT};
			end
			
			else
			begin
				dout <= {QUAD_out[1], AWT, QUAD_out[0], AWG};
			end
		end
		
	`adr_last8:							//MDAR, last 8 is filled by A
	   begin
			dout[7:0] <= A;
		end
	`adr_mid8:							//MDAR, mid 8 is filled by A
	   begin
			dout[15:8] <= A;
		end
	`adr_first2:						//MDAR, first 8 is filled by A
	   begin
			dout[17:16] <= A[1:0];
		end
	endcase
	
end


endmodule
