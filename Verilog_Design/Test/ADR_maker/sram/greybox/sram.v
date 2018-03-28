// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

// DATE "03/28/2018 12:45:12"

// 
// Device: Altera EP4CE115F29C7 Package FBGA780
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module sram (
	address,
	byteenable,
	read,
	write,
	writedata,
	readdata,
	readdatavalid,
	clk,
	SRAM_DQ,
	SRAM_ADDR,
	SRAM_LB_N,
	SRAM_UB_N,
	SRAM_CE_N,
	SRAM_OE_N,
	SRAM_WE_N,
	reset)/* synthesis synthesis_greybox=0 */;
input 	[19:0] address;
input 	[1:0] byteenable;
input 	read;
input 	write;
input 	[15:0] writedata;
output 	[15:0] readdata;
output 	readdatavalid;
input 	clk;
inout 	[15:0] SRAM_DQ;
output 	[19:0] SRAM_ADDR;
output 	SRAM_LB_N;
output 	SRAM_UB_N;
output 	SRAM_CE_N;
output 	SRAM_OE_N;
output 	SRAM_WE_N;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sram_0|readdata[0]~q ;
wire \sram_0|readdata[1]~q ;
wire \sram_0|readdata[2]~q ;
wire \sram_0|readdata[3]~q ;
wire \sram_0|readdata[4]~q ;
wire \sram_0|readdata[5]~q ;
wire \sram_0|readdata[6]~q ;
wire \sram_0|readdata[7]~q ;
wire \sram_0|readdata[8]~q ;
wire \sram_0|readdata[9]~q ;
wire \sram_0|readdata[10]~q ;
wire \sram_0|readdata[11]~q ;
wire \sram_0|readdata[12]~q ;
wire \sram_0|readdata[13]~q ;
wire \sram_0|readdata[14]~q ;
wire \sram_0|readdata[15]~q ;
wire \sram_0|readdatavalid~q ;
wire \sram_0|SRAM_ADDR[0]~q ;
wire \sram_0|SRAM_ADDR[1]~q ;
wire \sram_0|SRAM_ADDR[2]~q ;
wire \sram_0|SRAM_ADDR[3]~q ;
wire \sram_0|SRAM_ADDR[4]~q ;
wire \sram_0|SRAM_ADDR[5]~q ;
wire \sram_0|SRAM_ADDR[6]~q ;
wire \sram_0|SRAM_ADDR[7]~q ;
wire \sram_0|SRAM_ADDR[8]~q ;
wire \sram_0|SRAM_ADDR[9]~q ;
wire \sram_0|SRAM_ADDR[10]~q ;
wire \sram_0|SRAM_ADDR[11]~q ;
wire \sram_0|SRAM_ADDR[12]~q ;
wire \sram_0|SRAM_ADDR[13]~q ;
wire \sram_0|SRAM_ADDR[14]~q ;
wire \sram_0|SRAM_ADDR[15]~q ;
wire \sram_0|SRAM_ADDR[16]~q ;
wire \sram_0|SRAM_ADDR[17]~q ;
wire \sram_0|SRAM_ADDR[18]~q ;
wire \sram_0|SRAM_ADDR[19]~q ;
wire \sram_0|SRAM_LB_N~q ;
wire \sram_0|SRAM_UB_N~q ;
wire \sram_0|SRAM_CE_N~q ;
wire \sram_0|SRAM_OE_N~q ;
wire \sram_0|SRAM_WE_N~q ;
wire \sram_0|writedata_reg[0]~q ;
wire \sram_0|is_write~q ;
wire \sram_0|writedata_reg[1]~q ;
wire \sram_0|writedata_reg[2]~q ;
wire \sram_0|writedata_reg[3]~q ;
wire \sram_0|writedata_reg[4]~q ;
wire \sram_0|writedata_reg[5]~q ;
wire \sram_0|writedata_reg[6]~q ;
wire \sram_0|writedata_reg[7]~q ;
wire \sram_0|writedata_reg[8]~q ;
wire \sram_0|writedata_reg[9]~q ;
wire \sram_0|writedata_reg[10]~q ;
wire \sram_0|writedata_reg[11]~q ;
wire \sram_0|writedata_reg[12]~q ;
wire \sram_0|writedata_reg[13]~q ;
wire \sram_0|writedata_reg[14]~q ;
wire \sram_0|writedata_reg[15]~q ;
wire \SRAM_DQ[0]~input_o ;
wire \SRAM_DQ[1]~input_o ;
wire \SRAM_DQ[2]~input_o ;
wire \SRAM_DQ[3]~input_o ;
wire \SRAM_DQ[4]~input_o ;
wire \SRAM_DQ[5]~input_o ;
wire \SRAM_DQ[6]~input_o ;
wire \SRAM_DQ[7]~input_o ;
wire \SRAM_DQ[8]~input_o ;
wire \SRAM_DQ[9]~input_o ;
wire \SRAM_DQ[10]~input_o ;
wire \SRAM_DQ[11]~input_o ;
wire \SRAM_DQ[12]~input_o ;
wire \SRAM_DQ[13]~input_o ;
wire \SRAM_DQ[14]~input_o ;
wire \SRAM_DQ[15]~input_o ;
wire \clk~input_o ;
wire \address[0]~input_o ;
wire \address[1]~input_o ;
wire \address[2]~input_o ;
wire \address[3]~input_o ;
wire \address[4]~input_o ;
wire \address[5]~input_o ;
wire \address[6]~input_o ;
wire \address[7]~input_o ;
wire \address[8]~input_o ;
wire \address[9]~input_o ;
wire \address[10]~input_o ;
wire \address[11]~input_o ;
wire \address[12]~input_o ;
wire \address[13]~input_o ;
wire \address[14]~input_o ;
wire \address[15]~input_o ;
wire \address[16]~input_o ;
wire \address[17]~input_o ;
wire \address[18]~input_o ;
wire \address[19]~input_o ;
wire \byteenable[0]~input_o ;
wire \read~input_o ;
wire \write~input_o ;
wire \byteenable[1]~input_o ;
wire \reset~input_o ;
wire \writedata[0]~input_o ;
wire \writedata[1]~input_o ;
wire \writedata[2]~input_o ;
wire \writedata[3]~input_o ;
wire \writedata[4]~input_o ;
wire \writedata[5]~input_o ;
wire \writedata[6]~input_o ;
wire \writedata[7]~input_o ;
wire \writedata[8]~input_o ;
wire \writedata[9]~input_o ;
wire \writedata[10]~input_o ;
wire \writedata[11]~input_o ;
wire \writedata[12]~input_o ;
wire \writedata[13]~input_o ;
wire \writedata[14]~input_o ;
wire \writedata[15]~input_o ;


