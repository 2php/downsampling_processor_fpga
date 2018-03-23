transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/Data_retrieve.v}
vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/Data_Writer.v}
vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/dram.v}
vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/uart_control.v}
vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/uart_rx.v}
vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/pll.v}
vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/uart_tx.v}
vlog -vlog01compat -work work +incdir+E:/Semm_5/cwwork/csd/processor\ design\ main/downsampling_processor_fpga/Verilog_Design/UART\ cw/db {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/UART cw/db/pll_altpll.v}

