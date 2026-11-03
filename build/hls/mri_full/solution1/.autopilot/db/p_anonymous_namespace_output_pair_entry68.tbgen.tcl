set moduleName p_anonymous_namespace_output_pair_entry68
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
set C_modelName {(anonymous namespace)output_pair.entry68}
set C_modelType { void 0 }
set C_modelArgList {
	{ w int 64 regular  }
	{ fr int 64 regular  }
	{ fw int 64 regular  }
	{ wide int 64 regular  }
	{ wbase int 32 regular  }
	{ ob int 16 regular  }
	{ ci int 10 regular  }
	{ h int 16 regular  }
	{ wi int 16 regular  }
	{ co int 10 regular  }
	{ k int 3 regular  }
	{ stride int 2 regular  }
	{ pad int 2 regular  }
	{ oh int 16 regular  }
	{ ow int 16 regular  }
	{ input_r int 32 regular  }
	{ output_r int 32 regular  }
	{ skip int 32 regular  }
	{ skipshift int 32 regular  }
	{ kind int 3 regular  }
	{ batch_count int 32 regular  }
	{ p_read int 48 regular  }
	{ p_read1 int 48 regular  }
	{ p_read2 int 48 regular  }
	{ p_read3 int 48 regular  }
	{ p_read4 int 48 regular  }
	{ p_read5 int 48 regular  }
	{ p_read6 int 48 regular  }
	{ p_read7 int 48 regular  }
	{ p_read8 int 32 regular  }
	{ p_read9 int 32 regular  }
	{ p_read10 int 32 regular  }
	{ p_read11 int 32 regular  }
	{ p_read12 int 32 regular  }
	{ p_read13 int 32 regular  }
	{ p_read14 int 32 regular  }
	{ p_read15 int 32 regular  }
	{ w_out int 64 regular {fifo 1}  }
	{ fr_out int 64 regular {fifo 1}  }
	{ fw_out int 64 regular {fifo 1}  }
	{ wide_out int 64 regular {fifo 1}  }
	{ wbase_out int 32 regular {fifo 1}  }
	{ ob_out int 16 regular {fifo 1}  }
	{ ob_out1 int 16 regular {fifo 1}  }
	{ ci_out int 10 regular {fifo 1}  }
	{ ci_out2 int 10 regular {fifo 1}  }
	{ h_out int 16 regular {fifo 1}  }
	{ wi_out int 16 regular {fifo 1}  }
	{ co_out int 10 regular {fifo 1}  }
	{ k_out int 3 regular {fifo 1}  }
	{ k_out3 int 3 regular {fifo 1}  }
	{ stride_out int 2 regular {fifo 1}  }
	{ pad_out int 2 regular {fifo 1}  }
	{ oh_out int 16 regular {fifo 1}  }
	{ ow_out int 16 regular {fifo 1}  }
	{ input_out int 32 regular {fifo 1}  }
	{ output_out int 32 regular {fifo 1}  }
	{ skip_out int 32 regular {fifo 1}  }
	{ skipshift_out int 32 regular {fifo 1}  }
	{ kind_out int 3 regular {fifo 1}  }
	{ batch_count_out int 32 regular {fifo 1}  }
	{ bias_0_out int 48 regular {fifo 1}  }
	{ bias_1_out int 48 regular {fifo 1}  }
	{ bias_2_out int 48 regular {fifo 1}  }
	{ bias_3_out int 48 regular {fifo 1}  }
	{ bias_4_out int 48 regular {fifo 1}  }
	{ bias_5_out int 48 regular {fifo 1}  }
	{ bias_6_out int 48 regular {fifo 1}  }
	{ bias_7_out int 48 regular {fifo 1}  }
	{ shifts_0_out int 32 regular {fifo 1}  }
	{ shifts_1_out int 32 regular {fifo 1}  }
	{ shifts_2_out int 32 regular {fifo 1}  }
	{ shifts_3_out int 32 regular {fifo 1}  }
	{ shifts_4_out int 32 regular {fifo 1}  }
	{ shifts_5_out int 32 regular {fifo 1}  }
	{ shifts_6_out int 32 regular {fifo 1}  }
	{ shifts_7_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fw", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wide", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wbase", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ob", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wi", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "co", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "oh", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skip", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skipshift", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kind", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "batch_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fr_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fw_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wide_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wbase_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ob_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ob_out1", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ci_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ci_out2", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wi_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k_out", "interface" : "fifo", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "k_out3", "interface" : "fifo", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stride_out", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pad_out", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "oh_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ow_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skip_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "skipshift_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kind_out", "interface" : "fifo", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "batch_count_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_0_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_3_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_4_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_5_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_6_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_7_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_0_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_1_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_2_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_3_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_4_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_5_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_6_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shifts_7_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 167
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ w sc_in sc_lv 64 signal 0 } 
	{ fr sc_in sc_lv 64 signal 1 } 
	{ fw sc_in sc_lv 64 signal 2 } 
	{ wide sc_in sc_lv 64 signal 3 } 
	{ wbase sc_in sc_lv 32 signal 4 } 
	{ ob sc_in sc_lv 16 signal 5 } 
	{ ci sc_in sc_lv 10 signal 6 } 
	{ h sc_in sc_lv 16 signal 7 } 
	{ wi sc_in sc_lv 16 signal 8 } 
	{ co sc_in sc_lv 10 signal 9 } 
	{ k sc_in sc_lv 3 signal 10 } 
	{ stride sc_in sc_lv 2 signal 11 } 
	{ pad sc_in sc_lv 2 signal 12 } 
	{ oh sc_in sc_lv 16 signal 13 } 
	{ ow sc_in sc_lv 16 signal 14 } 
	{ input_r sc_in sc_lv 32 signal 15 } 
	{ output_r sc_in sc_lv 32 signal 16 } 
	{ skip sc_in sc_lv 32 signal 17 } 
	{ skipshift sc_in sc_lv 32 signal 18 } 
	{ kind sc_in sc_lv 3 signal 19 } 
	{ batch_count sc_in sc_lv 32 signal 20 } 
	{ p_read sc_in sc_lv 48 signal 21 } 
	{ p_read1 sc_in sc_lv 48 signal 22 } 
	{ p_read2 sc_in sc_lv 48 signal 23 } 
	{ p_read3 sc_in sc_lv 48 signal 24 } 
	{ p_read4 sc_in sc_lv 48 signal 25 } 
	{ p_read5 sc_in sc_lv 48 signal 26 } 
	{ p_read6 sc_in sc_lv 48 signal 27 } 
	{ p_read7 sc_in sc_lv 48 signal 28 } 
	{ p_read8 sc_in sc_lv 32 signal 29 } 
	{ p_read9 sc_in sc_lv 32 signal 30 } 
	{ p_read10 sc_in sc_lv 32 signal 31 } 
	{ p_read11 sc_in sc_lv 32 signal 32 } 
	{ p_read12 sc_in sc_lv 32 signal 33 } 
	{ p_read13 sc_in sc_lv 32 signal 34 } 
	{ p_read14 sc_in sc_lv 32 signal 35 } 
	{ p_read15 sc_in sc_lv 32 signal 36 } 
	{ w_out_din sc_out sc_lv 64 signal 37 } 
	{ w_out_full_n sc_in sc_logic 1 signal 37 } 
	{ w_out_write sc_out sc_logic 1 signal 37 } 
	{ fr_out_din sc_out sc_lv 64 signal 38 } 
	{ fr_out_full_n sc_in sc_logic 1 signal 38 } 
	{ fr_out_write sc_out sc_logic 1 signal 38 } 
	{ fw_out_din sc_out sc_lv 64 signal 39 } 
	{ fw_out_full_n sc_in sc_logic 1 signal 39 } 
	{ fw_out_write sc_out sc_logic 1 signal 39 } 
	{ wide_out_din sc_out sc_lv 64 signal 40 } 
	{ wide_out_full_n sc_in sc_logic 1 signal 40 } 
	{ wide_out_write sc_out sc_logic 1 signal 40 } 
	{ wbase_out_din sc_out sc_lv 32 signal 41 } 
	{ wbase_out_full_n sc_in sc_logic 1 signal 41 } 
	{ wbase_out_write sc_out sc_logic 1 signal 41 } 
	{ ob_out_din sc_out sc_lv 16 signal 42 } 
	{ ob_out_full_n sc_in sc_logic 1 signal 42 } 
	{ ob_out_write sc_out sc_logic 1 signal 42 } 
	{ ob_out1_din sc_out sc_lv 16 signal 43 } 
	{ ob_out1_full_n sc_in sc_logic 1 signal 43 } 
	{ ob_out1_write sc_out sc_logic 1 signal 43 } 
	{ ci_out_din sc_out sc_lv 10 signal 44 } 
	{ ci_out_full_n sc_in sc_logic 1 signal 44 } 
	{ ci_out_write sc_out sc_logic 1 signal 44 } 
	{ ci_out2_din sc_out sc_lv 10 signal 45 } 
	{ ci_out2_full_n sc_in sc_logic 1 signal 45 } 
	{ ci_out2_write sc_out sc_logic 1 signal 45 } 
	{ h_out_din sc_out sc_lv 16 signal 46 } 
	{ h_out_full_n sc_in sc_logic 1 signal 46 } 
	{ h_out_write sc_out sc_logic 1 signal 46 } 
	{ wi_out_din sc_out sc_lv 16 signal 47 } 
	{ wi_out_full_n sc_in sc_logic 1 signal 47 } 
	{ wi_out_write sc_out sc_logic 1 signal 47 } 
	{ co_out_din sc_out sc_lv 10 signal 48 } 
	{ co_out_full_n sc_in sc_logic 1 signal 48 } 
	{ co_out_write sc_out sc_logic 1 signal 48 } 
	{ k_out_din sc_out sc_lv 3 signal 49 } 
	{ k_out_full_n sc_in sc_logic 1 signal 49 } 
	{ k_out_write sc_out sc_logic 1 signal 49 } 
	{ k_out3_din sc_out sc_lv 3 signal 50 } 
	{ k_out3_full_n sc_in sc_logic 1 signal 50 } 
	{ k_out3_write sc_out sc_logic 1 signal 50 } 
	{ stride_out_din sc_out sc_lv 2 signal 51 } 
	{ stride_out_full_n sc_in sc_logic 1 signal 51 } 
	{ stride_out_write sc_out sc_logic 1 signal 51 } 
	{ pad_out_din sc_out sc_lv 2 signal 52 } 
	{ pad_out_full_n sc_in sc_logic 1 signal 52 } 
	{ pad_out_write sc_out sc_logic 1 signal 52 } 
	{ oh_out_din sc_out sc_lv 16 signal 53 } 
	{ oh_out_full_n sc_in sc_logic 1 signal 53 } 
	{ oh_out_write sc_out sc_logic 1 signal 53 } 
	{ ow_out_din sc_out sc_lv 16 signal 54 } 
	{ ow_out_full_n sc_in sc_logic 1 signal 54 } 
	{ ow_out_write sc_out sc_logic 1 signal 54 } 
	{ input_out_din sc_out sc_lv 32 signal 55 } 
	{ input_out_full_n sc_in sc_logic 1 signal 55 } 
	{ input_out_write sc_out sc_logic 1 signal 55 } 
	{ output_out_din sc_out sc_lv 32 signal 56 } 
	{ output_out_full_n sc_in sc_logic 1 signal 56 } 
	{ output_out_write sc_out sc_logic 1 signal 56 } 
	{ skip_out_din sc_out sc_lv 32 signal 57 } 
	{ skip_out_full_n sc_in sc_logic 1 signal 57 } 
	{ skip_out_write sc_out sc_logic 1 signal 57 } 
	{ skipshift_out_din sc_out sc_lv 32 signal 58 } 
	{ skipshift_out_full_n sc_in sc_logic 1 signal 58 } 
	{ skipshift_out_write sc_out sc_logic 1 signal 58 } 
	{ kind_out_din sc_out sc_lv 3 signal 59 } 
	{ kind_out_full_n sc_in sc_logic 1 signal 59 } 
	{ kind_out_write sc_out sc_logic 1 signal 59 } 
	{ batch_count_out_din sc_out sc_lv 32 signal 60 } 
	{ batch_count_out_full_n sc_in sc_logic 1 signal 60 } 
	{ batch_count_out_write sc_out sc_logic 1 signal 60 } 
	{ bias_0_out_din sc_out sc_lv 48 signal 61 } 
	{ bias_0_out_full_n sc_in sc_logic 1 signal 61 } 
	{ bias_0_out_write sc_out sc_logic 1 signal 61 } 
	{ bias_1_out_din sc_out sc_lv 48 signal 62 } 
	{ bias_1_out_full_n sc_in sc_logic 1 signal 62 } 
	{ bias_1_out_write sc_out sc_logic 1 signal 62 } 
	{ bias_2_out_din sc_out sc_lv 48 signal 63 } 
	{ bias_2_out_full_n sc_in sc_logic 1 signal 63 } 
	{ bias_2_out_write sc_out sc_logic 1 signal 63 } 
	{ bias_3_out_din sc_out sc_lv 48 signal 64 } 
	{ bias_3_out_full_n sc_in sc_logic 1 signal 64 } 
	{ bias_3_out_write sc_out sc_logic 1 signal 64 } 
	{ bias_4_out_din sc_out sc_lv 48 signal 65 } 
	{ bias_4_out_full_n sc_in sc_logic 1 signal 65 } 
	{ bias_4_out_write sc_out sc_logic 1 signal 65 } 
	{ bias_5_out_din sc_out sc_lv 48 signal 66 } 
	{ bias_5_out_full_n sc_in sc_logic 1 signal 66 } 
	{ bias_5_out_write sc_out sc_logic 1 signal 66 } 
	{ bias_6_out_din sc_out sc_lv 48 signal 67 } 
	{ bias_6_out_full_n sc_in sc_logic 1 signal 67 } 
	{ bias_6_out_write sc_out sc_logic 1 signal 67 } 
	{ bias_7_out_din sc_out sc_lv 48 signal 68 } 
	{ bias_7_out_full_n sc_in sc_logic 1 signal 68 } 
	{ bias_7_out_write sc_out sc_logic 1 signal 68 } 
	{ shifts_0_out_din sc_out sc_lv 32 signal 69 } 
	{ shifts_0_out_full_n sc_in sc_logic 1 signal 69 } 
	{ shifts_0_out_write sc_out sc_logic 1 signal 69 } 
	{ shifts_1_out_din sc_out sc_lv 32 signal 70 } 
	{ shifts_1_out_full_n sc_in sc_logic 1 signal 70 } 
	{ shifts_1_out_write sc_out sc_logic 1 signal 70 } 
	{ shifts_2_out_din sc_out sc_lv 32 signal 71 } 
	{ shifts_2_out_full_n sc_in sc_logic 1 signal 71 } 
	{ shifts_2_out_write sc_out sc_logic 1 signal 71 } 
	{ shifts_3_out_din sc_out sc_lv 32 signal 72 } 
	{ shifts_3_out_full_n sc_in sc_logic 1 signal 72 } 
	{ shifts_3_out_write sc_out sc_logic 1 signal 72 } 
	{ shifts_4_out_din sc_out sc_lv 32 signal 73 } 
	{ shifts_4_out_full_n sc_in sc_logic 1 signal 73 } 
	{ shifts_4_out_write sc_out sc_logic 1 signal 73 } 
	{ shifts_5_out_din sc_out sc_lv 32 signal 74 } 
	{ shifts_5_out_full_n sc_in sc_logic 1 signal 74 } 
	{ shifts_5_out_write sc_out sc_logic 1 signal 74 } 
	{ shifts_6_out_din sc_out sc_lv 32 signal 75 } 
	{ shifts_6_out_full_n sc_in sc_logic 1 signal 75 } 
	{ shifts_6_out_write sc_out sc_logic 1 signal 75 } 
	{ shifts_7_out_din sc_out sc_lv 32 signal 76 } 
	{ shifts_7_out_full_n sc_in sc_logic 1 signal 76 } 
	{ shifts_7_out_write sc_out sc_logic 1 signal 76 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "w", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w", "role": "default" }} , 
 	{ "name": "fr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fr", "role": "default" }} , 
 	{ "name": "fw", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fw", "role": "default" }} , 
 	{ "name": "wide", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wide", "role": "default" }} , 
 	{ "name": "wbase", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wbase", "role": "default" }} , 
 	{ "name": "ob", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ob", "role": "default" }} , 
 	{ "name": "ci", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "default" }} , 
 	{ "name": "h", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h", "role": "default" }} , 
 	{ "name": "wi", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi", "role": "default" }} , 
 	{ "name": "co", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "pad", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "default" }} , 
 	{ "name": "oh", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh", "role": "default" }} , 
 	{ "name": "ow", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "default" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "output_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "default" }} , 
 	{ "name": "skip", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skip", "role": "default" }} , 
 	{ "name": "skipshift", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skipshift", "role": "default" }} , 
 	{ "name": "kind", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kind", "role": "default" }} , 
 	{ "name": "batch_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_count", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "w_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_out", "role": "din" }} , 
 	{ "name": "w_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_out", "role": "full_n" }} , 
 	{ "name": "w_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_out", "role": "write" }} , 
 	{ "name": "fr_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fr_out", "role": "din" }} , 
 	{ "name": "fr_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fr_out", "role": "full_n" }} , 
 	{ "name": "fr_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fr_out", "role": "write" }} , 
 	{ "name": "fw_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fw_out", "role": "din" }} , 
 	{ "name": "fw_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fw_out", "role": "full_n" }} , 
 	{ "name": "fw_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fw_out", "role": "write" }} , 
 	{ "name": "wide_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wide_out", "role": "din" }} , 
 	{ "name": "wide_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_out", "role": "full_n" }} , 
 	{ "name": "wide_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_out", "role": "write" }} , 
 	{ "name": "wbase_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wbase_out", "role": "din" }} , 
 	{ "name": "wbase_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wbase_out", "role": "full_n" }} , 
 	{ "name": "wbase_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wbase_out", "role": "write" }} , 
 	{ "name": "ob_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ob_out", "role": "din" }} , 
 	{ "name": "ob_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob_out", "role": "full_n" }} , 
 	{ "name": "ob_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob_out", "role": "write" }} , 
 	{ "name": "ob_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ob_out1", "role": "din" }} , 
 	{ "name": "ob_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob_out1", "role": "full_n" }} , 
 	{ "name": "ob_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob_out1", "role": "write" }} , 
 	{ "name": "ci_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci_out", "role": "din" }} , 
 	{ "name": "ci_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out", "role": "full_n" }} , 
 	{ "name": "ci_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out", "role": "write" }} , 
 	{ "name": "ci_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci_out2", "role": "din" }} , 
 	{ "name": "ci_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out2", "role": "full_n" }} , 
 	{ "name": "ci_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out2", "role": "write" }} , 
 	{ "name": "h_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_out", "role": "din" }} , 
 	{ "name": "h_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_out", "role": "full_n" }} , 
 	{ "name": "h_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_out", "role": "write" }} , 
 	{ "name": "wi_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi_out", "role": "din" }} , 
 	{ "name": "wi_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi_out", "role": "full_n" }} , 
 	{ "name": "wi_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi_out", "role": "write" }} , 
 	{ "name": "co_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co_out", "role": "din" }} , 
 	{ "name": "co_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_out", "role": "full_n" }} , 
 	{ "name": "co_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_out", "role": "write" }} , 
 	{ "name": "k_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k_out", "role": "din" }} , 
 	{ "name": "k_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out", "role": "full_n" }} , 
 	{ "name": "k_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out", "role": "write" }} , 
 	{ "name": "k_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k_out3", "role": "din" }} , 
 	{ "name": "k_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out3", "role": "full_n" }} , 
 	{ "name": "k_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_out3", "role": "write" }} , 
 	{ "name": "stride_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride_out", "role": "din" }} , 
 	{ "name": "stride_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "full_n" }} , 
 	{ "name": "stride_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "write" }} , 
 	{ "name": "pad_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad_out", "role": "din" }} , 
 	{ "name": "pad_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_out", "role": "full_n" }} , 
 	{ "name": "pad_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_out", "role": "write" }} , 
 	{ "name": "oh_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh_out", "role": "din" }} , 
 	{ "name": "oh_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh_out", "role": "full_n" }} , 
 	{ "name": "oh_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh_out", "role": "write" }} , 
 	{ "name": "ow_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow_out", "role": "din" }} , 
 	{ "name": "ow_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out", "role": "full_n" }} , 
 	{ "name": "ow_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow_out", "role": "write" }} , 
 	{ "name": "input_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_out", "role": "din" }} , 
 	{ "name": "input_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_out", "role": "full_n" }} , 
 	{ "name": "input_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_out", "role": "write" }} , 
 	{ "name": "output_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_out", "role": "din" }} , 
 	{ "name": "output_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_out", "role": "full_n" }} , 
 	{ "name": "output_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_out", "role": "write" }} , 
 	{ "name": "skip_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skip_out", "role": "din" }} , 
 	{ "name": "skip_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip_out", "role": "full_n" }} , 
 	{ "name": "skip_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip_out", "role": "write" }} , 
 	{ "name": "skipshift_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skipshift_out", "role": "din" }} , 
 	{ "name": "skipshift_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skipshift_out", "role": "full_n" }} , 
 	{ "name": "skipshift_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skipshift_out", "role": "write" }} , 
 	{ "name": "kind_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kind_out", "role": "din" }} , 
 	{ "name": "kind_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kind_out", "role": "full_n" }} , 
 	{ "name": "kind_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kind_out", "role": "write" }} , 
 	{ "name": "batch_count_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_count_out", "role": "din" }} , 
 	{ "name": "batch_count_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_count_out", "role": "full_n" }} , 
 	{ "name": "batch_count_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_count_out", "role": "write" }} , 
 	{ "name": "bias_0_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_0_out", "role": "din" }} , 
 	{ "name": "bias_0_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_0_out", "role": "full_n" }} , 
 	{ "name": "bias_0_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_0_out", "role": "write" }} , 
 	{ "name": "bias_1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_1_out", "role": "din" }} , 
 	{ "name": "bias_1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1_out", "role": "full_n" }} , 
 	{ "name": "bias_1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1_out", "role": "write" }} , 
 	{ "name": "bias_2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_2_out", "role": "din" }} , 
 	{ "name": "bias_2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2_out", "role": "full_n" }} , 
 	{ "name": "bias_2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2_out", "role": "write" }} , 
 	{ "name": "bias_3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_3_out", "role": "din" }} , 
 	{ "name": "bias_3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_3_out", "role": "full_n" }} , 
 	{ "name": "bias_3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_3_out", "role": "write" }} , 
 	{ "name": "bias_4_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_4_out", "role": "din" }} , 
 	{ "name": "bias_4_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_4_out", "role": "full_n" }} , 
 	{ "name": "bias_4_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_4_out", "role": "write" }} , 
 	{ "name": "bias_5_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_5_out", "role": "din" }} , 
 	{ "name": "bias_5_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_5_out", "role": "full_n" }} , 
 	{ "name": "bias_5_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_5_out", "role": "write" }} , 
 	{ "name": "bias_6_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_6_out", "role": "din" }} , 
 	{ "name": "bias_6_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_6_out", "role": "full_n" }} , 
 	{ "name": "bias_6_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_6_out", "role": "write" }} , 
 	{ "name": "bias_7_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_7_out", "role": "din" }} , 
 	{ "name": "bias_7_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_7_out", "role": "full_n" }} , 
 	{ "name": "bias_7_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_7_out", "role": "write" }} , 
 	{ "name": "shifts_0_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_0_out", "role": "din" }} , 
 	{ "name": "shifts_0_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_0_out", "role": "full_n" }} , 
 	{ "name": "shifts_0_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_0_out", "role": "write" }} , 
 	{ "name": "shifts_1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_1_out", "role": "din" }} , 
 	{ "name": "shifts_1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_1_out", "role": "full_n" }} , 
 	{ "name": "shifts_1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_1_out", "role": "write" }} , 
 	{ "name": "shifts_2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_2_out", "role": "din" }} , 
 	{ "name": "shifts_2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_2_out", "role": "full_n" }} , 
 	{ "name": "shifts_2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_2_out", "role": "write" }} , 
 	{ "name": "shifts_3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_3_out", "role": "din" }} , 
 	{ "name": "shifts_3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_3_out", "role": "full_n" }} , 
 	{ "name": "shifts_3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_3_out", "role": "write" }} , 
 	{ "name": "shifts_4_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_4_out", "role": "din" }} , 
 	{ "name": "shifts_4_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_4_out", "role": "full_n" }} , 
 	{ "name": "shifts_4_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_4_out", "role": "write" }} , 
 	{ "name": "shifts_5_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_5_out", "role": "din" }} , 
 	{ "name": "shifts_5_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_5_out", "role": "full_n" }} , 
 	{ "name": "shifts_5_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_5_out", "role": "write" }} , 
 	{ "name": "shifts_6_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_6_out", "role": "din" }} , 
 	{ "name": "shifts_6_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_6_out", "role": "full_n" }} , 
 	{ "name": "shifts_6_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_6_out", "role": "write" }} , 
 	{ "name": "shifts_7_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_7_out", "role": "din" }} , 
 	{ "name": "shifts_7_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_7_out", "role": "full_n" }} , 
 	{ "name": "shifts_7_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_7_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_anonymous_namespace_output_pair_entry68",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "fr", "Type" : "None", "Direction" : "I"},
			{"Name" : "fw", "Type" : "None", "Direction" : "I"},
			{"Name" : "wide", "Type" : "None", "Direction" : "I"},
			{"Name" : "wbase", "Type" : "None", "Direction" : "I"},
			{"Name" : "ob", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "oh", "Type" : "None", "Direction" : "I"},
			{"Name" : "ow", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip", "Type" : "None", "Direction" : "I"},
			{"Name" : "skipshift", "Type" : "None", "Direction" : "I"},
			{"Name" : "kind", "Type" : "None", "Direction" : "I"},
			{"Name" : "batch_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "w_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wbase_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wbase_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "co_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_count_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_output_pair_entry68 {
		w {Type I LastRead 0 FirstWrite -1}
		fr {Type I LastRead 0 FirstWrite -1}
		fw {Type I LastRead 0 FirstWrite -1}
		wide {Type I LastRead 0 FirstWrite -1}
		wbase {Type I LastRead 0 FirstWrite -1}
		ob {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		skip {Type I LastRead 0 FirstWrite -1}
		skipshift {Type I LastRead 0 FirstWrite -1}
		kind {Type I LastRead 0 FirstWrite -1}
		batch_count {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		w_out {Type O LastRead -1 FirstWrite 0}
		fr_out {Type O LastRead -1 FirstWrite 0}
		fw_out {Type O LastRead -1 FirstWrite 0}
		wide_out {Type O LastRead -1 FirstWrite 0}
		wbase_out {Type O LastRead -1 FirstWrite 0}
		ob_out {Type O LastRead -1 FirstWrite 0}
		ob_out1 {Type O LastRead -1 FirstWrite 0}
		ci_out {Type O LastRead -1 FirstWrite 0}
		ci_out2 {Type O LastRead -1 FirstWrite 0}
		h_out {Type O LastRead -1 FirstWrite 0}
		wi_out {Type O LastRead -1 FirstWrite 0}
		co_out {Type O LastRead -1 FirstWrite 0}
		k_out {Type O LastRead -1 FirstWrite 0}
		k_out3 {Type O LastRead -1 FirstWrite 0}
		stride_out {Type O LastRead -1 FirstWrite 0}
		pad_out {Type O LastRead -1 FirstWrite 0}
		oh_out {Type O LastRead -1 FirstWrite 0}
		ow_out {Type O LastRead -1 FirstWrite 0}
		input_out {Type O LastRead -1 FirstWrite 0}
		output_out {Type O LastRead -1 FirstWrite 0}
		skip_out {Type O LastRead -1 FirstWrite 0}
		skipshift_out {Type O LastRead -1 FirstWrite 0}
		kind_out {Type O LastRead -1 FirstWrite 0}
		batch_count_out {Type O LastRead -1 FirstWrite 0}
		bias_0_out {Type O LastRead -1 FirstWrite 0}
		bias_1_out {Type O LastRead -1 FirstWrite 0}
		bias_2_out {Type O LastRead -1 FirstWrite 0}
		bias_3_out {Type O LastRead -1 FirstWrite 0}
		bias_4_out {Type O LastRead -1 FirstWrite 0}
		bias_5_out {Type O LastRead -1 FirstWrite 0}
		bias_6_out {Type O LastRead -1 FirstWrite 0}
		bias_7_out {Type O LastRead -1 FirstWrite 0}
		shifts_0_out {Type O LastRead -1 FirstWrite 0}
		shifts_1_out {Type O LastRead -1 FirstWrite 0}
		shifts_2_out {Type O LastRead -1 FirstWrite 0}
		shifts_3_out {Type O LastRead -1 FirstWrite 0}
		shifts_4_out {Type O LastRead -1 FirstWrite 0}
		shifts_5_out {Type O LastRead -1 FirstWrite 0}
		shifts_6_out {Type O LastRead -1 FirstWrite 0}
		shifts_7_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w { ap_none {  { w in_data 0 64 } } }
	fr { ap_none {  { fr in_data 0 64 } } }
	fw { ap_none {  { fw in_data 0 64 } } }
	wide { ap_none {  { wide in_data 0 64 } } }
	wbase { ap_none {  { wbase in_data 0 32 } } }
	ob { ap_none {  { ob in_data 0 16 } } }
	ci { ap_none {  { ci in_data 0 10 } } }
	h { ap_none {  { h in_data 0 16 } } }
	wi { ap_none {  { wi in_data 0 16 } } }
	co { ap_none {  { co in_data 0 10 } } }
	k { ap_none {  { k in_data 0 3 } } }
	stride { ap_none {  { stride in_data 0 2 } } }
	pad { ap_none {  { pad in_data 0 2 } } }
	oh { ap_none {  { oh in_data 0 16 } } }
	ow { ap_none {  { ow in_data 0 16 } } }
	input_r { ap_none {  { input_r in_data 0 32 } } }
	output_r { ap_none {  { output_r in_data 0 32 } } }
	skip { ap_none {  { skip in_data 0 32 } } }
	skipshift { ap_none {  { skipshift in_data 0 32 } } }
	kind { ap_none {  { kind in_data 0 3 } } }
	batch_count { ap_none {  { batch_count in_data 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 48 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 48 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 48 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 48 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 48 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 48 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 48 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 48 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 32 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 32 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 32 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 32 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 32 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 32 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 32 } } }
	w_out { ap_fifo {  { w_out_din fifo_data 1 64 }  { w_out_full_n fifo_status 0 1 }  { w_out_write fifo_update 1 1 } } }
	fr_out { ap_fifo {  { fr_out_din fifo_data 1 64 }  { fr_out_full_n fifo_status 0 1 }  { fr_out_write fifo_update 1 1 } } }
	fw_out { ap_fifo {  { fw_out_din fifo_data 1 64 }  { fw_out_full_n fifo_status 0 1 }  { fw_out_write fifo_update 1 1 } } }
	wide_out { ap_fifo {  { wide_out_din fifo_data 1 64 }  { wide_out_full_n fifo_status 0 1 }  { wide_out_write fifo_update 1 1 } } }
	wbase_out { ap_fifo {  { wbase_out_din fifo_data 1 32 }  { wbase_out_full_n fifo_status 0 1 }  { wbase_out_write fifo_update 1 1 } } }
	ob_out { ap_fifo {  { ob_out_din fifo_data 1 16 }  { ob_out_full_n fifo_status 0 1 }  { ob_out_write fifo_update 1 1 } } }
	ob_out1 { ap_fifo {  { ob_out1_din fifo_data 1 16 }  { ob_out1_full_n fifo_status 0 1 }  { ob_out1_write fifo_update 1 1 } } }
	ci_out { ap_fifo {  { ci_out_din fifo_data 1 10 }  { ci_out_full_n fifo_status 0 1 }  { ci_out_write fifo_update 1 1 } } }
	ci_out2 { ap_fifo {  { ci_out2_din fifo_data 1 10 }  { ci_out2_full_n fifo_status 0 1 }  { ci_out2_write fifo_update 1 1 } } }
	h_out { ap_fifo {  { h_out_din fifo_data 1 16 }  { h_out_full_n fifo_status 0 1 }  { h_out_write fifo_update 1 1 } } }
	wi_out { ap_fifo {  { wi_out_din fifo_data 1 16 }  { wi_out_full_n fifo_status 0 1 }  { wi_out_write fifo_update 1 1 } } }
	co_out { ap_fifo {  { co_out_din fifo_data 1 10 }  { co_out_full_n fifo_status 0 1 }  { co_out_write fifo_update 1 1 } } }
	k_out { ap_fifo {  { k_out_din fifo_data 1 3 }  { k_out_full_n fifo_status 0 1 }  { k_out_write fifo_update 1 1 } } }
	k_out3 { ap_fifo {  { k_out3_din fifo_data 1 3 }  { k_out3_full_n fifo_status 0 1 }  { k_out3_write fifo_update 1 1 } } }
	stride_out { ap_fifo {  { stride_out_din fifo_data 1 2 }  { stride_out_full_n fifo_status 0 1 }  { stride_out_write fifo_update 1 1 } } }
	pad_out { ap_fifo {  { pad_out_din fifo_data 1 2 }  { pad_out_full_n fifo_status 0 1 }  { pad_out_write fifo_update 1 1 } } }
	oh_out { ap_fifo {  { oh_out_din fifo_data 1 16 }  { oh_out_full_n fifo_status 0 1 }  { oh_out_write fifo_update 1 1 } } }
	ow_out { ap_fifo {  { ow_out_din fifo_data 1 16 }  { ow_out_full_n fifo_status 0 1 }  { ow_out_write fifo_update 1 1 } } }
	input_out { ap_fifo {  { input_out_din fifo_data 1 32 }  { input_out_full_n fifo_status 0 1 }  { input_out_write fifo_update 1 1 } } }
	output_out { ap_fifo {  { output_out_din fifo_data 1 32 }  { output_out_full_n fifo_status 0 1 }  { output_out_write fifo_update 1 1 } } }
	skip_out { ap_fifo {  { skip_out_din fifo_data 1 32 }  { skip_out_full_n fifo_status 0 1 }  { skip_out_write fifo_update 1 1 } } }
	skipshift_out { ap_fifo {  { skipshift_out_din fifo_data 1 32 }  { skipshift_out_full_n fifo_status 0 1 }  { skipshift_out_write fifo_update 1 1 } } }
	kind_out { ap_fifo {  { kind_out_din fifo_data 1 3 }  { kind_out_full_n fifo_status 0 1 }  { kind_out_write fifo_update 1 1 } } }
	batch_count_out { ap_fifo {  { batch_count_out_din fifo_data 1 32 }  { batch_count_out_full_n fifo_status 0 1 }  { batch_count_out_write fifo_update 1 1 } } }
	bias_0_out { ap_fifo {  { bias_0_out_din fifo_data 1 48 }  { bias_0_out_full_n fifo_status 0 1 }  { bias_0_out_write fifo_update 1 1 } } }
	bias_1_out { ap_fifo {  { bias_1_out_din fifo_data 1 48 }  { bias_1_out_full_n fifo_status 0 1 }  { bias_1_out_write fifo_update 1 1 } } }
	bias_2_out { ap_fifo {  { bias_2_out_din fifo_data 1 48 }  { bias_2_out_full_n fifo_status 0 1 }  { bias_2_out_write fifo_update 1 1 } } }
	bias_3_out { ap_fifo {  { bias_3_out_din fifo_data 1 48 }  { bias_3_out_full_n fifo_status 0 1 }  { bias_3_out_write fifo_update 1 1 } } }
	bias_4_out { ap_fifo {  { bias_4_out_din fifo_data 1 48 }  { bias_4_out_full_n fifo_status 0 1 }  { bias_4_out_write fifo_update 1 1 } } }
	bias_5_out { ap_fifo {  { bias_5_out_din fifo_data 1 48 }  { bias_5_out_full_n fifo_status 0 1 }  { bias_5_out_write fifo_update 1 1 } } }
	bias_6_out { ap_fifo {  { bias_6_out_din fifo_data 1 48 }  { bias_6_out_full_n fifo_status 0 1 }  { bias_6_out_write fifo_update 1 1 } } }
	bias_7_out { ap_fifo {  { bias_7_out_din fifo_data 1 48 }  { bias_7_out_full_n fifo_status 0 1 }  { bias_7_out_write fifo_update 1 1 } } }
	shifts_0_out { ap_fifo {  { shifts_0_out_din fifo_data 1 32 }  { shifts_0_out_full_n fifo_status 0 1 }  { shifts_0_out_write fifo_update 1 1 } } }
	shifts_1_out { ap_fifo {  { shifts_1_out_din fifo_data 1 32 }  { shifts_1_out_full_n fifo_status 0 1 }  { shifts_1_out_write fifo_update 1 1 } } }
	shifts_2_out { ap_fifo {  { shifts_2_out_din fifo_data 1 32 }  { shifts_2_out_full_n fifo_status 0 1 }  { shifts_2_out_write fifo_update 1 1 } } }
	shifts_3_out { ap_fifo {  { shifts_3_out_din fifo_data 1 32 }  { shifts_3_out_full_n fifo_status 0 1 }  { shifts_3_out_write fifo_update 1 1 } } }
	shifts_4_out { ap_fifo {  { shifts_4_out_din fifo_data 1 32 }  { shifts_4_out_full_n fifo_status 0 1 }  { shifts_4_out_write fifo_update 1 1 } } }
	shifts_5_out { ap_fifo {  { shifts_5_out_din fifo_data 1 32 }  { shifts_5_out_full_n fifo_status 0 1 }  { shifts_5_out_write fifo_update 1 1 } } }
	shifts_6_out { ap_fifo {  { shifts_6_out_din fifo_data 1 32 }  { shifts_6_out_full_n fifo_status 0 1 }  { shifts_6_out_write fifo_update 1 1 } } }
	shifts_7_out { ap_fifo {  { shifts_7_out_din fifo_data 1 32 }  { shifts_7_out_full_n fifo_status 0 1 }  { shifts_7_out_write fifo_update 1 1 } } }
}
