set moduleName p_anonymous_namespace_maxpool
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
set C_modelName {(anonymous namespace)maxpool}
set C_modelType { void 0 }
set C_modelArgList {
	{ feature_mem int 64 regular {axi_master 2}  }
	{ f int 64 regular  }
	{ input_r int 32 regular  }
	{ output_r int 32 regular  }
	{ channels uint 10 regular  }
	{ h uint 8 regular  }
	{ k uint 2 regular  }
	{ pad uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "feature_mem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "f", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "channels", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_feature_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_feature_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_feature_mem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_mem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_mem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_mem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_mem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_mem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_mem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_mem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_feature_mem_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_feature_mem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_feature_mem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_feature_mem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_mem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_mem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_mem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_mem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_mem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_mem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_mem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_feature_mem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_feature_mem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_mem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_feature_mem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_feature_mem_BUSER sc_in sc_lv 1 signal 0 } 
	{ f sc_in sc_lv 64 signal 1 } 
	{ input_r sc_in sc_lv 32 signal 2 } 
	{ output_r sc_in sc_lv 32 signal 3 } 
	{ channels sc_in sc_lv 10 signal 4 } 
	{ h sc_in sc_lv 8 signal 5 } 
	{ k sc_in sc_lv 2 signal 6 } 
	{ pad sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_feature_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_feature_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_feature_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_feature_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWID" }} , 
 	{ "name": "m_axi_feature_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_feature_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_feature_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_feature_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_feature_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_feature_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_feature_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_feature_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_feature_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_feature_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_feature_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_feature_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_feature_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feature_mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_feature_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_feature_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "WID" }} , 
 	{ "name": "m_axi_feature_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_feature_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_feature_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_feature_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_feature_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARID" }} , 
 	{ "name": "m_axi_feature_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_feature_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_feature_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_feature_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_feature_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_feature_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_feature_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_feature_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_feature_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_feature_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_feature_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_feature_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_feature_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_feature_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "RID" }} , 
 	{ "name": "m_axi_feature_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_feature_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_feature_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_feature_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_feature_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_feature_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "BID" }} , 
 	{ "name": "m_axi_feature_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "BUSER" }} , 
 	{ "name": "f", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "f", "role": "default" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "output_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "default" }} , 
 	{ "name": "channels", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "channels", "role": "default" }} , 
 	{ "name": "h", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "pad", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "p_anonymous_namespace_maxpool",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "feature_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "channels", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packed_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2ns_2ns_4_1_1_U1295", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_16ns_32_2_1_U1296", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U1297", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_9ns_16ns_30_4_1_U1298", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_14ns_8ns_22_4_1_U1299", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14ns_16ns_16ns_30_4_1_U1300", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_9ns_26_4_1_U1301", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_22ns_15ns_9ns_30ns_32_4_1_U1302", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_9ns_26_4_1_U1303", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_maxpool {
		feature_mem {Type IO LastRead 23 FirstWrite 24}
		f {Type I LastRead 3 FirstWrite -1}
		input_r {Type I LastRead 3 FirstWrite -1}
		output_r {Type I LastRead 3 FirstWrite -1}
		channels {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	feature_mem { m_axi {  { m_axi_feature_mem_AWVALID VALID 1 1 }  { m_axi_feature_mem_AWREADY READY 0 1 }  { m_axi_feature_mem_AWADDR ADDR 1 64 }  { m_axi_feature_mem_AWID ID 1 1 }  { m_axi_feature_mem_AWLEN LEN 1 32 }  { m_axi_feature_mem_AWSIZE SIZE 1 3 }  { m_axi_feature_mem_AWBURST BURST 1 2 }  { m_axi_feature_mem_AWLOCK LOCK 1 2 }  { m_axi_feature_mem_AWCACHE CACHE 1 4 }  { m_axi_feature_mem_AWPROT PROT 1 3 }  { m_axi_feature_mem_AWQOS QOS 1 4 }  { m_axi_feature_mem_AWREGION REGION 1 4 }  { m_axi_feature_mem_AWUSER USER 1 1 }  { m_axi_feature_mem_WVALID VALID 1 1 }  { m_axi_feature_mem_WREADY READY 0 1 }  { m_axi_feature_mem_WDATA DATA 1 64 }  { m_axi_feature_mem_WSTRB STRB 1 8 }  { m_axi_feature_mem_WLAST LAST 1 1 }  { m_axi_feature_mem_WID ID 1 1 }  { m_axi_feature_mem_WUSER USER 1 1 }  { m_axi_feature_mem_ARVALID VALID 1 1 }  { m_axi_feature_mem_ARREADY READY 0 1 }  { m_axi_feature_mem_ARADDR ADDR 1 64 }  { m_axi_feature_mem_ARID ID 1 1 }  { m_axi_feature_mem_ARLEN LEN 1 32 }  { m_axi_feature_mem_ARSIZE SIZE 1 3 }  { m_axi_feature_mem_ARBURST BURST 1 2 }  { m_axi_feature_mem_ARLOCK LOCK 1 2 }  { m_axi_feature_mem_ARCACHE CACHE 1 4 }  { m_axi_feature_mem_ARPROT PROT 1 3 }  { m_axi_feature_mem_ARQOS QOS 1 4 }  { m_axi_feature_mem_ARREGION REGION 1 4 }  { m_axi_feature_mem_ARUSER USER 1 1 }  { m_axi_feature_mem_RVALID VALID 0 1 }  { m_axi_feature_mem_RREADY READY 1 1 }  { m_axi_feature_mem_RDATA DATA 0 64 }  { m_axi_feature_mem_RLAST LAST 0 1 }  { m_axi_feature_mem_RID ID 0 1 }  { m_axi_feature_mem_RUSER USER 0 1 }  { m_axi_feature_mem_RRESP RESP 0 2 }  { m_axi_feature_mem_BVALID VALID 0 1 }  { m_axi_feature_mem_BREADY READY 1 1 }  { m_axi_feature_mem_BRESP RESP 0 2 }  { m_axi_feature_mem_BID ID 0 1 }  { m_axi_feature_mem_BUSER USER 0 1 } } }
	f { ap_none {  { f in_data 0 64 } } }
	input_r { ap_none {  { input_r in_data 0 32 } } }
	output_r { ap_none {  { output_r in_data 0 32 } } }
	channels { ap_none {  { channels in_data 0 10 } } }
	h { ap_none {  { h in_data 0 8 } } }
	k { ap_none {  { k in_data 0 2 } } }
	pad { ap_none {  { pad in_data 0 1 } } }
}
