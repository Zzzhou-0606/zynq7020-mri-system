set moduleName p_anonymous_namespace_store_tiles
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
set C_modelName {(anonymous namespace)store_tiles}
set C_modelType { void 0 }
set C_modelArgList {
	{ feature_mem int 64 regular {axi_master 2}  }
	{ results int 256 regular {fifo 0 volatile }  }
	{ fr int 64 regular {fifo 0}  }
	{ wide int 64 regular {fifo 0}  }
	{ shifts_0 int 32 regular {fifo 0}  }
	{ shifts_1 int 32 regular {fifo 0}  }
	{ shifts_2 int 32 regular {fifo 0}  }
	{ shifts_3 int 32 regular {fifo 0}  }
	{ shifts_4 int 32 regular {fifo 0}  }
	{ shifts_5 int 32 regular {fifo 0}  }
	{ shifts_6 int 32 regular {fifo 0}  }
	{ shifts_7 int 32 regular {fifo 0}  }
	{ output_r int 32 regular {fifo 0}  }
	{ skip int 32 regular {fifo 0}  }
	{ skipshift int 32 regular {fifo 0}  }
	{ ob int 16 regular {fifo 0}  }
	{ oh int 16 regular {fifo 0}  }
	{ ow int 16 regular {fifo 0}  }
	{ kind int 3 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "feature_mem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "results", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fr", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wide", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skip", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skipshift", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ob", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "oh", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "kind", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 106
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
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
	{ results_dout sc_in sc_lv 256 signal 1 } 
	{ results_empty_n sc_in sc_logic 1 signal 1 } 
	{ results_read sc_out sc_logic 1 signal 1 } 
	{ fr_dout sc_in sc_lv 64 signal 2 } 
	{ fr_empty_n sc_in sc_logic 1 signal 2 } 
	{ fr_read sc_out sc_logic 1 signal 2 } 
	{ wide_dout sc_in sc_lv 64 signal 3 } 
	{ wide_empty_n sc_in sc_logic 1 signal 3 } 
	{ wide_read sc_out sc_logic 1 signal 3 } 
	{ shifts_0_dout sc_in sc_lv 32 signal 4 } 
	{ shifts_0_empty_n sc_in sc_logic 1 signal 4 } 
	{ shifts_0_read sc_out sc_logic 1 signal 4 } 
	{ shifts_1_dout sc_in sc_lv 32 signal 5 } 
	{ shifts_1_empty_n sc_in sc_logic 1 signal 5 } 
	{ shifts_1_read sc_out sc_logic 1 signal 5 } 
	{ shifts_2_dout sc_in sc_lv 32 signal 6 } 
	{ shifts_2_empty_n sc_in sc_logic 1 signal 6 } 
	{ shifts_2_read sc_out sc_logic 1 signal 6 } 
	{ shifts_3_dout sc_in sc_lv 32 signal 7 } 
	{ shifts_3_empty_n sc_in sc_logic 1 signal 7 } 
	{ shifts_3_read sc_out sc_logic 1 signal 7 } 
	{ shifts_4_dout sc_in sc_lv 32 signal 8 } 
	{ shifts_4_empty_n sc_in sc_logic 1 signal 8 } 
	{ shifts_4_read sc_out sc_logic 1 signal 8 } 
	{ shifts_5_dout sc_in sc_lv 32 signal 9 } 
	{ shifts_5_empty_n sc_in sc_logic 1 signal 9 } 
	{ shifts_5_read sc_out sc_logic 1 signal 9 } 
	{ shifts_6_dout sc_in sc_lv 32 signal 10 } 
	{ shifts_6_empty_n sc_in sc_logic 1 signal 10 } 
	{ shifts_6_read sc_out sc_logic 1 signal 10 } 
	{ shifts_7_dout sc_in sc_lv 32 signal 11 } 
	{ shifts_7_empty_n sc_in sc_logic 1 signal 11 } 
	{ shifts_7_read sc_out sc_logic 1 signal 11 } 
	{ output_r_dout sc_in sc_lv 32 signal 12 } 
	{ output_r_empty_n sc_in sc_logic 1 signal 12 } 
	{ output_r_read sc_out sc_logic 1 signal 12 } 
	{ skip_dout sc_in sc_lv 32 signal 13 } 
	{ skip_empty_n sc_in sc_logic 1 signal 13 } 
	{ skip_read sc_out sc_logic 1 signal 13 } 
	{ skipshift_dout sc_in sc_lv 32 signal 14 } 
	{ skipshift_empty_n sc_in sc_logic 1 signal 14 } 
	{ skipshift_read sc_out sc_logic 1 signal 14 } 
	{ ob_dout sc_in sc_lv 16 signal 15 } 
	{ ob_empty_n sc_in sc_logic 1 signal 15 } 
	{ ob_read sc_out sc_logic 1 signal 15 } 
	{ oh_dout sc_in sc_lv 16 signal 16 } 
	{ oh_empty_n sc_in sc_logic 1 signal 16 } 
	{ oh_read sc_out sc_logic 1 signal 16 } 
	{ ow_dout sc_in sc_lv 16 signal 17 } 
	{ ow_empty_n sc_in sc_logic 1 signal 17 } 
	{ ow_read sc_out sc_logic 1 signal 17 } 
	{ kind_dout sc_in sc_lv 3 signal 18 } 
	{ kind_empty_n sc_in sc_logic 1 signal 18 } 
	{ kind_read sc_out sc_logic 1 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "results_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "results", "role": "dout" }} , 
 	{ "name": "results_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "empty_n" }} , 
 	{ "name": "results_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "read" }} , 
 	{ "name": "fr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fr", "role": "dout" }} , 
 	{ "name": "fr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fr", "role": "empty_n" }} , 
 	{ "name": "fr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fr", "role": "read" }} , 
 	{ "name": "wide_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wide", "role": "dout" }} , 
 	{ "name": "wide_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide", "role": "empty_n" }} , 
 	{ "name": "wide_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide", "role": "read" }} , 
 	{ "name": "shifts_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_0", "role": "dout" }} , 
 	{ "name": "shifts_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_0", "role": "empty_n" }} , 
 	{ "name": "shifts_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_0", "role": "read" }} , 
 	{ "name": "shifts_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_1", "role": "dout" }} , 
 	{ "name": "shifts_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_1", "role": "empty_n" }} , 
 	{ "name": "shifts_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_1", "role": "read" }} , 
 	{ "name": "shifts_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_2", "role": "dout" }} , 
 	{ "name": "shifts_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_2", "role": "empty_n" }} , 
 	{ "name": "shifts_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_2", "role": "read" }} , 
 	{ "name": "shifts_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_3", "role": "dout" }} , 
 	{ "name": "shifts_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_3", "role": "empty_n" }} , 
 	{ "name": "shifts_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_3", "role": "read" }} , 
 	{ "name": "shifts_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_4", "role": "dout" }} , 
 	{ "name": "shifts_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_4", "role": "empty_n" }} , 
 	{ "name": "shifts_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_4", "role": "read" }} , 
 	{ "name": "shifts_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_5", "role": "dout" }} , 
 	{ "name": "shifts_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_5", "role": "empty_n" }} , 
 	{ "name": "shifts_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_5", "role": "read" }} , 
 	{ "name": "shifts_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_6", "role": "dout" }} , 
 	{ "name": "shifts_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_6", "role": "empty_n" }} , 
 	{ "name": "shifts_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_6", "role": "read" }} , 
 	{ "name": "shifts_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shifts_7", "role": "dout" }} , 
 	{ "name": "shifts_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_7", "role": "empty_n" }} , 
 	{ "name": "shifts_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shifts_7", "role": "read" }} , 
 	{ "name": "output_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "dout" }} , 
 	{ "name": "output_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "empty_n" }} , 
 	{ "name": "output_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "read" }} , 
 	{ "name": "skip_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skip", "role": "dout" }} , 
 	{ "name": "skip_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip", "role": "empty_n" }} , 
 	{ "name": "skip_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip", "role": "read" }} , 
 	{ "name": "skipshift_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skipshift", "role": "dout" }} , 
 	{ "name": "skipshift_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skipshift", "role": "empty_n" }} , 
 	{ "name": "skipshift_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skipshift", "role": "read" }} , 
 	{ "name": "ob_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ob", "role": "dout" }} , 
 	{ "name": "ob_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob", "role": "empty_n" }} , 
 	{ "name": "ob_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob", "role": "read" }} , 
 	{ "name": "oh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh", "role": "dout" }} , 
 	{ "name": "oh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "empty_n" }} , 
 	{ "name": "oh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "read" }} , 
 	{ "name": "ow_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "dout" }} , 
 	{ "name": "ow_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "empty_n" }} , 
 	{ "name": "ow_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "read" }} , 
 	{ "name": "kind_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kind", "role": "dout" }} , 
 	{ "name": "kind_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kind", "role": "empty_n" }} , 
 	{ "name": "kind_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kind", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "p_anonymous_namespace_store_tiles",
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
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "feature_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "results_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packed_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.skipbuf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.widebuf_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.widebuf_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.widebuf_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.widebuf_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_32_2_1_U883", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_16ns_32_2_1_U884", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30s_2ns_30_2_1_U885", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_3ns_32_2_1_U886", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_8_1_1_U887", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_8_1_1_U888", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_3ns_32_2_1_U889", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U890", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_14ns_16ns_30_4_1_U891", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U892", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U893", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U894", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U895", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U896", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U897", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U898", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_store_tiles {
		feature_mem {Type IO LastRead 33 FirstWrite 27}
		results {Type I LastRead 24 FirstWrite -1}
		fr {Type I LastRead 0 FirstWrite -1}
		wide {Type I LastRead 0 FirstWrite -1}
		shifts_0 {Type I LastRead 0 FirstWrite -1}
		shifts_1 {Type I LastRead 0 FirstWrite -1}
		shifts_2 {Type I LastRead 0 FirstWrite -1}
		shifts_3 {Type I LastRead 0 FirstWrite -1}
		shifts_4 {Type I LastRead 0 FirstWrite -1}
		shifts_5 {Type I LastRead 0 FirstWrite -1}
		shifts_6 {Type I LastRead 0 FirstWrite -1}
		shifts_7 {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		skip {Type I LastRead 0 FirstWrite -1}
		skipshift {Type I LastRead 0 FirstWrite -1}
		ob {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		kind {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
]}

set Spec2ImplPortList { 
	feature_mem { m_axi {  { m_axi_feature_mem_AWVALID VALID 1 1 }  { m_axi_feature_mem_AWREADY READY 0 1 }  { m_axi_feature_mem_AWADDR ADDR 1 64 }  { m_axi_feature_mem_AWID ID 1 1 }  { m_axi_feature_mem_AWLEN LEN 1 32 }  { m_axi_feature_mem_AWSIZE SIZE 1 3 }  { m_axi_feature_mem_AWBURST BURST 1 2 }  { m_axi_feature_mem_AWLOCK LOCK 1 2 }  { m_axi_feature_mem_AWCACHE CACHE 1 4 }  { m_axi_feature_mem_AWPROT PROT 1 3 }  { m_axi_feature_mem_AWQOS QOS 1 4 }  { m_axi_feature_mem_AWREGION REGION 1 4 }  { m_axi_feature_mem_AWUSER USER 1 1 }  { m_axi_feature_mem_WVALID VALID 1 1 }  { m_axi_feature_mem_WREADY READY 0 1 }  { m_axi_feature_mem_WDATA DATA 1 64 }  { m_axi_feature_mem_WSTRB STRB 1 8 }  { m_axi_feature_mem_WLAST LAST 1 1 }  { m_axi_feature_mem_WID ID 1 1 }  { m_axi_feature_mem_WUSER USER 1 1 }  { m_axi_feature_mem_ARVALID VALID 1 1 }  { m_axi_feature_mem_ARREADY READY 0 1 }  { m_axi_feature_mem_ARADDR ADDR 1 64 }  { m_axi_feature_mem_ARID ID 1 1 }  { m_axi_feature_mem_ARLEN LEN 1 32 }  { m_axi_feature_mem_ARSIZE SIZE 1 3 }  { m_axi_feature_mem_ARBURST BURST 1 2 }  { m_axi_feature_mem_ARLOCK LOCK 1 2 }  { m_axi_feature_mem_ARCACHE CACHE 1 4 }  { m_axi_feature_mem_ARPROT PROT 1 3 }  { m_axi_feature_mem_ARQOS QOS 1 4 }  { m_axi_feature_mem_ARREGION REGION 1 4 }  { m_axi_feature_mem_ARUSER USER 1 1 }  { m_axi_feature_mem_RVALID VALID 0 1 }  { m_axi_feature_mem_RREADY READY 1 1 }  { m_axi_feature_mem_RDATA DATA 0 64 }  { m_axi_feature_mem_RLAST LAST 0 1 }  { m_axi_feature_mem_RID ID 0 1 }  { m_axi_feature_mem_RUSER USER 0 1 }  { m_axi_feature_mem_RRESP RESP 0 2 }  { m_axi_feature_mem_BVALID VALID 0 1 }  { m_axi_feature_mem_BREADY READY 1 1 }  { m_axi_feature_mem_BRESP RESP 0 2 }  { m_axi_feature_mem_BID ID 0 1 }  { m_axi_feature_mem_BUSER USER 0 1 } } }
	results { ap_fifo {  { results_dout fifo_data 0 256 }  { results_empty_n fifo_status 0 1 }  { results_read fifo_update 1 1 } } }
	fr { ap_fifo {  { fr_dout fifo_data 0 64 }  { fr_empty_n fifo_status 0 1 }  { fr_read fifo_update 1 1 } } }
	wide { ap_fifo {  { wide_dout fifo_data 0 64 }  { wide_empty_n fifo_status 0 1 }  { wide_read fifo_update 1 1 } } }
	shifts_0 { ap_fifo {  { shifts_0_dout fifo_data 0 32 }  { shifts_0_empty_n fifo_status 0 1 }  { shifts_0_read fifo_update 1 1 } } }
	shifts_1 { ap_fifo {  { shifts_1_dout fifo_data 0 32 }  { shifts_1_empty_n fifo_status 0 1 }  { shifts_1_read fifo_update 1 1 } } }
	shifts_2 { ap_fifo {  { shifts_2_dout fifo_data 0 32 }  { shifts_2_empty_n fifo_status 0 1 }  { shifts_2_read fifo_update 1 1 } } }
	shifts_3 { ap_fifo {  { shifts_3_dout fifo_data 0 32 }  { shifts_3_empty_n fifo_status 0 1 }  { shifts_3_read fifo_update 1 1 } } }
	shifts_4 { ap_fifo {  { shifts_4_dout fifo_data 0 32 }  { shifts_4_empty_n fifo_status 0 1 }  { shifts_4_read fifo_update 1 1 } } }
	shifts_5 { ap_fifo {  { shifts_5_dout fifo_data 0 32 }  { shifts_5_empty_n fifo_status 0 1 }  { shifts_5_read fifo_update 1 1 } } }
	shifts_6 { ap_fifo {  { shifts_6_dout fifo_data 0 32 }  { shifts_6_empty_n fifo_status 0 1 }  { shifts_6_read fifo_update 1 1 } } }
	shifts_7 { ap_fifo {  { shifts_7_dout fifo_data 0 32 }  { shifts_7_empty_n fifo_status 0 1 }  { shifts_7_read fifo_update 1 1 } } }
	output_r { ap_fifo {  { output_r_dout fifo_data 0 32 }  { output_r_empty_n fifo_status 0 1 }  { output_r_read fifo_update 1 1 } } }
	skip { ap_fifo {  { skip_dout fifo_data 0 32 }  { skip_empty_n fifo_status 0 1 }  { skip_read fifo_update 1 1 } } }
	skipshift { ap_fifo {  { skipshift_dout fifo_data 0 32 }  { skipshift_empty_n fifo_status 0 1 }  { skipshift_read fifo_update 1 1 } } }
	ob { ap_fifo {  { ob_dout fifo_data 0 16 }  { ob_empty_n fifo_status 0 1 }  { ob_read fifo_update 1 1 } } }
	oh { ap_fifo {  { oh_dout fifo_data 0 16 }  { oh_empty_n fifo_status 0 1 }  { oh_read fifo_update 1 1 } } }
	ow { ap_fifo {  { ow_dout fifo_data 0 16 }  { ow_empty_n fifo_status 0 1 }  { ow_read fifo_update 1 1 } } }
	kind { ap_fifo {  { kind_dout fifo_data 0 3 }  { kind_empty_n fifo_status 0 1 }  { kind_read fifo_update 1 1 } } }
}