sram_sram_sram_0 sram_0(
	.readdata_0(\sram_0|readdata[0]~q ),
	.readdata_1(\sram_0|readdata[1]~q ),
	.readdata_2(\sram_0|readdata[2]~q ),
	.readdata_3(\sram_0|readdata[3]~q ),
	.readdata_4(\sram_0|readdata[4]~q ),
	.readdata_5(\sram_0|readdata[5]~q ),
	.readdata_6(\sram_0|readdata[6]~q ),
	.readdata_7(\sram_0|readdata[7]~q ),
	.readdata_8(\sram_0|readdata[8]~q ),
	.readdata_9(\sram_0|readdata[9]~q ),
	.readdata_10(\sram_0|readdata[10]~q ),
	.readdata_11(\sram_0|readdata[11]~q ),
	.readdata_12(\sram_0|readdata[12]~q ),
	.readdata_13(\sram_0|readdata[13]~q ),
	.readdata_14(\sram_0|readdata[14]~q ),
	.readdata_15(\sram_0|readdata[15]~q ),
	.readdatavalid1(\sram_0|readdatavalid~q ),
	.SRAM_ADDR_0(\sram_0|SRAM_ADDR[0]~q ),
	.SRAM_ADDR_1(\sram_0|SRAM_ADDR[1]~q ),
	.SRAM_ADDR_2(\sram_0|SRAM_ADDR[2]~q ),
	.SRAM_ADDR_3(\sram_0|SRAM_ADDR[3]~q ),
	.SRAM_ADDR_4(\sram_0|SRAM_ADDR[4]~q ),
	.SRAM_ADDR_5(\sram_0|SRAM_ADDR[5]~q ),
	.SRAM_ADDR_6(\sram_0|SRAM_ADDR[6]~q ),
	.SRAM_ADDR_7(\sram_0|SRAM_ADDR[7]~q ),
	.SRAM_ADDR_8(\sram_0|SRAM_ADDR[8]~q ),
	.SRAM_ADDR_9(\sram_0|SRAM_ADDR[9]~q ),
	.SRAM_ADDR_10(\sram_0|SRAM_ADDR[10]~q ),
	.SRAM_ADDR_11(\sram_0|SRAM_ADDR[11]~q ),
	.SRAM_ADDR_12(\sram_0|SRAM_ADDR[12]~q ),
	.SRAM_ADDR_13(\sram_0|SRAM_ADDR[13]~q ),
	.SRAM_ADDR_14(\sram_0|SRAM_ADDR[14]~q ),
	.SRAM_ADDR_15(\sram_0|SRAM_ADDR[15]~q ),
	.SRAM_ADDR_16(\sram_0|SRAM_ADDR[16]~q ),
	.SRAM_ADDR_17(\sram_0|SRAM_ADDR[17]~q ),
	.SRAM_ADDR_18(\sram_0|SRAM_ADDR[18]~q ),
	.SRAM_ADDR_19(\sram_0|SRAM_ADDR[19]~q ),
	.SRAM_LB_N1(\sram_0|SRAM_LB_N~q ),
	.SRAM_UB_N1(\sram_0|SRAM_UB_N~q ),
	.SRAM_CE_N1(\sram_0|SRAM_CE_N~q ),
	.SRAM_OE_N1(\sram_0|SRAM_OE_N~q ),
	.SRAM_WE_N1(\sram_0|SRAM_WE_N~q ),
	.writedata_reg_0(\sram_0|writedata_reg[0]~q ),
	.is_write1(\sram_0|is_write~q ),
	.writedata_reg_1(\sram_0|writedata_reg[1]~q ),
	.writedata_reg_2(\sram_0|writedata_reg[2]~q ),
	.writedata_reg_3(\sram_0|writedata_reg[3]~q ),
	.writedata_reg_4(\sram_0|writedata_reg[4]~q ),
	.writedata_reg_5(\sram_0|writedata_reg[5]~q ),
	.writedata_reg_6(\sram_0|writedata_reg[6]~q ),
	.writedata_reg_7(\sram_0|writedata_reg[7]~q ),
	.writedata_reg_8(\sram_0|writedata_reg[8]~q ),
	.writedata_reg_9(\sram_0|writedata_reg[9]~q ),
	.writedata_reg_10(\sram_0|writedata_reg[10]~q ),
	.writedata_reg_11(\sram_0|writedata_reg[11]~q ),
	.writedata_reg_12(\sram_0|writedata_reg[12]~q ),
	.writedata_reg_13(\sram_0|writedata_reg[13]~q ),
	.writedata_reg_14(\sram_0|writedata_reg[14]~q ),
	.writedata_reg_15(\sram_0|writedata_reg[15]~q ),
	.SRAM_DQ_0(\SRAM_DQ[0]~input_o ),
	.SRAM_DQ_1(\SRAM_DQ[1]~input_o ),
	.SRAM_DQ_2(\SRAM_DQ[2]~input_o ),
	.SRAM_DQ_3(\SRAM_DQ[3]~input_o ),
	.SRAM_DQ_4(\SRAM_DQ[4]~input_o ),
	.SRAM_DQ_5(\SRAM_DQ[5]~input_o ),
	.SRAM_DQ_6(\SRAM_DQ[6]~input_o ),
	.SRAM_DQ_7(\SRAM_DQ[7]~input_o ),
	.SRAM_DQ_8(\SRAM_DQ[8]~input_o ),
	.SRAM_DQ_9(\SRAM_DQ[9]~input_o ),
	.SRAM_DQ_10(\SRAM_DQ[10]~input_o ),
	.SRAM_DQ_11(\SRAM_DQ[11]~input_o ),
	.SRAM_DQ_12(\SRAM_DQ[12]~input_o ),
	.SRAM_DQ_13(\SRAM_DQ[13]~input_o ),
	.SRAM_DQ_14(\SRAM_DQ[14]~input_o ),
	.SRAM_DQ_15(\SRAM_DQ[15]~input_o ),
	.clk(\clk~input_o ),
	.address_0(\address[0]~input_o ),
	.address_1(\address[1]~input_o ),
	.address_2(\address[2]~input_o ),
	.address_3(\address[3]~input_o ),
	.address_4(\address[4]~input_o ),
	.address_5(\address[5]~input_o ),
	.address_6(\address[6]~input_o ),
	.address_7(\address[7]~input_o ),
	.address_8(\address[8]~input_o ),
	.address_9(\address[9]~input_o ),
	.address_10(\address[10]~input_o ),
	.address_11(\address[11]~input_o ),
	.address_12(\address[12]~input_o ),
	.address_13(\address[13]~input_o ),
	.address_14(\address[14]~input_o ),
	.address_15(\address[15]~input_o ),
	.address_16(\address[16]~input_o ),
	.address_17(\address[17]~input_o ),
	.address_18(\address[18]~input_o ),
	.address_19(\address[19]~input_o ),
	.byteenable_0(\byteenable[0]~input_o ),
	.read(\read~input_o ),
	.write(\write~input_o ),
	.byteenable_1(\byteenable[1]~input_o ),
	.reset(\reset~input_o ),
	.writedata({\writedata[15]~input_o ,\writedata[14]~input_o ,\writedata[13]~input_o ,\writedata[12]~input_o ,\writedata[11]~input_o ,\writedata[10]~input_o ,\writedata[9]~input_o ,\writedata[8]~input_o ,\writedata[7]~input_o ,\writedata[6]~input_o ,\writedata[5]~input_o ,
\writedata[4]~input_o ,\writedata[3]~input_o ,\writedata[2]~input_o ,\writedata[1]~input_o ,\writedata[0]~input_o }));

