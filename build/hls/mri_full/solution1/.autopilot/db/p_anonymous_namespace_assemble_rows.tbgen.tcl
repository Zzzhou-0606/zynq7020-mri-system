set moduleName p_anonymous_namespace_assemble_rows
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
set C_modelName {(anonymous namespace)assemble_rows}
set C_modelType { void 0 }
set C_modelArgList {
	{ fresh_words int 64 regular {fifo 0 volatile }  }
	{ pixels int 64 regular {fifo 1 volatile }  }
	{ ci int 10 regular {fifo 0}  }
	{ h int 16 regular {fifo 0}  }
	{ rw int 16 regular {fifo 0}  }
	{ ph int 4 regular {fifo 0}  }
	{ keep int 4 regular {fifo 0}  }
	{ stride int 2 regular {fifo 0}  }
	{ pad int 2 regular {fifo 0}  }
	{ oh int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fresh_words", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pixels", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ci", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rw", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ph", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "keep", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "oh", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fresh_words_dout sc_in sc_lv 64 signal 0 } 
	{ fresh_words_empty_n sc_in sc_logic 1 signal 0 } 
	{ fresh_words_read sc_out sc_logic 1 signal 0 } 
	{ pixels_din sc_out sc_lv 64 signal 1 } 
	{ pixels_full_n sc_in sc_logic 1 signal 1 } 
	{ pixels_write sc_out sc_logic 1 signal 1 } 
	{ ci_dout sc_in sc_lv 10 signal 2 } 
	{ ci_empty_n sc_in sc_logic 1 signal 2 } 
	{ ci_read sc_out sc_logic 1 signal 2 } 
	{ h_dout sc_in sc_lv 16 signal 3 } 
	{ h_empty_n sc_in sc_logic 1 signal 3 } 
	{ h_read sc_out sc_logic 1 signal 3 } 
	{ rw_dout sc_in sc_lv 16 signal 4 } 
	{ rw_empty_n sc_in sc_logic 1 signal 4 } 
	{ rw_read sc_out sc_logic 1 signal 4 } 
	{ ph_dout sc_in sc_lv 4 signal 5 } 
	{ ph_empty_n sc_in sc_logic 1 signal 5 } 
	{ ph_read sc_out sc_logic 1 signal 5 } 
	{ keep_dout sc_in sc_lv 4 signal 6 } 
	{ keep_empty_n sc_in sc_logic 1 signal 6 } 
	{ keep_read sc_out sc_logic 1 signal 6 } 
	{ stride_dout sc_in sc_lv 2 signal 7 } 
	{ stride_empty_n sc_in sc_logic 1 signal 7 } 
	{ stride_read sc_out sc_logic 1 signal 7 } 
	{ pad_dout sc_in sc_lv 2 signal 8 } 
	{ pad_empty_n sc_in sc_logic 1 signal 8 } 
	{ pad_read sc_out sc_logic 1 signal 8 } 
	{ oh_dout sc_in sc_lv 16 signal 9 } 
	{ oh_empty_n sc_in sc_logic 1 signal 9 } 
	{ oh_read sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fresh_words_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fresh_words", "role": "dout" }} , 
 	{ "name": "fresh_words_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fresh_words", "role": "empty_n" }} , 
 	{ "name": "fresh_words_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fresh_words", "role": "read" }} , 
 	{ "name": "pixels_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pixels", "role": "din" }} , 
 	{ "name": "pixels_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels", "role": "full_n" }} , 
 	{ "name": "pixels_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels", "role": "write" }} , 
 	{ "name": "ci_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "dout" }} , 
 	{ "name": "ci_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "empty_n" }} , 
 	{ "name": "ci_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "read" }} , 
 	{ "name": "h_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h", "role": "dout" }} , 
 	{ "name": "h_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "empty_n" }} , 
 	{ "name": "h_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "read" }} , 
 	{ "name": "rw_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rw", "role": "dout" }} , 
 	{ "name": "rw_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rw", "role": "empty_n" }} , 
 	{ "name": "rw_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rw", "role": "read" }} , 
 	{ "name": "ph_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ph", "role": "dout" }} , 
 	{ "name": "ph_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ph", "role": "empty_n" }} , 
 	{ "name": "ph_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ph", "role": "read" }} , 
 	{ "name": "keep_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keep", "role": "dout" }} , 
 	{ "name": "keep_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keep", "role": "empty_n" }} , 
 	{ "name": "keep_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keep", "role": "read" }} , 
 	{ "name": "stride_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "dout" }} , 
 	{ "name": "stride_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "empty_n" }} , 
 	{ "name": "stride_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "read" }} , 
 	{ "name": "pad_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "dout" }} , 
 	{ "name": "pad_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "empty_n" }} , 
 	{ "name": "pad_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "read" }} , 
 	{ "name": "oh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh", "role": "dout" }} , 
 	{ "name": "oh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "empty_n" }} , 
 	{ "name": "oh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "p_anonymous_namespace_assemble_rows",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state18_pp0_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter7", "FromFinalOperation" : "ap_enable_operation_185", "FromFinalSV" : "17", "FromAddress" : "overlap_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state19_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_193", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter8_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_193", "ToFinalSV" : "18", "ToAddress" : "overlap_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_193", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter8_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_193", "FromFinalSV" : "18", "FromAddress" : "overlap_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state18_pp0_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter7", "ToFinalOperation" : "ap_enable_operation_185", "ToFinalSV" : "17", "ToAddress" : "overlap_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter6_stage0", "ap_enable_state18_pp0_iter7_stage0", "ap_enable_state19_pp0_iter8_stage0"]}],
		"Port" : [
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fresh_words_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pixels_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.overlap_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4ns_16ns_20_1_1_U272", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_4s_11_1_1_U273", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_4s_11_1_1_U274", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_9ns_20ns_34_4_1_U275", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_16s_2ns_2ns_16_4_1_U276", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11s_11s_11_4_1_U277", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11s_11s_11_4_1_U278", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_assemble_rows {
		fresh_words {Type I LastRead 17 FirstWrite -1}
		pixels {Type O LastRead -1 FirstWrite 18}
		ci {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		rw {Type I LastRead 0 FirstWrite -1}
		ph {Type I LastRead 0 FirstWrite -1}
		keep {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fresh_words { ap_fifo {  { fresh_words_dout fifo_data 0 64 }  { fresh_words_empty_n fifo_status 0 1 }  { fresh_words_read fifo_update 1 1 } } }
	pixels { ap_fifo {  { pixels_din fifo_data 1 64 }  { pixels_full_n fifo_status 0 1 }  { pixels_write fifo_update 1 1 } } }
	ci { ap_fifo {  { ci_dout fifo_data 0 10 }  { ci_empty_n fifo_status 0 1 }  { ci_read fifo_update 1 1 } } }
	h { ap_fifo {  { h_dout fifo_data 0 16 }  { h_empty_n fifo_status 0 1 }  { h_read fifo_update 1 1 } } }
	rw { ap_fifo {  { rw_dout fifo_data 0 16 }  { rw_empty_n fifo_status 0 1 }  { rw_read fifo_update 1 1 } } }
	ph { ap_fifo {  { ph_dout fifo_data 0 4 }  { ph_empty_n fifo_status 0 1 }  { ph_read fifo_update 1 1 } } }
	keep { ap_fifo {  { keep_dout fifo_data 0 4 }  { keep_empty_n fifo_status 0 1 }  { keep_read fifo_update 1 1 } } }
	stride { ap_fifo {  { stride_dout fifo_data 0 2 }  { stride_empty_n fifo_status 0 1 }  { stride_read fifo_update 1 1 } } }
	pad { ap_fifo {  { pad_dout fifo_data 0 2 }  { pad_empty_n fifo_status 0 1 }  { pad_read fifo_update 1 1 } } }
	oh { ap_fifo {  { oh_dout fifo_data 0 16 }  { oh_empty_n fifo_status 0 1 }  { oh_read fifo_update 1 1 } } }
}
