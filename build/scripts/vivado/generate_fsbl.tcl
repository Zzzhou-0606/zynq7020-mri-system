set xsa [file normalize [lindex $argv 0]]
set destination [file normalize [lindex $argv 1]]
setws $destination
platform create -name mri_hw -hw $xsa -proc ps7_cortexa9_0 -os standalone
platform generate
puts "CURRENT_FSBL_PLATFORM_GENERATED"
exit
