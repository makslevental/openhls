set module $::env(MODULE)
open_project -reset $module
set_top forward
add_files $module.cpp
open_solution -reset "solution1"
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 10
csynth_design
export_design -flow impl -rtl verilog -format syn_dcp
exit