assign \SRAM_DQ[0]~input_o  = SRAM_DQ[0];

assign \SRAM_DQ[1]~input_o  = SRAM_DQ[1];

assign \SRAM_DQ[2]~input_o  = SRAM_DQ[2];

assign \SRAM_DQ[3]~input_o  = SRAM_DQ[3];

assign \SRAM_DQ[4]~input_o  = SRAM_DQ[4];

assign \SRAM_DQ[5]~input_o  = SRAM_DQ[5];

assign \SRAM_DQ[6]~input_o  = SRAM_DQ[6];

assign \SRAM_DQ[7]~input_o  = SRAM_DQ[7];

assign \SRAM_DQ[8]~input_o  = SRAM_DQ[8];

assign \SRAM_DQ[9]~input_o  = SRAM_DQ[9];

assign \SRAM_DQ[10]~input_o  = SRAM_DQ[10];

assign \SRAM_DQ[11]~input_o  = SRAM_DQ[11];

assign \SRAM_DQ[12]~input_o  = SRAM_DQ[12];

assign \SRAM_DQ[13]~input_o  = SRAM_DQ[13];

assign \SRAM_DQ[14]~input_o  = SRAM_DQ[14];

assign \SRAM_DQ[15]~input_o  = SRAM_DQ[15];

assign \clk~input_o  = clk;

assign \address[0]~input_o  = address[0];

assign \address[1]~input_o  = address[1];

assign \address[2]~input_o  = address[2];

assign \address[3]~input_o  = address[3];

assign \address[4]~input_o  = address[4];

assign \address[5]~input_o  = address[5];

assign \address[6]~input_o  = address[6];

assign \address[7]~input_o  = address[7];

assign \address[8]~input_o  = address[8];

assign \address[9]~input_o  = address[9];

assign \address[10]~input_o  = address[10];

assign \address[11]~input_o  = address[11];

assign \address[12]~input_o  = address[12];

assign \address[13]~input_o  = address[13];

assign \address[14]~input_o  = address[14];

assign \address[15]~input_o  = address[15];

assign \address[16]~input_o  = address[16];

assign \address[17]~input_o  = address[17];

assign \address[18]~input_o  = address[18];

assign \address[19]~input_o  = address[19];

assign \byteenable[0]~input_o  = byteenable[0];

assign \read~input_o  = read;

assign \write~input_o  = write;

assign \byteenable[1]~input_o  = byteenable[1];

assign \reset~input_o  = reset;

assign \writedata[0]~input_o  = writedata[0];

assign \writedata[1]~input_o  = writedata[1];

assign \writedata[2]~input_o  = writedata[2];

assign \writedata[3]~input_o  = writedata[3];

assign \writedata[4]~input_o  = writedata[4];

assign \writedata[5]~input_o  = writedata[5];

assign \writedata[6]~input_o  = writedata[6];

assign \writedata[7]~input_o  = writedata[7];

assign \writedata[8]~input_o  = writedata[8];

assign \writedata[9]~input_o  = writedata[9];

assign \writedata[10]~input_o  = writedata[10];

assign \writedata[11]~input_o  = writedata[11];

assign \writedata[12]~input_o  = writedata[12];

assign \writedata[13]~input_o  = writedata[13];

assign \writedata[14]~input_o  = writedata[14];

assign \writedata[15]~input_o  = writedata[15];

assign readdata[0] = \sram_0|readdata[0]~q ;

assign readdata[1] = \sram_0|readdata[1]~q ;

assign readdata[2] = \sram_0|readdata[2]~q ;

