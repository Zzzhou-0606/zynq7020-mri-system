set moduleName p_anonymous_namespace_compute_row
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {(anonymous namespace)compute_row}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixels2 int 64 regular {fifo 0 volatile }  }
	{ weights int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights14 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights15 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights16 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights17 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights28 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights29 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights210 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights211 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights312 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights313 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights314 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights315 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights4 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights416 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights417 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights418 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights5 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights519 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights520 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights521 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights6 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights622 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights623 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights624 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights7 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights725 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights726 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights727 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ bias int 48 regular {fifo 0}  }
	{ bias8 int 48 regular {fifo 0}  }
	{ bias9 int 48 regular {fifo 0}  }
	{ bias10 int 48 regular {fifo 0}  }
	{ bias11 int 48 regular {fifo 0}  }
	{ bias12 int 48 regular {fifo 0}  }
	{ bias13 int 48 regular {fifo 0}  }
	{ bias14 int 48 regular {fifo 0}  }
	{ ci int 10 regular {fifo 0}  }
	{ wi int 16 regular {fifo 0}  }
	{ k int 3 regular {fifo 0}  }
	{ stride int 2 regular {fifo 0}  }
	{ pad int 2 regular {fifo 0}  }
	{ ow int 16 regular {fifo 0}  }
	{ enabled int 1 regular {fifo 0}  }
	{ acc int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc28 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc29 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc30 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc15 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1531 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1532 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1533 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc16 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1634 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1635 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1636 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc17 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1737 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1738 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1739 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc18 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1840 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1841 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1842 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc19 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1943 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1944 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc1945 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc20 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc2046 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc2047 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc2048 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc21 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc2149 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc2150 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ acc2151 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ p_anonymous_namespace_profile_ticks int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_mac int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_wait int 64 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixels2", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights16", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights17", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights28", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights29", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights210", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights211", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights312", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights313", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights314", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights315", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights416", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights417", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights418", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights519", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights520", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights521", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights622", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights623", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights624", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights725", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights726", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights727", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias8", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias9", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias10", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias11", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias12", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias13", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias14", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "wi", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "enabled", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "acc", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc28", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc29", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc30", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc15", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1531", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1532", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1533", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc16", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1634", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1635", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1636", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc17", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1737", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1738", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1739", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc18", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1840", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1841", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1842", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc19", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1943", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1944", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc1945", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc20", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc2046", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc2047", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc2048", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc21", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc2149", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc2150", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "acc2151", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "p_anonymous_namespace_profile_ticks", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_mac", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_wait", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 384
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pixels2_dout sc_in sc_lv 64 signal 0 } 
	{ pixels2_empty_n sc_in sc_logic 1 signal 0 } 
	{ pixels2_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 11 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 16 signal 1 } 
	{ weights1_address0 sc_out sc_lv 11 signal 2 } 
	{ weights1_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights1_q0 sc_in sc_lv 16 signal 2 } 
	{ weights2_address0 sc_out sc_lv 11 signal 3 } 
	{ weights2_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights2_q0 sc_in sc_lv 16 signal 3 } 
	{ weights3_address0 sc_out sc_lv 11 signal 4 } 
	{ weights3_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights3_q0 sc_in sc_lv 16 signal 4 } 
	{ weights14_address0 sc_out sc_lv 11 signal 5 } 
	{ weights14_ce0 sc_out sc_logic 1 signal 5 } 
	{ weights14_q0 sc_in sc_lv 16 signal 5 } 
	{ weights15_address0 sc_out sc_lv 11 signal 6 } 
	{ weights15_ce0 sc_out sc_logic 1 signal 6 } 
	{ weights15_q0 sc_in sc_lv 16 signal 6 } 
	{ weights16_address0 sc_out sc_lv 11 signal 7 } 
	{ weights16_ce0 sc_out sc_logic 1 signal 7 } 
	{ weights16_q0 sc_in sc_lv 16 signal 7 } 
	{ weights17_address0 sc_out sc_lv 11 signal 8 } 
	{ weights17_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights17_q0 sc_in sc_lv 16 signal 8 } 
	{ weights28_address0 sc_out sc_lv 11 signal 9 } 
	{ weights28_ce0 sc_out sc_logic 1 signal 9 } 
	{ weights28_q0 sc_in sc_lv 16 signal 9 } 
	{ weights29_address0 sc_out sc_lv 11 signal 10 } 
	{ weights29_ce0 sc_out sc_logic 1 signal 10 } 
	{ weights29_q0 sc_in sc_lv 16 signal 10 } 
	{ weights210_address0 sc_out sc_lv 11 signal 11 } 
	{ weights210_ce0 sc_out sc_logic 1 signal 11 } 
	{ weights210_q0 sc_in sc_lv 16 signal 11 } 
	{ weights211_address0 sc_out sc_lv 11 signal 12 } 
	{ weights211_ce0 sc_out sc_logic 1 signal 12 } 
	{ weights211_q0 sc_in sc_lv 16 signal 12 } 
	{ weights312_address0 sc_out sc_lv 11 signal 13 } 
	{ weights312_ce0 sc_out sc_logic 1 signal 13 } 
	{ weights312_q0 sc_in sc_lv 16 signal 13 } 
	{ weights313_address0 sc_out sc_lv 11 signal 14 } 
	{ weights313_ce0 sc_out sc_logic 1 signal 14 } 
	{ weights313_q0 sc_in sc_lv 16 signal 14 } 
	{ weights314_address0 sc_out sc_lv 11 signal 15 } 
	{ weights314_ce0 sc_out sc_logic 1 signal 15 } 
	{ weights314_q0 sc_in sc_lv 16 signal 15 } 
	{ weights315_address0 sc_out sc_lv 11 signal 16 } 
	{ weights315_ce0 sc_out sc_logic 1 signal 16 } 
	{ weights315_q0 sc_in sc_lv 16 signal 16 } 
	{ weights4_address0 sc_out sc_lv 11 signal 17 } 
	{ weights4_ce0 sc_out sc_logic 1 signal 17 } 
	{ weights4_q0 sc_in sc_lv 16 signal 17 } 
	{ weights416_address0 sc_out sc_lv 11 signal 18 } 
	{ weights416_ce0 sc_out sc_logic 1 signal 18 } 
	{ weights416_q0 sc_in sc_lv 16 signal 18 } 
	{ weights417_address0 sc_out sc_lv 11 signal 19 } 
	{ weights417_ce0 sc_out sc_logic 1 signal 19 } 
	{ weights417_q0 sc_in sc_lv 16 signal 19 } 
	{ weights418_address0 sc_out sc_lv 11 signal 20 } 
	{ weights418_ce0 sc_out sc_logic 1 signal 20 } 
	{ weights418_q0 sc_in sc_lv 16 signal 20 } 
	{ weights5_address0 sc_out sc_lv 11 signal 21 } 
	{ weights5_ce0 sc_out sc_logic 1 signal 21 } 
	{ weights5_q0 sc_in sc_lv 16 signal 21 } 
	{ weights519_address0 sc_out sc_lv 11 signal 22 } 
	{ weights519_ce0 sc_out sc_logic 1 signal 22 } 
	{ weights519_q0 sc_in sc_lv 16 signal 22 } 
	{ weights520_address0 sc_out sc_lv 11 signal 23 } 
	{ weights520_ce0 sc_out sc_logic 1 signal 23 } 
	{ weights520_q0 sc_in sc_lv 16 signal 23 } 
	{ weights521_address0 sc_out sc_lv 11 signal 24 } 
	{ weights521_ce0 sc_out sc_logic 1 signal 24 } 
	{ weights521_q0 sc_in sc_lv 16 signal 24 } 
	{ weights6_address0 sc_out sc_lv 11 signal 25 } 
	{ weights6_ce0 sc_out sc_logic 1 signal 25 } 
	{ weights6_q0 sc_in sc_lv 16 signal 25 } 
	{ weights622_address0 sc_out sc_lv 11 signal 26 } 
	{ weights622_ce0 sc_out sc_logic 1 signal 26 } 
	{ weights622_q0 sc_in sc_lv 16 signal 26 } 
	{ weights623_address0 sc_out sc_lv 11 signal 27 } 
	{ weights623_ce0 sc_out sc_logic 1 signal 27 } 
	{ weights623_q0 sc_in sc_lv 16 signal 27 } 
	{ weights624_address0 sc_out sc_lv 11 signal 28 } 
	{ weights624_ce0 sc_out sc_logic 1 signal 28 } 
	{ weights624_q0 sc_in sc_lv 16 signal 28 } 
	{ weights7_address0 sc_out sc_lv 11 signal 29 } 
	{ weights7_ce0 sc_out sc_logic 1 signal 29 } 
	{ weights7_q0 sc_in sc_lv 16 signal 29 } 
	{ weights725_address0 sc_out sc_lv 11 signal 30 } 
	{ weights725_ce0 sc_out sc_logic 1 signal 30 } 
	{ weights725_q0 sc_in sc_lv 16 signal 30 } 
	{ weights726_address0 sc_out sc_lv 11 signal 31 } 
	{ weights726_ce0 sc_out sc_logic 1 signal 31 } 
	{ weights726_q0 sc_in sc_lv 16 signal 31 } 
	{ weights727_address0 sc_out sc_lv 11 signal 32 } 
	{ weights727_ce0 sc_out sc_logic 1 signal 32 } 
	{ weights727_q0 sc_in sc_lv 16 signal 32 } 
	{ bias_dout sc_in sc_lv 48 signal 33 } 
	{ bias_empty_n sc_in sc_logic 1 signal 33 } 
	{ bias_read sc_out sc_logic 1 signal 33 } 
	{ bias8_dout sc_in sc_lv 48 signal 34 } 
	{ bias8_empty_n sc_in sc_logic 1 signal 34 } 
	{ bias8_read sc_out sc_logic 1 signal 34 } 
	{ bias9_dout sc_in sc_lv 48 signal 35 } 
	{ bias9_empty_n sc_in sc_logic 1 signal 35 } 
	{ bias9_read sc_out sc_logic 1 signal 35 } 
	{ bias10_dout sc_in sc_lv 48 signal 36 } 
	{ bias10_empty_n sc_in sc_logic 1 signal 36 } 
	{ bias10_read sc_out sc_logic 1 signal 36 } 
	{ bias11_dout sc_in sc_lv 48 signal 37 } 
	{ bias11_empty_n sc_in sc_logic 1 signal 37 } 
	{ bias11_read sc_out sc_logic 1 signal 37 } 
	{ bias12_dout sc_in sc_lv 48 signal 38 } 
	{ bias12_empty_n sc_in sc_logic 1 signal 38 } 
	{ bias12_read sc_out sc_logic 1 signal 38 } 
	{ bias13_dout sc_in sc_lv 48 signal 39 } 
	{ bias13_empty_n sc_in sc_logic 1 signal 39 } 
	{ bias13_read sc_out sc_logic 1 signal 39 } 
	{ bias14_dout sc_in sc_lv 48 signal 40 } 
	{ bias14_empty_n sc_in sc_logic 1 signal 40 } 
	{ bias14_read sc_out sc_logic 1 signal 40 } 
	{ ci_dout sc_in sc_lv 10 signal 41 } 
	{ ci_empty_n sc_in sc_logic 1 signal 41 } 
	{ ci_read sc_out sc_logic 1 signal 41 } 
	{ wi_dout sc_in sc_lv 16 signal 42 } 
	{ wi_empty_n sc_in sc_logic 1 signal 42 } 
	{ wi_read sc_out sc_logic 1 signal 42 } 
	{ k_dout sc_in sc_lv 3 signal 43 } 
	{ k_empty_n sc_in sc_logic 1 signal 43 } 
	{ k_read sc_out sc_logic 1 signal 43 } 
	{ stride_dout sc_in sc_lv 2 signal 44 } 
	{ stride_empty_n sc_in sc_logic 1 signal 44 } 
	{ stride_read sc_out sc_logic 1 signal 44 } 
	{ pad_dout sc_in sc_lv 2 signal 45 } 
	{ pad_empty_n sc_in sc_logic 1 signal 45 } 
	{ pad_read sc_out sc_logic 1 signal 45 } 
	{ ow_dout sc_in sc_lv 16 signal 46 } 
	{ ow_empty_n sc_in sc_logic 1 signal 46 } 
	{ ow_read sc_out sc_logic 1 signal 46 } 
	{ enabled_dout sc_in sc_lv 1 signal 47 } 
	{ enabled_empty_n sc_in sc_logic 1 signal 47 } 
	{ enabled_read sc_out sc_logic 1 signal 47 } 
	{ acc_address0 sc_out sc_lv 6 signal 48 } 
	{ acc_ce0 sc_out sc_logic 1 signal 48 } 
	{ acc_q0 sc_in sc_lv 48 signal 48 } 
	{ acc_address1 sc_out sc_lv 6 signal 48 } 
	{ acc_ce1 sc_out sc_logic 1 signal 48 } 
	{ acc_we1 sc_out sc_logic 1 signal 48 } 
	{ acc_d1 sc_out sc_lv 48 signal 48 } 
	{ acc28_address0 sc_out sc_lv 6 signal 49 } 
	{ acc28_ce0 sc_out sc_logic 1 signal 49 } 
	{ acc28_q0 sc_in sc_lv 48 signal 49 } 
	{ acc28_address1 sc_out sc_lv 6 signal 49 } 
	{ acc28_ce1 sc_out sc_logic 1 signal 49 } 
	{ acc28_we1 sc_out sc_logic 1 signal 49 } 
	{ acc28_d1 sc_out sc_lv 48 signal 49 } 
	{ acc29_address0 sc_out sc_lv 6 signal 50 } 
	{ acc29_ce0 sc_out sc_logic 1 signal 50 } 
	{ acc29_q0 sc_in sc_lv 48 signal 50 } 
	{ acc29_address1 sc_out sc_lv 6 signal 50 } 
	{ acc29_ce1 sc_out sc_logic 1 signal 50 } 
	{ acc29_we1 sc_out sc_logic 1 signal 50 } 
	{ acc29_d1 sc_out sc_lv 48 signal 50 } 
	{ acc30_address0 sc_out sc_lv 6 signal 51 } 
	{ acc30_ce0 sc_out sc_logic 1 signal 51 } 
	{ acc30_q0 sc_in sc_lv 48 signal 51 } 
	{ acc30_address1 sc_out sc_lv 6 signal 51 } 
	{ acc30_ce1 sc_out sc_logic 1 signal 51 } 
	{ acc30_we1 sc_out sc_logic 1 signal 51 } 
	{ acc30_d1 sc_out sc_lv 48 signal 51 } 
	{ acc15_address0 sc_out sc_lv 6 signal 52 } 
	{ acc15_ce0 sc_out sc_logic 1 signal 52 } 
	{ acc15_q0 sc_in sc_lv 48 signal 52 } 
	{ acc15_address1 sc_out sc_lv 6 signal 52 } 
	{ acc15_ce1 sc_out sc_logic 1 signal 52 } 
	{ acc15_we1 sc_out sc_logic 1 signal 52 } 
	{ acc15_d1 sc_out sc_lv 48 signal 52 } 
	{ acc1531_address0 sc_out sc_lv 6 signal 53 } 
	{ acc1531_ce0 sc_out sc_logic 1 signal 53 } 
	{ acc1531_q0 sc_in sc_lv 48 signal 53 } 
	{ acc1531_address1 sc_out sc_lv 6 signal 53 } 
	{ acc1531_ce1 sc_out sc_logic 1 signal 53 } 
	{ acc1531_we1 sc_out sc_logic 1 signal 53 } 
	{ acc1531_d1 sc_out sc_lv 48 signal 53 } 
	{ acc1532_address0 sc_out sc_lv 6 signal 54 } 
	{ acc1532_ce0 sc_out sc_logic 1 signal 54 } 
	{ acc1532_q0 sc_in sc_lv 48 signal 54 } 
	{ acc1532_address1 sc_out sc_lv 6 signal 54 } 
	{ acc1532_ce1 sc_out sc_logic 1 signal 54 } 
	{ acc1532_we1 sc_out sc_logic 1 signal 54 } 
	{ acc1532_d1 sc_out sc_lv 48 signal 54 } 
	{ acc1533_address0 sc_out sc_lv 6 signal 55 } 
	{ acc1533_ce0 sc_out sc_logic 1 signal 55 } 
	{ acc1533_q0 sc_in sc_lv 48 signal 55 } 
	{ acc1533_address1 sc_out sc_lv 6 signal 55 } 
	{ acc1533_ce1 sc_out sc_logic 1 signal 55 } 
	{ acc1533_we1 sc_out sc_logic 1 signal 55 } 
	{ acc1533_d1 sc_out sc_lv 48 signal 55 } 
	{ acc16_address0 sc_out sc_lv 6 signal 56 } 
	{ acc16_ce0 sc_out sc_logic 1 signal 56 } 
	{ acc16_q0 sc_in sc_lv 48 signal 56 } 
	{ acc16_address1 sc_out sc_lv 6 signal 56 } 
	{ acc16_ce1 sc_out sc_logic 1 signal 56 } 
	{ acc16_we1 sc_out sc_logic 1 signal 56 } 
	{ acc16_d1 sc_out sc_lv 48 signal 56 } 
	{ acc1634_address0 sc_out sc_lv 6 signal 57 } 
	{ acc1634_ce0 sc_out sc_logic 1 signal 57 } 
	{ acc1634_q0 sc_in sc_lv 48 signal 57 } 
	{ acc1634_address1 sc_out sc_lv 6 signal 57 } 
	{ acc1634_ce1 sc_out sc_logic 1 signal 57 } 
	{ acc1634_we1 sc_out sc_logic 1 signal 57 } 
	{ acc1634_d1 sc_out sc_lv 48 signal 57 } 
	{ acc1635_address0 sc_out sc_lv 6 signal 58 } 
	{ acc1635_ce0 sc_out sc_logic 1 signal 58 } 
	{ acc1635_q0 sc_in sc_lv 48 signal 58 } 
	{ acc1635_address1 sc_out sc_lv 6 signal 58 } 
	{ acc1635_ce1 sc_out sc_logic 1 signal 58 } 
	{ acc1635_we1 sc_out sc_logic 1 signal 58 } 
	{ acc1635_d1 sc_out sc_lv 48 signal 58 } 
	{ acc1636_address0 sc_out sc_lv 6 signal 59 } 
	{ acc1636_ce0 sc_out sc_logic 1 signal 59 } 
	{ acc1636_q0 sc_in sc_lv 48 signal 59 } 
	{ acc1636_address1 sc_out sc_lv 6 signal 59 } 
	{ acc1636_ce1 sc_out sc_logic 1 signal 59 } 
	{ acc1636_we1 sc_out sc_logic 1 signal 59 } 
	{ acc1636_d1 sc_out sc_lv 48 signal 59 } 
	{ acc17_address0 sc_out sc_lv 6 signal 60 } 
	{ acc17_ce0 sc_out sc_logic 1 signal 60 } 
	{ acc17_q0 sc_in sc_lv 48 signal 60 } 
	{ acc17_address1 sc_out sc_lv 6 signal 60 } 
	{ acc17_ce1 sc_out sc_logic 1 signal 60 } 
	{ acc17_we1 sc_out sc_logic 1 signal 60 } 
	{ acc17_d1 sc_out sc_lv 48 signal 60 } 
	{ acc1737_address0 sc_out sc_lv 6 signal 61 } 
	{ acc1737_ce0 sc_out sc_logic 1 signal 61 } 
	{ acc1737_q0 sc_in sc_lv 48 signal 61 } 
	{ acc1737_address1 sc_out sc_lv 6 signal 61 } 
	{ acc1737_ce1 sc_out sc_logic 1 signal 61 } 
	{ acc1737_we1 sc_out sc_logic 1 signal 61 } 
	{ acc1737_d1 sc_out sc_lv 48 signal 61 } 
	{ acc1738_address0 sc_out sc_lv 6 signal 62 } 
	{ acc1738_ce0 sc_out sc_logic 1 signal 62 } 
	{ acc1738_q0 sc_in sc_lv 48 signal 62 } 
	{ acc1738_address1 sc_out sc_lv 6 signal 62 } 
	{ acc1738_ce1 sc_out sc_logic 1 signal 62 } 
	{ acc1738_we1 sc_out sc_logic 1 signal 62 } 
	{ acc1738_d1 sc_out sc_lv 48 signal 62 } 
	{ acc1739_address0 sc_out sc_lv 6 signal 63 } 
	{ acc1739_ce0 sc_out sc_logic 1 signal 63 } 
	{ acc1739_q0 sc_in sc_lv 48 signal 63 } 
	{ acc1739_address1 sc_out sc_lv 6 signal 63 } 
	{ acc1739_ce1 sc_out sc_logic 1 signal 63 } 
	{ acc1739_we1 sc_out sc_logic 1 signal 63 } 
	{ acc1739_d1 sc_out sc_lv 48 signal 63 } 
	{ acc18_address0 sc_out sc_lv 6 signal 64 } 
	{ acc18_ce0 sc_out sc_logic 1 signal 64 } 
	{ acc18_q0 sc_in sc_lv 48 signal 64 } 
	{ acc18_address1 sc_out sc_lv 6 signal 64 } 
	{ acc18_ce1 sc_out sc_logic 1 signal 64 } 
	{ acc18_we1 sc_out sc_logic 1 signal 64 } 
	{ acc18_d1 sc_out sc_lv 48 signal 64 } 
	{ acc1840_address0 sc_out sc_lv 6 signal 65 } 
	{ acc1840_ce0 sc_out sc_logic 1 signal 65 } 
	{ acc1840_q0 sc_in sc_lv 48 signal 65 } 
	{ acc1840_address1 sc_out sc_lv 6 signal 65 } 
	{ acc1840_ce1 sc_out sc_logic 1 signal 65 } 
	{ acc1840_we1 sc_out sc_logic 1 signal 65 } 
	{ acc1840_d1 sc_out sc_lv 48 signal 65 } 
	{ acc1841_address0 sc_out sc_lv 6 signal 66 } 
	{ acc1841_ce0 sc_out sc_logic 1 signal 66 } 
	{ acc1841_q0 sc_in sc_lv 48 signal 66 } 
	{ acc1841_address1 sc_out sc_lv 6 signal 66 } 
	{ acc1841_ce1 sc_out sc_logic 1 signal 66 } 
	{ acc1841_we1 sc_out sc_logic 1 signal 66 } 
	{ acc1841_d1 sc_out sc_lv 48 signal 66 } 
	{ acc1842_address0 sc_out sc_lv 6 signal 67 } 
	{ acc1842_ce0 sc_out sc_logic 1 signal 67 } 
	{ acc1842_q0 sc_in sc_lv 48 signal 67 } 
	{ acc1842_address1 sc_out sc_lv 6 signal 67 } 
	{ acc1842_ce1 sc_out sc_logic 1 signal 67 } 
	{ acc1842_we1 sc_out sc_logic 1 signal 67 } 
	{ acc1842_d1 sc_out sc_lv 48 signal 67 } 
	{ acc19_address0 sc_out sc_lv 6 signal 68 } 
	{ acc19_ce0 sc_out sc_logic 1 signal 68 } 
	{ acc19_q0 sc_in sc_lv 48 signal 68 } 
	{ acc19_address1 sc_out sc_lv 6 signal 68 } 
	{ acc19_ce1 sc_out sc_logic 1 signal 68 } 
	{ acc19_we1 sc_out sc_logic 1 signal 68 } 
	{ acc19_d1 sc_out sc_lv 48 signal 68 } 
	{ acc1943_address0 sc_out sc_lv 6 signal 69 } 
	{ acc1943_ce0 sc_out sc_logic 1 signal 69 } 
	{ acc1943_q0 sc_in sc_lv 48 signal 69 } 
	{ acc1943_address1 sc_out sc_lv 6 signal 69 } 
	{ acc1943_ce1 sc_out sc_logic 1 signal 69 } 
	{ acc1943_we1 sc_out sc_logic 1 signal 69 } 
	{ acc1943_d1 sc_out sc_lv 48 signal 69 } 
	{ acc1944_address0 sc_out sc_lv 6 signal 70 } 
	{ acc1944_ce0 sc_out sc_logic 1 signal 70 } 
	{ acc1944_q0 sc_in sc_lv 48 signal 70 } 
	{ acc1944_address1 sc_out sc_lv 6 signal 70 } 
	{ acc1944_ce1 sc_out sc_logic 1 signal 70 } 
	{ acc1944_we1 sc_out sc_logic 1 signal 70 } 
	{ acc1944_d1 sc_out sc_lv 48 signal 70 } 
	{ acc1945_address0 sc_out sc_lv 6 signal 71 } 
	{ acc1945_ce0 sc_out sc_logic 1 signal 71 } 
	{ acc1945_q0 sc_in sc_lv 48 signal 71 } 
	{ acc1945_address1 sc_out sc_lv 6 signal 71 } 
	{ acc1945_ce1 sc_out sc_logic 1 signal 71 } 
	{ acc1945_we1 sc_out sc_logic 1 signal 71 } 
	{ acc1945_d1 sc_out sc_lv 48 signal 71 } 
	{ acc20_address0 sc_out sc_lv 6 signal 72 } 
	{ acc20_ce0 sc_out sc_logic 1 signal 72 } 
	{ acc20_q0 sc_in sc_lv 48 signal 72 } 
	{ acc20_address1 sc_out sc_lv 6 signal 72 } 
	{ acc20_ce1 sc_out sc_logic 1 signal 72 } 
	{ acc20_we1 sc_out sc_logic 1 signal 72 } 
	{ acc20_d1 sc_out sc_lv 48 signal 72 } 
	{ acc2046_address0 sc_out sc_lv 6 signal 73 } 
	{ acc2046_ce0 sc_out sc_logic 1 signal 73 } 
	{ acc2046_q0 sc_in sc_lv 48 signal 73 } 
	{ acc2046_address1 sc_out sc_lv 6 signal 73 } 
	{ acc2046_ce1 sc_out sc_logic 1 signal 73 } 
	{ acc2046_we1 sc_out sc_logic 1 signal 73 } 
	{ acc2046_d1 sc_out sc_lv 48 signal 73 } 
	{ acc2047_address0 sc_out sc_lv 6 signal 74 } 
	{ acc2047_ce0 sc_out sc_logic 1 signal 74 } 
	{ acc2047_q0 sc_in sc_lv 48 signal 74 } 
	{ acc2047_address1 sc_out sc_lv 6 signal 74 } 
	{ acc2047_ce1 sc_out sc_logic 1 signal 74 } 
	{ acc2047_we1 sc_out sc_logic 1 signal 74 } 
	{ acc2047_d1 sc_out sc_lv 48 signal 74 } 
	{ acc2048_address0 sc_out sc_lv 6 signal 75 } 
	{ acc2048_ce0 sc_out sc_logic 1 signal 75 } 
	{ acc2048_q0 sc_in sc_lv 48 signal 75 } 
	{ acc2048_address1 sc_out sc_lv 6 signal 75 } 
	{ acc2048_ce1 sc_out sc_logic 1 signal 75 } 
	{ acc2048_we1 sc_out sc_logic 1 signal 75 } 
	{ acc2048_d1 sc_out sc_lv 48 signal 75 } 
	{ acc21_address0 sc_out sc_lv 6 signal 76 } 
	{ acc21_ce0 sc_out sc_logic 1 signal 76 } 
	{ acc21_q0 sc_in sc_lv 48 signal 76 } 
	{ acc21_address1 sc_out sc_lv 6 signal 76 } 
	{ acc21_ce1 sc_out sc_logic 1 signal 76 } 
	{ acc21_we1 sc_out sc_logic 1 signal 76 } 
	{ acc21_d1 sc_out sc_lv 48 signal 76 } 
	{ acc2149_address0 sc_out sc_lv 6 signal 77 } 
	{ acc2149_ce0 sc_out sc_logic 1 signal 77 } 
	{ acc2149_q0 sc_in sc_lv 48 signal 77 } 
	{ acc2149_address1 sc_out sc_lv 6 signal 77 } 
	{ acc2149_ce1 sc_out sc_logic 1 signal 77 } 
	{ acc2149_we1 sc_out sc_logic 1 signal 77 } 
	{ acc2149_d1 sc_out sc_lv 48 signal 77 } 
	{ acc2150_address0 sc_out sc_lv 6 signal 78 } 
	{ acc2150_ce0 sc_out sc_logic 1 signal 78 } 
	{ acc2150_q0 sc_in sc_lv 48 signal 78 } 
	{ acc2150_address1 sc_out sc_lv 6 signal 78 } 
	{ acc2150_ce1 sc_out sc_logic 1 signal 78 } 
	{ acc2150_we1 sc_out sc_logic 1 signal 78 } 
	{ acc2150_d1 sc_out sc_lv 48 signal 78 } 
	{ acc2151_address0 sc_out sc_lv 6 signal 79 } 
	{ acc2151_ce0 sc_out sc_logic 1 signal 79 } 
	{ acc2151_q0 sc_in sc_lv 48 signal 79 } 
	{ acc2151_address1 sc_out sc_lv 6 signal 79 } 
	{ acc2151_ce1 sc_out sc_logic 1 signal 79 } 
	{ acc2151_we1 sc_out sc_logic 1 signal 79 } 
	{ acc2151_d1 sc_out sc_lv 48 signal 79 } 
	{ p_anonymous_namespace_profile_ticks_i sc_in sc_lv 64 signal 80 } 
	{ p_anonymous_namespace_profile_ticks_o sc_out sc_lv 64 signal 80 } 
	{ p_anonymous_namespace_profile_ticks_o_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ p_anonymous_namespace_profile_mac_i sc_in sc_lv 64 signal 81 } 
	{ p_anonymous_namespace_profile_mac_o sc_out sc_lv 64 signal 81 } 
	{ p_anonymous_namespace_profile_mac_o_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ p_anonymous_namespace_profile_wait_i sc_in sc_lv 64 signal 82 } 
	{ p_anonymous_namespace_profile_wait_o sc_out sc_lv 64 signal 82 } 
	{ p_anonymous_namespace_profile_wait_o_ap_vld sc_out sc_logic 1 outvld 82 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pixels2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pixels2", "role": "dout" }} , 
 	{ "name": "pixels2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels2", "role": "empty_n" }} , 
 	{ "name": "pixels2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels2", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "weights1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights1", "role": "address0" }} , 
 	{ "name": "weights1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce0" }} , 
 	{ "name": "weights1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights1", "role": "q0" }} , 
 	{ "name": "weights2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights2", "role": "address0" }} , 
 	{ "name": "weights2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "ce0" }} , 
 	{ "name": "weights2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights2", "role": "q0" }} , 
 	{ "name": "weights3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights3", "role": "address0" }} , 
 	{ "name": "weights3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce0" }} , 
 	{ "name": "weights3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights3", "role": "q0" }} , 
 	{ "name": "weights14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights14", "role": "address0" }} , 
 	{ "name": "weights14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights14", "role": "ce0" }} , 
 	{ "name": "weights14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights14", "role": "q0" }} , 
 	{ "name": "weights15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights15", "role": "address0" }} , 
 	{ "name": "weights15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights15", "role": "ce0" }} , 
 	{ "name": "weights15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights15", "role": "q0" }} , 
 	{ "name": "weights16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights16", "role": "address0" }} , 
 	{ "name": "weights16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights16", "role": "ce0" }} , 
 	{ "name": "weights16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights16", "role": "q0" }} , 
 	{ "name": "weights17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights17", "role": "address0" }} , 
 	{ "name": "weights17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights17", "role": "ce0" }} , 
 	{ "name": "weights17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights17", "role": "q0" }} , 
 	{ "name": "weights28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights28", "role": "address0" }} , 
 	{ "name": "weights28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights28", "role": "ce0" }} , 
 	{ "name": "weights28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights28", "role": "q0" }} , 
 	{ "name": "weights29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights29", "role": "address0" }} , 
 	{ "name": "weights29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights29", "role": "ce0" }} , 
 	{ "name": "weights29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights29", "role": "q0" }} , 
 	{ "name": "weights210_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights210", "role": "address0" }} , 
 	{ "name": "weights210_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights210", "role": "ce0" }} , 
 	{ "name": "weights210_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights210", "role": "q0" }} , 
 	{ "name": "weights211_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights211", "role": "address0" }} , 
 	{ "name": "weights211_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights211", "role": "ce0" }} , 
 	{ "name": "weights211_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights211", "role": "q0" }} , 
 	{ "name": "weights312_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights312", "role": "address0" }} , 
 	{ "name": "weights312_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights312", "role": "ce0" }} , 
 	{ "name": "weights312_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights312", "role": "q0" }} , 
 	{ "name": "weights313_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights313", "role": "address0" }} , 
 	{ "name": "weights313_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights313", "role": "ce0" }} , 
 	{ "name": "weights313_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights313", "role": "q0" }} , 
 	{ "name": "weights314_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights314", "role": "address0" }} , 
 	{ "name": "weights314_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights314", "role": "ce0" }} , 
 	{ "name": "weights314_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights314", "role": "q0" }} , 
 	{ "name": "weights315_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights315", "role": "address0" }} , 
 	{ "name": "weights315_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights315", "role": "ce0" }} , 
 	{ "name": "weights315_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights315", "role": "q0" }} , 
 	{ "name": "weights4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights4", "role": "address0" }} , 
 	{ "name": "weights4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights4", "role": "ce0" }} , 
 	{ "name": "weights4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights4", "role": "q0" }} , 
 	{ "name": "weights416_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights416", "role": "address0" }} , 
 	{ "name": "weights416_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights416", "role": "ce0" }} , 
 	{ "name": "weights416_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights416", "role": "q0" }} , 
 	{ "name": "weights417_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights417", "role": "address0" }} , 
 	{ "name": "weights417_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights417", "role": "ce0" }} , 
 	{ "name": "weights417_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights417", "role": "q0" }} , 
 	{ "name": "weights418_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights418", "role": "address0" }} , 
 	{ "name": "weights418_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights418", "role": "ce0" }} , 
 	{ "name": "weights418_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights418", "role": "q0" }} , 
 	{ "name": "weights5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights5", "role": "address0" }} , 
 	{ "name": "weights5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "ce0" }} , 
 	{ "name": "weights5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights5", "role": "q0" }} , 
 	{ "name": "weights519_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights519", "role": "address0" }} , 
 	{ "name": "weights519_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights519", "role": "ce0" }} , 
 	{ "name": "weights519_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights519", "role": "q0" }} , 
 	{ "name": "weights520_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights520", "role": "address0" }} , 
 	{ "name": "weights520_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights520", "role": "ce0" }} , 
 	{ "name": "weights520_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights520", "role": "q0" }} , 
 	{ "name": "weights521_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights521", "role": "address0" }} , 
 	{ "name": "weights521_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights521", "role": "ce0" }} , 
 	{ "name": "weights521_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights521", "role": "q0" }} , 
 	{ "name": "weights6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights6", "role": "address0" }} , 
 	{ "name": "weights6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "ce0" }} , 
 	{ "name": "weights6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights6", "role": "q0" }} , 
 	{ "name": "weights622_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights622", "role": "address0" }} , 
 	{ "name": "weights622_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights622", "role": "ce0" }} , 
 	{ "name": "weights622_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights622", "role": "q0" }} , 
 	{ "name": "weights623_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights623", "role": "address0" }} , 
 	{ "name": "weights623_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights623", "role": "ce0" }} , 
 	{ "name": "weights623_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights623", "role": "q0" }} , 
 	{ "name": "weights624_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights624", "role": "address0" }} , 
 	{ "name": "weights624_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights624", "role": "ce0" }} , 
 	{ "name": "weights624_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights624", "role": "q0" }} , 
 	{ "name": "weights7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights7", "role": "address0" }} , 
 	{ "name": "weights7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "ce0" }} , 
 	{ "name": "weights7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights7", "role": "q0" }} , 
 	{ "name": "weights725_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights725", "role": "address0" }} , 
 	{ "name": "weights725_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights725", "role": "ce0" }} , 
 	{ "name": "weights725_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights725", "role": "q0" }} , 
 	{ "name": "weights726_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights726", "role": "address0" }} , 
 	{ "name": "weights726_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights726", "role": "ce0" }} , 
 	{ "name": "weights726_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights726", "role": "q0" }} , 
 	{ "name": "weights727_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights727", "role": "address0" }} , 
 	{ "name": "weights727_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights727", "role": "ce0" }} , 
 	{ "name": "weights727_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights727", "role": "q0" }} , 
 	{ "name": "bias_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias", "role": "dout" }} , 
 	{ "name": "bias_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "empty_n" }} , 
 	{ "name": "bias_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias", "role": "read" }} , 
 	{ "name": "bias8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias8", "role": "dout" }} , 
 	{ "name": "bias8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias8", "role": "empty_n" }} , 
 	{ "name": "bias8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias8", "role": "read" }} , 
 	{ "name": "bias9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias9", "role": "dout" }} , 
 	{ "name": "bias9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias9", "role": "empty_n" }} , 
 	{ "name": "bias9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias9", "role": "read" }} , 
 	{ "name": "bias10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias10", "role": "dout" }} , 
 	{ "name": "bias10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias10", "role": "empty_n" }} , 
 	{ "name": "bias10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias10", "role": "read" }} , 
 	{ "name": "bias11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias11", "role": "dout" }} , 
 	{ "name": "bias11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias11", "role": "empty_n" }} , 
 	{ "name": "bias11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias11", "role": "read" }} , 
 	{ "name": "bias12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias12", "role": "dout" }} , 
 	{ "name": "bias12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias12", "role": "empty_n" }} , 
 	{ "name": "bias12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias12", "role": "read" }} , 
 	{ "name": "bias13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias13", "role": "dout" }} , 
 	{ "name": "bias13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias13", "role": "empty_n" }} , 
 	{ "name": "bias13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias13", "role": "read" }} , 
 	{ "name": "bias14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias14", "role": "dout" }} , 
 	{ "name": "bias14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias14", "role": "empty_n" }} , 
 	{ "name": "bias14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias14", "role": "read" }} , 
 	{ "name": "ci_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "dout" }} , 
 	{ "name": "ci_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "empty_n" }} , 
 	{ "name": "ci_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "read" }} , 
 	{ "name": "wi_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi", "role": "dout" }} , 
 	{ "name": "wi_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi", "role": "empty_n" }} , 
 	{ "name": "wi_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi", "role": "read" }} , 
 	{ "name": "k_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "dout" }} , 
 	{ "name": "k_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "empty_n" }} , 
 	{ "name": "k_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "read" }} , 
 	{ "name": "stride_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "dout" }} , 
 	{ "name": "stride_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "empty_n" }} , 
 	{ "name": "stride_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "read" }} , 
 	{ "name": "pad_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "dout" }} , 
 	{ "name": "pad_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "empty_n" }} , 
 	{ "name": "pad_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "read" }} , 
 	{ "name": "ow_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "dout" }} , 
 	{ "name": "ow_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "empty_n" }} , 
 	{ "name": "ow_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "read" }} , 
 	{ "name": "enabled_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enabled", "role": "dout" }} , 
 	{ "name": "enabled_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enabled", "role": "empty_n" }} , 
 	{ "name": "enabled_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enabled", "role": "read" }} , 
 	{ "name": "acc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc", "role": "address0" }} , 
 	{ "name": "acc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "ce0" }} , 
 	{ "name": "acc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc", "role": "q0" }} , 
 	{ "name": "acc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc", "role": "address1" }} , 
 	{ "name": "acc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "ce1" }} , 
 	{ "name": "acc_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "we1" }} , 
 	{ "name": "acc_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc", "role": "d1" }} , 
 	{ "name": "acc28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc28", "role": "address0" }} , 
 	{ "name": "acc28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc28", "role": "ce0" }} , 
 	{ "name": "acc28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc28", "role": "q0" }} , 
 	{ "name": "acc28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc28", "role": "address1" }} , 
 	{ "name": "acc28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc28", "role": "ce1" }} , 
 	{ "name": "acc28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc28", "role": "we1" }} , 
 	{ "name": "acc28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc28", "role": "d1" }} , 
 	{ "name": "acc29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc29", "role": "address0" }} , 
 	{ "name": "acc29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc29", "role": "ce0" }} , 
 	{ "name": "acc29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc29", "role": "q0" }} , 
 	{ "name": "acc29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc29", "role": "address1" }} , 
 	{ "name": "acc29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc29", "role": "ce1" }} , 
 	{ "name": "acc29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc29", "role": "we1" }} , 
 	{ "name": "acc29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc29", "role": "d1" }} , 
 	{ "name": "acc30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc30", "role": "address0" }} , 
 	{ "name": "acc30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc30", "role": "ce0" }} , 
 	{ "name": "acc30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc30", "role": "q0" }} , 
 	{ "name": "acc30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc30", "role": "address1" }} , 
 	{ "name": "acc30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc30", "role": "ce1" }} , 
 	{ "name": "acc30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc30", "role": "we1" }} , 
 	{ "name": "acc30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc30", "role": "d1" }} , 
 	{ "name": "acc15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc15", "role": "address0" }} , 
 	{ "name": "acc15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc15", "role": "ce0" }} , 
 	{ "name": "acc15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc15", "role": "q0" }} , 
 	{ "name": "acc15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc15", "role": "address1" }} , 
 	{ "name": "acc15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc15", "role": "ce1" }} , 
 	{ "name": "acc15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc15", "role": "we1" }} , 
 	{ "name": "acc15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc15", "role": "d1" }} , 
 	{ "name": "acc1531_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1531", "role": "address0" }} , 
 	{ "name": "acc1531_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1531", "role": "ce0" }} , 
 	{ "name": "acc1531_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1531", "role": "q0" }} , 
 	{ "name": "acc1531_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1531", "role": "address1" }} , 
 	{ "name": "acc1531_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1531", "role": "ce1" }} , 
 	{ "name": "acc1531_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1531", "role": "we1" }} , 
 	{ "name": "acc1531_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1531", "role": "d1" }} , 
 	{ "name": "acc1532_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1532", "role": "address0" }} , 
 	{ "name": "acc1532_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1532", "role": "ce0" }} , 
 	{ "name": "acc1532_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1532", "role": "q0" }} , 
 	{ "name": "acc1532_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1532", "role": "address1" }} , 
 	{ "name": "acc1532_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1532", "role": "ce1" }} , 
 	{ "name": "acc1532_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1532", "role": "we1" }} , 
 	{ "name": "acc1532_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1532", "role": "d1" }} , 
 	{ "name": "acc1533_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1533", "role": "address0" }} , 
 	{ "name": "acc1533_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1533", "role": "ce0" }} , 
 	{ "name": "acc1533_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1533", "role": "q0" }} , 
 	{ "name": "acc1533_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1533", "role": "address1" }} , 
 	{ "name": "acc1533_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1533", "role": "ce1" }} , 
 	{ "name": "acc1533_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1533", "role": "we1" }} , 
 	{ "name": "acc1533_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1533", "role": "d1" }} , 
 	{ "name": "acc16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc16", "role": "address0" }} , 
 	{ "name": "acc16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc16", "role": "ce0" }} , 
 	{ "name": "acc16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc16", "role": "q0" }} , 
 	{ "name": "acc16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc16", "role": "address1" }} , 
 	{ "name": "acc16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc16", "role": "ce1" }} , 
 	{ "name": "acc16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc16", "role": "we1" }} , 
 	{ "name": "acc16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc16", "role": "d1" }} , 
 	{ "name": "acc1634_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1634", "role": "address0" }} , 
 	{ "name": "acc1634_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1634", "role": "ce0" }} , 
 	{ "name": "acc1634_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1634", "role": "q0" }} , 
 	{ "name": "acc1634_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1634", "role": "address1" }} , 
 	{ "name": "acc1634_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1634", "role": "ce1" }} , 
 	{ "name": "acc1634_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1634", "role": "we1" }} , 
 	{ "name": "acc1634_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1634", "role": "d1" }} , 
 	{ "name": "acc1635_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1635", "role": "address0" }} , 
 	{ "name": "acc1635_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1635", "role": "ce0" }} , 
 	{ "name": "acc1635_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1635", "role": "q0" }} , 
 	{ "name": "acc1635_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1635", "role": "address1" }} , 
 	{ "name": "acc1635_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1635", "role": "ce1" }} , 
 	{ "name": "acc1635_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1635", "role": "we1" }} , 
 	{ "name": "acc1635_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1635", "role": "d1" }} , 
 	{ "name": "acc1636_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1636", "role": "address0" }} , 
 	{ "name": "acc1636_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1636", "role": "ce0" }} , 
 	{ "name": "acc1636_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1636", "role": "q0" }} , 
 	{ "name": "acc1636_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1636", "role": "address1" }} , 
 	{ "name": "acc1636_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1636", "role": "ce1" }} , 
 	{ "name": "acc1636_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1636", "role": "we1" }} , 
 	{ "name": "acc1636_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1636", "role": "d1" }} , 
 	{ "name": "acc17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc17", "role": "address0" }} , 
 	{ "name": "acc17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc17", "role": "ce0" }} , 
 	{ "name": "acc17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc17", "role": "q0" }} , 
 	{ "name": "acc17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc17", "role": "address1" }} , 
 	{ "name": "acc17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc17", "role": "ce1" }} , 
 	{ "name": "acc17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc17", "role": "we1" }} , 
 	{ "name": "acc17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc17", "role": "d1" }} , 
 	{ "name": "acc1737_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1737", "role": "address0" }} , 
 	{ "name": "acc1737_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1737", "role": "ce0" }} , 
 	{ "name": "acc1737_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1737", "role": "q0" }} , 
 	{ "name": "acc1737_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1737", "role": "address1" }} , 
 	{ "name": "acc1737_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1737", "role": "ce1" }} , 
 	{ "name": "acc1737_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1737", "role": "we1" }} , 
 	{ "name": "acc1737_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1737", "role": "d1" }} , 
 	{ "name": "acc1738_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1738", "role": "address0" }} , 
 	{ "name": "acc1738_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1738", "role": "ce0" }} , 
 	{ "name": "acc1738_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1738", "role": "q0" }} , 
 	{ "name": "acc1738_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1738", "role": "address1" }} , 
 	{ "name": "acc1738_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1738", "role": "ce1" }} , 
 	{ "name": "acc1738_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1738", "role": "we1" }} , 
 	{ "name": "acc1738_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1738", "role": "d1" }} , 
 	{ "name": "acc1739_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1739", "role": "address0" }} , 
 	{ "name": "acc1739_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1739", "role": "ce0" }} , 
 	{ "name": "acc1739_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1739", "role": "q0" }} , 
 	{ "name": "acc1739_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1739", "role": "address1" }} , 
 	{ "name": "acc1739_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1739", "role": "ce1" }} , 
 	{ "name": "acc1739_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1739", "role": "we1" }} , 
 	{ "name": "acc1739_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1739", "role": "d1" }} , 
 	{ "name": "acc18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc18", "role": "address0" }} , 
 	{ "name": "acc18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc18", "role": "ce0" }} , 
 	{ "name": "acc18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc18", "role": "q0" }} , 
 	{ "name": "acc18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc18", "role": "address1" }} , 
 	{ "name": "acc18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc18", "role": "ce1" }} , 
 	{ "name": "acc18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc18", "role": "we1" }} , 
 	{ "name": "acc18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc18", "role": "d1" }} , 
 	{ "name": "acc1840_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1840", "role": "address0" }} , 
 	{ "name": "acc1840_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1840", "role": "ce0" }} , 
 	{ "name": "acc1840_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1840", "role": "q0" }} , 
 	{ "name": "acc1840_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1840", "role": "address1" }} , 
 	{ "name": "acc1840_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1840", "role": "ce1" }} , 
 	{ "name": "acc1840_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1840", "role": "we1" }} , 
 	{ "name": "acc1840_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1840", "role": "d1" }} , 
 	{ "name": "acc1841_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1841", "role": "address0" }} , 
 	{ "name": "acc1841_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1841", "role": "ce0" }} , 
 	{ "name": "acc1841_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1841", "role": "q0" }} , 
 	{ "name": "acc1841_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1841", "role": "address1" }} , 
 	{ "name": "acc1841_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1841", "role": "ce1" }} , 
 	{ "name": "acc1841_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1841", "role": "we1" }} , 
 	{ "name": "acc1841_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1841", "role": "d1" }} , 
 	{ "name": "acc1842_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1842", "role": "address0" }} , 
 	{ "name": "acc1842_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1842", "role": "ce0" }} , 
 	{ "name": "acc1842_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1842", "role": "q0" }} , 
 	{ "name": "acc1842_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1842", "role": "address1" }} , 
 	{ "name": "acc1842_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1842", "role": "ce1" }} , 
 	{ "name": "acc1842_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1842", "role": "we1" }} , 
 	{ "name": "acc1842_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1842", "role": "d1" }} , 
 	{ "name": "acc19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc19", "role": "address0" }} , 
 	{ "name": "acc19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc19", "role": "ce0" }} , 
 	{ "name": "acc19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc19", "role": "q0" }} , 
 	{ "name": "acc19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc19", "role": "address1" }} , 
 	{ "name": "acc19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc19", "role": "ce1" }} , 
 	{ "name": "acc19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc19", "role": "we1" }} , 
 	{ "name": "acc19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc19", "role": "d1" }} , 
 	{ "name": "acc1943_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1943", "role": "address0" }} , 
 	{ "name": "acc1943_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1943", "role": "ce0" }} , 
 	{ "name": "acc1943_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1943", "role": "q0" }} , 
 	{ "name": "acc1943_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1943", "role": "address1" }} , 
 	{ "name": "acc1943_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1943", "role": "ce1" }} , 
 	{ "name": "acc1943_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1943", "role": "we1" }} , 
 	{ "name": "acc1943_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1943", "role": "d1" }} , 
 	{ "name": "acc1944_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1944", "role": "address0" }} , 
 	{ "name": "acc1944_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1944", "role": "ce0" }} , 
 	{ "name": "acc1944_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1944", "role": "q0" }} , 
 	{ "name": "acc1944_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1944", "role": "address1" }} , 
 	{ "name": "acc1944_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1944", "role": "ce1" }} , 
 	{ "name": "acc1944_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1944", "role": "we1" }} , 
 	{ "name": "acc1944_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1944", "role": "d1" }} , 
 	{ "name": "acc1945_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1945", "role": "address0" }} , 
 	{ "name": "acc1945_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1945", "role": "ce0" }} , 
 	{ "name": "acc1945_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1945", "role": "q0" }} , 
 	{ "name": "acc1945_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1945", "role": "address1" }} , 
 	{ "name": "acc1945_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1945", "role": "ce1" }} , 
 	{ "name": "acc1945_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1945", "role": "we1" }} , 
 	{ "name": "acc1945_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1945", "role": "d1" }} , 
 	{ "name": "acc20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc20", "role": "address0" }} , 
 	{ "name": "acc20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc20", "role": "ce0" }} , 
 	{ "name": "acc20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc20", "role": "q0" }} , 
 	{ "name": "acc20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc20", "role": "address1" }} , 
 	{ "name": "acc20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc20", "role": "ce1" }} , 
 	{ "name": "acc20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc20", "role": "we1" }} , 
 	{ "name": "acc20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc20", "role": "d1" }} , 
 	{ "name": "acc2046_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2046", "role": "address0" }} , 
 	{ "name": "acc2046_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2046", "role": "ce0" }} , 
 	{ "name": "acc2046_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2046", "role": "q0" }} , 
 	{ "name": "acc2046_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2046", "role": "address1" }} , 
 	{ "name": "acc2046_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2046", "role": "ce1" }} , 
 	{ "name": "acc2046_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2046", "role": "we1" }} , 
 	{ "name": "acc2046_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2046", "role": "d1" }} , 
 	{ "name": "acc2047_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2047", "role": "address0" }} , 
 	{ "name": "acc2047_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2047", "role": "ce0" }} , 
 	{ "name": "acc2047_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2047", "role": "q0" }} , 
 	{ "name": "acc2047_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2047", "role": "address1" }} , 
 	{ "name": "acc2047_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2047", "role": "ce1" }} , 
 	{ "name": "acc2047_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2047", "role": "we1" }} , 
 	{ "name": "acc2047_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2047", "role": "d1" }} , 
 	{ "name": "acc2048_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2048", "role": "address0" }} , 
 	{ "name": "acc2048_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2048", "role": "ce0" }} , 
 	{ "name": "acc2048_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2048", "role": "q0" }} , 
 	{ "name": "acc2048_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2048", "role": "address1" }} , 
 	{ "name": "acc2048_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2048", "role": "ce1" }} , 
 	{ "name": "acc2048_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2048", "role": "we1" }} , 
 	{ "name": "acc2048_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2048", "role": "d1" }} , 
 	{ "name": "acc21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc21", "role": "address0" }} , 
 	{ "name": "acc21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc21", "role": "ce0" }} , 
 	{ "name": "acc21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc21", "role": "q0" }} , 
 	{ "name": "acc21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc21", "role": "address1" }} , 
 	{ "name": "acc21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc21", "role": "ce1" }} , 
 	{ "name": "acc21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc21", "role": "we1" }} , 
 	{ "name": "acc21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc21", "role": "d1" }} , 
 	{ "name": "acc2149_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2149", "role": "address0" }} , 
 	{ "name": "acc2149_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2149", "role": "ce0" }} , 
 	{ "name": "acc2149_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2149", "role": "q0" }} , 
 	{ "name": "acc2149_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2149", "role": "address1" }} , 
 	{ "name": "acc2149_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2149", "role": "ce1" }} , 
 	{ "name": "acc2149_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2149", "role": "we1" }} , 
 	{ "name": "acc2149_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2149", "role": "d1" }} , 
 	{ "name": "acc2150_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2150", "role": "address0" }} , 
 	{ "name": "acc2150_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2150", "role": "ce0" }} , 
 	{ "name": "acc2150_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2150", "role": "q0" }} , 
 	{ "name": "acc2150_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2150", "role": "address1" }} , 
 	{ "name": "acc2150_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2150", "role": "ce1" }} , 
 	{ "name": "acc2150_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2150", "role": "we1" }} , 
 	{ "name": "acc2150_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2150", "role": "d1" }} , 
 	{ "name": "acc2151_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2151", "role": "address0" }} , 
 	{ "name": "acc2151_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2151", "role": "ce0" }} , 
 	{ "name": "acc2151_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2151", "role": "q0" }} , 
 	{ "name": "acc2151_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2151", "role": "address1" }} , 
 	{ "name": "acc2151_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2151", "role": "ce1" }} , 
 	{ "name": "acc2151_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2151", "role": "we1" }} , 
 	{ "name": "acc2151_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2151", "role": "d1" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "10", "19", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155"],
		"CDFG" : "p_anonymous_namespace_compute_row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1233", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1485", "FromFinalSV" : "19", "FromAddress" : "acc_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1488", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1488", "ToFinalSV" : "19", "ToAddress" : "acc_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1488", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1488", "FromFinalSV" : "19", "FromAddress" : "acc_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1233", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1485", "ToFinalSV" : "19", "ToAddress" : "acc_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1264", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1499", "FromFinalSV" : "19", "FromAddress" : "acc28_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1502", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1502", "ToFinalSV" : "19", "ToAddress" : "acc28_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1502", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1502", "FromFinalSV" : "19", "FromAddress" : "acc28_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1264", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1499", "ToFinalSV" : "19", "ToAddress" : "acc28_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1271", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1513", "FromFinalSV" : "19", "FromAddress" : "acc29_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1516", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1516", "ToFinalSV" : "19", "ToAddress" : "acc29_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1516", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1516", "FromFinalSV" : "19", "FromAddress" : "acc29_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1271", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1513", "ToFinalSV" : "19", "ToAddress" : "acc29_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1278", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1527", "FromFinalSV" : "19", "FromAddress" : "acc30_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1530", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1530", "ToFinalSV" : "19", "ToAddress" : "acc30_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1530", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1530", "FromFinalSV" : "19", "FromAddress" : "acc30_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1278", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1527", "ToFinalSV" : "19", "ToAddress" : "acc30_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1285", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1541", "FromFinalSV" : "19", "FromAddress" : "acc15_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1544", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1544", "ToFinalSV" : "19", "ToAddress" : "acc15_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1544", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1544", "FromFinalSV" : "19", "FromAddress" : "acc15_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1285", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1541", "ToFinalSV" : "19", "ToAddress" : "acc15_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1292", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1555", "FromFinalSV" : "19", "FromAddress" : "acc1531_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1558", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1558", "ToFinalSV" : "19", "ToAddress" : "acc1531_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1558", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1558", "FromFinalSV" : "19", "FromAddress" : "acc1531_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1292", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1555", "ToFinalSV" : "19", "ToAddress" : "acc1531_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1299", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1569", "FromFinalSV" : "19", "FromAddress" : "acc1532_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1572", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1572", "ToFinalSV" : "19", "ToAddress" : "acc1532_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1572", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1572", "FromFinalSV" : "19", "FromAddress" : "acc1532_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1299", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1569", "ToFinalSV" : "19", "ToAddress" : "acc1532_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1306", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1583", "FromFinalSV" : "19", "FromAddress" : "acc1533_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1586", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1586", "ToFinalSV" : "19", "ToAddress" : "acc1533_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1586", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1586", "FromFinalSV" : "19", "FromAddress" : "acc1533_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1306", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1583", "ToFinalSV" : "19", "ToAddress" : "acc1533_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1313", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1597", "FromFinalSV" : "19", "FromAddress" : "acc16_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1600", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1600", "ToFinalSV" : "19", "ToAddress" : "acc16_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1600", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1600", "FromFinalSV" : "19", "FromAddress" : "acc16_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1313", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1597", "ToFinalSV" : "19", "ToAddress" : "acc16_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1320", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1611", "FromFinalSV" : "19", "FromAddress" : "acc1634_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1614", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1614", "ToFinalSV" : "19", "ToAddress" : "acc1634_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1614", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1614", "FromFinalSV" : "19", "FromAddress" : "acc1634_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1320", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1611", "ToFinalSV" : "19", "ToAddress" : "acc1634_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1327", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1625", "FromFinalSV" : "19", "FromAddress" : "acc1635_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1628", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1628", "ToFinalSV" : "19", "ToAddress" : "acc1635_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1628", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1628", "FromFinalSV" : "19", "FromAddress" : "acc1635_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1327", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1625", "ToFinalSV" : "19", "ToAddress" : "acc1635_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1334", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1639", "FromFinalSV" : "19", "FromAddress" : "acc1636_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1642", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1642", "ToFinalSV" : "19", "ToAddress" : "acc1636_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1642", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1642", "FromFinalSV" : "19", "FromAddress" : "acc1636_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1334", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1639", "ToFinalSV" : "19", "ToAddress" : "acc1636_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1341", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1653", "FromFinalSV" : "19", "FromAddress" : "acc17_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1656", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1656", "ToFinalSV" : "19", "ToAddress" : "acc17_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1656", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1656", "FromFinalSV" : "19", "FromAddress" : "acc17_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1341", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1653", "ToFinalSV" : "19", "ToAddress" : "acc17_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1348", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1667", "FromFinalSV" : "19", "FromAddress" : "acc1737_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1670", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1670", "ToFinalSV" : "19", "ToAddress" : "acc1737_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1670", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1670", "FromFinalSV" : "19", "FromAddress" : "acc1737_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1348", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1667", "ToFinalSV" : "19", "ToAddress" : "acc1737_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1355", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1681", "FromFinalSV" : "19", "FromAddress" : "acc1738_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1684", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1684", "ToFinalSV" : "19", "ToAddress" : "acc1738_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1684", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1684", "FromFinalSV" : "19", "FromAddress" : "acc1738_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1355", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1681", "ToFinalSV" : "19", "ToAddress" : "acc1738_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1362", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1695", "FromFinalSV" : "19", "FromAddress" : "acc1739_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1698", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1698", "ToFinalSV" : "19", "ToAddress" : "acc1739_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1698", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1698", "FromFinalSV" : "19", "FromAddress" : "acc1739_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1362", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1695", "ToFinalSV" : "19", "ToAddress" : "acc1739_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1369", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1709", "FromFinalSV" : "19", "FromAddress" : "acc18_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1712", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1712", "ToFinalSV" : "19", "ToAddress" : "acc18_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1712", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1712", "FromFinalSV" : "19", "FromAddress" : "acc18_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1369", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1709", "ToFinalSV" : "19", "ToAddress" : "acc18_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1376", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1723", "FromFinalSV" : "19", "FromAddress" : "acc1840_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1726", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1726", "ToFinalSV" : "19", "ToAddress" : "acc1840_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1726", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1726", "FromFinalSV" : "19", "FromAddress" : "acc1840_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1376", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1723", "ToFinalSV" : "19", "ToAddress" : "acc1840_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1383", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1737", "FromFinalSV" : "19", "FromAddress" : "acc1841_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1740", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1740", "ToFinalSV" : "19", "ToAddress" : "acc1841_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1740", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1740", "FromFinalSV" : "19", "FromAddress" : "acc1841_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1383", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1737", "ToFinalSV" : "19", "ToAddress" : "acc1841_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1390", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1751", "FromFinalSV" : "19", "FromAddress" : "acc1842_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1754", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1754", "ToFinalSV" : "19", "ToAddress" : "acc1842_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1754", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1754", "FromFinalSV" : "19", "FromAddress" : "acc1842_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1390", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1751", "ToFinalSV" : "19", "ToAddress" : "acc1842_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1397", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1765", "FromFinalSV" : "19", "FromAddress" : "acc19_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1768", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1768", "ToFinalSV" : "19", "ToAddress" : "acc19_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1768", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1768", "FromFinalSV" : "19", "FromAddress" : "acc19_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1397", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1765", "ToFinalSV" : "19", "ToAddress" : "acc19_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1404", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1779", "FromFinalSV" : "19", "FromAddress" : "acc1943_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1782", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1782", "ToFinalSV" : "19", "ToAddress" : "acc1943_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1782", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1782", "FromFinalSV" : "19", "FromAddress" : "acc1943_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1404", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1779", "ToFinalSV" : "19", "ToAddress" : "acc1943_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1411", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1793", "FromFinalSV" : "19", "FromAddress" : "acc1944_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1796", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1796", "ToFinalSV" : "19", "ToAddress" : "acc1944_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1796", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1796", "FromFinalSV" : "19", "FromAddress" : "acc1944_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1411", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1793", "ToFinalSV" : "19", "ToAddress" : "acc1944_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1418", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1807", "FromFinalSV" : "19", "FromAddress" : "acc1945_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1810", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1810", "ToFinalSV" : "19", "ToAddress" : "acc1945_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1810", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1810", "FromFinalSV" : "19", "FromAddress" : "acc1945_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1418", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1807", "ToFinalSV" : "19", "ToAddress" : "acc1945_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1425", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1821", "FromFinalSV" : "19", "FromAddress" : "acc20_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1824", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1824", "ToFinalSV" : "19", "ToAddress" : "acc20_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1824", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1824", "FromFinalSV" : "19", "FromAddress" : "acc20_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1425", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1821", "ToFinalSV" : "19", "ToAddress" : "acc20_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1432", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1835", "FromFinalSV" : "19", "FromAddress" : "acc2046_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1838", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1838", "ToFinalSV" : "19", "ToAddress" : "acc2046_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1838", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1838", "FromFinalSV" : "19", "FromAddress" : "acc2046_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1432", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1835", "ToFinalSV" : "19", "ToAddress" : "acc2046_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1439", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1849", "FromFinalSV" : "19", "FromAddress" : "acc2047_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1852", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1852", "ToFinalSV" : "19", "ToAddress" : "acc2047_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1852", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1852", "FromFinalSV" : "19", "FromAddress" : "acc2047_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1439", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1849", "ToFinalSV" : "19", "ToAddress" : "acc2047_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1446", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1863", "FromFinalSV" : "19", "FromAddress" : "acc2048_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1866", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1866", "ToFinalSV" : "19", "ToAddress" : "acc2048_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1866", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1866", "FromFinalSV" : "19", "FromAddress" : "acc2048_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1446", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1863", "ToFinalSV" : "19", "ToAddress" : "acc2048_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1453", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1877", "FromFinalSV" : "19", "FromAddress" : "acc21_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1880", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1880", "ToFinalSV" : "19", "ToAddress" : "acc21_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1880", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1880", "FromFinalSV" : "19", "FromAddress" : "acc21_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1453", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1877", "ToFinalSV" : "19", "ToAddress" : "acc21_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1460", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1891", "FromFinalSV" : "19", "FromAddress" : "acc2149_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1894", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1894", "ToFinalSV" : "19", "ToAddress" : "acc2149_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1894", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1894", "FromFinalSV" : "19", "FromAddress" : "acc2149_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1460", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1891", "ToFinalSV" : "19", "ToAddress" : "acc2149_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1467", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1905", "FromFinalSV" : "19", "FromAddress" : "acc2150_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1908", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1908", "ToFinalSV" : "19", "ToAddress" : "acc2150_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1908", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1908", "FromFinalSV" : "19", "FromAddress" : "acc2150_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1467", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1905", "ToFinalSV" : "19", "ToAddress" : "acc2150_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1474", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1919", "FromFinalSV" : "19", "FromAddress" : "acc2151_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1922", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1922", "ToFinalSV" : "19", "ToAddress" : "acc2151_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1922", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1922", "FromFinalSV" : "19", "FromAddress" : "acc2151_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1474", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1919", "ToFinalSV" : "19", "ToAddress" : "acc2151_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]}],
		"Port" : [
			{"Name" : "pixels2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pixels2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights210", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights211", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights312", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights313", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights314", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights315", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights416", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights417", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights418", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights519", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights520", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights521", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights622", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights623", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights624", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights725", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights726", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights727", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "enabled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1531", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1532", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1533", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1634", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1635", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1636", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1737", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1738", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1739", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1840", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1841", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1842", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1943", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1944", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1945", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2046", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2047", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2048", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2149", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2150", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2151", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "p_anonymous_namespace_bank_access_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_18", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_81", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_20", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_82", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_86", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_34", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_93", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_24", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_32", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_88", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_91", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_48", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_18", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_81", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_20", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_82", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_24", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_86", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_32", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_88", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_34", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_89", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_91", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_93", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_48", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "writing", "Type" : "None", "Direction" : "I"},
			{"Name" : "word", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa", "Type" : "None", "Direction" : "I"},
			{"Name" : "reading", "Type" : "None", "Direction" : "I"},
			{"Name" : "a0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_0_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_1_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_2_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_3_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "p_anonymous_namespace_bank_access_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_18", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_81", "ToFinalSV" : "1", "ToAddress" : "memory_0_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_20", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_82", "ToFinalSV" : "1", "ToAddress" : "memory_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "memory_0_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_86", "ToFinalSV" : "1", "ToAddress" : "memory_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_34", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "1", "ToAddress" : "memory_0_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "memory_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_93", "ToFinalSV" : "1", "ToAddress" : "memory_0_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "memory_0_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_115_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "1", "ToAddress" : "memory_115_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_115_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_24", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "1", "ToAddress" : "memory_115_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_115_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "1", "ToAddress" : "memory_115_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_115_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_32", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_88", "ToFinalSV" : "1", "ToAddress" : "memory_115_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_115_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_91", "ToFinalSV" : "1", "ToAddress" : "memory_115_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_115_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "memory_115_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_115_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "memory_115_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_115_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_48", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "memory_115_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_18", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_81", "FromFinalSV" : "1", "FromAddress" : "memory_0_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_20", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_82", "FromFinalSV" : "1", "FromAddress" : "memory_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "1", "FromAddress" : "memory_115_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_115_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_24", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "1", "FromAddress" : "memory_115_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_115_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "memory_0_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_86", "FromFinalSV" : "1", "FromAddress" : "memory_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "1", "FromAddress" : "memory_115_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_115_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_32", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_88", "FromFinalSV" : "1", "FromAddress" : "memory_115_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_115_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_34", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_89", "FromFinalSV" : "1", "FromAddress" : "memory_0_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "memory_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_91", "FromFinalSV" : "1", "FromAddress" : "memory_115_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_115_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "memory_115_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_115_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_93", "FromFinalSV" : "1", "FromAddress" : "memory_0_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "memory_0_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "memory_115_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_115_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_48", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "memory_115_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_115_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "writing", "Type" : "None", "Direction" : "I"},
			{"Name" : "word", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa", "Type" : "None", "Direction" : "I"},
			{"Name" : "reading", "Type" : "None", "Direction" : "I"},
			{"Name" : "a0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_0_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_1_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_2_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_3_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_0_U", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_1_U", "Parent" : "10"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_2_U", "Parent" : "10"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_3_U", "Parent" : "10"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_address_stage_fu_1685", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24"],
		"CDFG" : "p_anonymous_namespace_address_stage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "ky", "Type" : "None", "Direction" : "I"},
			{"Name" : "kx", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_11s_11ns_11_3_1_U402", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_16s_16ns_16_3_1_U403", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_1ns_2ns_16ns_16_3_1_U404", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U405", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U406", "Parent" : "19"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4ns_16ns_20_1_1_U426", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_3ns_6_1_1_U427", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_15ns_6ns_20_4_1_U428", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U429", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U430", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U431", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U432", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U433", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U434", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U435", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U436", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U437", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U438", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U439", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U440", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U441", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U442", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U443", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U444", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U445", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U446", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U447", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U448", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U449", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U450", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U451", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U452", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U453", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U454", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U455", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U456", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U457", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U458", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U459", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_32_4_1_U460", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U461", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U462", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U463", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U464", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U465", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U466", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U467", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U468", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U469", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U470", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U471", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U472", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U473", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U474", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U475", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U476", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U477", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U478", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U479", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U480", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U481", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U482", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U483", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U484", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U485", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U486", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U487", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U488", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U489", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U490", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U491", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_32s_33_4_1_U492", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U493", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U494", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U495", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U496", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U497", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U498", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U499", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U500", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U501", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U502", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U503", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U504", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U505", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U506", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U507", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U508", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U509", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U510", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U511", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U512", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U513", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U514", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U515", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U516", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U517", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U518", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U519", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U520", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U521", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U522", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U523", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_33_4_1_U524", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U525", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U526", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U527", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U528", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U529", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U530", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U531", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U532", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U533", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U534", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U535", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U536", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U537", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U538", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U539", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U540", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U541", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U542", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U543", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U544", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U545", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U546", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U547", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U548", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U549", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U550", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U551", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U552", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U553", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U554", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U555", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_33s_34_4_1_U556", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_compute_row {
		pixels2 {Type I LastRead 7 FirstWrite -1}
		weights {Type I LastRead 12 FirstWrite -1}
		weights1 {Type I LastRead 14 FirstWrite -1}
		weights2 {Type I LastRead 13 FirstWrite -1}
		weights3 {Type I LastRead 15 FirstWrite -1}
		weights14 {Type I LastRead 12 FirstWrite -1}
		weights15 {Type I LastRead 14 FirstWrite -1}
		weights16 {Type I LastRead 13 FirstWrite -1}
		weights17 {Type I LastRead 15 FirstWrite -1}
		weights28 {Type I LastRead 12 FirstWrite -1}
		weights29 {Type I LastRead 14 FirstWrite -1}
		weights210 {Type I LastRead 13 FirstWrite -1}
		weights211 {Type I LastRead 15 FirstWrite -1}
		weights312 {Type I LastRead 12 FirstWrite -1}
		weights313 {Type I LastRead 14 FirstWrite -1}
		weights314 {Type I LastRead 13 FirstWrite -1}
		weights315 {Type I LastRead 15 FirstWrite -1}
		weights4 {Type I LastRead 12 FirstWrite -1}
		weights416 {Type I LastRead 14 FirstWrite -1}
		weights417 {Type I LastRead 13 FirstWrite -1}
		weights418 {Type I LastRead 15 FirstWrite -1}
		weights5 {Type I LastRead 12 FirstWrite -1}
		weights519 {Type I LastRead 14 FirstWrite -1}
		weights520 {Type I LastRead 13 FirstWrite -1}
		weights521 {Type I LastRead 15 FirstWrite -1}
		weights6 {Type I LastRead 12 FirstWrite -1}
		weights622 {Type I LastRead 14 FirstWrite -1}
		weights623 {Type I LastRead 13 FirstWrite -1}
		weights624 {Type I LastRead 15 FirstWrite -1}
		weights7 {Type I LastRead 12 FirstWrite -1}
		weights725 {Type I LastRead 14 FirstWrite -1}
		weights726 {Type I LastRead 13 FirstWrite -1}
		weights727 {Type I LastRead 15 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		bias8 {Type I LastRead 0 FirstWrite -1}
		bias9 {Type I LastRead 0 FirstWrite -1}
		bias10 {Type I LastRead 0 FirstWrite -1}
		bias11 {Type I LastRead 0 FirstWrite -1}
		bias12 {Type I LastRead 0 FirstWrite -1}
		bias13 {Type I LastRead 0 FirstWrite -1}
		bias14 {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		enabled {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 18 FirstWrite 19}
		acc28 {Type IO LastRead 18 FirstWrite 19}
		acc29 {Type IO LastRead 18 FirstWrite 19}
		acc30 {Type IO LastRead 18 FirstWrite 19}
		acc15 {Type IO LastRead 18 FirstWrite 19}
		acc1531 {Type IO LastRead 18 FirstWrite 19}
		acc1532 {Type IO LastRead 18 FirstWrite 19}
		acc1533 {Type IO LastRead 18 FirstWrite 19}
		acc16 {Type IO LastRead 18 FirstWrite 19}
		acc1634 {Type IO LastRead 18 FirstWrite 19}
		acc1635 {Type IO LastRead 18 FirstWrite 19}
		acc1636 {Type IO LastRead 18 FirstWrite 19}
		acc17 {Type IO LastRead 18 FirstWrite 19}
		acc1737 {Type IO LastRead 18 FirstWrite 19}
		acc1738 {Type IO LastRead 18 FirstWrite 19}
		acc1739 {Type IO LastRead 18 FirstWrite 19}
		acc18 {Type IO LastRead 18 FirstWrite 19}
		acc1840 {Type IO LastRead 18 FirstWrite 19}
		acc1841 {Type IO LastRead 18 FirstWrite 19}
		acc1842 {Type IO LastRead 18 FirstWrite 19}
		acc19 {Type IO LastRead 18 FirstWrite 19}
		acc1943 {Type IO LastRead 18 FirstWrite 19}
		acc1944 {Type IO LastRead 18 FirstWrite 19}
		acc1945 {Type IO LastRead 18 FirstWrite 19}
		acc20 {Type IO LastRead 18 FirstWrite 19}
		acc2046 {Type IO LastRead 18 FirstWrite 19}
		acc2047 {Type IO LastRead 18 FirstWrite 19}
		acc2048 {Type IO LastRead 18 FirstWrite 19}
		acc21 {Type IO LastRead 18 FirstWrite 19}
		acc2149 {Type IO LastRead 18 FirstWrite 19}
		acc2150 {Type IO LastRead 18 FirstWrite 19}
		acc2151 {Type IO LastRead 18 FirstWrite 19}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_ticks {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_mac {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_wait {Type IO LastRead 8 FirstWrite 8}}
	p_anonymous_namespace_bank_access_0_s {
		writing {Type I LastRead 0 FirstWrite -1}
		word {Type I LastRead 0 FirstWrite -1}
		wa {Type I LastRead 0 FirstWrite -1}
		reading {Type I LastRead 0 FirstWrite -1}
		a0 {Type I LastRead 0 FirstWrite -1}
		a1 {Type I LastRead 0 FirstWrite -1}
		a2 {Type I LastRead 0 FirstWrite -1}
		a3 {Type I LastRead 0 FirstWrite -1}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}}
	p_anonymous_namespace_bank_access_1_s {
		writing {Type I LastRead 0 FirstWrite -1}
		word {Type I LastRead 0 FirstWrite -1}
		wa {Type I LastRead 0 FirstWrite -1}
		reading {Type I LastRead 0 FirstWrite -1}
		a0 {Type I LastRead 0 FirstWrite -1}
		a1 {Type I LastRead 0 FirstWrite -1}
		a2 {Type I LastRead 0 FirstWrite -1}
		a3 {Type I LastRead 0 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}}
	p_anonymous_namespace_address_stage {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		ky {Type I LastRead 0 FirstWrite -1}
		kx {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	pixels2 { ap_fifo {  { pixels2_dout fifo_data 0 64 }  { pixels2_empty_n fifo_status 0 1 }  { pixels2_read fifo_update 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 11 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 16 } } }
	weights1 { ap_memory {  { weights1_address0 mem_address 1 11 }  { weights1_ce0 mem_ce 1 1 }  { weights1_q0 mem_dout 0 16 } } }
	weights2 { ap_memory {  { weights2_address0 mem_address 1 11 }  { weights2_ce0 mem_ce 1 1 }  { weights2_q0 mem_dout 0 16 } } }
	weights3 { ap_memory {  { weights3_address0 mem_address 1 11 }  { weights3_ce0 mem_ce 1 1 }  { weights3_q0 mem_dout 0 16 } } }
	weights14 { ap_memory {  { weights14_address0 mem_address 1 11 }  { weights14_ce0 mem_ce 1 1 }  { weights14_q0 mem_dout 0 16 } } }
	weights15 { ap_memory {  { weights15_address0 mem_address 1 11 }  { weights15_ce0 mem_ce 1 1 }  { weights15_q0 mem_dout 0 16 } } }
	weights16 { ap_memory {  { weights16_address0 mem_address 1 11 }  { weights16_ce0 mem_ce 1 1 }  { weights16_q0 mem_dout 0 16 } } }
	weights17 { ap_memory {  { weights17_address0 mem_address 1 11 }  { weights17_ce0 mem_ce 1 1 }  { weights17_q0 mem_dout 0 16 } } }
	weights28 { ap_memory {  { weights28_address0 mem_address 1 11 }  { weights28_ce0 mem_ce 1 1 }  { weights28_q0 mem_dout 0 16 } } }
	weights29 { ap_memory {  { weights29_address0 mem_address 1 11 }  { weights29_ce0 mem_ce 1 1 }  { weights29_q0 mem_dout 0 16 } } }
	weights210 { ap_memory {  { weights210_address0 mem_address 1 11 }  { weights210_ce0 mem_ce 1 1 }  { weights210_q0 mem_dout 0 16 } } }
	weights211 { ap_memory {  { weights211_address0 mem_address 1 11 }  { weights211_ce0 mem_ce 1 1 }  { weights211_q0 mem_dout 0 16 } } }
	weights312 { ap_memory {  { weights312_address0 mem_address 1 11 }  { weights312_ce0 mem_ce 1 1 }  { weights312_q0 mem_dout 0 16 } } }
	weights313 { ap_memory {  { weights313_address0 mem_address 1 11 }  { weights313_ce0 mem_ce 1 1 }  { weights313_q0 mem_dout 0 16 } } }
	weights314 { ap_memory {  { weights314_address0 mem_address 1 11 }  { weights314_ce0 mem_ce 1 1 }  { weights314_q0 mem_dout 0 16 } } }
	weights315 { ap_memory {  { weights315_address0 mem_address 1 11 }  { weights315_ce0 mem_ce 1 1 }  { weights315_q0 mem_dout 0 16 } } }
	weights4 { ap_memory {  { weights4_address0 mem_address 1 11 }  { weights4_ce0 mem_ce 1 1 }  { weights4_q0 mem_dout 0 16 } } }
	weights416 { ap_memory {  { weights416_address0 mem_address 1 11 }  { weights416_ce0 mem_ce 1 1 }  { weights416_q0 mem_dout 0 16 } } }
	weights417 { ap_memory {  { weights417_address0 mem_address 1 11 }  { weights417_ce0 mem_ce 1 1 }  { weights417_q0 mem_dout 0 16 } } }
	weights418 { ap_memory {  { weights418_address0 mem_address 1 11 }  { weights418_ce0 mem_ce 1 1 }  { weights418_q0 mem_dout 0 16 } } }
	weights5 { ap_memory {  { weights5_address0 mem_address 1 11 }  { weights5_ce0 mem_ce 1 1 }  { weights5_q0 mem_dout 0 16 } } }
	weights519 { ap_memory {  { weights519_address0 mem_address 1 11 }  { weights519_ce0 mem_ce 1 1 }  { weights519_q0 mem_dout 0 16 } } }
	weights520 { ap_memory {  { weights520_address0 mem_address 1 11 }  { weights520_ce0 mem_ce 1 1 }  { weights520_q0 mem_dout 0 16 } } }
	weights521 { ap_memory {  { weights521_address0 mem_address 1 11 }  { weights521_ce0 mem_ce 1 1 }  { weights521_q0 mem_dout 0 16 } } }
	weights6 { ap_memory {  { weights6_address0 mem_address 1 11 }  { weights6_ce0 mem_ce 1 1 }  { weights6_q0 mem_dout 0 16 } } }
	weights622 { ap_memory {  { weights622_address0 mem_address 1 11 }  { weights622_ce0 mem_ce 1 1 }  { weights622_q0 mem_dout 0 16 } } }
	weights623 { ap_memory {  { weights623_address0 mem_address 1 11 }  { weights623_ce0 mem_ce 1 1 }  { weights623_q0 mem_dout 0 16 } } }
	weights624 { ap_memory {  { weights624_address0 mem_address 1 11 }  { weights624_ce0 mem_ce 1 1 }  { weights624_q0 mem_dout 0 16 } } }
	weights7 { ap_memory {  { weights7_address0 mem_address 1 11 }  { weights7_ce0 mem_ce 1 1 }  { weights7_q0 mem_dout 0 16 } } }
	weights725 { ap_memory {  { weights725_address0 mem_address 1 11 }  { weights725_ce0 mem_ce 1 1 }  { weights725_q0 mem_dout 0 16 } } }
	weights726 { ap_memory {  { weights726_address0 mem_address 1 11 }  { weights726_ce0 mem_ce 1 1 }  { weights726_q0 mem_dout 0 16 } } }
	weights727 { ap_memory {  { weights727_address0 mem_address 1 11 }  { weights727_ce0 mem_ce 1 1 }  { weights727_q0 mem_dout 0 16 } } }
	bias { ap_fifo {  { bias_dout fifo_data 0 48 }  { bias_empty_n fifo_status 0 1 }  { bias_read fifo_update 1 1 } } }
	bias8 { ap_fifo {  { bias8_dout fifo_data 0 48 }  { bias8_empty_n fifo_status 0 1 }  { bias8_read fifo_update 1 1 } } }
	bias9 { ap_fifo {  { bias9_dout fifo_data 0 48 }  { bias9_empty_n fifo_status 0 1 }  { bias9_read fifo_update 1 1 } } }
	bias10 { ap_fifo {  { bias10_dout fifo_data 0 48 }  { bias10_empty_n fifo_status 0 1 }  { bias10_read fifo_update 1 1 } } }
	bias11 { ap_fifo {  { bias11_dout fifo_data 0 48 }  { bias11_empty_n fifo_status 0 1 }  { bias11_read fifo_update 1 1 } } }
	bias12 { ap_fifo {  { bias12_dout fifo_data 0 48 }  { bias12_empty_n fifo_status 0 1 }  { bias12_read fifo_update 1 1 } } }
	bias13 { ap_fifo {  { bias13_dout fifo_data 0 48 }  { bias13_empty_n fifo_status 0 1 }  { bias13_read fifo_update 1 1 } } }
	bias14 { ap_fifo {  { bias14_dout fifo_data 0 48 }  { bias14_empty_n fifo_status 0 1 }  { bias14_read fifo_update 1 1 } } }
	ci { ap_fifo {  { ci_dout fifo_data 0 10 }  { ci_empty_n fifo_status 0 1 }  { ci_read fifo_update 1 1 } } }
	wi { ap_fifo {  { wi_dout fifo_data 0 16 }  { wi_empty_n fifo_status 0 1 }  { wi_read fifo_update 1 1 } } }
	k { ap_fifo {  { k_dout fifo_data 0 3 }  { k_empty_n fifo_status 0 1 }  { k_read fifo_update 1 1 } } }
	stride { ap_fifo {  { stride_dout fifo_data 0 2 }  { stride_empty_n fifo_status 0 1 }  { stride_read fifo_update 1 1 } } }
	pad { ap_fifo {  { pad_dout fifo_data 0 2 }  { pad_empty_n fifo_status 0 1 }  { pad_read fifo_update 1 1 } } }
	ow { ap_fifo {  { ow_dout fifo_data 0 16 }  { ow_empty_n fifo_status 0 1 }  { ow_read fifo_update 1 1 } } }
	enabled { ap_fifo {  { enabled_dout fifo_data 0 1 }  { enabled_empty_n fifo_status 0 1 }  { enabled_read fifo_update 1 1 } } }
	acc { ap_memory {  { acc_address0 mem_address 1 6 }  { acc_ce0 mem_ce 1 1 }  { acc_q0 mem_dout 0 48 }  { acc_address1 MemPortADDR2 1 6 }  { acc_ce1 MemPortCE2 1 1 }  { acc_we1 MemPortWE2 1 1 }  { acc_d1 MemPortDIN2 1 48 } } }
	acc28 { ap_memory {  { acc28_address0 mem_address 1 6 }  { acc28_ce0 mem_ce 1 1 }  { acc28_q0 mem_dout 0 48 }  { acc28_address1 MemPortADDR2 1 6 }  { acc28_ce1 MemPortCE2 1 1 }  { acc28_we1 MemPortWE2 1 1 }  { acc28_d1 MemPortDIN2 1 48 } } }
	acc29 { ap_memory {  { acc29_address0 mem_address 1 6 }  { acc29_ce0 mem_ce 1 1 }  { acc29_q0 mem_dout 0 48 }  { acc29_address1 MemPortADDR2 1 6 }  { acc29_ce1 MemPortCE2 1 1 }  { acc29_we1 MemPortWE2 1 1 }  { acc29_d1 MemPortDIN2 1 48 } } }
	acc30 { ap_memory {  { acc30_address0 mem_address 1 6 }  { acc30_ce0 mem_ce 1 1 }  { acc30_q0 mem_dout 0 48 }  { acc30_address1 MemPortADDR2 1 6 }  { acc30_ce1 MemPortCE2 1 1 }  { acc30_we1 MemPortWE2 1 1 }  { acc30_d1 MemPortDIN2 1 48 } } }
	acc15 { ap_memory {  { acc15_address0 mem_address 1 6 }  { acc15_ce0 mem_ce 1 1 }  { acc15_q0 mem_dout 0 48 }  { acc15_address1 MemPortADDR2 1 6 }  { acc15_ce1 MemPortCE2 1 1 }  { acc15_we1 MemPortWE2 1 1 }  { acc15_d1 MemPortDIN2 1 48 } } }
	acc1531 { ap_memory {  { acc1531_address0 mem_address 1 6 }  { acc1531_ce0 mem_ce 1 1 }  { acc1531_q0 mem_dout 0 48 }  { acc1531_address1 MemPortADDR2 1 6 }  { acc1531_ce1 MemPortCE2 1 1 }  { acc1531_we1 MemPortWE2 1 1 }  { acc1531_d1 MemPortDIN2 1 48 } } }
	acc1532 { ap_memory {  { acc1532_address0 mem_address 1 6 }  { acc1532_ce0 mem_ce 1 1 }  { acc1532_q0 mem_dout 0 48 }  { acc1532_address1 MemPortADDR2 1 6 }  { acc1532_ce1 MemPortCE2 1 1 }  { acc1532_we1 MemPortWE2 1 1 }  { acc1532_d1 MemPortDIN2 1 48 } } }
	acc1533 { ap_memory {  { acc1533_address0 mem_address 1 6 }  { acc1533_ce0 mem_ce 1 1 }  { acc1533_q0 mem_dout 0 48 }  { acc1533_address1 MemPortADDR2 1 6 }  { acc1533_ce1 MemPortCE2 1 1 }  { acc1533_we1 MemPortWE2 1 1 }  { acc1533_d1 MemPortDIN2 1 48 } } }
	acc16 { ap_memory {  { acc16_address0 mem_address 1 6 }  { acc16_ce0 mem_ce 1 1 }  { acc16_q0 mem_dout 0 48 }  { acc16_address1 MemPortADDR2 1 6 }  { acc16_ce1 MemPortCE2 1 1 }  { acc16_we1 MemPortWE2 1 1 }  { acc16_d1 MemPortDIN2 1 48 } } }
	acc1634 { ap_memory {  { acc1634_address0 mem_address 1 6 }  { acc1634_ce0 mem_ce 1 1 }  { acc1634_q0 mem_dout 0 48 }  { acc1634_address1 MemPortADDR2 1 6 }  { acc1634_ce1 MemPortCE2 1 1 }  { acc1634_we1 MemPortWE2 1 1 }  { acc1634_d1 MemPortDIN2 1 48 } } }
	acc1635 { ap_memory {  { acc1635_address0 mem_address 1 6 }  { acc1635_ce0 mem_ce 1 1 }  { acc1635_q0 mem_dout 0 48 }  { acc1635_address1 MemPortADDR2 1 6 }  { acc1635_ce1 MemPortCE2 1 1 }  { acc1635_we1 MemPortWE2 1 1 }  { acc1635_d1 MemPortDIN2 1 48 } } }
	acc1636 { ap_memory {  { acc1636_address0 mem_address 1 6 }  { acc1636_ce0 mem_ce 1 1 }  { acc1636_q0 mem_dout 0 48 }  { acc1636_address1 MemPortADDR2 1 6 }  { acc1636_ce1 MemPortCE2 1 1 }  { acc1636_we1 MemPortWE2 1 1 }  { acc1636_d1 MemPortDIN2 1 48 } } }
	acc17 { ap_memory {  { acc17_address0 mem_address 1 6 }  { acc17_ce0 mem_ce 1 1 }  { acc17_q0 mem_dout 0 48 }  { acc17_address1 MemPortADDR2 1 6 }  { acc17_ce1 MemPortCE2 1 1 }  { acc17_we1 MemPortWE2 1 1 }  { acc17_d1 MemPortDIN2 1 48 } } }
	acc1737 { ap_memory {  { acc1737_address0 mem_address 1 6 }  { acc1737_ce0 mem_ce 1 1 }  { acc1737_q0 mem_dout 0 48 }  { acc1737_address1 MemPortADDR2 1 6 }  { acc1737_ce1 MemPortCE2 1 1 }  { acc1737_we1 MemPortWE2 1 1 }  { acc1737_d1 MemPortDIN2 1 48 } } }
	acc1738 { ap_memory {  { acc1738_address0 mem_address 1 6 }  { acc1738_ce0 mem_ce 1 1 }  { acc1738_q0 mem_dout 0 48 }  { acc1738_address1 MemPortADDR2 1 6 }  { acc1738_ce1 MemPortCE2 1 1 }  { acc1738_we1 MemPortWE2 1 1 }  { acc1738_d1 MemPortDIN2 1 48 } } }
	acc1739 { ap_memory {  { acc1739_address0 mem_address 1 6 }  { acc1739_ce0 mem_ce 1 1 }  { acc1739_q0 mem_dout 0 48 }  { acc1739_address1 MemPortADDR2 1 6 }  { acc1739_ce1 MemPortCE2 1 1 }  { acc1739_we1 MemPortWE2 1 1 }  { acc1739_d1 MemPortDIN2 1 48 } } }
	acc18 { ap_memory {  { acc18_address0 mem_address 1 6 }  { acc18_ce0 mem_ce 1 1 }  { acc18_q0 mem_dout 0 48 }  { acc18_address1 MemPortADDR2 1 6 }  { acc18_ce1 MemPortCE2 1 1 }  { acc18_we1 MemPortWE2 1 1 }  { acc18_d1 MemPortDIN2 1 48 } } }
	acc1840 { ap_memory {  { acc1840_address0 mem_address 1 6 }  { acc1840_ce0 mem_ce 1 1 }  { acc1840_q0 mem_dout 0 48 }  { acc1840_address1 MemPortADDR2 1 6 }  { acc1840_ce1 MemPortCE2 1 1 }  { acc1840_we1 MemPortWE2 1 1 }  { acc1840_d1 MemPortDIN2 1 48 } } }
	acc1841 { ap_memory {  { acc1841_address0 mem_address 1 6 }  { acc1841_ce0 mem_ce 1 1 }  { acc1841_q0 mem_dout 0 48 }  { acc1841_address1 MemPortADDR2 1 6 }  { acc1841_ce1 MemPortCE2 1 1 }  { acc1841_we1 MemPortWE2 1 1 }  { acc1841_d1 MemPortDIN2 1 48 } } }
	acc1842 { ap_memory {  { acc1842_address0 mem_address 1 6 }  { acc1842_ce0 mem_ce 1 1 }  { acc1842_q0 mem_dout 0 48 }  { acc1842_address1 MemPortADDR2 1 6 }  { acc1842_ce1 MemPortCE2 1 1 }  { acc1842_we1 MemPortWE2 1 1 }  { acc1842_d1 MemPortDIN2 1 48 } } }
	acc19 { ap_memory {  { acc19_address0 mem_address 1 6 }  { acc19_ce0 mem_ce 1 1 }  { acc19_q0 mem_dout 0 48 }  { acc19_address1 MemPortADDR2 1 6 }  { acc19_ce1 MemPortCE2 1 1 }  { acc19_we1 MemPortWE2 1 1 }  { acc19_d1 MemPortDIN2 1 48 } } }
	acc1943 { ap_memory {  { acc1943_address0 mem_address 1 6 }  { acc1943_ce0 mem_ce 1 1 }  { acc1943_q0 mem_dout 0 48 }  { acc1943_address1 MemPortADDR2 1 6 }  { acc1943_ce1 MemPortCE2 1 1 }  { acc1943_we1 MemPortWE2 1 1 }  { acc1943_d1 MemPortDIN2 1 48 } } }
	acc1944 { ap_memory {  { acc1944_address0 mem_address 1 6 }  { acc1944_ce0 mem_ce 1 1 }  { acc1944_q0 mem_dout 0 48 }  { acc1944_address1 MemPortADDR2 1 6 }  { acc1944_ce1 MemPortCE2 1 1 }  { acc1944_we1 MemPortWE2 1 1 }  { acc1944_d1 MemPortDIN2 1 48 } } }
	acc1945 { ap_memory {  { acc1945_address0 mem_address 1 6 }  { acc1945_ce0 mem_ce 1 1 }  { acc1945_q0 mem_dout 0 48 }  { acc1945_address1 MemPortADDR2 1 6 }  { acc1945_ce1 MemPortCE2 1 1 }  { acc1945_we1 MemPortWE2 1 1 }  { acc1945_d1 MemPortDIN2 1 48 } } }
	acc20 { ap_memory {  { acc20_address0 mem_address 1 6 }  { acc20_ce0 mem_ce 1 1 }  { acc20_q0 mem_dout 0 48 }  { acc20_address1 MemPortADDR2 1 6 }  { acc20_ce1 MemPortCE2 1 1 }  { acc20_we1 MemPortWE2 1 1 }  { acc20_d1 MemPortDIN2 1 48 } } }
	acc2046 { ap_memory {  { acc2046_address0 mem_address 1 6 }  { acc2046_ce0 mem_ce 1 1 }  { acc2046_q0 mem_dout 0 48 }  { acc2046_address1 MemPortADDR2 1 6 }  { acc2046_ce1 MemPortCE2 1 1 }  { acc2046_we1 MemPortWE2 1 1 }  { acc2046_d1 MemPortDIN2 1 48 } } }
	acc2047 { ap_memory {  { acc2047_address0 mem_address 1 6 }  { acc2047_ce0 mem_ce 1 1 }  { acc2047_q0 mem_dout 0 48 }  { acc2047_address1 MemPortADDR2 1 6 }  { acc2047_ce1 MemPortCE2 1 1 }  { acc2047_we1 MemPortWE2 1 1 }  { acc2047_d1 MemPortDIN2 1 48 } } }
	acc2048 { ap_memory {  { acc2048_address0 mem_address 1 6 }  { acc2048_ce0 mem_ce 1 1 }  { acc2048_q0 mem_dout 0 48 }  { acc2048_address1 MemPortADDR2 1 6 }  { acc2048_ce1 MemPortCE2 1 1 }  { acc2048_we1 MemPortWE2 1 1 }  { acc2048_d1 MemPortDIN2 1 48 } } }
	acc21 { ap_memory {  { acc21_address0 mem_address 1 6 }  { acc21_ce0 mem_ce 1 1 }  { acc21_q0 mem_dout 0 48 }  { acc21_address1 MemPortADDR2 1 6 }  { acc21_ce1 MemPortCE2 1 1 }  { acc21_we1 MemPortWE2 1 1 }  { acc21_d1 MemPortDIN2 1 48 } } }
	acc2149 { ap_memory {  { acc2149_address0 mem_address 1 6 }  { acc2149_ce0 mem_ce 1 1 }  { acc2149_q0 mem_dout 0 48 }  { acc2149_address1 MemPortADDR2 1 6 }  { acc2149_ce1 MemPortCE2 1 1 }  { acc2149_we1 MemPortWE2 1 1 }  { acc2149_d1 MemPortDIN2 1 48 } } }
	acc2150 { ap_memory {  { acc2150_address0 mem_address 1 6 }  { acc2150_ce0 mem_ce 1 1 }  { acc2150_q0 mem_dout 0 48 }  { acc2150_address1 MemPortADDR2 1 6 }  { acc2150_ce1 MemPortCE2 1 1 }  { acc2150_we1 MemPortWE2 1 1 }  { acc2150_d1 MemPortDIN2 1 48 } } }
	acc2151 { ap_memory {  { acc2151_address0 mem_address 1 6 }  { acc2151_ce0 mem_ce 1 1 }  { acc2151_q0 mem_dout 0 48 }  { acc2151_address1 MemPortADDR2 1 6 }  { acc2151_ce1 MemPortCE2 1 1 }  { acc2151_we1 MemPortWE2 1 1 }  { acc2151_d1 MemPortDIN2 1 48 } } }
	p_anonymous_namespace_profile_ticks { ap_ovld {  { p_anonymous_namespace_profile_ticks_i in_data 0 64 }  { p_anonymous_namespace_profile_ticks_o out_data 1 64 }  { p_anonymous_namespace_profile_ticks_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_mac { ap_ovld {  { p_anonymous_namespace_profile_mac_i in_data 0 64 }  { p_anonymous_namespace_profile_mac_o out_data 1 64 }  { p_anonymous_namespace_profile_mac_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_wait { ap_ovld {  { p_anonymous_namespace_profile_wait_i in_data 0 64 }  { p_anonymous_namespace_profile_wait_o out_data 1 64 }  { p_anonymous_namespace_profile_wait_o_ap_vld out_vld 1 1 } } }
}
