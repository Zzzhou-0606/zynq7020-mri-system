set_param general.maxThreads 1
set delivery [file normalize [lindex $argv 0]]
open_project [file join $delivery build vivado mri_full d2.xpr]
set_property ip_repo_paths [list [file join $delivery build vivado mri_full ip_repo] [file join $delivery build hls mri_full solution1 impl ip]] [current_project]
update_ip_catalog
open_run impl_1
write_hw_platform -fixed -file [file join $delivery build release fpga mri_full_overlap.xsa]
close_project
puts "CURRENT_OVERLAP_XSA_EXPORTED_WITHOUT_SYNTHESIS"
exit