assign readdata[3] = \sram_0|readdata[3]~q ;

assign readdata[4] = \sram_0|readdata[4]~q ;

assign readdata[5] = \sram_0|readdata[5]~q ;

assign readdata[6] = \sram_0|readdata[6]~q ;

assign readdata[7] = \sram_0|readdata[7]~q ;

assign readdata[8] = \sram_0|readdata[8]~q ;

assign readdata[9] = \sram_0|readdata[9]~q ;

assign readdata[10] = \sram_0|readdata[10]~q ;

assign readdata[11] = \sram_0|readdata[11]~q ;

assign readdata[12] = \sram_0|readdata[12]~q ;

assign readdata[13] = \sram_0|readdata[13]~q ;

assign readdata[14] = \sram_0|readdata[14]~q ;

assign readdata[15] = \sram_0|readdata[15]~q ;

assign readdatavalid = \sram_0|readdatavalid~q ;

assign SRAM_ADDR[0] = \sram_0|SRAM_ADDR[0]~q ;

assign SRAM_ADDR[1] = \sram_0|SRAM_ADDR[1]~q ;

assign SRAM_ADDR[2] = \sram_0|SRAM_ADDR[2]~q ;

assign SRAM_ADDR[3] = \sram_0|SRAM_ADDR[3]~q ;

assign SRAM_ADDR[4] = \sram_0|SRAM_ADDR[4]~q ;

assign SRAM_ADDR[5] = \sram_0|SRAM_ADDR[5]~q ;

assign SRAM_ADDR[6] = \sram_0|SRAM_ADDR[6]~q ;

assign SRAM_ADDR[7] = \sram_0|SRAM_ADDR[7]~q ;

assign SRAM_ADDR[8] = \sram_0|SRAM_ADDR[8]~q ;

assign SRAM_ADDR[9] = \sram_0|SRAM_ADDR[9]~q ;

assign SRAM_ADDR[10] = \sram_0|SRAM_ADDR[10]~q ;

assign SRAM_ADDR[11] = \sram_0|SRAM_ADDR[11]~q ;

assign SRAM_ADDR[12] = \sram_0|SRAM_ADDR[12]~q ;

assign SRAM_ADDR[13] = \sram_0|SRAM_ADDR[13]~q ;

assign SRAM_ADDR[14] = \sram_0|SRAM_ADDR[14]~q ;

assign SRAM_ADDR[15] = \sram_0|SRAM_ADDR[15]~q ;

assign SRAM_ADDR[16] = \sram_0|SRAM_ADDR[16]~q ;

assign SRAM_ADDR[17] = \sram_0|SRAM_ADDR[17]~q ;

assign SRAM_ADDR[18] = \sram_0|SRAM_ADDR[18]~q ;

assign SRAM_ADDR[19] = \sram_0|SRAM_ADDR[19]~q ;

assign SRAM_LB_N = \sram_0|SRAM_LB_N~q ;

assign SRAM_UB_N = \sram_0|SRAM_UB_N~q ;

assign SRAM_CE_N = \sram_0|SRAM_CE_N~q ;

assign SRAM_OE_N = \sram_0|SRAM_OE_N~q ;

assign SRAM_WE_N = \sram_0|SRAM_WE_N~q ;

cycloneive_io_obuf \SRAM_DQ[0]~output (
	.i(\sram_0|writedata_reg[0]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[0]),
	.obar());
defparam \SRAM_DQ[0]~output .bus_hold = "false";
defparam \SRAM_DQ[0]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[1]~output (
	.i(\sram_0|writedata_reg[1]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[1]),
	.obar());
defparam \SRAM_DQ[1]~output .bus_hold = "false";
defparam \SRAM_DQ[1]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[2]~output (
	.i(\sram_0|writedata_reg[2]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[2]),
	.obar());
defparam \SRAM_DQ[2]~output .bus_hold = "false";
defparam \SRAM_DQ[2]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[3]~output (
	.i(\sram_0|writedata_reg[3]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[3]),
	.obar());
defparam \SRAM_DQ[3]~output .bus_hold = "false";
defparam \SRAM_DQ[3]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[4]~output (
	.i(\sram_0|writedata_reg[4]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[4]),
	.obar());
defparam \SRAM_DQ[4]~output .bus_hold = "false";
defparam \SRAM_DQ[4]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[5]~output (
	.i(\sram_0|writedata_reg[5]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[5]),
	.obar());
defparam \SRAM_DQ[5]~output .bus_hold = "false";
defparam \SRAM_DQ[5]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[6]~output (
	.i(\sram_0|writedata_reg[6]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[6]),
	.obar());
defparam \SRAM_DQ[6]~output .bus_hold = "false";
defparam \SRAM_DQ[6]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[7]~output (
	.i(\sram_0|writedata_reg[7]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[7]),
	.obar());
defparam \SRAM_DQ[7]~output .bus_hold = "false";
defparam \SRAM_DQ[7]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[8]~output (
	.i(\sram_0|writedata_reg[8]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[8]),
	.obar());
defparam \SRAM_DQ[8]~output .bus_hold = "false";
defparam \SRAM_DQ[8]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[9]~output (
	.i(\sram_0|writedata_reg[9]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[9]),
	.obar());
defparam \SRAM_DQ[9]~output .bus_hold = "false";
defparam \SRAM_DQ[9]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[10]~output (
	.i(\sram_0|writedata_reg[10]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[10]),
	.obar());
defparam \SRAM_DQ[10]~output .bus_hold = "false";
defparam \SRAM_DQ[10]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[11]~output (
	.i(\sram_0|writedata_reg[11]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[11]),
	.obar());
defparam \SRAM_DQ[11]~output .bus_hold = "false";
defparam \SRAM_DQ[11]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[12]~output (
	.i(\sram_0|writedata_reg[12]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[12]),
	.obar());
defparam \SRAM_DQ[12]~output .bus_hold = "false";
defparam \SRAM_DQ[12]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[13]~output (
	.i(\sram_0|writedata_reg[13]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[13]),
	.obar());
