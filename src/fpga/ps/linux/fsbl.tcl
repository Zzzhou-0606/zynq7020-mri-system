set demo [file normalize [file join [file dirname [info script]] .. .. vivado]]
set touch [expr {[info exists argv] && [lsearch -exact $argv touch] >= 0}]
set ws [file join $demo build [expr {$touch ? "fsbl_touch" : "fsbl"}]]
setws $ws
platform create -name demo2_hw -hw [file join $demo build [expr {$touch ? "t" : "c"}] linux_qt_eth_demo.xsa] -proc ps7_cortexa9_0 -os standalone
platform generate
app create -name demo2_fsbl -platform demo2_hw -domain standalone_domain -template {Zynq FSBL}
app build -name demo2_fsbl
puts "DEMO2_FSBL_BUILT"
