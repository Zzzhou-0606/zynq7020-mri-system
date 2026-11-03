set moduleName p_anonymous_namespace_read_fresh
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
set C_modelName {(anonymous namespace)read_fresh}
set C_modelType { void 0 }
set C_modelArgList {
	{ feature_read int 64 regular {axi_master 0}  }
	{ fresh_words int 64 regular {fifo 1 volatile }  }
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
	{ ci_out int 10 regular {fifo 1}  }
	{ h_out int 16 regular {fifo 1}  }
	{ rw_out int 16 regular {fifo 1}  }
	{ ph_out int 4 regular {fifo 1}  }
	{ keep_out int 4 regular {fifo 1}  }
	{ stride_out int 2 regular {fifo 1}  }
	{ pad_out int 2 regular {fifo 1}  }
	{ oh_out int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "feature_read", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fresh_words", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rw", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ph", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "keep", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "oh", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ci_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rw_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ph_out", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "keep_out", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stride_out", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pad_out", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "oh_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 92
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
	{ fresh_words_din sc_out sc_lv 64 signal 1 } 
	{ fresh_words_full_n sc_in sc_logic 1 signal 1 } 
	{ fresh_words_write sc_out sc_logic 1 signal 1 } 
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
	{ ci_out_din sc_out sc_lv 10 signal 12 } 
	{ ci_out_full_n sc_in sc_logic 1 signal 12 } 
	{ ci_out_write sc_out sc_logic 1 signal 12 } 
	{ h_out_din sc_out sc_lv 16 signal 13 } 
	{ h_out_full_n sc_in sc_logic 1 signal 13 } 
	{ h_out_write sc_out sc_logic 1 signal 13 } 
	{ rw_out_din sc_out sc_lv 16 signal 14 } 
	{ rw_out_full_n sc_in sc_logic 1 signal 14 } 
	{ rw_out_write sc_out sc_logic 1 signal 14 } 
	{ ph_out_din sc_out sc_lv 4 signal 15 } 
	{ ph_out_full_n sc_in sc_logic 1 signal 15 } 
	{ ph_out_write sc_out sc_logic 1 signal 15 } 
	{ keep_out_din sc_out sc_lv 4 signal 16 } 
	{ keep_out_full_n sc_in sc_logic 1 signal 16 } 
	{ keep_out_write sc_out sc_logic 1 signal 16 } 
	{ stride_out_din sc_out sc_lv 2 signal 17 } 
	{ stride_out_full_n sc_in sc_logic 1 signal 17 } 
	{ stride_out_write sc_out sc_logic 1 signal 17 } 
	{ pad_out_din sc_out sc_lv 2 signal 18 } 
	{ pad_out_full_n sc_in sc_logic 1 signal 18 } 
	{ pad_out_write sc_out sc_logic 1 signal 18 } 
	{ oh_out_din sc_out sc_lv 16 signal 19 } 
	{ oh_out_full_n sc_in sc_logic 1 signal 19 } 
	{ oh_out_write sc_out sc_logic 1 signal 19 } 
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
 	{ "name": "fresh_words_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fresh_words", "role": "din" }} , 
 	{ "name": "fresh_words_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fresh_words", "role": "full_n" }} , 
 	{ "name": "fresh_words_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fresh_words", "role": "write" }} , 
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
 	{ "name": "ci_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci_out", "role": "din" }} , 
 	{ "name": "ci_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out", "role": "full_n" }} , 
 	{ "name": "ci_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci_out", "role": "write" }} , 
 	{ "name": "h_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h_out", "role": "din" }} , 
 	{ "name": "h_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_out", "role": "full_n" }} , 
 	{ "name": "h_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_out", "role": "write" }} , 
 	{ "name": "rw_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rw_out", "role": "din" }} , 
 	{ "name": "rw_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rw_out", "role": "full_n" }} , 
 	{ "name": "rw_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rw_out", "role": "write" }} , 
 	{ "name": "ph_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ph_out", "role": "din" }} , 
 	{ "name": "ph_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ph_out", "role": "full_n" }} , 
 	{ "name": "ph_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ph_out", "role": "write" }} , 
 	{ "name": "keep_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keep_out", "role": "din" }} , 
 	{ "name": "keep_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keep_out", "role": "full_n" }} , 
 	{ "name": "keep_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keep_out", "role": "write" }} , 
 	{ "name": "stride_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride_out", "role": "din" }} , 
 	{ "name": "stride_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "full_n" }} , 
 	{ "name": "stride_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "write" }} , 
 	{ "name": "pad_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad_out", "role": "din" }} , 
 	{ "name": "pad_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_out", "role": "full_n" }} , 
 	{ "name": "pad_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad_out", "role": "write" }} , 
 	{ "name": "oh_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh_out", "role": "din" }} , 
 	{ "name": "oh_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh_out", "role": "full_n" }} , 
 	{ "name": "oh_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
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
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_16ns_32_2_1_U243", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mul_sub_16s_2ns_2ns_16_4_1_U244", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U245", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_16_4_1_U246", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_14ns_16ns_16s_31_4_1_U247", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		oh_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	feature_read { m_axi {  { m_axi_feature_read_AWVALID VALID 1 1 }  { m_axi_feature_read_AWREADY READY 0 1 }  { m_axi_feature_read_AWADDR ADDR 1 64 }  { m_axi_feature_read_AWID ID 1 1 }  { m_axi_feature_read_AWLEN LEN 1 32 }  { m_axi_feature_read_AWSIZE SIZE 1 3 }  { m_axi_feature_read_AWBURST BURST 1 2 }  { m_axi_feature_read_AWLOCK LOCK 1 2 }  { m_axi_feature_read_AWCACHE CACHE 1 4 }  { m_axi_feature_read_AWPROT PROT 1 3 }  { m_axi_feature_read_AWQOS QOS 1 4 }  { m_axi_feature_read_AWREGION REGION 1 4 }  { m_axi_feature_read_AWUSER USER 1 1 }  { m_axi_feature_read_WVALID VALID 1 1 }  { m_axi_feature_read_WREADY READY 0 1 }  { m_axi_feature_read_WDATA DATA 1 64 }  { m_axi_feature_read_WSTRB STRB 1 8 }  { m_axi_feature_read_WLAST LAST 1 1 }  { m_axi_feature_read_WID ID 1 1 }  { m_axi_feature_read_WUSER USER 1 1 }  { m_axi_feature_read_ARVALID VALID 1 1 }  { m_axi_feature_read_ARREADY READY 0 1 }  { m_axi_feature_read_ARADDR ADDR 1 64 }  { m_axi_feature_read_ARID ID 1 1 }  { m_axi_feature_read_ARLEN LEN 1 32 }  { m_axi_feature_read_ARSIZE SIZE 1 3 }  { m_axi_feature_read_ARBURST BURST 1 2 }  { m_axi_feature_read_ARLOCK LOCK 1 2 }  { m_axi_feature_read_ARCACHE CACHE 1 4 }  { m_axi_feature_read_ARPROT PROT 1 3 }  { m_axi_feature_read_ARQOS QOS 1 4 }  { m_axi_feature_read_ARREGION REGION 1 4 }  { m_axi_feature_read_ARUSER USER 1 1 }  { m_axi_feature_read_RVALID VALID 0 1 }  { m_axi_feature_read_RREADY READY 1 1 }  { m_axi_feature_read_RDATA DATA 0 64 }  { m_axi_feature_read_RLAST LAST 0 1 }  { m_axi_feature_read_RID ID 0 1 }  { m_axi_feature_read_RUSER USER 0 1 }  { m_axi_feature_read_RRESP RESP 0 2 }  { m_axi_feature_read_BVALID VALID 0 1 }  { m_axi_feature_read_BREADY READY 1 1 }  { m_axi_feature_read_BRESP RESP 0 2 }  { m_axi_feature_read_BID ID 0 1 }  { m_axi_feature_read_BUSER USER 0 1 } } }
	fresh_words { ap_fifo {  { fresh_words_din fifo_data 1 64 }  { fresh_words_full_n fifo_status 0 1 }  { fresh_words_write fifo_update 1 1 } } }
	f { ap_none {  { f in_data 0 64 } } }
	input_r { ap_none {  { input_r in_data 0 32 } } }
	ci { ap_none {  { ci in_data 0 10 } } }
	h { ap_none {  { h in_data 0 16 } } }
	rw { ap_none {  { rw in_data 0 16 } } }
	ph { ap_none {  { ph in_data 0 4 } } }
	keep { ap_none {  { keep in_data 0 4 } } }
	stride { ap_none {  { stride in_data 0 2 } } }
	pad { ap_none {  { pad in_data 0 2 } } }
	oh { ap_none {  { oh in_data 0 16 } } }
	ci_out { ap_fifo {  { ci_out_din fifo_data 1 10 }  { ci_out_full_n fifo_status 0 1 }  { ci_out_write fifo_update 1 1 } } }
	h_out { ap_fifo {  { h_out_din fifo_data 1 16 }  { h_out_full_n fifo_status 0 1 }  { h_out_write fifo_update 1 1 } } }
	rw_out { ap_fifo {  { rw_out_din fifo_data 1 16 }  { rw_out_full_n fifo_status 0 1 }  { rw_out_write fifo_update 1 1 } } }
	ph_out { ap_fifo {  { ph_out_din fifo_data 1 4 }  { ph_out_full_n fifo_status 0 1 }  { ph_out_write fifo_update 1 1 } } }
	keep_out { ap_fifo {  { keep_out_din fifo_data 1 4 }  { keep_out_full_n fifo_status 0 1 }  { keep_out_write fifo_update 1 1 } } }
	stride_out { ap_fifo {  { stride_out_din fifo_data 1 2 }  { stride_out_full_n fifo_status 0 1 }  { stride_out_write fifo_update 1 1 } } }
	pad_out { ap_fifo {  { pad_out_din fifo_data 1 2 }  { pad_out_full_n fifo_status 0 1 }  { pad_out_write fifo_update 1 1 } } }
	oh_out { ap_fifo {  { oh_out_din fifo_data 1 16 }  { oh_out_full_n fifo_status 0 1 }  { oh_out_write fifo_update 1 1 } } }
}