defparam \SRAM_DQ[13]~output .bus_hold = "false";
defparam \SRAM_DQ[13]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[14]~output (
	.i(\sram_0|writedata_reg[14]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[14]),
	.obar());
defparam \SRAM_DQ[14]~output .bus_hold = "false";
defparam \SRAM_DQ[14]~output .open_drain_output = "false";

cycloneive_io_obuf \SRAM_DQ[15]~output (
	.i(\sram_0|writedata_reg[15]~q ),
	.oe(\sram_0|is_write~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(SRAM_DQ[15]),
	.obar());
defparam \SRAM_DQ[15]~output .bus_hold = "false";
defparam \SRAM_DQ[15]~output .open_drain_output = "false";

endmodule

module sram_sram_sram_0 (
	readdata_0,
	readdata_1,
	readdata_2,
	readdata_3,
	readdata_4,
	readdata_5,
	readdata_6,
	readdata_7,
	readdata_8,
	readdata_9,
	readdata_10,
	readdata_11,
	readdata_12,
	readdata_13,
	readdata_14,
	readdata_15,
	readdatavalid1,
	SRAM_ADDR_0,
	SRAM_ADDR_1,
	SRAM_ADDR_2,
	SRAM_ADDR_3,
	SRAM_ADDR_4,
	SRAM_ADDR_5,
	SRAM_ADDR_6,
	SRAM_ADDR_7,
	SRAM_ADDR_8,
	SRAM_ADDR_9,
	SRAM_ADDR_10,
	SRAM_ADDR_11,
	SRAM_ADDR_12,
	SRAM_ADDR_13,
	SRAM_ADDR_14,
	SRAM_ADDR_15,
	SRAM_ADDR_16,
	SRAM_ADDR_17,
	SRAM_ADDR_18,
	SRAM_ADDR_19,
	SRAM_LB_N1,
	SRAM_UB_N1,
	SRAM_CE_N1,
	SRAM_OE_N1,
	SRAM_WE_N1,
	writedata_reg_0,
	is_write1,
	writedata_reg_1,
	writedata_reg_2,
	writedata_reg_3,
	writedata_reg_4,
	writedata_reg_5,
	writedata_reg_6,
	writedata_reg_7,
	writedata_reg_8,
	writedata_reg_9,
	writedata_reg_10,
	writedata_reg_11,
	writedata_reg_12,
	writedata_reg_13,
	writedata_reg_14,
	writedata_reg_15,
	SRAM_DQ_0,
	SRAM_DQ_1,
	SRAM_DQ_2,
	SRAM_DQ_3,
	SRAM_DQ_4,
	SRAM_DQ_5,
	SRAM_DQ_6,
	SRAM_DQ_7,
	SRAM_DQ_8,
	SRAM_DQ_9,
	SRAM_DQ_10,
	SRAM_DQ_11,
	SRAM_DQ_12,
	SRAM_DQ_13,
	SRAM_DQ_14,
	SRAM_DQ_15,
	clk,
	address_0,
	address_1,
	address_2,
	address_3,
	address_4,
	address_5,
	address_6,
	address_7,
	address_8,
	address_9,
	address_10,
	address_11,
	address_12,
	address_13,
	address_14,
	address_15,
	address_16,
	address_17,
	address_18,
	address_19,
	byteenable_0,
	read,
	write,
	byteenable_1,
	reset,
	writedata)/* synthesis synthesis_greybox=0 */;
output 	readdata_0;
output 	readdata_1;
output 	readdata_2;
output 	readdata_3;
output 	readdata_4;
output 	readdata_5;
output 	readdata_6;
output 	readdata_7;
output 	readdata_8;
output 	readdata_9;
output 	readdata_10;
output 	readdata_11;
output 	readdata_12;
output 	readdata_13;
output 	readdata_14;
output 	readdata_15;
output 	readdatavalid1;
output 	SRAM_ADDR_0;
output 	SRAM_ADDR_1;
output 	SRAM_ADDR_2;
output 	SRAM_ADDR_3;
output 	SRAM_ADDR_4;
output 	SRAM_ADDR_5;
output 	SRAM_ADDR_6;
output 	SRAM_ADDR_7;
output 	SRAM_ADDR_8;
output 	SRAM_ADDR_9;
output 	SRAM_ADDR_10;
output 	SRAM_ADDR_11;
output 	SRAM_ADDR_12;
output 	SRAM_ADDR_13;
output 	SRAM_ADDR_14;
output 	SRAM_ADDR_15;
output 	SRAM_ADDR_16;
output 	SRAM_ADDR_17;
output 	SRAM_ADDR_18;
output 	SRAM_ADDR_19;
output 	SRAM_LB_N1;
output 	SRAM_UB_N1;
output 	SRAM_CE_N1;
output 	SRAM_OE_N1;
output 	SRAM_WE_N1;
output 	writedata_reg_0;
output 	is_write1;
output 	writedata_reg_1;
output 	writedata_reg_2;
output 	writedata_reg_3;
output 	writedata_reg_4;
output 	writedata_reg_5;
output 	writedata_reg_6;
output 	writedata_reg_7;
output 	writedata_reg_8;
output 	writedata_reg_9;
output 	writedata_reg_10;
output 	writedata_reg_11;
output 	writedata_reg_12;
output 	writedata_reg_13;
output 	writedata_reg_14;
output 	writedata_reg_15;
input 	SRAM_DQ_0;
input 	SRAM_DQ_1;
input 	SRAM_DQ_2;
input 	SRAM_DQ_3;
input 	SRAM_DQ_4;
input 	SRAM_DQ_5;
input 	SRAM_DQ_6;
input 	SRAM_DQ_7;
input 	SRAM_DQ_8;
input 	SRAM_DQ_9;
input 	SRAM_DQ_10;
input 	SRAM_DQ_11;
input 	SRAM_DQ_12;
input 	SRAM_DQ_13;
input 	SRAM_DQ_14;
input 	SRAM_DQ_15;
input 	clk;
input 	address_0;
input 	address_1;
input 	address_2;
input 	address_3;
input 	address_4;
input 	address_5;
input 	address_6;
input 	address_7;
input 	address_8;
input 	address_9;
input 	address_10;
input 	address_11;
input 	address_12;
input 	address_13;
input 	address_14;
input 	address_15;
input 	address_16;
input 	address_17;
input 	address_18;
input 	address_19;
input 	byteenable_0;
input 	read;
input 	write;
input 	byteenable_1;
input 	reset;
input 	[15:0] writedata;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \is_read~0_combout ;
wire \is_read~q ;
wire \SRAM_LB_N~0_combout ;
wire \SRAM_UB_N~0_combout ;
wire \SRAM_LB_N~1_combout ;
wire \SRAM_OE_N~0_combout ;
wire \SRAM_WE_N~0_combout ;
wire \is_write~0_combout ;


dffeas \readdata[0] (
	.clk(clk),
	.d(SRAM_DQ_0),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_0),
	.prn(vcc));
