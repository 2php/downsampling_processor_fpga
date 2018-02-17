transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Semester-4\ ENTC/CWwork/elec\ iii/UART\ cw {E:/Semester-4 ENTC/CWwork/elec iii/UART cw/uart.v}
vlog -vlog01compat -work work +incdir+E:/Semester-4\ ENTC/CWwork/elec\ iii/UART\ cw {E:/Semester-4 ENTC/CWwork/elec iii/UART cw/uart_implementation.v}

