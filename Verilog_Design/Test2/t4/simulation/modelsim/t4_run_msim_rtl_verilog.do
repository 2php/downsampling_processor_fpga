transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/FPGA/Verilog_Design/Test2/t4 {E:/FPGA/Verilog_Design/Test2/t4/t4.v}