defparam \readdata[0] .is_wysiwyg = "true";
defparam \readdata[0] .power_up = "low";

dffeas \readdata[1] (
	.clk(clk),
	.d(SRAM_DQ_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_1),
	.prn(vcc));
defparam \readdata[1] .is_wysiwyg = "true";
defparam \readdata[1] .power_up = "low";

dffeas \readdata[2] (
	.clk(clk),
	.d(SRAM_DQ_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_2),
	.prn(vcc));
defparam \readdata[2] .is_wysiwyg = "true";
defparam \readdata[2] .power_up = "low";

dffeas \readdata[3] (
	.clk(clk),
	.d(SRAM_DQ_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_3),
	.prn(vcc));
defparam \readdata[3] .is_wysiwyg = "true";
defparam \readdata[3] .power_up = "low";

dffeas \readdata[4] (
	.clk(clk),
	.d(SRAM_DQ_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_4),
	.prn(vcc));
defparam \readdata[4] .is_wysiwyg = "true";
defparam \readdata[4] .power_up = "low";

dffeas \readdata[5] (
	.clk(clk),
	.d(SRAM_DQ_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_5),
	.prn(vcc));
defparam \readdata[5] .is_wysiwyg = "true";
defparam \readdata[5] .power_up = "low";

dffeas \readdata[6] (
	.clk(clk),
	.d(SRAM_DQ_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_6),
	.prn(vcc));
defparam \readdata[6] .is_wysiwyg = "true";
defparam \readdata[6] .power_up = "low";

dffeas \readdata[7] (
	.clk(clk),
	.d(SRAM_DQ_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_7),
	.prn(vcc));
defparam \readdata[7] .is_wysiwyg = "true";
defparam \readdata[7] .power_up = "low";

dffeas \readdata[8] (
	.clk(clk),
	.d(SRAM_DQ_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_8),
	.prn(vcc));
defparam \readdata[8] .is_wysiwyg = "true";
defparam \readdata[8] .power_up = "low";

dffeas \readdata[9] (
	.clk(clk),
	.d(SRAM_DQ_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_9),
	.prn(vcc));
defparam \readdata[9] .is_wysiwyg = "true";
defparam \readdata[9] .power_up = "low";

dffeas \readdata[10] (
	.clk(clk),
	.d(SRAM_DQ_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_10),
	.prn(vcc));
defparam \readdata[10] .is_wysiwyg = "true";
defparam \readdata[10] .power_up = "low";

dffeas \readdata[11] (
	.clk(clk),
	.d(SRAM_DQ_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_11),
	.prn(vcc));
defparam \readdata[11] .is_wysiwyg = "true";
defparam \readdata[11] .power_up = "low";

dffeas \readdata[12] (
	.clk(clk),
	.d(SRAM_DQ_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_12),
	.prn(vcc));
defparam \readdata[12] .is_wysiwyg = "true";
defparam \readdata[12] .power_up = "low";

dffeas \readdata[13] (
	.clk(clk),
	.d(SRAM_DQ_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_13),
	.prn(vcc));
defparam \readdata[13] .is_wysiwyg = "true";
defparam \readdata[13] .power_up = "low";

dffeas \readdata[14] (
	.clk(clk),
	.d(SRAM_DQ_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_14),
	.prn(vcc));
defparam \readdata[14] .is_wysiwyg = "true";
defparam \readdata[14] .power_up = "low";

dffeas \readdata[15] (
	.clk(clk),
	.d(SRAM_DQ_15),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdata_15),
	.prn(vcc));
defparam \readdata[15] .is_wysiwyg = "true";
defparam \readdata[15] .power_up = "low";

dffeas readdatavalid(
	.clk(clk),
	.d(\is_read~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(readdatavalid1),
	.prn(vcc));
defparam readdatavalid.is_wysiwyg = "true";
defparam readdatavalid.power_up = "low";

dffeas \SRAM_ADDR[0] (
	.clk(clk),
	.d(address_0),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_0),
	.prn(vcc));
defparam \SRAM_ADDR[0] .is_wysiwyg = "true";
defparam \SRAM_ADDR[0] .power_up = "low";

dffeas \SRAM_ADDR[1] (
	.clk(clk),
	.d(address_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_1),
	.prn(vcc));
defparam \SRAM_ADDR[1] .is_wysiwyg = "true";
defparam \SRAM_ADDR[1] .power_up = "low";

dffeas \SRAM_ADDR[2] (
	.clk(clk),
	.d(address_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_2),
	.prn(vcc));
defparam \SRAM_ADDR[2] .is_wysiwyg = "true";
defparam \SRAM_ADDR[2] .power_up = "low";

dffeas \SRAM_ADDR[3] (
	.clk(clk),
	.d(address_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_3),
	.prn(vcc));
defparam \SRAM_ADDR[3] .is_wysiwyg = "true";
defparam \SRAM_ADDR[3] .power_up = "low";

dffeas \SRAM_ADDR[4] (
	.clk(clk),
	.d(address_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_4),
	.prn(vcc));
