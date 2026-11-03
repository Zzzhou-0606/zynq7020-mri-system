set_param general.maxThreads 1
set root [file dirname [file normalize [info script]]]
set project [lindex $argv 0]
set mhz [lindex $argv 1]
cd [file dirname $project]
open_project $project
set_property ip_repo_paths [list [file join [pwd] ip_repo] [file join $root build hls_full_r5 solution1 impl ip]] [current_project]
config_ip_cache -use_cache_location [file join [pwd] ip_cache]
update_ip_catalog
open_bd_design [get_files system.bd]
if {[llength [get_bd_cells -quiet mri_full_0]]} {error "Candidate already integrated"}
if {[llength [get_bd_cells -quiet mri_slice_v5_0]]!=1} {error "Expected original V5 cell"}
delete_bd_objs [get_bd_cells mri_slice_v5_0]
create_bd_cell -type ip -vlnv mri.test:hls:mri_full:1.0 mri_full_0
connect_bd_intf_net [get_bd_intf_pins cnn_ctrl_cdc/M_AXI] [get_bd_intf_pins mri_full_0/s_axi_control]
connect_bd_intf_net [get_bd_intf_pins mri_full_0/m_axi_weights_mem] [get_bd_intf_pins cnn_hp1_interconnect/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins mri_full_0/m_axi_feature_mem] [get_bd_intf_pins cnn_hp1_interconnect/S01_AXI]
set_property CONFIG.NUM_SI 3 [get_bd_cells cnn_hp1_interconnect]
connect_bd_intf_net [get_bd_intf_pins mri_full_0/m_axi_feature_read] [get_bd_intf_pins cnn_hp1_interconnect/S02_AXI]
connect_bd_net [get_bd_pins cnn_clk_100/clk_out1] [get_bd_pins cnn_hp1_interconnect/S02_ACLK]
connect_bd_net [get_bd_pins rst_cnn_100/peripheral_aresetn] [get_bd_pins cnn_hp1_interconnect/S02_ARESETN]
connect_bd_net [get_bd_pins cnn_clk_100/clk_out1] [get_bd_pins mri_full_0/ap_clk]
connect_bd_net [get_bd_pins rst_cnn_100/peripheral_aresetn] [get_bd_pins mri_full_0/ap_rst_n]
assign_bd_address
set control [get_bd_addr_segs -of_objects [get_bd_addr_spaces processing_system7_0/Data] -filter {NAME =~ *mri_full*}]
if {[llength $control]!=1} {error "Control address ambiguous"}
set_property offset 0x43C50000 $control
set_property range 64K $control
set_property CONFIG.CONST_VAL [expr {0x46554c4c}] [get_bd_cells cnn_identity_value]
set_property CONFIG.CLKOUT1_REQUESTED_OUT_FREQ $mhz [get_bd_cells cnn_clk_100]
validate_bd_design
save_bd_design
generate_target all [get_files system.bd]
launch_runs synth_1 -jobs 4
wait_on_run synth_1
if {[get_property STATUS [get_runs synth_1]] ne "synth_design Complete!"} {error "Synthesis failed"}
open_run synth_1
report_utilization -file [file join $root results ${mhz}_synth_utilization.rpt]
close_design
set_property STEPS.ROUTE_DESIGN.TCL.POST {} [get_runs impl_1]
foreach cfg [get_report_configs -of_objects [get_runs impl_1]] {
 if {[string match *methodology* $cfg]} {set_property IS_ENABLED false $cfg}
}
set_param general.maxThreads 4
launch_runs impl_1 -to_step route_design -jobs 4
wait_on_run impl_1
if {![file exists [file join [file dirname $project] d2.runs impl_1 system_wrapper_routed.dcp]]} {error "Implementation failed before routed checkpoint"}
open_run impl_1
report_utilization -file [file join $root results ${mhz}_utilization.rpt]
report_timing_summary -delay_type min_max -report_unconstrained -file [file join $root results ${mhz}_timing.rpt]
report_bus_skew -file [file join $root results ${mhz}_bus_skew.rpt]
report_drc -file [file join $root results ${mhz}_drc.rpt]
set setup [get_property SLACK [get_timing_paths -delay_type max -max_paths 1]]
set hold [get_property SLACK [get_timing_paths -delay_type min -max_paths 1]]
if {$setup<0||$hold<0} {error "TIMING_REJECTED setup=$setup hold=$hold"}
set pins [get_pins -hier -filter {NAME =~ */mri_full_0/ap_clk}]
if {![llength $pins]} {set pins [get_pins -hier -filter {NAME =~ */mri_full_0/inst/ap_clk}]}
set clocks [get_clocks -of_objects $pins]
if {[llength $clocks]!=1||abs([get_property PERIOD $clocks]-1000.0/$mhz)>0.01} {error "CNN clock does not match requested MHz"}
write_bitstream [file join $root board full.bit]
write_hw_platform -fixed -file [file join $root board mri_full_overlap.xsa]
set hwh [file join [pwd] d2.gen sources_1 bd system hw_handoff system.hwh]
if {![file exists $hwh]} {set hwh [file join [pwd] d2.srcs sources_1 bd system hw_handoff system.hwh]}
file copy $hwh [file join $root board full.hwh]
set f [open [file join $root results bitstream_acceptance.txt] w]
puts $f "clock_mhz=$mhz\nsetup_slack_ns=$setup\nhold_slack_ns=$hold\nidentity=0x46554c4c\nboard_tested=false"
close $f
close_project
puts "FULL_BITSTREAM_READY"
exit
