set moduleName p_anonymous_namespace_load_uncached
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {(anonymous namespace)load_uncached}
set C_modelType { void 0 }
set C_modelArgList {
	{ feature_read int 64 regular {axi_master 0}  }
	{ pixels int 64 regular {fifo 1 volatile }  }
	{ f int 64 regular  }
	{ input_r int 32 regular  }
	{ ci uint 10 regular  }
	{ h uint 16 regular  }
	{ rw uint 16 regular  }
	{ ph uint 4 regular  }
	{ keep uint 4 regular  }
	{ stride uint 2 regular  }
	{ pad uint 2 regular  }
	{ oh uint 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "feature_read", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pixels", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rw", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ph", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "keep", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "oh", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ m_axi_feature_read_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_read_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_read_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_feature_read_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_read_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_feature_read_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_read_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_read_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_read_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_read_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_read_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_read_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_read_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_read_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_read_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_read_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_feature_read_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_feature_read_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_read_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_read_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_read_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_read_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_read_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_feature_read_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_read_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_feature_read_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_read_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_read_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_feature_read_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_read_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_feature_read_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_read_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_feature_read_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_feature_read_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_read_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_read_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_feature_read_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_read_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_feature_read_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_feature_read_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_feature_read_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_feature_read_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_feature_read_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_feature_read_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_feature_read_BUSER sc_in sc_lv 1 signal 0 } 
	{ pixels_din sc_out sc_lv 64 signal 1 } 
	{ pixels_full_n sc_in sc_logic 1 signal 1 } 
	{ pixels_write sc_out sc_logic 1 signal 1 } 
	{ f sc_in sc_lv 64 signal 2 } 
	{ input_r sc_in sc_lv 32 signal 3 } 
	{ ci sc_in sc_lv 10 signal 4 } 
	{ h sc_in sc_lv 16 signal 5 } 
	{ rw sc_in sc_lv 16 signal 6 } 
	{ ph sc_in sc_lv 4 signal 7 } 
	{ keep sc_in sc_lv 4 signal 8 } 
	{ stride sc_in sc_lv 2 signal 9 } 
	{ pad sc_in sc_lv 2 signal 10 } 
	{ oh sc_in sc_lv 16 signal 11 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ f_ap_vld sc_in sc_logic 1 invld 2 } 
	{ input_r_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ci_ap_vld sc_in sc_logic 1 invld 4 } 
	{ h_ap_vld sc_in sc_logic 1 invld 5 } 
	{ rw_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ph_ap_vld sc_in sc_logic 1 invld 7 } 
	{ keep_ap_vld sc_in sc_logic 1 invld 8 } 
	{ stride_ap_vld sc_in sc_logic 1 invld 9 } 
	{ pad_ap_vld sc_in sc_logic 1 invld 10 } 
	{ oh_ap_vld sc_in sc_logic 1 invld 11 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_feature_read_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "AWVALID" }} , 
 	{ "name": "m_axi_feature_read_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "AWREADY" }} , 
 	{ "name": "m_axi_feature_read_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_read", "role": "AWADDR" }} , 
 	{ "name": "m_axi_feature_read_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "AWID" }} , 
 	{ "name": "m_axi_feature_read_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feature_read", "role": "AWLEN" }} , 
 	{ "name": "m_axi_feature_read_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_read", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_feature_read_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_read", "role": "AWBURST" }} , 
 	{ "name": "m_axi_feature_read_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_read", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_feature_read_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_read", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_feature_read_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_read", "role": "AWPROT" }} , 
 	{ "name": "m_axi_feature_read_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_read", "role": "AWQOS" }} , 
 	{ "name": "m_axi_feature_read_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_read", "role": "AWREGION" }} , 
 	{ "name": "m_axi_feature_read_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "AWUSER" }} , 
 	{ "name": "m_axi_feature_read_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "WVALID" }} , 
 	{ "name": "m_axi_feature_read_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "WREADY" }} , 
 	{ "name": "m_axi_feature_read_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_read", "role": "WDATA" }} , 
 	{ "name": "m_axi_feature_read_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feature_read", "role": "WSTRB" }} , 
 	{ "name": "m_axi_feature_read_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "WLAST" }} , 
 	{ "name": "m_axi_feature_read_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "WID" }} , 
 	{ "name": "m_axi_feature_read_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "WUSER" }} , 
 	{ "name": "m_axi_feature_read_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "ARVALID" }} , 
 	{ "name": "m_axi_feature_read_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "ARREADY" }} , 
 	{ "name": "m_axi_feature_read_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_read", "role": "ARADDR" }} , 
 	{ "name": "m_axi_feature_read_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "ARID" }} , 
 	{ "name": "m_axi_feature_read_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feature_read", "role": "ARLEN" }} , 
 	{ "name": "m_axi_feature_read_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_read", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_feature_read_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_read", "role": "ARBURST" }} , 
 	{ "name": "m_axi_feature_read_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_read", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_feature_read_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_read", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_feature_read_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "feature_read", "role": "ARPROT" }} , 
 	{ "name": "m_axi_feature_read_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_read", "role": "ARQOS" }} , 
 	{ "name": "m_axi_feature_read_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "feature_read", "role": "ARREGION" }} , 
 	{ "name": "m_axi_feature_read_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "ARUSER" }} , 
 	{ "name": "m_axi_feature_read_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "RVALID" }} , 
 	{ "name": "m_axi_feature_read_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "RREADY" }} , 
 	{ "name": "m_axi_feature_read_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_read", "role": "RDATA" }} , 
 	{ "name": "m_axi_feature_read_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "RLAST" }} , 
 	{ "name": "m_axi_feature_read_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "RID" }} , 
 	{ "name": "m_axi_feature_read_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "RUSER" }} , 
 	{ "name": "m_axi_feature_read_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_read", "role": "RRESP" }} , 
 	{ "name": "m_axi_feature_read_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "BVALID" }} , 
 	{ "name": "m_axi_feature_read_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "BREADY" }} , 
 	{ "name": "m_axi_feature_read_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_read", "role": "BRESP" }} , 
 	{ "name": "m_axi_feature_read_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "BID" }} , 
 	{ "name": "m_axi_feature_read_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "BUSER" }} , 
 	{ "name": "pixels_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pixels", "role": "din" }} , 
 	{ "name": "pixels_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels", "role": "full_n" }} , 
 	{ "name": "pixels_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels", "role": "write" }} , 
 	{ "name": "f", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "f", "role": "default" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "ci", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "default" }} , 
 	{ "name": "h", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h", "role": "default" }} , 
 	{ "name": "rw", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rw", "role": "default" }} , 
 	{ "name": "ph", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ph", "role": "default" }} , 
 	{ "name": "keep", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keep", "role": "default" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "pad", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "default" }} , 
 	{ "name": "oh", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "f_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "f", "role": "ap_vld" }} , 
 	{ "name": "input_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_r", "role": "ap_vld" }} , 
 	{ "name": "ci_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ci", "role": "ap_vld" }} , 
 	{ "name": "h_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "h", "role": "ap_vld" }} , 
 	{ "name": "rw_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rw", "role": "ap_vld" }} , 
 	{ "name": "ph_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ph", "role": "ap_vld" }} , 
 	{ "name": "keep_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "keep", "role": "ap_vld" }} , 
 	{ "name": "stride_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stride", "role": "ap_vld" }} , 
 	{ "name": "pad_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pad", "role": "ap_vld" }} , 
 	{ "name": "oh_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "oh", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "p_anonymous_namespace_load_uncached",
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
			{"ID" : "1", "Name" : "p_anonymous_namespace_read_fresh_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "p_anonymous_namespace_assemble_rows_U0"}],
		"Port" : [
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "p_anonymous_namespace_read_fresh_U0", "Port" : "feature_read"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "p_anonymous_namespace_assemble_rows_U0", "Port" : "pixels"}]},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "rw", "Type" : "None", "Direction" : "I"},
			{"Name" : "ph", "Type" : "None", "Direction" : "I"},
			{"Name" : "keep", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "oh", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_fresh_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "p_anonymous_namespace_read_fresh",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "feature_read_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "feature_read_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "16", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fresh_words_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "rw", "Type" : "None", "Direction" : "I"},
			{"Name" : "ph", "Type" : "None", "Direction" : "I"},
			{"Name" : "keep", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "oh", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_fresh_U0.mul_31s_16ns_32_2_1_U243", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_fresh_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U244", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_fresh_U0.mul_mul_16s_16s_16_4_1_U245", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_fresh_U0.mul_mul_16s_16s_16_4_1_U246", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_fresh_U0.mac_muladd_14ns_16ns_16s_31_4_1_U247", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_p_anonymous_namespace_assemble_rows_U0_U",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state18_pp0_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter7", "FromFinalOperation" : "ap_enable_operation_185", "FromFinalSV" : "17", "FromAddress" : "overlap_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state19_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_193", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter8_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_193", "ToFinalSV" : "18", "ToAddress" : "overlap_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_193", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter8_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_193", "FromFinalSV" : "18", "FromAddress" : "overlap_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state18_pp0_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter7", "ToFinalOperation" : "ap_enable_operation_185", "ToFinalSV" : "17", "ToAddress" : "overlap_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter6_stage0", "ap_enable_state18_pp0_iter7_stage0", "ap_enable_state19_pp0_iter8_stage0"]}],
		"Port" : [
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fresh_words_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pixels_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.overlap_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.mul_4ns_16ns_20_1_1_U272", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.mul_11s_4s_11_1_1_U273", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.mul_11s_4s_11_1_1_U274", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.mul_mul_9ns_20ns_34_4_1_U275", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U276", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.mul_mul_11s_11s_11_4_1_U277", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_assemble_rows_U0.mul_mul_11s_11s_11_4_1_U278", "Parent" : "7"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fresh_words_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ci_c_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_c_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rw_c_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ph_c_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keep_c_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stride_c_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_c_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.oh_c_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_assemble_rows_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_load_uncached {
		feature_read {Type I LastRead 25 FirstWrite -1}
		pixels {Type O LastRead -1 FirstWrite 18}
		f {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		rw {Type I LastRead 0 FirstWrite -1}
		ph {Type I LastRead 0 FirstWrite -1}
		keep {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_read_fresh {
		feature_read {Type I LastRead 25 FirstWrite -1}
		fresh_words {Type O LastRead -1 FirstWrite 26}
		f {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		rw {Type I LastRead 0 FirstWrite -1}
		ph {Type I LastRead 0 FirstWrite -1}
		keep {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ci_out {Type O LastRead -1 FirstWrite 0}
		h_out {Type O LastRead -1 FirstWrite 0}
		rw_out {Type O LastRead -1 FirstWrite 0}
		ph_out {Type O LastRead -1 FirstWrite 0}
		keep_out {Type O LastRead -1 FirstWrite 0}
		stride_out {Type O LastRead -1 FirstWrite 0}
		pad_out {Type O LastRead -1 FirstWrite 0}
		oh_out {Type O LastRead -1 FirstWrite 0}}
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
]}

set Spec2ImplPortList { 
	feature_read { m_axi {  { m_axi_feature_read_AWVALID VALID 1 1 }  { m_axi_feature_read_AWREADY READY 0 1 }  { m_axi_feature_read_AWADDR ADDR 1 64 }  { m_axi_feature_read_AWID ID 1 1 }  { m_axi_feature_read_AWLEN LEN 1 32 }  { m_axi_feature_read_AWSIZE SIZE 1 3 }  { m_axi_feature_read_AWBURST BURST 1 2 }  { m_axi_feature_read_AWLOCK LOCK 1 2 }  { m_axi_feature_read_AWCACHE CACHE 1 4 }  { m_axi_feature_read_AWPROT PROT 1 3 }  { m_axi_feature_read_AWQOS QOS 1 4 }  { m_axi_feature_read_AWREGION REGION 1 4 }  { m_axi_feature_read_AWUSER USER 1 1 }  { m_axi_feature_read_WVALID VALID 1 1 }  { m_axi_feature_read_WREADY READY 0 1 }  { m_axi_feature_read_WDATA DATA 1 64 }  { m_axi_feature_read_WSTRB STRB 1 8 }  { m_axi_feature_read_WLAST LAST 1 1 }  { m_axi_feature_read_WID ID 1 1 }  { m_axi_feature_read_WUSER USER 1 1 }  { m_axi_feature_read_ARVALID VALID 1 1 }  { m_axi_feature_read_ARREADY READY 0 1 }  { m_axi_feature_read_ARADDR ADDR 1 64 }  { m_axi_feature_read_ARID ID 1 1 }  { m_axi_feature_read_ARLEN LEN 1 32 }  { m_axi_feature_read_ARSIZE SIZE 1 3 }  { m_axi_feature_read_ARBURST BURST 1 2 }  { m_axi_feature_read_ARLOCK LOCK 1 2 }  { m_axi_feature_read_ARCACHE CACHE 1 4 }  { m_axi_feature_read_ARPROT PROT 1 3 }  { m_axi_feature_read_ARQOS QOS 1 4 }  { m_axi_feature_read_ARREGION REGION 1 4 }  { m_axi_feature_read_ARUSER USER 1 1 }  { m_axi_feature_read_RVALID VALID 0 1 }  { m_axi_feature_read_RREADY READY 1 1 }  { m_axi_feature_read_RDATA DATA 0 64 }  { m_axi_feature_read_RLAST LAST 0 1 }  { m_axi_feature_read_RID ID 0 1 }  { m_axi_feature_read_RUSER USER 0 1 }  { m_axi_feature_read_RRESP RESP 0 2 }  { m_axi_feature_read_BVALID VALID 0 1 }  { m_axi_feature_read_BREADY READY 1 1 }  { m_axi_feature_read_BRESP RESP 0 2 }  { m_axi_feature_read_BID ID 0 1 }  { m_axi_feature_read_BUSER USER 0 1 } } }
	pixels { ap_fifo {  { pixels_din fifo_data 1 64 }  { pixels_full_n fifo_status 0 1 }  { pixels_write fifo_update 1 1 } } }
	f { ap_none {  { f in_data 0 64 }  { f_ap_vld in_vld 0 1 } } }
	input_r { ap_none {  { input_r in_data 0 32 }  { input_r_ap_vld in_vld 0 1 } } }
	ci { ap_none {  { ci in_data 0 10 }  { ci_ap_vld in_vld 0 1 } } }
	h { ap_none {  { h in_data 0 16 }  { h_ap_vld in_vld 0 1 } } }
	rw { ap_none {  { rw in_data 0 16 }  { rw_ap_vld in_vld 0 1 } } }
	ph { ap_none {  { ph in_data 0 4 }  { ph_ap_vld in_vld 0 1 } } }
	keep { ap_none {  { keep in_data 0 4 }  { keep_ap_vld in_vld 0 1 } } }
	stride { ap_none {  { stride in_data 0 2 }  { stride_ap_vld in_vld 0 1 } } }
	pad { ap_none {  { pad in_data 0 2 }  { pad_ap_vld in_vld 0 1 } } }
	oh { ap_none {  { oh in_data 0 16 }  { oh_ap_vld in_vld 0 1 } } }
}
