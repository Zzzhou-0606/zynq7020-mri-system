set moduleName p_anonymous_namespace_compute_tiles
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
set C_modelName {(anonymous namespace)compute_tiles}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixels int 64 regular {fifo 0 volatile }  }
	{ results int 256 regular {fifo 1 volatile }  }
	{ weights_0_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_0_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_0_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_0_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_1_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_1_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_1_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_1_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_2_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_2_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_2_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_2_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_3_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_3_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_3_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_3_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_4_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_4_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_4_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_4_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_5_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_5_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_5_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_5_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_6_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_6_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_6_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_6_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_7_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_7_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_7_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights_7_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ bias_0 int 48 regular {fifo 0}  }
	{ bias_1 int 48 regular {fifo 0}  }
	{ bias_2 int 48 regular {fifo 0}  }
	{ bias_3 int 48 regular {fifo 0}  }
	{ bias_4 int 48 regular {fifo 0}  }
	{ bias_5 int 48 regular {fifo 0}  }
	{ bias_6 int 48 regular {fifo 0}  }
	{ bias_7 int 48 regular {fifo 0}  }
	{ ci int 10 regular {fifo 0}  }
	{ wi int 16 regular  }
	{ k int 3 regular {fifo 0}  }
	{ stride int 2 regular  }
	{ pad int 2 regular {fifo 0}  }
	{ oh int 16 regular {fifo 0}  }
	{ ow int 16 regular {fifo 0}  }
	{ oh_out int 16 regular {fifo 1}  }
	{ ow_out int 16 regular {fifo 1}  }
	{ p_anonymous_namespace_profile_ticks int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_mac int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_wait int 64 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixels", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "results", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_4_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_4_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_5_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_5_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_5_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_5_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_6_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_6_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_6_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_6_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_7_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_7_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_7_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_7_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_0", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_3", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_4", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_5", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_6", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_7", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "wi", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "oh", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "oh_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ow_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_anonymous_namespace_profile_ticks", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_mac", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_wait", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 165
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pixels_dout sc_in sc_lv 64 signal 0 } 
	{ pixels_empty_n sc_in sc_logic 1 signal 0 } 
	{ pixels_read sc_out sc_logic 1 signal 0 } 
	{ results_din sc_out sc_lv 256 signal 1 } 
	{ results_full_n sc_in sc_logic 1 signal 1 } 
	{ results_write sc_out sc_logic 1 signal 1 } 
	{ weights_0_0_address0 sc_out sc_lv 11 signal 2 } 
	{ weights_0_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_0_0_q0 sc_in sc_lv 16 signal 2 } 
	{ weights_0_1_address0 sc_out sc_lv 11 signal 3 } 
	{ weights_0_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights_0_1_q0 sc_in sc_lv 16 signal 3 } 
	{ weights_0_2_address0 sc_out sc_lv 11 signal 4 } 
	{ weights_0_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights_0_2_q0 sc_in sc_lv 16 signal 4 } 
	{ weights_0_3_address0 sc_out sc_lv 11 signal 5 } 
	{ weights_0_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ weights_0_3_q0 sc_in sc_lv 16 signal 5 } 
	{ weights_1_0_address0 sc_out sc_lv 11 signal 6 } 
	{ weights_1_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ weights_1_0_q0 sc_in sc_lv 16 signal 6 } 
	{ weights_1_1_address0 sc_out sc_lv 11 signal 7 } 
	{ weights_1_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ weights_1_1_q0 sc_in sc_lv 16 signal 7 } 
	{ weights_1_2_address0 sc_out sc_lv 11 signal 8 } 
	{ weights_1_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights_1_2_q0 sc_in sc_lv 16 signal 8 } 
	{ weights_1_3_address0 sc_out sc_lv 11 signal 9 } 
	{ weights_1_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ weights_1_3_q0 sc_in sc_lv 16 signal 9 } 
	{ weights_2_0_address0 sc_out sc_lv 11 signal 10 } 
	{ weights_2_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ weights_2_0_q0 sc_in sc_lv 16 signal 10 } 
	{ weights_2_1_address0 sc_out sc_lv 11 signal 11 } 
	{ weights_2_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ weights_2_1_q0 sc_in sc_lv 16 signal 11 } 
	{ weights_2_2_address0 sc_out sc_lv 11 signal 12 } 
	{ weights_2_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ weights_2_2_q0 sc_in sc_lv 16 signal 12 } 
	{ weights_2_3_address0 sc_out sc_lv 11 signal 13 } 
	{ weights_2_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ weights_2_3_q0 sc_in sc_lv 16 signal 13 } 
	{ weights_3_0_address0 sc_out sc_lv 11 signal 14 } 
	{ weights_3_0_ce0 sc_out sc_logic 1 signal 14 } 
	{ weights_3_0_q0 sc_in sc_lv 16 signal 14 } 
	{ weights_3_1_address0 sc_out sc_lv 11 signal 15 } 
	{ weights_3_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ weights_3_1_q0 sc_in sc_lv 16 signal 15 } 
	{ weights_3_2_address0 sc_out sc_lv 11 signal 16 } 
	{ weights_3_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ weights_3_2_q0 sc_in sc_lv 16 signal 16 } 
	{ weights_3_3_address0 sc_out sc_lv 11 signal 17 } 
	{ weights_3_3_ce0 sc_out sc_logic 1 signal 17 } 
	{ weights_3_3_q0 sc_in sc_lv 16 signal 17 } 
	{ weights_4_0_address0 sc_out sc_lv 11 signal 18 } 
	{ weights_4_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ weights_4_0_q0 sc_in sc_lv 16 signal 18 } 
	{ weights_4_1_address0 sc_out sc_lv 11 signal 19 } 
	{ weights_4_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ weights_4_1_q0 sc_in sc_lv 16 signal 19 } 
	{ weights_4_2_address0 sc_out sc_lv 11 signal 20 } 
	{ weights_4_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ weights_4_2_q0 sc_in sc_lv 16 signal 20 } 
	{ weights_4_3_address0 sc_out sc_lv 11 signal 21 } 
	{ weights_4_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ weights_4_3_q0 sc_in sc_lv 16 signal 21 } 
	{ weights_5_0_address0 sc_out sc_lv 11 signal 22 } 
	{ weights_5_0_ce0 sc_out sc_logic 1 signal 22 } 
	{ weights_5_0_q0 sc_in sc_lv 16 signal 22 } 
	{ weights_5_1_address0 sc_out sc_lv 11 signal 23 } 
	{ weights_5_1_ce0 sc_out sc_logic 1 signal 23 } 
	{ weights_5_1_q0 sc_in sc_lv 16 signal 23 } 
	{ weights_5_2_address0 sc_out sc_lv 11 signal 24 } 
	{ weights_5_2_ce0 sc_out sc_logic 1 signal 24 } 
	{ weights_5_2_q0 sc_in sc_lv 16 signal 24 } 
	{ weights_5_3_address0 sc_out sc_lv 11 signal 25 } 
	{ weights_5_3_ce0 sc_out sc_logic 1 signal 25 } 
	{ weights_5_3_q0 sc_in sc_lv 16 signal 25 } 
	{ weights_6_0_address0 sc_out sc_lv 11 signal 26 } 
	{ weights_6_0_ce0 sc_out sc_logic 1 signal 26 } 
	{ weights_6_0_q0 sc_in sc_lv 16 signal 26 } 
	{ weights_6_1_address0 sc_out sc_lv 11 signal 27 } 
	{ weights_6_1_ce0 sc_out sc_logic 1 signal 27 } 
	{ weights_6_1_q0 sc_in sc_lv 16 signal 27 } 
	{ weights_6_2_address0 sc_out sc_lv 11 signal 28 } 
	{ weights_6_2_ce0 sc_out sc_logic 1 signal 28 } 
	{ weights_6_2_q0 sc_in sc_lv 16 signal 28 } 
	{ weights_6_3_address0 sc_out sc_lv 11 signal 29 } 
	{ weights_6_3_ce0 sc_out sc_logic 1 signal 29 } 
	{ weights_6_3_q0 sc_in sc_lv 16 signal 29 } 
	{ weights_7_0_address0 sc_out sc_lv 11 signal 30 } 
	{ weights_7_0_ce0 sc_out sc_logic 1 signal 30 } 
	{ weights_7_0_q0 sc_in sc_lv 16 signal 30 } 
	{ weights_7_1_address0 sc_out sc_lv 11 signal 31 } 
	{ weights_7_1_ce0 sc_out sc_logic 1 signal 31 } 
	{ weights_7_1_q0 sc_in sc_lv 16 signal 31 } 
	{ weights_7_2_address0 sc_out sc_lv 11 signal 32 } 
	{ weights_7_2_ce0 sc_out sc_logic 1 signal 32 } 
	{ weights_7_2_q0 sc_in sc_lv 16 signal 32 } 
	{ weights_7_3_address0 sc_out sc_lv 11 signal 33 } 
	{ weights_7_3_ce0 sc_out sc_logic 1 signal 33 } 
	{ weights_7_3_q0 sc_in sc_lv 16 signal 33 } 
	{ bias_0_dout sc_in sc_lv 48 signal 34 } 
	{ bias_0_empty_n sc_in sc_logic 1 signal 34 } 
	{ bias_0_read sc_out sc_logic 1 signal 34 } 
	{ bias_1_dout sc_in sc_lv 48 signal 35 } 
	{ bias_1_empty_n sc_in sc_logic 1 signal 35 } 
	{ bias_1_read sc_out sc_logic 1 signal 35 } 
	{ bias_2_dout sc_in sc_lv 48 signal 36 } 
	{ bias_2_empty_n sc_in sc_logic 1 signal 36 } 
	{ bias_2_read sc_out sc_logic 1 signal 36 } 
	{ bias_3_dout sc_in sc_lv 48 signal 37 } 
	{ bias_3_empty_n sc_in sc_logic 1 signal 37 } 
	{ bias_3_read sc_out sc_logic 1 signal 37 } 
	{ bias_4_dout sc_in sc_lv 48 signal 38 } 
	{ bias_4_empty_n sc_in sc_logic 1 signal 38 } 
	{ bias_4_read sc_out sc_logic 1 signal 38 } 
	{ bias_5_dout sc_in sc_lv 48 signal 39 } 
	{ bias_5_empty_n sc_in sc_logic 1 signal 39 } 
	{ bias_5_read sc_out sc_logic 1 signal 39 } 
	{ bias_6_dout sc_in sc_lv 48 signal 40 } 
	{ bias_6_empty_n sc_in sc_logic 1 signal 40 } 
	{ bias_6_read sc_out sc_logic 1 signal 40 } 
	{ bias_7_dout sc_in sc_lv 48 signal 41 } 
	{ bias_7_empty_n sc_in sc_logic 1 signal 41 } 
	{ bias_7_read sc_out sc_logic 1 signal 41 } 
	{ ci_dout sc_in sc_lv 10 signal 42 } 
	{ ci_empty_n sc_in sc_logic 1 signal 42 } 
	{ ci_read sc_out sc_logic 1 signal 42 } 
	{ wi sc_in sc_lv 16 signal 43 } 
	{ k_dout sc_in sc_lv 3 signal 44 } 
	{ k_empty_n sc_in sc_logic 1 signal 44 } 
	{ k_read sc_out sc_logic 1 signal 44 } 
	{ stride sc_in sc_lv 2 signal 45 } 
	{ pad_dout sc_in sc_lv 2 signal 46 } 
	{ pad_empty_n sc_in sc_logic 1 signal 46 } 
	{ pad_read sc_out sc_logic 1 signal 46 } 
	{ oh_dout sc_in sc_lv 16 signal 47 } 
	{ oh_empty_n sc_in sc_logic 1 signal 47 } 
	{ oh_read sc_out sc_logic 1 signal 47 } 
	{ ow_dout sc_in sc_lv 16 signal 48 } 
	{ ow_empty_n sc_in sc_logic 1 signal 48 } 
	{ ow_read sc_out sc_logic 1 signal 48 } 
	{ oh_out_din sc_out sc_lv 16 signal 49 } 
	{ oh_out_full_n sc_in sc_logic 1 signal 49 } 
	{ oh_out_write sc_out sc_logic 1 signal 49 } 
	{ ow_out_din sc_out sc_lv 16 signal 50 } 
	{ ow_out_full_n sc_in sc_logic 1 signal 50 } 
	{ ow_out_write sc_out sc_logic 1 signal 50 } 
	{ p_anonymous_namespace_profile_ticks_i sc_in sc_lv 64 signal 51 } 
	{ p_anonymous_namespace_profile_ticks_o sc_out sc_lv 64 signal 51 } 
	{ p_anonymous_namespace_profile_ticks_o_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ p_anonymous_namespace_profile_mac_i sc_in sc_lv 64 signal 52 } 
	{ p_anonymous_namespace_profile_mac_o sc_out sc_lv 64 signal 52 } 
	{ p_anonymous_namespace_profile_mac_o_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ p_anonymous_namespace_profile_wait_i sc_in sc_lv 64 signal 53 } 
	{ p_anonymous_namespace_profile_wait_o sc_out sc_lv 64 signal 53 } 
	{ p_anonymous_namespace_profile_wait_o_ap_vld sc_out sc_logic 1 outvld 53 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pixels_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pixels", "role": "dout" }} , 
 	{ "name": "pixels_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels", "role": "empty_n" }} , 
 	{ "name": "pixels_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels", "role": "read" }} , 
 	{ "name": "results_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "results", "role": "din" }} , 
 	{ "name": "results_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "full_n" }} , 
 	{ "name": "results_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "write" }} , 
 	{ "name": "weights_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_0_0", "role": "address0" }} , 
 	{ "name": "weights_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0_0", "role": "ce0" }} , 
 	{ "name": "weights_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_0_0", "role": "q0" }} , 
 	{ "name": "weights_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_0_1", "role": "address0" }} , 
 	{ "name": "weights_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0_1", "role": "ce0" }} , 
 	{ "name": "weights_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_0_1", "role": "q0" }} , 
 	{ "name": "weights_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_0_2", "role": "address0" }} , 
 	{ "name": "weights_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0_2", "role": "ce0" }} , 
 	{ "name": "weights_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_0_2", "role": "q0" }} , 
 	{ "name": "weights_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_0_3", "role": "address0" }} , 
 	{ "name": "weights_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0_3", "role": "ce0" }} , 
 	{ "name": "weights_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_0_3", "role": "q0" }} , 
 	{ "name": "weights_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_1_0", "role": "address0" }} , 
 	{ "name": "weights_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1_0", "role": "ce0" }} , 
 	{ "name": "weights_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_1_0", "role": "q0" }} , 
 	{ "name": "weights_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_1_1", "role": "address0" }} , 
 	{ "name": "weights_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1_1", "role": "ce0" }} , 
 	{ "name": "weights_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_1_1", "role": "q0" }} , 
 	{ "name": "weights_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_1_2", "role": "address0" }} , 
 	{ "name": "weights_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1_2", "role": "ce0" }} , 
 	{ "name": "weights_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_1_2", "role": "q0" }} , 
 	{ "name": "weights_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_1_3", "role": "address0" }} , 
 	{ "name": "weights_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1_3", "role": "ce0" }} , 
 	{ "name": "weights_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_1_3", "role": "q0" }} , 
 	{ "name": "weights_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_2_0", "role": "address0" }} , 
 	{ "name": "weights_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2_0", "role": "ce0" }} , 
 	{ "name": "weights_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_2_0", "role": "q0" }} , 
 	{ "name": "weights_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_2_1", "role": "address0" }} , 
 	{ "name": "weights_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2_1", "role": "ce0" }} , 
 	{ "name": "weights_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_2_1", "role": "q0" }} , 
 	{ "name": "weights_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_2_2", "role": "address0" }} , 
 	{ "name": "weights_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2_2", "role": "ce0" }} , 
 	{ "name": "weights_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_2_2", "role": "q0" }} , 
 	{ "name": "weights_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_2_3", "role": "address0" }} , 
 	{ "name": "weights_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2_3", "role": "ce0" }} , 
 	{ "name": "weights_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_2_3", "role": "q0" }} , 
 	{ "name": "weights_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_3_0", "role": "address0" }} , 
 	{ "name": "weights_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3_0", "role": "ce0" }} , 
 	{ "name": "weights_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_3_0", "role": "q0" }} , 
 	{ "name": "weights_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_3_1", "role": "address0" }} , 
 	{ "name": "weights_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3_1", "role": "ce0" }} , 
 	{ "name": "weights_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_3_1", "role": "q0" }} , 
 	{ "name": "weights_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_3_2", "role": "address0" }} , 
 	{ "name": "weights_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3_2", "role": "ce0" }} , 
 	{ "name": "weights_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_3_2", "role": "q0" }} , 
 	{ "name": "weights_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_3_3", "role": "address0" }} , 
 	{ "name": "weights_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3_3", "role": "ce0" }} , 
 	{ "name": "weights_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_3_3", "role": "q0" }} , 
 	{ "name": "weights_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_4_0", "role": "address0" }} , 
 	{ "name": "weights_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4_0", "role": "ce0" }} , 
 	{ "name": "weights_4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_4_0", "role": "q0" }} , 
 	{ "name": "weights_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_4_1", "role": "address0" }} , 
 	{ "name": "weights_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4_1", "role": "ce0" }} , 
 	{ "name": "weights_4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_4_1", "role": "q0" }} , 
 	{ "name": "weights_4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_4_2", "role": "address0" }} , 
 	{ "name": "weights_4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4_2", "role": "ce0" }} , 
 	{ "name": "weights_4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_4_2", "role": "q0" }} , 
 	{ "name": "weights_4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_4_3", "role": "address0" }} , 
 	{ "name": "weights_4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4_3", "role": "ce0" }} , 
 	{ "name": "weights_4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_4_3", "role": "q0" }} , 
 	{ "name": "weights_5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_5_0", "role": "address0" }} , 
 	{ "name": "weights_5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5_0", "role": "ce0" }} , 
 	{ "name": "weights_5_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_5_0", "role": "q0" }} , 
 	{ "name": "weights_5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_5_1", "role": "address0" }} , 
 	{ "name": "weights_5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5_1", "role": "ce0" }} , 
 	{ "name": "weights_5_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_5_1", "role": "q0" }} , 
 	{ "name": "weights_5_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_5_2", "role": "address0" }} , 
 	{ "name": "weights_5_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5_2", "role": "ce0" }} , 
 	{ "name": "weights_5_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_5_2", "role": "q0" }} , 
 	{ "name": "weights_5_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_5_3", "role": "address0" }} , 
 	{ "name": "weights_5_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5_3", "role": "ce0" }} , 
 	{ "name": "weights_5_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_5_3", "role": "q0" }} , 
 	{ "name": "weights_6_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_6_0", "role": "address0" }} , 
 	{ "name": "weights_6_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6_0", "role": "ce0" }} , 
 	{ "name": "weights_6_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_6_0", "role": "q0" }} , 
 	{ "name": "weights_6_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_6_1", "role": "address0" }} , 
 	{ "name": "weights_6_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6_1", "role": "ce0" }} , 
 	{ "name": "weights_6_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_6_1", "role": "q0" }} , 
 	{ "name": "weights_6_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_6_2", "role": "address0" }} , 
 	{ "name": "weights_6_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6_2", "role": "ce0" }} , 
 	{ "name": "weights_6_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_6_2", "role": "q0" }} , 
 	{ "name": "weights_6_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_6_3", "role": "address0" }} , 
 	{ "name": "weights_6_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6_3", "role": "ce0" }} , 
 	{ "name": "weights_6_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_6_3", "role": "q0" }} , 
 	{ "name": "weights_7_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_7_0", "role": "address0" }} , 
 	{ "name": "weights_7_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7_0", "role": "ce0" }} , 
 	{ "name": "weights_7_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_7_0", "role": "q0" }} , 
 	{ "name": "weights_7_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_7_1", "role": "address0" }} , 
 	{ "name": "weights_7_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7_1", "role": "ce0" }} , 
 	{ "name": "weights_7_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_7_1", "role": "q0" }} , 
 	{ "name": "weights_7_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_7_2", "role": "address0" }} , 
 	{ "name": "weights_7_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7_2", "role": "ce0" }} , 
 	{ "name": "weights_7_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_7_2", "role": "q0" }} , 
 	{ "name": "weights_7_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights_7_3", "role": "address0" }} , 
 	{ "name": "weights_7_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7_3", "role": "ce0" }} , 
 	{ "name": "weights_7_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_7_3", "role": "q0" }} , 
 	{ "name": "bias_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_0", "role": "dout" }} , 
 	{ "name": "bias_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_0", "role": "empty_n" }} , 
 	{ "name": "bias_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_0", "role": "read" }} , 
 	{ "name": "bias_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_1", "role": "dout" }} , 
 	{ "name": "bias_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "empty_n" }} , 
 	{ "name": "bias_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "read" }} , 
 	{ "name": "bias_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_2", "role": "dout" }} , 
 	{ "name": "bias_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "empty_n" }} , 
 	{ "name": "bias_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "read" }} , 
 	{ "name": "bias_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_3", "role": "dout" }} , 
 	{ "name": "bias_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_3", "role": "empty_n" }} , 
 	{ "name": "bias_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_3", "role": "read" }} , 
 	{ "name": "bias_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_4", "role": "dout" }} , 
 	{ "name": "bias_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_4", "role": "empty_n" }} , 
 	{ "name": "bias_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_4", "role": "read" }} , 
 	{ "name": "bias_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_5", "role": "dout" }} , 
 	{ "name": "bias_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_5", "role": "empty_n" }} , 
 	{ "name": "bias_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_5", "role": "read" }} , 
 	{ "name": "bias_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_6", "role": "dout" }} , 
 	{ "name": "bias_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_6", "role": "empty_n" }} , 
 	{ "name": "bias_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_6", "role": "read" }} , 
 	{ "name": "bias_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_7", "role": "dout" }} , 
 	{ "name": "bias_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_7", "role": "empty_n" }} , 
 	{ "name": "bias_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_7", "role": "read" }} , 
 	{ "name": "ci_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "dout" }} , 
 	{ "name": "ci_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "empty_n" }} , 
 	{ "name": "ci_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "read" }} , 
 	{ "name": "wi", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi", "role": "default" }} , 
 	{ "name": "k_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "dout" }} , 
 	{ "name": "k_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "empty_n" }} , 
 	{ "name": "k_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "read" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "pad_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "dout" }} , 
 	{ "name": "pad_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "empty_n" }} , 
 	{ "name": "pad_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "read" }} , 
 	{ "name": "oh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh", "role": "dout" }} , 
 	{ "name": "oh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "empty_n" }} , 
 	{ "name": "oh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "read" }} , 
 	{ "name": "ow_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "dout" }} , 
 	{ "name": "ow_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "empty_n" }} , 
 	{ "name": "ow_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "read" }} , 
 	{ "name": "oh_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh_out", "role": "din" }} , 
 	{ "name": "oh_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh_out", "role": "full_n" }} , 
 	{ "name": "oh_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh_out", "role": "write" }} , 
 	{ "name": "ow_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow_out", "role": "din" }} , 
 	{ "name": "ow_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out", "role": "full_n" }} , 
 	{ "name": "ow_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "p_anonymous_namespace_compute_tiles",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "pixels2"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "results"}]},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights"}]},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights1"}]},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights2"}]},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights3"}]},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights14"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights15"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights16"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights17"}]},
			{"Name" : "weights_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights28"}]},
			{"Name" : "weights_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights29"}]},
			{"Name" : "weights_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights210"}]},
			{"Name" : "weights_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights211"}]},
			{"Name" : "weights_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights312"}]},
			{"Name" : "weights_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights313"}]},
			{"Name" : "weights_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights314"}]},
			{"Name" : "weights_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights315"}]},
			{"Name" : "weights_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights4"}]},
			{"Name" : "weights_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights416"}]},
			{"Name" : "weights_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights417"}]},
			{"Name" : "weights_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights418"}]},
			{"Name" : "weights_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights5"}]},
			{"Name" : "weights_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights519"}]},
			{"Name" : "weights_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights520"}]},
			{"Name" : "weights_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights521"}]},
			{"Name" : "weights_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights6"}]},
			{"Name" : "weights_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights622"}]},
			{"Name" : "weights_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights623"}]},
			{"Name" : "weights_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights624"}]},
			{"Name" : "weights_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights7"}]},
			{"Name" : "weights_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights725"}]},
			{"Name" : "weights_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights726"}]},
			{"Name" : "weights_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights727"}]},
			{"Name" : "bias_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_1_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_1_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_1_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_1_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_2_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_2_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_2_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_2_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_3_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_3_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_3_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_3_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_4_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_4_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_4_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_4_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_5_0_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_5_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_5_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_5_3_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_6_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_6_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_6_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_6_3_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_7_0_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_7_1_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_7_2_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a0_V_7_3_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_0_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_0_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_0_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_0_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_1_0_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_1_1_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_1_2_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_1_3_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_2_0_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_2_1_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_2_2_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_2_3_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_3_0_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_3_1_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_3_2_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_3_3_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_4_0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_4_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_4_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_4_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_5_0_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_5_1_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_5_2_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_5_3_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_6_0_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_6_1_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_6_2_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_6_3_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_7_0_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_7_1_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_7_2_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a1_V_7_3_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591", "Parent" : "0", "Child" : ["66", "67", "223", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250"],
		"CDFG" : "p_anonymous_namespace_row_pair",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "66", "Name" : "p_anonymous_namespace_row_pair_entry58_U0"},
			{"ID" : "67", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "223", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"OutputProcess" : [
			{"ID" : "67", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "223", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"Port" : [
			{"Name" : "pixels2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "pixels2"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "results"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights"}]},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights1"}]},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights2"}]},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights3"}]},
			{"Name" : "weights14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights14"}]},
			{"Name" : "weights15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights15"}]},
			{"Name" : "weights16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights16"}]},
			{"Name" : "weights17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights17"}]},
			{"Name" : "weights28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights28"}]},
			{"Name" : "weights29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights29"}]},
			{"Name" : "weights210", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights210"}]},
			{"Name" : "weights211", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights211"}]},
			{"Name" : "weights312", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights312"}]},
			{"Name" : "weights313", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights313"}]},
			{"Name" : "weights314", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights314"}]},
			{"Name" : "weights315", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights315"}]},
			{"Name" : "weights4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights4"}]},
			{"Name" : "weights416", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights416"}]},
			{"Name" : "weights417", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights417"}]},
			{"Name" : "weights418", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights418"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights5"}]},
			{"Name" : "weights519", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights519"}]},
			{"Name" : "weights520", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights520"}]},
			{"Name" : "weights521", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights521"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights6"}]},
			{"Name" : "weights622", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights622"}]},
			{"Name" : "weights623", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights623"}]},
			{"Name" : "weights624", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights624"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights7"}]},
			{"Name" : "weights725", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights725"}]},
			{"Name" : "weights726", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights726"}]},
			{"Name" : "weights727", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights727"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "ow", "Type" : "None", "Direction" : "I"},
			{"Name" : "computing", "Type" : "None", "Direction" : "I"},
			{"Name" : "emitting_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "previous_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "current", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc"}]},
			{"Name" : "current28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc28"}]},
			{"Name" : "current29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc29"}]},
			{"Name" : "current30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc30"}]},
			{"Name" : "current15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc15"}]},
			{"Name" : "current1531", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1531"}]},
			{"Name" : "current1532", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1532"}]},
			{"Name" : "current1533", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1533"}]},
			{"Name" : "current16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc16"}]},
			{"Name" : "current1634", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1634"}]},
			{"Name" : "current1635", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1635"}]},
			{"Name" : "current1636", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1636"}]},
			{"Name" : "current17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc17"}]},
			{"Name" : "current1737", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1737"}]},
			{"Name" : "current1738", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1738"}]},
			{"Name" : "current1739", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1739"}]},
			{"Name" : "current18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc18"}]},
			{"Name" : "current1840", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1840"}]},
			{"Name" : "current1841", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1841"}]},
			{"Name" : "current1842", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1842"}]},
			{"Name" : "current19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc19"}]},
			{"Name" : "current1943", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1943"}]},
			{"Name" : "current1944", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1944"}]},
			{"Name" : "current1945", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1945"}]},
			{"Name" : "current20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc20"}]},
			{"Name" : "current2046", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2046"}]},
			{"Name" : "current2047", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2047"}]},
			{"Name" : "current2048", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2048"}]},
			{"Name" : "current21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc21"}]},
			{"Name" : "current2149", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2149"}]},
			{"Name" : "current2150", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2150"}]},
			{"Name" : "current2151", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2151"}]},
			{"Name" : "previous", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc"}]},
			{"Name" : "previous52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc1"}]},
			{"Name" : "previous53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc2"}]},
			{"Name" : "previous54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc3"}]},
			{"Name" : "previous22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc14"}]},
			{"Name" : "previous2255", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc15"}]},
			{"Name" : "previous2256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc16"}]},
			{"Name" : "previous2257", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc17"}]},
			{"Name" : "previous23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc28"}]},
			{"Name" : "previous2358", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc29"}]},
			{"Name" : "previous2359", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc210"}]},
			{"Name" : "previous2360", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc211"}]},
			{"Name" : "previous24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc312"}]},
			{"Name" : "previous2461", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc313"}]},
			{"Name" : "previous2462", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc314"}]},
			{"Name" : "previous2463", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc315"}]},
			{"Name" : "previous25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc4"}]},
			{"Name" : "previous2564", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc416"}]},
			{"Name" : "previous2565", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc417"}]},
			{"Name" : "previous2566", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc418"}]},
			{"Name" : "previous26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc5"}]},
			{"Name" : "previous2667", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc519"}]},
			{"Name" : "previous2668", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc520"}]},
			{"Name" : "previous2669", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc521"}]},
			{"Name" : "previous27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc6"}]},
			{"Name" : "previous2770", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc622"}]},
			{"Name" : "previous2771", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc623"}]},
			{"Name" : "previous2772", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc624"}]},
			{"Name" : "previous28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc7"}]},
			{"Name" : "previous2873", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc725"}]},
			{"Name" : "previous2874", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc726"}]},
			{"Name" : "previous2875", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc727"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0", "Parent" : "65",
		"CDFG" : "p_anonymous_namespace_row_pair_entry58",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "ow", "Type" : "None", "Direction" : "I"},
			{"Name" : "computing", "Type" : "None", "Direction" : "I"},
			{"Name" : "emitting_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "previous_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "243", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "246", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "computing_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "248", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "computing_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "emitting_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "249", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "emitting_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "previous_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "223", "DependentChan" : "250", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "previous_rows_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0", "Parent" : "65", "Child" : ["68", "77", "86", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222"],
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
			{"Name" : "bias", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "243", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "246", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "248", "DependentChanDepth" : "2", "DependentChanType" : "2",
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
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Parent" : "67", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76"],
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_0_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_1_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_2_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_3_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_0_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_1_U", "Parent" : "68"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_2_U", "Parent" : "68"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_3_U", "Parent" : "68"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Parent" : "67", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85"],
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_0_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_1_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_2_U", "Parent" : "77"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_3_U", "Parent" : "77"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_0_U", "Parent" : "77"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_1_U", "Parent" : "77"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_2_U", "Parent" : "77"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_3_U", "Parent" : "77"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685", "Parent" : "67", "Child" : ["87", "88", "89", "90", "91"],
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
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_11s_11ns_11_3_1_U402", "Parent" : "86"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_16s_16ns_16_3_1_U403", "Parent" : "86"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_1ns_2ns_16ns_16_3_1_U404", "Parent" : "86"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U405", "Parent" : "86"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U406", "Parent" : "86"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_4ns_16ns_20_1_1_U426", "Parent" : "67"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_3ns_3ns_6_1_1_U427", "Parent" : "67"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_15ns_6ns_20_4_1_U428", "Parent" : "67"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U429", "Parent" : "67"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U430", "Parent" : "67"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U431", "Parent" : "67"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U432", "Parent" : "67"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U433", "Parent" : "67"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U434", "Parent" : "67"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U435", "Parent" : "67"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U436", "Parent" : "67"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U437", "Parent" : "67"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U438", "Parent" : "67"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U439", "Parent" : "67"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U440", "Parent" : "67"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U441", "Parent" : "67"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U442", "Parent" : "67"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U443", "Parent" : "67"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U444", "Parent" : "67"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U445", "Parent" : "67"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U446", "Parent" : "67"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U447", "Parent" : "67"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U448", "Parent" : "67"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U449", "Parent" : "67"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U450", "Parent" : "67"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U451", "Parent" : "67"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U452", "Parent" : "67"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U453", "Parent" : "67"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U454", "Parent" : "67"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U455", "Parent" : "67"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U456", "Parent" : "67"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U457", "Parent" : "67"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U458", "Parent" : "67"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U459", "Parent" : "67"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U460", "Parent" : "67"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U461", "Parent" : "67"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U462", "Parent" : "67"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U463", "Parent" : "67"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U464", "Parent" : "67"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U465", "Parent" : "67"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U466", "Parent" : "67"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U467", "Parent" : "67"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U468", "Parent" : "67"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U469", "Parent" : "67"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U470", "Parent" : "67"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U471", "Parent" : "67"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U472", "Parent" : "67"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U473", "Parent" : "67"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U474", "Parent" : "67"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U475", "Parent" : "67"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U476", "Parent" : "67"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U477", "Parent" : "67"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U478", "Parent" : "67"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U479", "Parent" : "67"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U480", "Parent" : "67"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U481", "Parent" : "67"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U482", "Parent" : "67"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U483", "Parent" : "67"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U484", "Parent" : "67"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U485", "Parent" : "67"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U486", "Parent" : "67"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U487", "Parent" : "67"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U488", "Parent" : "67"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U489", "Parent" : "67"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U490", "Parent" : "67"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U491", "Parent" : "67"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U492", "Parent" : "67"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U493", "Parent" : "67"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U494", "Parent" : "67"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U495", "Parent" : "67"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U496", "Parent" : "67"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U497", "Parent" : "67"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U498", "Parent" : "67"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U499", "Parent" : "67"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U500", "Parent" : "67"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U501", "Parent" : "67"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U502", "Parent" : "67"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U503", "Parent" : "67"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U504", "Parent" : "67"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U505", "Parent" : "67"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U506", "Parent" : "67"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U507", "Parent" : "67"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U508", "Parent" : "67"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U509", "Parent" : "67"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U510", "Parent" : "67"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U511", "Parent" : "67"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U512", "Parent" : "67"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U513", "Parent" : "67"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U514", "Parent" : "67"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U515", "Parent" : "67"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U516", "Parent" : "67"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U517", "Parent" : "67"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U518", "Parent" : "67"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U519", "Parent" : "67"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U520", "Parent" : "67"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U521", "Parent" : "67"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U522", "Parent" : "67"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U523", "Parent" : "67"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U524", "Parent" : "67"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U525", "Parent" : "67"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U526", "Parent" : "67"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U527", "Parent" : "67"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U528", "Parent" : "67"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U529", "Parent" : "67"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U530", "Parent" : "67"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U531", "Parent" : "67"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U532", "Parent" : "67"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U533", "Parent" : "67"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U534", "Parent" : "67"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U535", "Parent" : "67"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U536", "Parent" : "67"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U537", "Parent" : "67"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U538", "Parent" : "67"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U539", "Parent" : "67"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U540", "Parent" : "67"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U541", "Parent" : "67"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U542", "Parent" : "67"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U543", "Parent" : "67"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U544", "Parent" : "67"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U545", "Parent" : "67"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U546", "Parent" : "67"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U547", "Parent" : "67"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U548", "Parent" : "67"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U549", "Parent" : "67"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U550", "Parent" : "67"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U551", "Parent" : "67"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U552", "Parent" : "67"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U553", "Parent" : "67"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U554", "Parent" : "67"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U555", "Parent" : "67"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U556", "Parent" : "67"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0", "Parent" : "65", "Child" : ["224", "225", "226", "227", "228", "229", "230", "231", "232"],
		"CDFG" : "p_anonymous_namespace_emit_row",
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
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "results_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc210", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc211", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc312", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc313", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc314", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc315", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc416", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc417", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc418", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc519", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc520", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc521", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc622", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc623", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc624", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc725", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc726", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc727", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "250", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "249", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "enabled_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U645", "Parent" : "223"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U646", "Parent" : "223"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U647", "Parent" : "223"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U648", "Parent" : "223"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U649", "Parent" : "223"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U650", "Parent" : "223"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U651", "Parent" : "223"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U652", "Parent" : "223"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mul_mul_16ns_16ns_32_4_1_U653", "Parent" : "223"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias_c_U", "Parent" : "65"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias8_c_U", "Parent" : "65"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias9_c_U", "Parent" : "65"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias10_c_U", "Parent" : "65"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias11_c_U", "Parent" : "65"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias12_c_U", "Parent" : "65"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias13_c_U", "Parent" : "65"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.bias14_c_U", "Parent" : "65"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.ci_c_U", "Parent" : "65"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.wi_c_U", "Parent" : "65"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.k_c_U", "Parent" : "65"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.stride_c_U", "Parent" : "65"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.pad_c_U", "Parent" : "65"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.ow_c_U", "Parent" : "65"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.ow_c1_U", "Parent" : "65"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.computing_c_U", "Parent" : "65"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.emitting_offset_c_U", "Parent" : "65"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_row_pair_fu_591.previous_rows_c_U", "Parent" : "65"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_compute_tiles {
		pixels {Type I LastRead 7 FirstWrite -1}
		results {Type O LastRead -1 FirstWrite 7}
		weights_0_0 {Type I LastRead 12 FirstWrite -1}
		weights_0_1 {Type I LastRead 14 FirstWrite -1}
		weights_0_2 {Type I LastRead 13 FirstWrite -1}
		weights_0_3 {Type I LastRead 15 FirstWrite -1}
		weights_1_0 {Type I LastRead 12 FirstWrite -1}
		weights_1_1 {Type I LastRead 14 FirstWrite -1}
		weights_1_2 {Type I LastRead 13 FirstWrite -1}
		weights_1_3 {Type I LastRead 15 FirstWrite -1}
		weights_2_0 {Type I LastRead 12 FirstWrite -1}
		weights_2_1 {Type I LastRead 14 FirstWrite -1}
		weights_2_2 {Type I LastRead 13 FirstWrite -1}
		weights_2_3 {Type I LastRead 15 FirstWrite -1}
		weights_3_0 {Type I LastRead 12 FirstWrite -1}
		weights_3_1 {Type I LastRead 14 FirstWrite -1}
		weights_3_2 {Type I LastRead 13 FirstWrite -1}
		weights_3_3 {Type I LastRead 15 FirstWrite -1}
		weights_4_0 {Type I LastRead 12 FirstWrite -1}
		weights_4_1 {Type I LastRead 14 FirstWrite -1}
		weights_4_2 {Type I LastRead 13 FirstWrite -1}
		weights_4_3 {Type I LastRead 15 FirstWrite -1}
		weights_5_0 {Type I LastRead 12 FirstWrite -1}
		weights_5_1 {Type I LastRead 14 FirstWrite -1}
		weights_5_2 {Type I LastRead 13 FirstWrite -1}
		weights_5_3 {Type I LastRead 15 FirstWrite -1}
		weights_6_0 {Type I LastRead 12 FirstWrite -1}
		weights_6_1 {Type I LastRead 14 FirstWrite -1}
		weights_6_2 {Type I LastRead 13 FirstWrite -1}
		weights_6_3 {Type I LastRead 15 FirstWrite -1}
		weights_7_0 {Type I LastRead 12 FirstWrite -1}
		weights_7_1 {Type I LastRead 14 FirstWrite -1}
		weights_7_2 {Type I LastRead 13 FirstWrite -1}
		weights_7_3 {Type I LastRead 15 FirstWrite -1}
		bias_0 {Type I LastRead 0 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		bias_2 {Type I LastRead 0 FirstWrite -1}
		bias_3 {Type I LastRead 0 FirstWrite -1}
		bias_4 {Type I LastRead 0 FirstWrite -1}
		bias_5 {Type I LastRead 0 FirstWrite -1}
		bias_6 {Type I LastRead 0 FirstWrite -1}
		bias_7 {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 1 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 1 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		oh_out {Type O LastRead -1 FirstWrite 0}
		ow_out {Type O LastRead -1 FirstWrite 0}
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
	p_anonymous_namespace_row_pair {
		pixels2 {Type I LastRead 7 FirstWrite -1}
		results {Type O LastRead -1 FirstWrite 7}
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
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		computing {Type I LastRead 0 FirstWrite -1}
		emitting_offset {Type I LastRead 0 FirstWrite -1}
		previous_rows {Type I LastRead 0 FirstWrite -1}
		current {Type IO LastRead 18 FirstWrite 19}
		current28 {Type IO LastRead 18 FirstWrite 19}
		current29 {Type IO LastRead 18 FirstWrite 19}
		current30 {Type IO LastRead 18 FirstWrite 19}
		current15 {Type IO LastRead 18 FirstWrite 19}
		current1531 {Type IO LastRead 18 FirstWrite 19}
		current1532 {Type IO LastRead 18 FirstWrite 19}
		current1533 {Type IO LastRead 18 FirstWrite 19}
		current16 {Type IO LastRead 18 FirstWrite 19}
		current1634 {Type IO LastRead 18 FirstWrite 19}
		current1635 {Type IO LastRead 18 FirstWrite 19}
		current1636 {Type IO LastRead 18 FirstWrite 19}
		current17 {Type IO LastRead 18 FirstWrite 19}
		current1737 {Type IO LastRead 18 FirstWrite 19}
		current1738 {Type IO LastRead 18 FirstWrite 19}
		current1739 {Type IO LastRead 18 FirstWrite 19}
		current18 {Type IO LastRead 18 FirstWrite 19}
		current1840 {Type IO LastRead 18 FirstWrite 19}
		current1841 {Type IO LastRead 18 FirstWrite 19}
		current1842 {Type IO LastRead 18 FirstWrite 19}
		current19 {Type IO LastRead 18 FirstWrite 19}
		current1943 {Type IO LastRead 18 FirstWrite 19}
		current1944 {Type IO LastRead 18 FirstWrite 19}
		current1945 {Type IO LastRead 18 FirstWrite 19}
		current20 {Type IO LastRead 18 FirstWrite 19}
		current2046 {Type IO LastRead 18 FirstWrite 19}
		current2047 {Type IO LastRead 18 FirstWrite 19}
		current2048 {Type IO LastRead 18 FirstWrite 19}
		current21 {Type IO LastRead 18 FirstWrite 19}
		current2149 {Type IO LastRead 18 FirstWrite 19}
		current2150 {Type IO LastRead 18 FirstWrite 19}
		current2151 {Type IO LastRead 18 FirstWrite 19}
		previous {Type I LastRead 5 FirstWrite -1}
		previous52 {Type I LastRead 5 FirstWrite -1}
		previous53 {Type I LastRead 5 FirstWrite -1}
		previous54 {Type I LastRead 5 FirstWrite -1}
		previous22 {Type I LastRead 5 FirstWrite -1}
		previous2255 {Type I LastRead 5 FirstWrite -1}
		previous2256 {Type I LastRead 5 FirstWrite -1}
		previous2257 {Type I LastRead 5 FirstWrite -1}
		previous23 {Type I LastRead 5 FirstWrite -1}
		previous2358 {Type I LastRead 5 FirstWrite -1}
		previous2359 {Type I LastRead 5 FirstWrite -1}
		previous2360 {Type I LastRead 5 FirstWrite -1}
		previous24 {Type I LastRead 5 FirstWrite -1}
		previous2461 {Type I LastRead 5 FirstWrite -1}
		previous2462 {Type I LastRead 5 FirstWrite -1}
		previous2463 {Type I LastRead 5 FirstWrite -1}
		previous25 {Type I LastRead 5 FirstWrite -1}
		previous2564 {Type I LastRead 5 FirstWrite -1}
		previous2565 {Type I LastRead 5 FirstWrite -1}
		previous2566 {Type I LastRead 5 FirstWrite -1}
		previous26 {Type I LastRead 5 FirstWrite -1}
		previous2667 {Type I LastRead 5 FirstWrite -1}
		previous2668 {Type I LastRead 5 FirstWrite -1}
		previous2669 {Type I LastRead 5 FirstWrite -1}
		previous27 {Type I LastRead 5 FirstWrite -1}
		previous2770 {Type I LastRead 5 FirstWrite -1}
		previous2771 {Type I LastRead 5 FirstWrite -1}
		previous2772 {Type I LastRead 5 FirstWrite -1}
		previous28 {Type I LastRead 5 FirstWrite -1}
		previous2873 {Type I LastRead 5 FirstWrite -1}
		previous2874 {Type I LastRead 5 FirstWrite -1}
		previous2875 {Type I LastRead 5 FirstWrite -1}
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
	p_anonymous_namespace_row_pair_entry58 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		computing {Type I LastRead 0 FirstWrite -1}
		emitting_offset {Type I LastRead 0 FirstWrite -1}
		previous_rows {Type I LastRead 0 FirstWrite -1}
		bias_out {Type O LastRead -1 FirstWrite 0}
		bias8_out {Type O LastRead -1 FirstWrite 0}
		bias9_out {Type O LastRead -1 FirstWrite 0}
		bias10_out {Type O LastRead -1 FirstWrite 0}
		bias11_out {Type O LastRead -1 FirstWrite 0}
		bias12_out {Type O LastRead -1 FirstWrite 0}
		bias13_out {Type O LastRead -1 FirstWrite 0}
		bias14_out {Type O LastRead -1 FirstWrite 0}
		ci_out {Type O LastRead -1 FirstWrite 0}
		wi_out {Type O LastRead -1 FirstWrite 0}
		k_out {Type O LastRead -1 FirstWrite 0}
		stride_out {Type O LastRead -1 FirstWrite 0}
		pad_out {Type O LastRead -1 FirstWrite 0}
		ow_out {Type O LastRead -1 FirstWrite 0}
		ow_out1 {Type O LastRead -1 FirstWrite 0}
		computing_out {Type O LastRead -1 FirstWrite 0}
		emitting_offset_out {Type O LastRead -1 FirstWrite 0}
		previous_rows_out {Type O LastRead -1 FirstWrite 0}}
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
		wi {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_emit_row {
		results {Type O LastRead -1 FirstWrite 7}
		acc {Type I LastRead 5 FirstWrite -1}
		acc1 {Type I LastRead 5 FirstWrite -1}
		acc2 {Type I LastRead 5 FirstWrite -1}
		acc3 {Type I LastRead 5 FirstWrite -1}
		acc14 {Type I LastRead 5 FirstWrite -1}
		acc15 {Type I LastRead 5 FirstWrite -1}
		acc16 {Type I LastRead 5 FirstWrite -1}
		acc17 {Type I LastRead 5 FirstWrite -1}
		acc28 {Type I LastRead 5 FirstWrite -1}
		acc29 {Type I LastRead 5 FirstWrite -1}
		acc210 {Type I LastRead 5 FirstWrite -1}
		acc211 {Type I LastRead 5 FirstWrite -1}
		acc312 {Type I LastRead 5 FirstWrite -1}
		acc313 {Type I LastRead 5 FirstWrite -1}
		acc314 {Type I LastRead 5 FirstWrite -1}
		acc315 {Type I LastRead 5 FirstWrite -1}
		acc4 {Type I LastRead 5 FirstWrite -1}
		acc416 {Type I LastRead 5 FirstWrite -1}
		acc417 {Type I LastRead 5 FirstWrite -1}
		acc418 {Type I LastRead 5 FirstWrite -1}
		acc5 {Type I LastRead 5 FirstWrite -1}
		acc519 {Type I LastRead 5 FirstWrite -1}
		acc520 {Type I LastRead 5 FirstWrite -1}
		acc521 {Type I LastRead 5 FirstWrite -1}
		acc6 {Type I LastRead 5 FirstWrite -1}
		acc622 {Type I LastRead 5 FirstWrite -1}
		acc623 {Type I LastRead 5 FirstWrite -1}
		acc624 {Type I LastRead 5 FirstWrite -1}
		acc7 {Type I LastRead 5 FirstWrite -1}
		acc725 {Type I LastRead 5 FirstWrite -1}
		acc726 {Type I LastRead 5 FirstWrite -1}
		acc727 {Type I LastRead 5 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		enabled {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pixels { ap_fifo {  { pixels_dout fifo_data 0 64 }  { pixels_empty_n fifo_status 0 1 }  { pixels_read fifo_update 1 1 } } }
	results { ap_fifo {  { results_din fifo_data 1 256 }  { results_full_n fifo_status 0 1 }  { results_write fifo_update 1 1 } } }
	weights_0_0 { ap_memory {  { weights_0_0_address0 mem_address 1 11 }  { weights_0_0_ce0 mem_ce 1 1 }  { weights_0_0_q0 mem_dout 0 16 } } }
	weights_0_1 { ap_memory {  { weights_0_1_address0 mem_address 1 11 }  { weights_0_1_ce0 mem_ce 1 1 }  { weights_0_1_q0 mem_dout 0 16 } } }
	weights_0_2 { ap_memory {  { weights_0_2_address0 mem_address 1 11 }  { weights_0_2_ce0 mem_ce 1 1 }  { weights_0_2_q0 mem_dout 0 16 } } }
	weights_0_3 { ap_memory {  { weights_0_3_address0 mem_address 1 11 }  { weights_0_3_ce0 mem_ce 1 1 }  { weights_0_3_q0 mem_dout 0 16 } } }
	weights_1_0 { ap_memory {  { weights_1_0_address0 mem_address 1 11 }  { weights_1_0_ce0 mem_ce 1 1 }  { weights_1_0_q0 mem_dout 0 16 } } }
	weights_1_1 { ap_memory {  { weights_1_1_address0 mem_address 1 11 }  { weights_1_1_ce0 mem_ce 1 1 }  { weights_1_1_q0 mem_dout 0 16 } } }
	weights_1_2 { ap_memory {  { weights_1_2_address0 mem_address 1 11 }  { weights_1_2_ce0 mem_ce 1 1 }  { weights_1_2_q0 mem_dout 0 16 } } }
	weights_1_3 { ap_memory {  { weights_1_3_address0 mem_address 1 11 }  { weights_1_3_ce0 mem_ce 1 1 }  { weights_1_3_q0 mem_dout 0 16 } } }
	weights_2_0 { ap_memory {  { weights_2_0_address0 mem_address 1 11 }  { weights_2_0_ce0 mem_ce 1 1 }  { weights_2_0_q0 mem_dout 0 16 } } }
	weights_2_1 { ap_memory {  { weights_2_1_address0 mem_address 1 11 }  { weights_2_1_ce0 mem_ce 1 1 }  { weights_2_1_q0 mem_dout 0 16 } } }
	weights_2_2 { ap_memory {  { weights_2_2_address0 mem_address 1 11 }  { weights_2_2_ce0 mem_ce 1 1 }  { weights_2_2_q0 mem_dout 0 16 } } }
	weights_2_3 { ap_memory {  { weights_2_3_address0 mem_address 1 11 }  { weights_2_3_ce0 mem_ce 1 1 }  { weights_2_3_q0 mem_dout 0 16 } } }
	weights_3_0 { ap_memory {  { weights_3_0_address0 mem_address 1 11 }  { weights_3_0_ce0 mem_ce 1 1 }  { weights_3_0_q0 mem_dout 0 16 } } }
	weights_3_1 { ap_memory {  { weights_3_1_address0 mem_address 1 11 }  { weights_3_1_ce0 mem_ce 1 1 }  { weights_3_1_q0 mem_dout 0 16 } } }
	weights_3_2 { ap_memory {  { weights_3_2_address0 mem_address 1 11 }  { weights_3_2_ce0 mem_ce 1 1 }  { weights_3_2_q0 mem_dout 0 16 } } }
	weights_3_3 { ap_memory {  { weights_3_3_address0 mem_address 1 11 }  { weights_3_3_ce0 mem_ce 1 1 }  { weights_3_3_q0 mem_dout 0 16 } } }
	weights_4_0 { ap_memory {  { weights_4_0_address0 mem_address 1 11 }  { weights_4_0_ce0 mem_ce 1 1 }  { weights_4_0_q0 mem_dout 0 16 } } }
	weights_4_1 { ap_memory {  { weights_4_1_address0 mem_address 1 11 }  { weights_4_1_ce0 mem_ce 1 1 }  { weights_4_1_q0 mem_dout 0 16 } } }
	weights_4_2 { ap_memory {  { weights_4_2_address0 mem_address 1 11 }  { weights_4_2_ce0 mem_ce 1 1 }  { weights_4_2_q0 mem_dout 0 16 } } }
	weights_4_3 { ap_memory {  { weights_4_3_address0 mem_address 1 11 }  { weights_4_3_ce0 mem_ce 1 1 }  { weights_4_3_q0 mem_dout 0 16 } } }
	weights_5_0 { ap_memory {  { weights_5_0_address0 mem_address 1 11 }  { weights_5_0_ce0 mem_ce 1 1 }  { weights_5_0_q0 mem_dout 0 16 } } }
	weights_5_1 { ap_memory {  { weights_5_1_address0 mem_address 1 11 }  { weights_5_1_ce0 mem_ce 1 1 }  { weights_5_1_q0 mem_dout 0 16 } } }
	weights_5_2 { ap_memory {  { weights_5_2_address0 mem_address 1 11 }  { weights_5_2_ce0 mem_ce 1 1 }  { weights_5_2_q0 mem_dout 0 16 } } }
	weights_5_3 { ap_memory {  { weights_5_3_address0 mem_address 1 11 }  { weights_5_3_ce0 mem_ce 1 1 }  { weights_5_3_q0 mem_dout 0 16 } } }
	weights_6_0 { ap_memory {  { weights_6_0_address0 mem_address 1 11 }  { weights_6_0_ce0 mem_ce 1 1 }  { weights_6_0_q0 mem_dout 0 16 } } }
	weights_6_1 { ap_memory {  { weights_6_1_address0 mem_address 1 11 }  { weights_6_1_ce0 mem_ce 1 1 }  { weights_6_1_q0 mem_dout 0 16 } } }
	weights_6_2 { ap_memory {  { weights_6_2_address0 mem_address 1 11 }  { weights_6_2_ce0 mem_ce 1 1 }  { weights_6_2_q0 mem_dout 0 16 } } }
	weights_6_3 { ap_memory {  { weights_6_3_address0 mem_address 1 11 }  { weights_6_3_ce0 mem_ce 1 1 }  { weights_6_3_q0 mem_dout 0 16 } } }
	weights_7_0 { ap_memory {  { weights_7_0_address0 mem_address 1 11 }  { weights_7_0_ce0 mem_ce 1 1 }  { weights_7_0_q0 mem_dout 0 16 } } }
	weights_7_1 { ap_memory {  { weights_7_1_address0 mem_address 1 11 }  { weights_7_1_ce0 mem_ce 1 1 }  { weights_7_1_q0 mem_dout 0 16 } } }
	weights_7_2 { ap_memory {  { weights_7_2_address0 mem_address 1 11 }  { weights_7_2_ce0 mem_ce 1 1 }  { weights_7_2_q0 mem_dout 0 16 } } }
	weights_7_3 { ap_memory {  { weights_7_3_address0 mem_address 1 11 }  { weights_7_3_ce0 mem_ce 1 1 }  { weights_7_3_q0 mem_dout 0 16 } } }
	bias_0 { ap_fifo {  { bias_0_dout fifo_data 0 48 }  { bias_0_empty_n fifo_status 0 1 }  { bias_0_read fifo_update 1 1 } } }
	bias_1 { ap_fifo {  { bias_1_dout fifo_data 0 48 }  { bias_1_empty_n fifo_status 0 1 }  { bias_1_read fifo_update 1 1 } } }
	bias_2 { ap_fifo {  { bias_2_dout fifo_data 0 48 }  { bias_2_empty_n fifo_status 0 1 }  { bias_2_read fifo_update 1 1 } } }
	bias_3 { ap_fifo {  { bias_3_dout fifo_data 0 48 }  { bias_3_empty_n fifo_status 0 1 }  { bias_3_read fifo_update 1 1 } } }
	bias_4 { ap_fifo {  { bias_4_dout fifo_data 0 48 }  { bias_4_empty_n fifo_status 0 1 }  { bias_4_read fifo_update 1 1 } } }
	bias_5 { ap_fifo {  { bias_5_dout fifo_data 0 48 }  { bias_5_empty_n fifo_status 0 1 }  { bias_5_read fifo_update 1 1 } } }
	bias_6 { ap_fifo {  { bias_6_dout fifo_data 0 48 }  { bias_6_empty_n fifo_status 0 1 }  { bias_6_read fifo_update 1 1 } } }
	bias_7 { ap_fifo {  { bias_7_dout fifo_data 0 48 }  { bias_7_empty_n fifo_status 0 1 }  { bias_7_read fifo_update 1 1 } } }
	ci { ap_fifo {  { ci_dout fifo_data 0 10 }  { ci_empty_n fifo_status 0 1 }  { ci_read fifo_update 1 1 } } }
	wi { ap_none {  { wi in_data 0 16 } } }
	k { ap_fifo {  { k_dout fifo_data 0 3 }  { k_empty_n fifo_status 0 1 }  { k_read fifo_update 1 1 } } }
	stride { ap_none {  { stride in_data 0 2 } } }
	pad { ap_fifo {  { pad_dout fifo_data 0 2 }  { pad_empty_n fifo_status 0 1 }  { pad_read fifo_update 1 1 } } }
	oh { ap_fifo {  { oh_dout fifo_data 0 16 }  { oh_empty_n fifo_status 0 1 }  { oh_read fifo_update 1 1 } } }
	ow { ap_fifo {  { ow_dout fifo_data 0 16 }  { ow_empty_n fifo_status 0 1 }  { ow_read fifo_update 1 1 } } }
	oh_out { ap_fifo {  { oh_out_din fifo_data 1 16 }  { oh_out_full_n fifo_status 0 1 }  { oh_out_write fifo_update 1 1 } } }
	ow_out { ap_fifo {  { ow_out_din fifo_data 1 16 }  { ow_out_full_n fifo_status 0 1 }  { ow_out_write fifo_update 1 1 } } }
	p_anonymous_namespace_profile_ticks { ap_ovld {  { p_anonymous_namespace_profile_ticks_i in_data 0 64 }  { p_anonymous_namespace_profile_ticks_o out_data 1 64 }  { p_anonymous_namespace_profile_ticks_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_mac { ap_ovld {  { p_anonymous_namespace_profile_mac_i in_data 0 64 }  { p_anonymous_namespace_profile_mac_o out_data 1 64 }  { p_anonymous_namespace_profile_mac_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_wait { ap_ovld {  { p_anonymous_namespace_profile_wait_i in_data 0 64 }  { p_anonymous_namespace_profile_wait_o out_data 1 64 }  { p_anonymous_namespace_profile_wait_o_ap_vld out_vld 1 1 } } }
}
