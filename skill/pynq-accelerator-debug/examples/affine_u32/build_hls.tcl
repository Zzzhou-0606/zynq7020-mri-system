# Run from any directory; unique project path prevents overwriting prior builds.
foreach key {SKILL_HLS_PART SKILL_HLS_TOP SKILL_HLS_PROJECT} {
    if {![info exists ::env($key)] || $::env($key) eq ""} {error "Set $key explicitly"}
}
set top $::env(SKILL_HLS_TOP)
if {$top ni {affine_u32_stream affine_u32_master}} {error "Unknown top"}
set mode csim
if {[info exists ::env(SKILL_HLS_MODE)]} {set mode $::env(SKILL_HLS_MODE)}
if {$mode ni {csim synth export}} {error "Mode must be csim, synth or export"}
set project [file normalize $::env(SKILL_HLS_PROJECT)]
if {[file exists $project]} {error "Use a NEW project directory; refusing overwrite"}
set source [file dirname [file normalize [info script]]]
file mkdir [file dirname $project]
cd [file dirname $project]
# HLS 2020.2 on Windows expects a project name, not a drive-qualified name.
open_project [file tail $project]
set_top $top
add_files [file join $source affine.cpp]
add_files -tb [file join $source test_affine.cpp]
open_solution solution1 -flow_target vivado
set_part $::env(SKILL_HLS_PART)
create_clock -period 10
csim_design
if {$mode in {synth export}} {csynth_design}
if {$mode eq "export"} {export_design -format ip_catalog}
close_project
exit
