set moduleName p_anonymous_namespace_row_pair_entry58
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {(anonymous namespace)row_pair.entry58}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 48 regular  }
	{ p_read1 int 48 regular  }
	{ p_read2 int 48 regular  }
	{ p_read3 int 48 regular  }
	{ p_read4 int 48 regular  }
	{ p_read5 int 48 regular  }
	{ p_read6 int 48 regular  }
	{ p_read7 int 48 regular  }
	{ ci int 10 regular  }
	{ wi int 16 regular  }
	{ k int 3 regular  }
	{ stride int 2 regular  }
	{ pad int 2 regular  }
	{ ow int 16 regular  }
	{ computing int 1 regular  }
	{ emitting_offset int 1 regular  }
	{ previous_rows int 16 regular  }
	{ bias_out int 48 regular {fifo 1}  }
	{ bias8_out int 48 regular {fifo 1}  }
	{ bias9_out int 48 regular {fifo 1}  }
	{ bias10_out int 48 regular {fifo 1}  }
	{ bias11_out int 48 regular {fifo 1}  }
	{ bias12_out int 48 regular {fifo 1}  }
	{ bias13_out int 48 regular {fifo 1}  }
	{ bias14_out int 48 regular {fifo 1}  }
	{ ci_out int 10 regular {fifo 1}  }
	{ wi_out int 16 regular {fifo 1}  }
	{ k_out int 3 regular {fifo 1}  }
	{ stride_out int 2 regular {fifo 1}  }
	{ pad_out int 2 regular {fifo 1}  }
	{ ow_out int 16 regular {fifo 1}  }
	{ ow_out1 int 16 regular {fifo 1}  }
	{ computing_out int 1 regular {fifo 1}  }
	{ emitting_offset_out int 1 regular {fifo 1}  }
	{ previous_rows_out int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "wi", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "computing", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "emitting_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "previous_rows", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias8_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias9_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias10_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias11_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias12_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias13_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias14_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ci_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wi_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k_out", "interface" : "fifo", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stride_out", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pad_out", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ow_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ow_out1", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "computing_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "emitting_offset_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "previous_rows_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 48 signal 0 } 
	{ p_read1 sc_in sc_lv 48 signal 1 } 
	{ p_read2 sc_in sc_lv 48 signal 2 } 
	{ p_read3 sc_in sc_lv 48 signal 3 } 
	{ p_read4 sc_in sc_lv 48 signal 4 } 
	{ p_read5 sc_in sc_lv 48 signal 5 } 
	{ p_read6 sc_in sc_lv 48 signal 6 } 
	{ p_read7 sc_in sc_lv 48 signal 7 } 
	{ ci sc_in sc_lv 10 signal 8 } 
	{ wi sc_in sc_lv 16 signal 9 } 
	{ k sc_in sc_lv 3 signal 10 } 
	{ stride sc_in sc_lv 2 signal 11 } 
	{ pad sc_in sc_lv 2 signal 12 } 
	{ ow sc_in sc_lv 16 signal 13 } 
	{ computing sc_in sc_lv 1 signal 14 } 
	{ emitting_offset sc_in sc_lv 1 signal 15 } 
	{ previous_rows sc_in sc_lv 16 signal 16 } 
	{ bias_out_din sc_out sc_lv 48 signal 17 } 
	{ bias_out_full_n sc_in sc_logic 1 signal 17 } 
	{ bias_out_write sc_out sc_logic 1 signal 17 } 
	{ bias8_out_din sc_out sc_lv 48 signal 18 } 
	{ bias8_out_full_n sc_in sc_logic 1 signal 18 } 
	{ bias8_out_write sc_out sc_logic 1 signal 18 } 
	{ bias9_out_din sc_out sc_lv 48 signal 19 } 
	{ bias9_out_full_n sc_in sc_logic 1 signal 19 } 
	{ bias9_out_write sc_out sc_logic 1 signal 19 } 
	{ bias10_out_din sc_out sc_lv 48 signal 20 } 
	{ bias10_out_full_n sc_in sc_logic 1 signal 20 } 
	{ bias10_out_write sc_out sc_logic 1 signal 20 } 
	{ bias11_out_din sc_out sc_lv 48 signal 21 } 
	{ bias11_out_full_n sc_in sc_logic 1 signal 21 } 
	{ bias11_out_write sc_out sc_logic 1 signal 21 } 
	{ bias12_out_din sc_out sc_lv 48 signal 22 } 
	{ bias12_out_full_n sc_in sc_logic 1 signal 22 } 
	{ bias12_out_write sc_out sc_logic 1 signal 22 } 
	{ bias13_out_din sc_out sc_lv 48 signal 23 } 
	{ bias13_out_full_n sc_in sc_logic 1 signal 23 } 
	{ bias13_out_write sc_out sc_logic 1 signal 23 } 
	{ bias14_out_din sc_out sc_lv 48 signal 24 } 
	{ bias14_out_full_n sc_in sc_logic 1 signal 24 } 
	{ bias14_out_write sc_out sc_logic 1 signal 24 } 
	{ ci_out_din sc_out sc_lv 10 signal 25 } 
	{ ci_out_full_n sc_in sc_logic 1 signal 25 } 
	{ ci_out_write sc_out sc_logic 1 signal 25 } 
	{ wi_out_din sc_out sc_lv 16 signal 26 } 
	{ wi_out_full_n sc_in sc_logic 1 signal 26 } 
	{ wi_out_write sc_out sc_logic 1 signal 26 } 
	{ k_out_din sc_out sc_lv 3 signal 27 } 
	{ k_out_full_n sc_in sc_logic 1 signal 27 } 
	{ k_out_write sc_out sc_logic 1 signal 27 } 
	{ stride_out_din sc_out sc_lv 2 signal 28 } 
	{ stride_out_full_n sc_in sc_logic 1 signal 28 } 
	{ stride_out_write sc_out sc_logic 1 signal 28 } 
	{ pad_out_din sc_out sc_lv 2 signal 29 } 
	{ pad_out_full_n sc_in sc_logic 1 signal 29 } 
	{ pad_out_write sc_out sc_logic 1 signal 29 } 
	{ ow_out_din sc_out sc_lv 16 signal 30 } 
	{ ow_out_full_n sc_in sc_logic 1 signal 30 } 
	{ ow_out_write sc_out sc_logic 1 signal 30 } 
	{ ow_out1_din sc_out sc_lv 16 signal 31 } 
	{ ow_out1_full_n sc_in sc_logic 1 signal 31 } 
	{ ow_out1_write sc_out sc_logic 1 signal 31 } 
	{ computing_out_din sc_out sc_lv 1 signal 32 } 
	{ computing_out_full_n sc_in sc_logic 1 signal 32 } 
	{ computing_out_write sc_out sc_logic 1 signal 32 } 
	{ emitting_offset_out_din sc_out sc_lv 1 signal 33 } 
	{ emitting_offset_out_full_n sc_in sc_logic 1 signal 33 } 
	{ emitting_offset_out_write sc_out sc_logic 1 signal 33 } 
	{ previous_rows_out_din sc_out sc_lv 16 signal 34 } 
	{ previous_rows_out_full_n sc_in sc_logic 1 signal 34 } 
	{ previous_rows_out_write sc_out sc_logic 1 signal 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "ci", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "default" }} , 
 	{ "name": "wi", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "pad", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "default" }} , 
 	{ "name": "ow", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "default" }} , 
 	{ "name": "computing", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "computing", "role": "default" }} , 
 	{ "name": "emitting_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emitting_offset", "role": "default" }} , 
 	{ "name": "previous_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "previous_rows", "role": "default" }} , 
 	{ "name": "bias_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_out", "role": "din" }} , 
 	{ "name": "bias_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_out", "role": "full_n" }} , 
 	{ "name": "bias_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_out", "role": "write" }} , 
 	{ "name": "bias8_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias8_out", "role": "din" }} , 
 	{ "name": "bias8_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias8_out", "role": "full_n" }} , 
 	{ "name": "bias8_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias8_out", "role": "write" }} , 
 	{ "name": "bias9_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias9_out", "role": "din" }} , 
 	{ "name": "bias9_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias9_out", "role": "full_n" }} , 
 	{ "name": "bias9_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias9_out", "role": "write" }} , 
 	{ "name": "bias10_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias10_out", "role": "din" }} , 
 	{ "name": "bias10_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias10_out", "role": "full_n" }} , 
 	{ "name": "bias10_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias10_out", "role": "write" }} , 
 	{ "name": "bias11_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias11_out", "role": "din" }} , 
 	{ "name": "bias11_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias11_out", "role": "full_n" }} , 
 	{ "name": "bias11_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias11_out", "role": "write" }} , 
 	{ "name": "bias12_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias12_out", "role": "din" }} , 
 	{ "name": "bias12_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias12_out", "role": "full_n" }} , 
 	{ "name": "bias12_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias12_out", "role": "write" }} , 
 	{ "name": "bias13_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias13_out", "role": "din" }} , 
 	{ "name": "bias13_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias13_out", "role": "full_n" }} , 
 	{ "name": "bias13_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias13_out", "role": "write" }} , 
 	{ "name": "bias14_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias14_out", "role": "din" }} , 
 	{ "name": "bias14_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias14_out", "role": "full_n" }} , 
 	{ "name": "bias14_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias14_out", "role": "write" }} , 
 	{ "name": "ci_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci_out", "role": "din" }} , 
 	{ "name": "ci_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out", "role": "full_n" }} , 
 	{ "name": "ci_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out", "role": "write" }} , 
 	{ "name": "wi_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi_out", "role": "din" }} , 
 	{ "name": "wi_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi_out", "role": "full_n" }} , 
 	{ "name": "wi_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi_out", "role": "write" }} , 
 	{ "name": "k_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k_out", "role": "din" }} , 
 	{ "name": "k_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out", "role": "full_n" }} , 
 	{ "name": "k_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out", "role": "write" }} , 
 	{ "name": "stride_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride_out", "role": "din" }} , 
 	{ "name": "stride_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "full_n" }} , 
 	{ "name": "stride_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "write" }} , 
 	{ "name": "pad_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad_out", "role": "din" }} , 
 	{ "name": "pad_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_out", "role": "full_n" }} , 
 	{ "name": "pad_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_out", "role": "write" }} , 
 	{ "name": "ow_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow_out", "role": "din" }} , 
 	{ "name": "ow_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out", "role": "full_n" }} , 
 	{ "name": "ow_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out", "role": "write" }} , 
 	{ "name": "ow_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow_out1", "role": "din" }} , 
 	{ "name": "ow_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out1", "role": "full_n" }} , 
 	{ "name": "ow_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out1", "role": "write" }} , 
 	{ "name": "computing_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "computing_out", "role": "din" }} , 
 	{ "name": "computing_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "computing_out", "role": "full_n" }} , 
 	{ "name": "computing_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "computing_out", "role": "write" }} , 
 	{ "name": "emitting_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emitting_offset_out", "role": "din" }} , 
 	{ "name": "emitting_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emitting_offset_out", "role": "full_n" }} , 
 	{ "name": "emitting_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emitting_offset_out", "role": "write" }} , 
 	{ "name": "previous_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "previous_rows_out", "role": "din" }} , 
 	{ "name": "previous_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous_rows_out", "role": "full_n" }} , 
 	{ "name": "previous_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous_rows_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "bias_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "computing_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "computing_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "emitting_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "emitting_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "previous_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "previous_rows_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		previous_rows_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 48 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 48 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 48 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 48 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 48 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 48 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 48 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 48 } } }
	ci { ap_none {  { ci in_data 0 10 } } }
	wi { ap_none {  { wi in_data 0 16 } } }
	k { ap_none {  { k in_data 0 3 } } }
	stride { ap_none {  { stride in_data 0 2 } } }
	pad { ap_none {  { pad in_data 0 2 } } }
	ow { ap_none {  { ow in_data 0 16 } } }
	computing { ap_none {  { computing in_data 0 1 } } }
	emitting_offset { ap_none {  { emitting_offset in_data 0 1 } } }
	previous_rows { ap_none {  { previous_rows in_data 0 16 } } }
	bias_out { ap_fifo {  { bias_out_din fifo_data 1 48 }  { bias_out_full_n fifo_status 0 1 }  { bias_out_write fifo_update 1 1 } } }
	bias8_out { ap_fifo {  { bias8_out_din fifo_data 1 48 }  { bias8_out_full_n fifo_status 0 1 }  { bias8_out_write fifo_update 1 1 } } }
	bias9_out { ap_fifo {  { bias9_out_din fifo_data 1 48 }  { bias9_out_full_n fifo_status 0 1 }  { bias9_out_write fifo_update 1 1 } } }
	bias10_out { ap_fifo {  { bias10_out_din fifo_data 1 48 }  { bias10_out_full_n fifo_status 0 1 }  { bias10_out_write fifo_update 1 1 } } }
	bias11_out { ap_fifo {  { bias11_out_din fifo_data 1 48 }  { bias11_out_full_n fifo_status 0 1 }  { bias11_out_write fifo_update 1 1 } } }
	bias12_out { ap_fifo {  { bias12_out_din fifo_data 1 48 }  { bias12_out_full_n fifo_status 0 1 }  { bias12_out_write fifo_update 1 1 } } }
	bias13_out { ap_fifo {  { bias13_out_din fifo_data 1 48 }  { bias13_out_full_n fifo_status 0 1 }  { bias13_out_write fifo_update 1 1 } } }
	bias14_out { ap_fifo {  { bias14_out_din fifo_data 1 48 }  { bias14_out_full_n fifo_status 0 1 }  { bias14_out_write fifo_update 1 1 } } }
	ci_out { ap_fifo {  { ci_out_din fifo_data 1 10 }  { ci_out_full_n fifo_status 0 1 }  { ci_out_write fifo_update 1 1 } } }
	wi_out { ap_fifo {  { wi_out_din fifo_data 1 16 }  { wi_out_full_n fifo_status 0 1 }  { wi_out_write fifo_update 1 1 } } }
	k_out { ap_fifo {  { k_out_din fifo_data 1 3 }  { k_out_full_n fifo_status 0 1 }  { k_out_write fifo_update 1 1 } } }
	stride_out { ap_fifo {  { stride_out_din fifo_data 1 2 }  { stride_out_full_n fifo_status 0 1 }  { stride_out_write fifo_update 1 1 } } }
	pad_out { ap_fifo {  { pad_out_din fifo_data 1 2 }  { pad_out_full_n fifo_status 0 1 }  { pad_out_write fifo_update 1 1 } } }
	ow_out { ap_fifo {  { ow_out_din fifo_data 1 16 }  { ow_out_full_n fifo_status 0 1 }  { ow_out_write fifo_update 1 1 } } }
	ow_out1 { ap_fifo {  { ow_out1_din fifo_data 1 16 }  { ow_out1_full_n fifo_status 0 1 }  { ow_out1_write fifo_update 1 1 } } }
	computing_out { ap_fifo {  { computing_out_din fifo_data 1 1 }  { computing_out_full_n fifo_status 0 1 }  { computing_out_write fifo_update 1 1 } } }
	emitting_offset_out { ap_fifo {  { emitting_offset_out_din fifo_data 1 1 }  { emitting_offset_out_full_n fifo_status 0 1 }  { emitting_offset_out_write fifo_update 1 1 } } }
	previous_rows_out { ap_fifo {  { previous_rows_out_din fifo_data 1 16 }  { previous_rows_out_full_n fifo_status 0 1 }  { previous_rows_out_write fifo_update 1 1 } } }
}
