
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name dram_test -dir "E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/Test/chinthana/dram_test/planAhead_run_1" -part xc6slx45csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/Test/chinthana/dram_test/dram.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/Semm_5/cwwork/csd/processor design main/downsampling_processor_fpga/Verilog_Design/Test/chinthana/dram_test} }
set_property target_constrs_file "dram.ucf" [current_fileset -constrset]
add_files [list {dram.ucf}] -fileset [get_property constrset [current_run]]
link_design