defparam \SRAM_ADDR[4] .is_wysiwyg = "true";
defparam \SRAM_ADDR[4] .power_up = "low";

dffeas \SRAM_ADDR[5] (
	.clk(clk),
	.d(address_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_5),
	.prn(vcc));
defparam \SRAM_ADDR[5] .is_wysiwyg = "true";
defparam \SRAM_ADDR[5] .power_up = "low";

dffeas \SRAM_ADDR[6] (
	.clk(clk),
	.d(address_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_6),
	.prn(vcc));
defparam \SRAM_ADDR[6] .is_wysiwyg = "true";
defparam \SRAM_ADDR[6] .power_up = "low";

dffeas \SRAM_ADDR[7] (
	.clk(clk),
	.d(address_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_7),
	.prn(vcc));
defparam \SRAM_ADDR[7] .is_wysiwyg = "true";
defparam \SRAM_ADDR[7] .power_up = "low";

dffeas \SRAM_ADDR[8] (
	.clk(clk),
	.d(address_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_8),
	.prn(vcc));
defparam \SRAM_ADDR[8] .is_wysiwyg = "true";
defparam \SRAM_ADDR[8] .power_up = "low";

dffeas \SRAM_ADDR[9] (
	.clk(clk),
	.d(address_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_9),
	.prn(vcc));
defparam \SRAM_ADDR[9] .is_wysiwyg = "true";
defparam \SRAM_ADDR[9] .power_up = "low";

dffeas \SRAM_ADDR[10] (
	.clk(clk),
	.d(address_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_10),
	.prn(vcc));
defparam \SRAM_ADDR[10] .is_wysiwyg = "true";
defparam \SRAM_ADDR[10] .power_up = "low";

dffeas \SRAM_ADDR[11] (
	.clk(clk),
	.d(address_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_11),
	.prn(vcc));
defparam \SRAM_ADDR[11] .is_wysiwyg = "true";
defparam \SRAM_ADDR[11] .power_up = "low";

dffeas \SRAM_ADDR[12] (
	.clk(clk),
	.d(address_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_12),
	.prn(vcc));
defparam \SRAM_ADDR[12] .is_wysiwyg = "true";
defparam \SRAM_ADDR[12] .power_up = "low";

dffeas \SRAM_ADDR[13] (
	.clk(clk),
	.d(address_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_13),
	.prn(vcc));
defparam \SRAM_ADDR[13] .is_wysiwyg = "true";
defparam \SRAM_ADDR[13] .power_up = "low";

dffeas \SRAM_ADDR[14] (
	.clk(clk),
	.d(address_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_14),
	.prn(vcc));
defparam \SRAM_ADDR[14] .is_wysiwyg = "true";
defparam \SRAM_ADDR[14] .power_up = "low";

dffeas \SRAM_ADDR[15] (
	.clk(clk),
	.d(address_15),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_15),
	.prn(vcc));
defparam \SRAM_ADDR[15] .is_wysiwyg = "true";
defparam \SRAM_ADDR[15] .power_up = "low";

dffeas \SRAM_ADDR[16] (
	.clk(clk),
	.d(address_16),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_16),
	.prn(vcc));
defparam \SRAM_ADDR[16] .is_wysiwyg = "true";
defparam \SRAM_ADDR[16] .power_up = "low";

dffeas \SRAM_ADDR[17] (
	.clk(clk),
	.d(address_17),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_17),
	.prn(vcc));
defparam \SRAM_ADDR[17] .is_wysiwyg = "true";
defparam \SRAM_ADDR[17] .power_up = "low";

dffeas \SRAM_ADDR[18] (
	.clk(clk),
	.d(address_18),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_18),
	.prn(vcc));
defparam \SRAM_ADDR[18] .is_wysiwyg = "true";
defparam \SRAM_ADDR[18] .power_up = "low";

dffeas \SRAM_ADDR[19] (
	.clk(clk),
	.d(address_19),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_ADDR_19),
	.prn(vcc));
defparam \SRAM_ADDR[19] .is_wysiwyg = "true";
defparam \SRAM_ADDR[19] .power_up = "low";

dffeas SRAM_LB_N(
	.clk(clk),
	.d(\SRAM_LB_N~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_LB_N1),
	.prn(vcc));
defparam SRAM_LB_N.is_wysiwyg = "true";
defparam SRAM_LB_N.power_up = "low";

dffeas SRAM_UB_N(
	.clk(clk),
	.d(\SRAM_UB_N~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_UB_N1),
	.prn(vcc));
defparam SRAM_UB_N.is_wysiwyg = "true";
defparam SRAM_UB_N.power_up = "low";

dffeas SRAM_CE_N(
	.clk(clk),
	.d(\SRAM_LB_N~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_CE_N1),
	.prn(vcc));
defparam SRAM_CE_N.is_wysiwyg = "true";
defparam SRAM_CE_N.power_up = "low";

dffeas SRAM_OE_N(
	.clk(clk),
	.d(\SRAM_OE_N~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_OE_N1),
	.prn(vcc));
defparam SRAM_OE_N.is_wysiwyg = "true";
defparam SRAM_OE_N.power_up = "low";

