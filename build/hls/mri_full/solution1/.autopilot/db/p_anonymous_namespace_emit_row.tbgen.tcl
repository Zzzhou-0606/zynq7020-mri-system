set moduleName p_anonymous_namespace_emit_row
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
set C_modelName {(anonymous namespace)emit_row}
set C_modelType { void 0 }
set C_modelArgList {
	{ results int 256 regular {fifo 1 volatile }  }
	{ acc int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc1 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc2 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc3 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc14 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc15 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc16 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc17 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc28 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc29 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc210 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc211 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc312 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc313 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc314 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc315 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc4 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc416 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc417 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc418 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc5 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc519 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc520 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc521 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc6 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc622 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc623 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc624 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc7 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc725 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc726 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ acc727 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ rows int 16 regular {fifo 0}  }
	{ ow int 16 regular {fifo 0}  }
	{ enabled int 1 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "results", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "acc", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc1", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc2", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc3", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc14", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc15", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc16", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc17", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc28", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc29", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc210", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc211", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc312", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc313", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc314", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc315", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc4", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc416", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc417", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc418", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc5", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc519", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc520", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc521", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc6", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc622", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc623", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc624", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc7", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc725", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc726", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "acc727", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "enabled", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 115
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ results_din sc_out sc_lv 256 signal 0 } 
	{ results_full_n sc_in sc_logic 1 signal 0 } 
	{ results_write sc_out sc_logic 1 signal 0 } 
	{ acc_address0 sc_out sc_lv 6 signal 1 } 
	{ acc_ce0 sc_out sc_logic 1 signal 1 } 
	{ acc_q0 sc_in sc_lv 48 signal 1 } 
	{ acc1_address0 sc_out sc_lv 6 signal 2 } 
	{ acc1_ce0 sc_out sc_logic 1 signal 2 } 
	{ acc1_q0 sc_in sc_lv 48 signal 2 } 
	{ acc2_address0 sc_out sc_lv 6 signal 3 } 
	{ acc2_ce0 sc_out sc_logic 1 signal 3 } 
	{ acc2_q0 sc_in sc_lv 48 signal 3 } 
	{ acc3_address0 sc_out sc_lv 6 signal 4 } 
	{ acc3_ce0 sc_out sc_logic 1 signal 4 } 
	{ acc3_q0 sc_in sc_lv 48 signal 4 } 
	{ acc14_address0 sc_out sc_lv 6 signal 5 } 
	{ acc14_ce0 sc_out sc_logic 1 signal 5 } 
	{ acc14_q0 sc_in sc_lv 48 signal 5 } 
	{ acc15_address0 sc_out sc_lv 6 signal 6 } 
	{ acc15_ce0 sc_out sc_logic 1 signal 6 } 
	{ acc15_q0 sc_in sc_lv 48 signal 6 } 
	{ acc16_address0 sc_out sc_lv 6 signal 7 } 
	{ acc16_ce0 sc_out sc_logic 1 signal 7 } 
	{ acc16_q0 sc_in sc_lv 48 signal 7 } 
	{ acc17_address0 sc_out sc_lv 6 signal 8 } 
	{ acc17_ce0 sc_out sc_logic 1 signal 8 } 
	{ acc17_q0 sc_in sc_lv 48 signal 8 } 
	{ acc28_address0 sc_out sc_lv 6 signal 9 } 
	{ acc28_ce0 sc_out sc_logic 1 signal 9 } 
	{ acc28_q0 sc_in sc_lv 48 signal 9 } 
	{ acc29_address0 sc_out sc_lv 6 signal 10 } 
	{ acc29_ce0 sc_out sc_logic 1 signal 10 } 
	{ acc29_q0 sc_in sc_lv 48 signal 10 } 
	{ acc210_address0 sc_out sc_lv 6 signal 11 } 
	{ acc210_ce0 sc_out sc_logic 1 signal 11 } 
	{ acc210_q0 sc_in sc_lv 48 signal 11 } 
	{ acc211_address0 sc_out sc_lv 6 signal 12 } 
	{ acc211_ce0 sc_out sc_logic 1 signal 12 } 
	{ acc211_q0 sc_in sc_lv 48 signal 12 } 
	{ acc312_address0 sc_out sc_lv 6 signal 13 } 
	{ acc312_ce0 sc_out sc_logic 1 signal 13 } 
	{ acc312_q0 sc_in sc_lv 48 signal 13 } 
	{ acc313_address0 sc_out sc_lv 6 signal 14 } 
	{ acc313_ce0 sc_out sc_logic 1 signal 14 } 
	{ acc313_q0 sc_in sc_lv 48 signal 14 } 
	{ acc314_address0 sc_out sc_lv 6 signal 15 } 
	{ acc314_ce0 sc_out sc_logic 1 signal 15 } 
	{ acc314_q0 sc_in sc_lv 48 signal 15 } 
	{ acc315_address0 sc_out sc_lv 6 signal 16 } 
	{ acc315_ce0 sc_out sc_logic 1 signal 16 } 
	{ acc315_q0 sc_in sc_lv 48 signal 16 } 
	{ acc4_address0 sc_out sc_lv 6 signal 17 } 
	{ acc4_ce0 sc_out sc_logic 1 signal 17 } 
	{ acc4_q0 sc_in sc_lv 48 signal 17 } 
	{ acc416_address0 sc_out sc_lv 6 signal 18 } 
	{ acc416_ce0 sc_out sc_logic 1 signal 18 } 
	{ acc416_q0 sc_in sc_lv 48 signal 18 } 
	{ acc417_address0 sc_out sc_lv 6 signal 19 } 
	{ acc417_ce0 sc_out sc_logic 1 signal 19 } 
	{ acc417_q0 sc_in sc_lv 48 signal 19 } 
	{ acc418_address0 sc_out sc_lv 6 signal 20 } 
	{ acc418_ce0 sc_out sc_logic 1 signal 20 } 
	{ acc418_q0 sc_in sc_lv 48 signal 20 } 
	{ acc5_address0 sc_out sc_lv 6 signal 21 } 
	{ acc5_ce0 sc_out sc_logic 1 signal 21 } 
	{ acc5_q0 sc_in sc_lv 48 signal 21 } 
	{ acc519_address0 sc_out sc_lv 6 signal 22 } 
	{ acc519_ce0 sc_out sc_logic 1 signal 22 } 
	{ acc519_q0 sc_in sc_lv 48 signal 22 } 
	{ acc520_address0 sc_out sc_lv 6 signal 23 } 
	{ acc520_ce0 sc_out sc_logic 1 signal 23 } 
	{ acc520_q0 sc_in sc_lv 48 signal 23 } 
	{ acc521_address0 sc_out sc_lv 6 signal 24 } 
	{ acc521_ce0 sc_out sc_logic 1 signal 24 } 
	{ acc521_q0 sc_in sc_lv 48 signal 24 } 
	{ acc6_address0 sc_out sc_lv 6 signal 25 } 
	{ acc6_ce0 sc_out sc_logic 1 signal 25 } 
	{ acc6_q0 sc_in sc_lv 48 signal 25 } 
	{ acc622_address0 sc_out sc_lv 6 signal 26 } 
	{ acc622_ce0 sc_out sc_logic 1 signal 26 } 
	{ acc622_q0 sc_in sc_lv 48 signal 26 } 
	{ acc623_address0 sc_out sc_lv 6 signal 27 } 
	{ acc623_ce0 sc_out sc_logic 1 signal 27 } 
	{ acc623_q0 sc_in sc_lv 48 signal 27 } 
	{ acc624_address0 sc_out sc_lv 6 signal 28 } 
	{ acc624_ce0 sc_out sc_logic 1 signal 28 } 
	{ acc624_q0 sc_in sc_lv 48 signal 28 } 
	{ acc7_address0 sc_out sc_lv 6 signal 29 } 
	{ acc7_ce0 sc_out sc_logic 1 signal 29 } 
	{ acc7_q0 sc_in sc_lv 48 signal 29 } 
	{ acc725_address0 sc_out sc_lv 6 signal 30 } 
	{ acc725_ce0 sc_out sc_logic 1 signal 30 } 
	{ acc725_q0 sc_in sc_lv 48 signal 30 } 
	{ acc726_address0 sc_out sc_lv 6 signal 31 } 
	{ acc726_ce0 sc_out sc_logic 1 signal 31 } 
	{ acc726_q0 sc_in sc_lv 48 signal 31 } 
	{ acc727_address0 sc_out sc_lv 6 signal 32 } 
	{ acc727_ce0 sc_out sc_logic 1 signal 32 } 
	{ acc727_q0 sc_in sc_lv 48 signal 32 } 
	{ rows_dout sc_in sc_lv 16 signal 33 } 
	{ rows_empty_n sc_in sc_logic 1 signal 33 } 
	{ rows_read sc_out sc_logic 1 signal 33 } 
	{ ow_dout sc_in sc_lv 16 signal 34 } 
	{ ow_empty_n sc_in sc_logic 1 signal 34 } 
	{ ow_read sc_out sc_logic 1 signal 34 } 
	{ enabled_dout sc_in sc_lv 1 signal 35 } 
	{ enabled_empty_n sc_in sc_logic 1 signal 35 } 
	{ enabled_read sc_out sc_logic 1 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "results_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "results", "role": "din" }} , 
 	{ "name": "results_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "full_n" }} , 
 	{ "name": "results_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "write" }} , 
 	{ "name": "acc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc", "role": "address0" }} , 
 	{ "name": "acc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc", "role": "ce0" }} , 
 	{ "name": "acc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc", "role": "q0" }} , 
 	{ "name": "acc1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc1", "role": "address0" }} , 
 	{ "name": "acc1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc1", "role": "ce0" }} , 
 	{ "name": "acc1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc1", "role": "q0" }} , 
 	{ "name": "acc2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc2", "role": "address0" }} , 
 	{ "name": "acc2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc2", "role": "ce0" }} , 
 	{ "name": "acc2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc2", "role": "q0" }} , 
 	{ "name": "acc3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc3", "role": "address0" }} , 
 	{ "name": "acc3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc3", "role": "ce0" }} , 
 	{ "name": "acc3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc3", "role": "q0" }} , 
 	{ "name": "acc14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc14", "role": "address0" }} , 
 	{ "name": "acc14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc14", "role": "ce0" }} , 
 	{ "name": "acc14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc14", "role": "q0" }} , 
 	{ "name": "acc15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc15", "role": "address0" }} , 
 	{ "name": "acc15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc15", "role": "ce0" }} , 
 	{ "name": "acc15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc15", "role": "q0" }} , 
 	{ "name": "acc16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc16", "role": "address0" }} , 
 	{ "name": "acc16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc16", "role": "ce0" }} , 
 	{ "name": "acc16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc16", "role": "q0" }} , 
 	{ "name": "acc17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc17", "role": "address0" }} , 
 	{ "name": "acc17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc17", "role": "ce0" }} , 
 	{ "name": "acc17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc17", "role": "q0" }} , 
 	{ "name": "acc28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc28", "role": "address0" }} , 
 	{ "name": "acc28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc28", "role": "ce0" }} , 
 	{ "name": "acc28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc28", "role": "q0" }} , 
 	{ "name": "acc29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc29", "role": "address0" }} , 
 	{ "name": "acc29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc29", "role": "ce0" }} , 
 	{ "name": "acc29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc29", "role": "q0" }} , 
 	{ "name": "acc210_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc210", "role": "address0" }} , 
 	{ "name": "acc210_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc210", "role": "ce0" }} , 
 	{ "name": "acc210_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc210", "role": "q0" }} , 
 	{ "name": "acc211_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc211", "role": "address0" }} , 
 	{ "name": "acc211_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc211", "role": "ce0" }} , 
 	{ "name": "acc211_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc211", "role": "q0" }} , 
 	{ "name": "acc312_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc312", "role": "address0" }} , 
 	{ "name": "acc312_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc312", "role": "ce0" }} , 
 	{ "name": "acc312_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc312", "role": "q0" }} , 
 	{ "name": "acc313_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc313", "role": "address0" }} , 
 	{ "name": "acc313_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc313", "role": "ce0" }} , 
 	{ "name": "acc313_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc313", "role": "q0" }} , 
 	{ "name": "acc314_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc314", "role": "address0" }} , 
 	{ "name": "acc314_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc314", "role": "ce0" }} , 
 	{ "name": "acc314_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc314", "role": "q0" }} , 
 	{ "name": "acc315_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc315", "role": "address0" }} , 
 	{ "name": "acc315_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc315", "role": "ce0" }} , 
 	{ "name": "acc315_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc315", "role": "q0" }} , 
 	{ "name": "acc4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc4", "role": "address0" }} , 
 	{ "name": "acc4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc4", "role": "ce0" }} , 
 	{ "name": "acc4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc4", "role": "q0" }} , 
 	{ "name": "acc416_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc416", "role": "address0" }} , 
 	{ "name": "acc416_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc416", "role": "ce0" }} , 
 	{ "name": "acc416_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc416", "role": "q0" }} , 
 	{ "name": "acc417_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc417", "role": "address0" }} , 
 	{ "name": "acc417_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc417", "role": "ce0" }} , 
 	{ "name": "acc417_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc417", "role": "q0" }} , 
 	{ "name": "acc418_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc418", "role": "address0" }} , 
 	{ "name": "acc418_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc418", "role": "ce0" }} , 
 	{ "name": "acc418_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc418", "role": "q0" }} , 
 	{ "name": "acc5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc5", "role": "address0" }} , 
 	{ "name": "acc5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc5", "role": "ce0" }} , 
 	{ "name": "acc5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc5", "role": "q0" }} , 
 	{ "name": "acc519_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc519", "role": "address0" }} , 
 	{ "name": "acc519_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc519", "role": "ce0" }} , 
 	{ "name": "acc519_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc519", "role": "q0" }} , 
 	{ "name": "acc520_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc520", "role": "address0" }} , 
 	{ "name": "acc520_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc520", "role": "ce0" }} , 
 	{ "name": "acc520_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc520", "role": "q0" }} , 
 	{ "name": "acc521_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc521", "role": "address0" }} , 
 	{ "name": "acc521_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc521", "role": "ce0" }} , 
 	{ "name": "acc521_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc521", "role": "q0" }} , 
 	{ "name": "acc6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc6", "role": "address0" }} , 
 	{ "name": "acc6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc6", "role": "ce0" }} , 
 	{ "name": "acc6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc6", "role": "q0" }} , 
 	{ "name": "acc622_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc622", "role": "address0" }} , 
 	{ "name": "acc622_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc622", "role": "ce0" }} , 
 	{ "name": "acc622_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc622", "role": "q0" }} , 
 	{ "name": "acc623_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc623", "role": "address0" }} , 
 	{ "name": "acc623_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc623", "role": "ce0" }} , 
 	{ "name": "acc623_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc623", "role": "q0" }} , 
 	{ "name": "acc624_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc624", "role": "address0" }} , 
 	{ "name": "acc624_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc624", "role": "ce0" }} , 
 	{ "name": "acc624_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc624", "role": "q0" }} , 
 	{ "name": "acc7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc7", "role": "address0" }} , 
 	{ "name": "acc7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc7", "role": "ce0" }} , 
 	{ "name": "acc7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc7", "role": "q0" }} , 
 	{ "name": "acc725_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc725", "role": "address0" }} , 
 	{ "name": "acc725_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc725", "role": "ce0" }} , 
 	{ "name": "acc725_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc725", "role": "q0" }} , 
 	{ "name": "acc726_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc726", "role": "address0" }} , 
 	{ "name": "acc726_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc726", "role": "ce0" }} , 
 	{ "name": "acc726_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc726", "role": "q0" }} , 
 	{ "name": "acc727_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "acc727", "role": "address0" }} , 
 	{ "name": "acc727_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc727", "role": "ce0" }} , 
 	{ "name": "acc727_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "acc727", "role": "q0" }} , 
 	{ "name": "rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rows", "role": "dout" }} , 
 	{ "name": "rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "empty_n" }} , 
 	{ "name": "rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "read" }} , 
 	{ "name": "ow_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "dout" }} , 
 	{ "name": "ow_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "empty_n" }} , 
 	{ "name": "ow_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "read" }} , 
 	{ "name": "enabled_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enabled", "role": "dout" }} , 
 	{ "name": "enabled_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enabled", "role": "empty_n" }} , 
 	{ "name": "enabled_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enabled", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
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
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "enabled_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U645", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U646", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U647", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U648", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U649", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U650", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U651", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_416_48_1_1_U652", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U653", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	results { ap_fifo {  { results_din fifo_data 1 256 }  { results_full_n fifo_status 0 1 }  { results_write fifo_update 1 1 } } }
	acc { ap_memory {  { acc_address0 mem_address 1 6 }  { acc_ce0 mem_ce 1 1 }  { acc_q0 mem_dout 0 48 } } }
	acc1 { ap_memory {  { acc1_address0 mem_address 1 6 }  { acc1_ce0 mem_ce 1 1 }  { acc1_q0 mem_dout 0 48 } } }
	acc2 { ap_memory {  { acc2_address0 mem_address 1 6 }  { acc2_ce0 mem_ce 1 1 }  { acc2_q0 mem_dout 0 48 } } }
	acc3 { ap_memory {  { acc3_address0 mem_address 1 6 }  { acc3_ce0 mem_ce 1 1 }  { acc3_q0 mem_dout 0 48 } } }
	acc14 { ap_memory {  { acc14_address0 mem_address 1 6 }  { acc14_ce0 mem_ce 1 1 }  { acc14_q0 mem_dout 0 48 } } }
	acc15 { ap_memory {  { acc15_address0 mem_address 1 6 }  { acc15_ce0 mem_ce 1 1 }  { acc15_q0 mem_dout 0 48 } } }
	acc16 { ap_memory {  { acc16_address0 mem_address 1 6 }  { acc16_ce0 mem_ce 1 1 }  { acc16_q0 mem_dout 0 48 } } }
	acc17 { ap_memory {  { acc17_address0 mem_address 1 6 }  { acc17_ce0 mem_ce 1 1 }  { acc17_q0 mem_dout 0 48 } } }
	acc28 { ap_memory {  { acc28_address0 mem_address 1 6 }  { acc28_ce0 mem_ce 1 1 }  { acc28_q0 mem_dout 0 48 } } }
	acc29 { ap_memory {  { acc29_address0 mem_address 1 6 }  { acc29_ce0 mem_ce 1 1 }  { acc29_q0 mem_dout 0 48 } } }
	acc210 { ap_memory {  { acc210_address0 mem_address 1 6 }  { acc210_ce0 mem_ce 1 1 }  { acc210_q0 mem_dout 0 48 } } }
	acc211 { ap_memory {  { acc211_address0 mem_address 1 6 }  { acc211_ce0 mem_ce 1 1 }  { acc211_q0 mem_dout 0 48 } } }
	acc312 { ap_memory {  { acc312_address0 mem_address 1 6 }  { acc312_ce0 mem_ce 1 1 }  { acc312_q0 mem_dout 0 48 } } }
	acc313 { ap_memory {  { acc313_address0 mem_address 1 6 }  { acc313_ce0 mem_ce 1 1 }  { acc313_q0 mem_dout 0 48 } } }
	acc314 { ap_memory {  { acc314_address0 mem_address 1 6 }  { acc314_ce0 mem_ce 1 1 }  { acc314_q0 mem_dout 0 48 } } }
	acc315 { ap_memory {  { acc315_address0 mem_address 1 6 }  { acc315_ce0 mem_ce 1 1 }  { acc315_q0 mem_dout 0 48 } } }
	acc4 { ap_memory {  { acc4_address0 mem_address 1 6 }  { acc4_ce0 mem_ce 1 1 }  { acc4_q0 mem_dout 0 48 } } }
	acc416 { ap_memory {  { acc416_address0 mem_address 1 6 }  { acc416_ce0 mem_ce 1 1 }  { acc416_q0 mem_dout 0 48 } } }
	acc417 { ap_memory {  { acc417_address0 mem_address 1 6 }  { acc417_ce0 mem_ce 1 1 }  { acc417_q0 mem_dout 0 48 } } }
	acc418 { ap_memory {  { acc418_address0 mem_address 1 6 }  { acc418_ce0 mem_ce 1 1 }  { acc418_q0 mem_dout 0 48 } } }
	acc5 { ap_memory {  { acc5_address0 mem_address 1 6 }  { acc5_ce0 mem_ce 1 1 }  { acc5_q0 mem_dout 0 48 } } }
	acc519 { ap_memory {  { acc519_address0 mem_address 1 6 }  { acc519_ce0 mem_ce 1 1 }  { acc519_q0 mem_dout 0 48 } } }
	acc520 { ap_memory {  { acc520_address0 mem_address 1 6 }  { acc520_ce0 mem_ce 1 1 }  { acc520_q0 mem_dout 0 48 } } }
	acc521 { ap_memory {  { acc521_address0 mem_address 1 6 }  { acc521_ce0 mem_ce 1 1 }  { acc521_q0 mem_dout 0 48 } } }
	acc6 { ap_memory {  { acc6_address0 mem_address 1 6 }  { acc6_ce0 mem_ce 1 1 }  { acc6_q0 mem_dout 0 48 } } }
	acc622 { ap_memory {  { acc622_address0 mem_address 1 6 }  { acc622_ce0 mem_ce 1 1 }  { acc622_q0 mem_dout 0 48 } } }
	acc623 { ap_memory {  { acc623_address0 mem_address 1 6 }  { acc623_ce0 mem_ce 1 1 }  { acc623_q0 mem_dout 0 48 } } }
	acc624 { ap_memory {  { acc624_address0 mem_address 1 6 }  { acc624_ce0 mem_ce 1 1 }  { acc624_q0 mem_dout 0 48 } } }
	acc7 { ap_memory {  { acc7_address0 mem_address 1 6 }  { acc7_ce0 mem_ce 1 1 }  { acc7_q0 mem_dout 0 48 } } }
	acc725 { ap_memory {  { acc725_address0 mem_address 1 6 }  { acc725_ce0 mem_ce 1 1 }  { acc725_q0 mem_dout 0 48 } } }
	acc726 { ap_memory {  { acc726_address0 mem_address 1 6 }  { acc726_ce0 mem_ce 1 1 }  { acc726_q0 mem_dout 0 48 } } }
	acc727 { ap_memory {  { acc727_address0 mem_address 1 6 }  { acc727_ce0 mem_ce 1 1 }  { acc727_q0 mem_dout 0 48 } } }
	rows { ap_fifo {  { rows_dout fifo_data 0 16 }  { rows_empty_n fifo_status 0 1 }  { rows_read fifo_update 1 1 } } }
	ow { ap_fifo {  { ow_dout fifo_data 0 16 }  { ow_empty_n fifo_status 0 1 }  { ow_read fifo_update 1 1 } } }
	enabled { ap_fifo {  { enabled_dout fifo_data 0 1 }  { enabled_empty_n fifo_status 0 1 }  { enabled_read fifo_update 1 1 } } }
}
