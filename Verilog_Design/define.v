// Control Signals
// use


// [ACI_decoder] To write from A-bus to registers' cin

`define aci_none			4'd0
`define aci_MDDR			4'd1
`define aci_ART			4'd2
`define aci_ARG			4'd3
`define aci_AWT			4'd4
`define aci_AWG			4'd5
`define aci_K0				4'd6
`define aci_K1				4'd7
`define aci_G				4'd8
`define aci_MIDR			4'd9
`define aci_all			4'd15

// [AWM_mux] To write from registers to A-bus (A mux selection bits)

`define awm_AC				4'd0
`define awm_MDDR			4'd1
`define awm_ART			4'd2
`define awm_ARG			4'd3
`define awm_AWT			4'd4
`define awm_AWG			4'd5
`define awm_K0				4'd6
`define awm_K1				4'd7
`define awm_G0				4'd8
`define awm_G1				4'd9
`define awm_G2				4'd10
`define awm_MIDR			4'd11

// [INS_decoder] cins for instruction registers

`define ins_none			2'd0
`define ins_IR_MIAR		2'd1
`define ins_PC				2'd2
`define ins_MIAR			2'd3

// [INC_decoder] inc signals for registers

`define inc_none			4'd0
`define inc_PC				4'd1
`define inc_ART			4'd2
`define inc_ARG			4'd3
`define inc_AWT			4'd4
`define inc_AWG			4'd5
`define inc_AC				4'd6
`define inc_QUAD			4'd7
`define inc_MDAR			4'd8

// [ALU] ALU selection bits

`define alu_none			3'd0
`define alu_pass			3'd1
`define alu_add			3'd2
`define alu_sub			3'd3
`define alu_div2			3'd4
`define alu_zero			3'd5

// [ADR_maker] Selection bits for ADR_maker

`define adr_none			3'd0
`define adr_matrix_r		3'd1
`define adr_matrix_w		3'd2
`define adr_last8			3'd3
`define adr_mid8			3'd4
`define adr_first2		3'd5

// [JMP_encoder] Jump signals


`define jmp_none			3'd0
`define jmp_jump			3'd1
`define jmp_jmpz			3'd2
`define jmp_jpnz			3'd3
`define jmp_jnzt			3'd4
`define jmp_jnrg			3'd5
`define jmp_jnrt			3'd6
`define jmp_jnzq			3'd7

// [OPR_decoder] To give operations controls

`define opr_none			2'd0
`define opr_aci			2'd1
`define opr_awm			2'd2
`define opr_inc			2'd3




