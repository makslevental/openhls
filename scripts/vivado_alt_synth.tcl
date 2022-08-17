set_param general.maxThreads 32
set reports_dir           reports
set checkpoints_dir       checkpoints
set_param tcl.collectionResultDisplayLimit 10000

if { [file exists ${reports_dir}] == 0} {
  file mkdir ${reports_dir}
  file mkdir [file join ${reports_dir} post_synth]
  file mkdir [file join ${reports_dir} post_place]
  file mkdir [file join ${reports_dir} post_route]
  file mkdir [file join ${reports_dir} qor_suggestions]
  file mkdir ${checkpoints_dir}
}

puts "\n================================( Read Design Files and Constraints )================================"

if { [file exists project_1/project_1.xpr] == 1} {
  puts "\n Opening Project"
  open_project project_1/project_1.xpr
} else {
  puts "\n Creating Project"
  create_project project_1 project_1 -part xcu280-fsvh2892-2L-e -force
  set_property board_part xilinx.com:au280:part0:1.1 [current_project]
  source imports.tcl
}

if { [file exists ${reports_dir}/qor_suggestions/post_route.rqs] == 1} {
  read_qor_suggestions ${reports_dir}/qor_suggestions/post_route.rqs
  puts "Read QoR Suggestions"
} else {
  puts "No QoR Suggestions found"
}

puts "\n===========================( RTL Synthesize and Map )==========================="

set top $::env(TOP)

eval synth_design -top $top -flatten_hierarchy full -retiming -directive AlternateRoutability -fsm_extraction one_hot -resource_sharing off -shreg_min_size 10 -keep_equivalent_registers -no_lc
write_checkpoint -force ${checkpoints_dir}/pre_opt
create_clock -name clk -period 10 -waveform {0 5} [get_ports clk]

puts "\n==============================( Optimize Design )================================"

eval opt_design -directive ExploreWithRemap
write_checkpoint -force ${checkpoints_dir}/post_synth

report_timing_summary -file ${reports_dir}/post_synth/timing_summary.rpt
report_utilization -hierarchical -force -file ${reports_dir}/post_synth/hierarchical_utilization.rpt
report_methodology  -file ${reports_dir}/post_synth/methodology.rpt

puts "\n================================( Place Design )================================="

#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -regexp .*]
#eval place_design -directive SSI_SpreadLogic_high -ultrathreads -fanout_opt
eval place_design -ultrathreads -fanout_opt

puts "\n==============================( Post-place optimization )================================"

eval opt_design -retarget -propconst -sweep -remap -muxf_remap -aggressive_remap -shift_register_opt

puts "\n==============================( Post-place optimization 2)================================"

eval opt_design -directive Explore

puts "\n========================( Post-place Physical Optimization )=========================="

eval phys_opt_design -directive AggressiveExplore
set high_fanout_nets [get_nets [report_high_fanout_nets -max_nets 1000 -return_string]]
phys_opt_design -force_replication_on_nets ${high_fanout_nets}

write_checkpoint -force ${checkpoints_dir}/post_place
report_timing_summary -file ${reports_dir}/post_place/timing_summary.rpt
report_utilization -hierarchical -force -file ${reports_dir}/post_place/hierarchical_utilization.rpt

puts "\n================================( Route Design )================================="

#eval route_design -directive AlternateCLBRouting
eval route_design

puts "\n=========================( Post-Route Physical Optimization )=========================="

phys_opt_design -directive AggressiveExplore

puts "\n=============================( Writing Checkpoint )=============================="

write_checkpoint -force ${checkpoints_dir}/post_route

puts "\n==============================( Writing Reports )================================"

report_timing_summary -check_timing_verbose -no_header -report_unconstrained -path_type full -input_pins -max_paths 10 -delay_type min_max -file ${reports_dir}/post_route/timing_summary.rpt
report_timing  -no_header -input_pins  -unique_pins -sort_by group -max_paths 100 -path_type full -delay_type min_max -file ${reports_dir}/post_route/timing.rpt
report_utilization                 -force -file ${reports_dir}/post_route/utilization.rpt
report_utilization -hierarchical   -force -file ${reports_dir}/post_route/hierarchical_utilization.rpt
report_power                       -file ${reports_dir}/post_route/power.rpt
report_drc                         -file ${reports_dir}/post_route/drc.rpt
report_ram_utilization             -file ${reports_dir}/post_route/ram_utilization.rpt
report_methodology                 -file ${reports_dir}/post_route/methodology.rpt
report_qor_suggestions -max_paths 1000 -report_all_suggestions -max_strategies 10 -file ${reports_dir}/qor_suggestions/suggestions.rpt
write_qor_suggestions -force       -file ${reports_dir}/qor_suggestions/post_route.rqs

exit 0
