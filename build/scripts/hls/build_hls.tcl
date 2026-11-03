set root [file dirname [file normalize [info script]]]
set project [file join $root build hls_full_r5]
if {[file exists $project]} {error "Preserve existing HLS build; use a new path"}
cd [file join $root build]
open_project hls_full_r5
set_top mri_full
add_files [file join $root src fpga pl hls cnn_v5 mri_full.cpp] -cflags "-std=c++11"
open_solution solution1 -flow_target vivado
set_part xc7z020clg400-2
create_clock -period 6.667 -name default
set_clock_uncertainty 0.8
csynth_design
export_design -format ip_catalog -vendor mri.test -library hls -version 1.0
exit
