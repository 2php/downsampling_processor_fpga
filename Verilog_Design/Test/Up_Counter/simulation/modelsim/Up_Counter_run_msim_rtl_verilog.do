transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/FPGA/Verilog_Design/Test/Up_Counter {E:/FPGA/Verilog_Design/Test/Up_Counter/Up_Counter.v}