dffeas SRAM_WE_N(
	.clk(clk),
	.d(\SRAM_WE_N~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(SRAM_WE_N1),
	.prn(vcc));
defparam SRAM_WE_N.is_wysiwyg = "true";
defparam SRAM_WE_N.power_up = "low";

dffeas \writedata_reg[0] (
	.clk(clk),
	.d(writedata[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_0),
	.prn(vcc));
defparam \writedata_reg[0] .is_wysiwyg = "true";
defparam \writedata_reg[0] .power_up = "low";

dffeas is_write(
	.clk(clk),
	.d(\is_write~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(is_write1),
	.prn(vcc));
defparam is_write.is_wysiwyg = "true";
defparam is_write.power_up = "low";

dffeas \writedata_reg[1] (
	.clk(clk),
	.d(writedata[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_1),
	.prn(vcc));
defparam \writedata_reg[1] .is_wysiwyg = "true";
defparam \writedata_reg[1] .power_up = "low";

dffeas \writedata_reg[2] (
	.clk(clk),
	.d(writedata[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_2),
	.prn(vcc));
defparam \writedata_reg[2] .is_wysiwyg = "true";
defparam \writedata_reg[2] .power_up = "low";

dffeas \writedata_reg[3] (
	.clk(clk),
	.d(writedata[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_3),
	.prn(vcc));
defparam \writedata_reg[3] .is_wysiwyg = "true";
defparam \writedata_reg[3] .power_up = "low";

dffeas \writedata_reg[4] (
	.clk(clk),
	.d(writedata[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_4),
	.prn(vcc));
defparam \writedata_reg[4] .is_wysiwyg = "true";
defparam \writedata_reg[4] .power_up = "low";

dffeas \writedata_reg[5] (
	.clk(clk),
	.d(writedata[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_5),
	.prn(vcc));
defparam \writedata_reg[5] .is_wysiwyg = "true";
defparam \writedata_reg[5] .power_up = "low";

dffeas \writedata_reg[6] (
	.clk(clk),
	.d(writedata[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_6),
	.prn(vcc));
defparam \writedata_reg[6] .is_wysiwyg = "true";
defparam \writedata_reg[6] .power_up = "low";

dffeas \writedata_reg[7] (
	.clk(clk),
	.d(writedata[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_7),
	.prn(vcc));
defparam \writedata_reg[7] .is_wysiwyg = "true";
defparam \writedata_reg[7] .power_up = "low";

dffeas \writedata_reg[8] (
	.clk(clk),
	.d(writedata[8]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_8),
	.prn(vcc));
defparam \writedata_reg[8] .is_wysiwyg = "true";
defparam \writedata_reg[8] .power_up = "low";

dffeas \writedata_reg[9] (
	.clk(clk),
	.d(writedata[9]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_9),
	.prn(vcc));
defparam \writedata_reg[9] .is_wysiwyg = "true";
defparam \writedata_reg[9] .power_up = "low";

dffeas \writedata_reg[10] (
	.clk(clk),
	.d(writedata[10]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_10),
	.prn(vcc));
defparam \writedata_reg[10] .is_wysiwyg = "true";
defparam \writedata_reg[10] .power_up = "low";

dffeas \writedata_reg[11] (
	.clk(clk),
	.d(writedata[11]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_11),
	.prn(vcc));
defparam \writedata_reg[11] .is_wysiwyg = "true";
defparam \writedata_reg[11] .power_up = "low";

dffeas \writedata_reg[12] (
	.clk(clk),
	.d(writedata[12]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_12),
	.prn(vcc));
defparam \writedata_reg[12] .is_wysiwyg = "true";
defparam \writedata_reg[12] .power_up = "low";

dffeas \writedata_reg[13] (
	.clk(clk),
	.d(writedata[13]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_13),
	.prn(vcc));
defparam \writedata_reg[13] .is_wysiwyg = "true";
defparam \writedata_reg[13] .power_up = "low";

dffeas \writedata_reg[14] (
	.clk(clk),
	.d(writedata[14]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_14),
	.prn(vcc));
defparam \writedata_reg[14] .is_wysiwyg = "true";
defparam \writedata_reg[14] .power_up = "low";

dffeas \writedata_reg[15] (
	.clk(clk),
	.d(writedata[15]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(writedata_reg_15),
	.prn(vcc));
defparam \writedata_reg[15] .is_wysiwyg = "true";
defparam \writedata_reg[15] .power_up = "low";

cycloneive_lcell_comb \is_read~0 (
	.dataa(read),
	.datab(gnd),
	.datac(gnd),
	.datad(reset),
	.cin(gnd),
	.combout(\is_read~0_combout ),
	.cout());
defparam \is_read~0 .lut_mask = 16'h00AA;
defparam \is_read~0 .sum_lutc_input = "datac";

dffeas is_read(
	.clk(clk),
	.d(\is_read~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\is_read~q ),
	.prn(vcc));
defparam is_read.is_wysiwyg = "true";
defparam is_read.power_up = "low";

cycloneive_lcell_comb \SRAM_LB_N~0 (
	.dataa(byteenable_0),
	.datab(read),
	.datac(write),
	.datad(gnd),
	.cin(gnd),
	.combout(\SRAM_LB_N~0_combout ),
	.cout());
defparam \SRAM_LB_N~0 .lut_mask = 16'h5757;
defparam \SRAM_LB_N~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \SRAM_UB_N~0 (
	.dataa(byteenable_1),
	.datab(read),
	.datac(write),
	.datad(gnd),
	.cin(gnd),
	.combout(\SRAM_UB_N~0_combout ),
	.cout());
defparam \SRAM_UB_N~0 .lut_mask = 16'h5757;
defparam \SRAM_UB_N~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \SRAM_LB_N~1 (
	.dataa(read),
	.datab(write),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\SRAM_LB_N~1_combout ),
	.cout());
defparam \SRAM_LB_N~1 .lut_mask = 16'h1111;
defparam \SRAM_LB_N~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \SRAM_OE_N~0 (
	.dataa(read),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\SRAM_OE_N~0_combout ),
	.cout());
defparam \SRAM_OE_N~0 .lut_mask = 16'h5555;
defparam \SRAM_OE_N~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \SRAM_WE_N~0 (
	.dataa(write),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\SRAM_WE_N~0_combout ),
	.cout());
defparam \SRAM_WE_N~0 .lut_mask = 16'h5555;
defparam \SRAM_WE_N~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \is_write~0 (
	.dataa(write),
	.datab(gnd),
	.datac(gnd),
	.datad(reset),
	.cin(gnd),
	.combout(\is_write~0_combout ),
	.cout());
defparam \is_write~0 .lut_mask = 16'h00AA;
defparam \is_write~0 .sum_lutc_input = "datac";

endmodule
