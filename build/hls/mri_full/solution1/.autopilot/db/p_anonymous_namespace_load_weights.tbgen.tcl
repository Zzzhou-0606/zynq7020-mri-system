set moduleName p_anonymous_namespace_load_weights
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
set C_modelName {(anonymous namespace)load_weights}
set C_modelType { void 0 }
set C_modelArgList {
	{ weights_mem int 64 regular {axi_master 0}  }
	{ w int 64 regular  }
	{ base_r int 32 regular  }
	{ ci uint 10 regular  }
	{ k uint 3 regular  }
	{ bank int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank14 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank15 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank16 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank17 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank28 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank29 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank210 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank211 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank312 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank313 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank314 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank315 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank4 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank416 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank417 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank418 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank5 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank519 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank520 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank521 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank6 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank622 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank623 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank624 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank7 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank725 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank726 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ bank727 int 16 regular {array 1152 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights_mem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "w", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "base_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "bank", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank14", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank15", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank16", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank17", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank28", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank29", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank210", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank211", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank312", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank313", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank314", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank315", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank416", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank417", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank418", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank519", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank520", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank521", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank622", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank623", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank624", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank725", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank726", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bank727", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 183
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_weights_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_weights_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_weights_mem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_weights_mem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_weights_mem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_weights_mem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_weights_mem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_weights_mem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_weights_mem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_weights_mem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_weights_mem_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_weights_mem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_weights_mem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_weights_mem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_weights_mem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_weights_mem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_weights_mem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_weights_mem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_weights_mem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_weights_mem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_weights_mem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_weights_mem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_weights_mem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_weights_mem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_BUSER sc_in sc_lv 1 signal 0 } 
	{ w sc_in sc_lv 64 signal 1 } 
	{ base_r sc_in sc_lv 32 signal 2 } 
	{ ci sc_in sc_lv 10 signal 3 } 
	{ k sc_in sc_lv 3 signal 4 } 
	{ bank_address0 sc_out sc_lv 11 signal 5 } 
	{ bank_ce0 sc_out sc_logic 1 signal 5 } 
	{ bank_we0 sc_out sc_logic 1 signal 5 } 
	{ bank_d0 sc_out sc_lv 16 signal 5 } 
	{ bank1_address0 sc_out sc_lv 11 signal 6 } 
	{ bank1_ce0 sc_out sc_logic 1 signal 6 } 
	{ bank1_we0 sc_out sc_logic 1 signal 6 } 
	{ bank1_d0 sc_out sc_lv 16 signal 6 } 
	{ bank2_address0 sc_out sc_lv 11 signal 7 } 
	{ bank2_ce0 sc_out sc_logic 1 signal 7 } 
	{ bank2_we0 sc_out sc_logic 1 signal 7 } 
	{ bank2_d0 sc_out sc_lv 16 signal 7 } 
	{ bank3_address0 sc_out sc_lv 11 signal 8 } 
	{ bank3_ce0 sc_out sc_logic 1 signal 8 } 
	{ bank3_we0 sc_out sc_logic 1 signal 8 } 
	{ bank3_d0 sc_out sc_lv 16 signal 8 } 
	{ bank14_address0 sc_out sc_lv 11 signal 9 } 
	{ bank14_ce0 sc_out sc_logic 1 signal 9 } 
	{ bank14_we0 sc_out sc_logic 1 signal 9 } 
	{ bank14_d0 sc_out sc_lv 16 signal 9 } 
	{ bank15_address0 sc_out sc_lv 11 signal 10 } 
	{ bank15_ce0 sc_out sc_logic 1 signal 10 } 
	{ bank15_we0 sc_out sc_logic 1 signal 10 } 
	{ bank15_d0 sc_out sc_lv 16 signal 10 } 
	{ bank16_address0 sc_out sc_lv 11 signal 11 } 
	{ bank16_ce0 sc_out sc_logic 1 signal 11 } 
	{ bank16_we0 sc_out sc_logic 1 signal 11 } 
	{ bank16_d0 sc_out sc_lv 16 signal 11 } 
	{ bank17_address0 sc_out sc_lv 11 signal 12 } 
	{ bank17_ce0 sc_out sc_logic 1 signal 12 } 
	{ bank17_we0 sc_out sc_logic 1 signal 12 } 
	{ bank17_d0 sc_out sc_lv 16 signal 12 } 
	{ bank28_address0 sc_out sc_lv 11 signal 13 } 
	{ bank28_ce0 sc_out sc_logic 1 signal 13 } 
	{ bank28_we0 sc_out sc_logic 1 signal 13 } 
	{ bank28_d0 sc_out sc_lv 16 signal 13 } 
	{ bank29_address0 sc_out sc_lv 11 signal 14 } 
	{ bank29_ce0 sc_out sc_logic 1 signal 14 } 
	{ bank29_we0 sc_out sc_logic 1 signal 14 } 
	{ bank29_d0 sc_out sc_lv 16 signal 14 } 
	{ bank210_address0 sc_out sc_lv 11 signal 15 } 
	{ bank210_ce0 sc_out sc_logic 1 signal 15 } 
	{ bank210_we0 sc_out sc_logic 1 signal 15 } 
	{ bank210_d0 sc_out sc_lv 16 signal 15 } 
	{ bank211_address0 sc_out sc_lv 11 signal 16 } 
	{ bank211_ce0 sc_out sc_logic 1 signal 16 } 
	{ bank211_we0 sc_out sc_logic 1 signal 16 } 
	{ bank211_d0 sc_out sc_lv 16 signal 16 } 
	{ bank312_address0 sc_out sc_lv 11 signal 17 } 
	{ bank312_ce0 sc_out sc_logic 1 signal 17 } 
	{ bank312_we0 sc_out sc_logic 1 signal 17 } 
	{ bank312_d0 sc_out sc_lv 16 signal 17 } 
	{ bank313_address0 sc_out sc_lv 11 signal 18 } 
	{ bank313_ce0 sc_out sc_logic 1 signal 18 } 
	{ bank313_we0 sc_out sc_logic 1 signal 18 } 
	{ bank313_d0 sc_out sc_lv 16 signal 18 } 
	{ bank314_address0 sc_out sc_lv 11 signal 19 } 
	{ bank314_ce0 sc_out sc_logic 1 signal 19 } 
	{ bank314_we0 sc_out sc_logic 1 signal 19 } 
	{ bank314_d0 sc_out sc_lv 16 signal 19 } 
	{ bank315_address0 sc_out sc_lv 11 signal 20 } 
	{ bank315_ce0 sc_out sc_logic 1 signal 20 } 
	{ bank315_we0 sc_out sc_logic 1 signal 20 } 
	{ bank315_d0 sc_out sc_lv 16 signal 20 } 
	{ bank4_address0 sc_out sc_lv 11 signal 21 } 
	{ bank4_ce0 sc_out sc_logic 1 signal 21 } 
	{ bank4_we0 sc_out sc_logic 1 signal 21 } 
	{ bank4_d0 sc_out sc_lv 16 signal 21 } 
	{ bank416_address0 sc_out sc_lv 11 signal 22 } 
	{ bank416_ce0 sc_out sc_logic 1 signal 22 } 
	{ bank416_we0 sc_out sc_logic 1 signal 22 } 
	{ bank416_d0 sc_out sc_lv 16 signal 22 } 
	{ bank417_address0 sc_out sc_lv 11 signal 23 } 
	{ bank417_ce0 sc_out sc_logic 1 signal 23 } 
	{ bank417_we0 sc_out sc_logic 1 signal 23 } 
	{ bank417_d0 sc_out sc_lv 16 signal 23 } 
	{ bank418_address0 sc_out sc_lv 11 signal 24 } 
	{ bank418_ce0 sc_out sc_logic 1 signal 24 } 
	{ bank418_we0 sc_out sc_logic 1 signal 24 } 
	{ bank418_d0 sc_out sc_lv 16 signal 24 } 
	{ bank5_address0 sc_out sc_lv 11 signal 25 } 
	{ bank5_ce0 sc_out sc_logic 1 signal 25 } 
	{ bank5_we0 sc_out sc_logic 1 signal 25 } 
	{ bank5_d0 sc_out sc_lv 16 signal 25 } 
	{ bank519_address0 sc_out sc_lv 11 signal 26 } 
	{ bank519_ce0 sc_out sc_logic 1 signal 26 } 
	{ bank519_we0 sc_out sc_logic 1 signal 26 } 
	{ bank519_d0 sc_out sc_lv 16 signal 26 } 
	{ bank520_address0 sc_out sc_lv 11 signal 27 } 
	{ bank520_ce0 sc_out sc_logic 1 signal 27 } 
	{ bank520_we0 sc_out sc_logic 1 signal 27 } 
	{ bank520_d0 sc_out sc_lv 16 signal 27 } 
	{ bank521_address0 sc_out sc_lv 11 signal 28 } 
	{ bank521_ce0 sc_out sc_logic 1 signal 28 } 
	{ bank521_we0 sc_out sc_logic 1 signal 28 } 
	{ bank521_d0 sc_out sc_lv 16 signal 28 } 
	{ bank6_address0 sc_out sc_lv 11 signal 29 } 
	{ bank6_ce0 sc_out sc_logic 1 signal 29 } 
	{ bank6_we0 sc_out sc_logic 1 signal 29 } 
	{ bank6_d0 sc_out sc_lv 16 signal 29 } 
	{ bank622_address0 sc_out sc_lv 11 signal 30 } 
	{ bank622_ce0 sc_out sc_logic 1 signal 30 } 
	{ bank622_we0 sc_out sc_logic 1 signal 30 } 
	{ bank622_d0 sc_out sc_lv 16 signal 30 } 
	{ bank623_address0 sc_out sc_lv 11 signal 31 } 
	{ bank623_ce0 sc_out sc_logic 1 signal 31 } 
	{ bank623_we0 sc_out sc_logic 1 signal 31 } 
	{ bank623_d0 sc_out sc_lv 16 signal 31 } 
	{ bank624_address0 sc_out sc_lv 11 signal 32 } 
	{ bank624_ce0 sc_out sc_logic 1 signal 32 } 
	{ bank624_we0 sc_out sc_logic 1 signal 32 } 
	{ bank624_d0 sc_out sc_lv 16 signal 32 } 
	{ bank7_address0 sc_out sc_lv 11 signal 33 } 
	{ bank7_ce0 sc_out sc_logic 1 signal 33 } 
	{ bank7_we0 sc_out sc_logic 1 signal 33 } 
	{ bank7_d0 sc_out sc_lv 16 signal 33 } 
	{ bank725_address0 sc_out sc_lv 11 signal 34 } 
	{ bank725_ce0 sc_out sc_logic 1 signal 34 } 
	{ bank725_we0 sc_out sc_logic 1 signal 34 } 
	{ bank725_d0 sc_out sc_lv 16 signal 34 } 
	{ bank726_address0 sc_out sc_lv 11 signal 35 } 
	{ bank726_ce0 sc_out sc_logic 1 signal 35 } 
	{ bank726_we0 sc_out sc_logic 1 signal 35 } 
	{ bank726_d0 sc_out sc_lv 16 signal 35 } 
	{ bank727_address0 sc_out sc_lv 11 signal 36 } 
	{ bank727_ce0 sc_out sc_logic 1 signal 36 } 
	{ bank727_we0 sc_out sc_logic 1 signal 36 } 
	{ bank727_d0 sc_out sc_lv 16 signal 36 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_weights_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_weights_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_weights_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_weights_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWID" }} , 
 	{ "name": "m_axi_weights_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_weights_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_weights_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_weights_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_weights_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_weights_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_weights_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_weights_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_weights_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_weights_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_weights_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_weights_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights_mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_weights_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_weights_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_weights_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "WID" }} , 
 	{ "name": "m_axi_weights_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_weights_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_weights_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_weights_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_weights_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARID" }} , 
 	{ "name": "m_axi_weights_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_weights_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_weights_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_weights_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_weights_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_weights_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_weights_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_weights_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_weights_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_weights_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_weights_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_weights_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights_mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_weights_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_weights_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "RID" }} , 
 	{ "name": "m_axi_weights_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_weights_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights_mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_weights_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_weights_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_weights_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weights_mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_weights_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "BID" }} , 
 	{ "name": "m_axi_weights_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "BUSER" }} , 
 	{ "name": "w", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w", "role": "default" }} , 
 	{ "name": "base_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_r", "role": "default" }} , 
 	{ "name": "ci", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "bank_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank", "role": "address0" }} , 
 	{ "name": "bank_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank", "role": "ce0" }} , 
 	{ "name": "bank_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank", "role": "we0" }} , 
 	{ "name": "bank_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank", "role": "d0" }} , 
 	{ "name": "bank1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank1", "role": "address0" }} , 
 	{ "name": "bank1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank1", "role": "ce0" }} , 
 	{ "name": "bank1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank1", "role": "we0" }} , 
 	{ "name": "bank1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank1", "role": "d0" }} , 
 	{ "name": "bank2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank2", "role": "address0" }} , 
 	{ "name": "bank2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank2", "role": "ce0" }} , 
 	{ "name": "bank2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank2", "role": "we0" }} , 
 	{ "name": "bank2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank2", "role": "d0" }} , 
 	{ "name": "bank3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank3", "role": "address0" }} , 
 	{ "name": "bank3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank3", "role": "ce0" }} , 
 	{ "name": "bank3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank3", "role": "we0" }} , 
 	{ "name": "bank3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank3", "role": "d0" }} , 
 	{ "name": "bank14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank14", "role": "address0" }} , 
 	{ "name": "bank14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank14", "role": "ce0" }} , 
 	{ "name": "bank14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank14", "role": "we0" }} , 
 	{ "name": "bank14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank14", "role": "d0" }} , 
 	{ "name": "bank15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank15", "role": "address0" }} , 
 	{ "name": "bank15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank15", "role": "ce0" }} , 
 	{ "name": "bank15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank15", "role": "we0" }} , 
 	{ "name": "bank15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank15", "role": "d0" }} , 
 	{ "name": "bank16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank16", "role": "address0" }} , 
 	{ "name": "bank16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank16", "role": "ce0" }} , 
 	{ "name": "bank16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank16", "role": "we0" }} , 
 	{ "name": "bank16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank16", "role": "d0" }} , 
 	{ "name": "bank17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank17", "role": "address0" }} , 
 	{ "name": "bank17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank17", "role": "ce0" }} , 
 	{ "name": "bank17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank17", "role": "we0" }} , 
 	{ "name": "bank17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank17", "role": "d0" }} , 
 	{ "name": "bank28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank28", "role": "address0" }} , 
 	{ "name": "bank28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank28", "role": "ce0" }} , 
 	{ "name": "bank28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank28", "role": "we0" }} , 
 	{ "name": "bank28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank28", "role": "d0" }} , 
 	{ "name": "bank29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank29", "role": "address0" }} , 
 	{ "name": "bank29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank29", "role": "ce0" }} , 
 	{ "name": "bank29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank29", "role": "we0" }} , 
 	{ "name": "bank29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank29", "role": "d0" }} , 
 	{ "name": "bank210_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank210", "role": "address0" }} , 
 	{ "name": "bank210_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank210", "role": "ce0" }} , 
 	{ "name": "bank210_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank210", "role": "we0" }} , 
 	{ "name": "bank210_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank210", "role": "d0" }} , 
 	{ "name": "bank211_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank211", "role": "address0" }} , 
 	{ "name": "bank211_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank211", "role": "ce0" }} , 
 	{ "name": "bank211_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank211", "role": "we0" }} , 
 	{ "name": "bank211_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank211", "role": "d0" }} , 
 	{ "name": "bank312_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank312", "role": "address0" }} , 
 	{ "name": "bank312_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank312", "role": "ce0" }} , 
 	{ "name": "bank312_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank312", "role": "we0" }} , 
 	{ "name": "bank312_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank312", "role": "d0" }} , 
 	{ "name": "bank313_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank313", "role": "address0" }} , 
 	{ "name": "bank313_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank313", "role": "ce0" }} , 
 	{ "name": "bank313_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank313", "role": "we0" }} , 
 	{ "name": "bank313_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank313", "role": "d0" }} , 
 	{ "name": "bank314_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank314", "role": "address0" }} , 
 	{ "name": "bank314_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank314", "role": "ce0" }} , 
 	{ "name": "bank314_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank314", "role": "we0" }} , 
 	{ "name": "bank314_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank314", "role": "d0" }} , 
 	{ "name": "bank315_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank315", "role": "address0" }} , 
 	{ "name": "bank315_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank315", "role": "ce0" }} , 
 	{ "name": "bank315_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank315", "role": "we0" }} , 
 	{ "name": "bank315_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank315", "role": "d0" }} , 
 	{ "name": "bank4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank4", "role": "address0" }} , 
 	{ "name": "bank4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank4", "role": "ce0" }} , 
 	{ "name": "bank4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank4", "role": "we0" }} , 
 	{ "name": "bank4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank4", "role": "d0" }} , 
 	{ "name": "bank416_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank416", "role": "address0" }} , 
 	{ "name": "bank416_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank416", "role": "ce0" }} , 
 	{ "name": "bank416_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank416", "role": "we0" }} , 
 	{ "name": "bank416_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank416", "role": "d0" }} , 
 	{ "name": "bank417_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank417", "role": "address0" }} , 
 	{ "name": "bank417_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank417", "role": "ce0" }} , 
 	{ "name": "bank417_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank417", "role": "we0" }} , 
 	{ "name": "bank417_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank417", "role": "d0" }} , 
 	{ "name": "bank418_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank418", "role": "address0" }} , 
 	{ "name": "bank418_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank418", "role": "ce0" }} , 
 	{ "name": "bank418_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank418", "role": "we0" }} , 
 	{ "name": "bank418_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank418", "role": "d0" }} , 
 	{ "name": "bank5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank5", "role": "address0" }} , 
 	{ "name": "bank5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank5", "role": "ce0" }} , 
 	{ "name": "bank5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank5", "role": "we0" }} , 
 	{ "name": "bank5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank5", "role": "d0" }} , 
 	{ "name": "bank519_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank519", "role": "address0" }} , 
 	{ "name": "bank519_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank519", "role": "ce0" }} , 
 	{ "name": "bank519_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank519", "role": "we0" }} , 
 	{ "name": "bank519_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank519", "role": "d0" }} , 
 	{ "name": "bank520_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank520", "role": "address0" }} , 
 	{ "name": "bank520_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank520", "role": "ce0" }} , 
 	{ "name": "bank520_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank520", "role": "we0" }} , 
 	{ "name": "bank520_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank520", "role": "d0" }} , 
 	{ "name": "bank521_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank521", "role": "address0" }} , 
 	{ "name": "bank521_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank521", "role": "ce0" }} , 
 	{ "name": "bank521_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank521", "role": "we0" }} , 
 	{ "name": "bank521_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank521", "role": "d0" }} , 
 	{ "name": "bank6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank6", "role": "address0" }} , 
 	{ "name": "bank6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank6", "role": "ce0" }} , 
 	{ "name": "bank6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank6", "role": "we0" }} , 
 	{ "name": "bank6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank6", "role": "d0" }} , 
 	{ "name": "bank622_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank622", "role": "address0" }} , 
 	{ "name": "bank622_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank622", "role": "ce0" }} , 
 	{ "name": "bank622_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank622", "role": "we0" }} , 
 	{ "name": "bank622_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank622", "role": "d0" }} , 
 	{ "name": "bank623_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank623", "role": "address0" }} , 
 	{ "name": "bank623_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank623", "role": "ce0" }} , 
 	{ "name": "bank623_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank623", "role": "we0" }} , 
 	{ "name": "bank623_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank623", "role": "d0" }} , 
 	{ "name": "bank624_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank624", "role": "address0" }} , 
 	{ "name": "bank624_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank624", "role": "ce0" }} , 
 	{ "name": "bank624_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank624", "role": "we0" }} , 
 	{ "name": "bank624_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank624", "role": "d0" }} , 
 	{ "name": "bank7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank7", "role": "address0" }} , 
 	{ "name": "bank7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank7", "role": "ce0" }} , 
 	{ "name": "bank7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank7", "role": "we0" }} , 
 	{ "name": "bank7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank7", "role": "d0" }} , 
 	{ "name": "bank725_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank725", "role": "address0" }} , 
 	{ "name": "bank725_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank725", "role": "ce0" }} , 
 	{ "name": "bank725_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank725", "role": "we0" }} , 
 	{ "name": "bank725_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank725", "role": "d0" }} , 
 	{ "name": "bank726_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank726", "role": "address0" }} , 
 	{ "name": "bank726_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank726", "role": "ce0" }} , 
 	{ "name": "bank726_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank726", "role": "we0" }} , 
 	{ "name": "bank726_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank726", "role": "d0" }} , 
 	{ "name": "bank727_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bank727", "role": "address0" }} , 
 	{ "name": "bank727_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank727", "role": "ce0" }} , 
 	{ "name": "bank727_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bank727", "role": "we0" }} , 
 	{ "name": "bank727_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bank727", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "p_anonymous_namespace_load_weights",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "131188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "bank", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank210", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank211", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank312", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank313", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank314", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank315", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank416", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank417", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank418", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank519", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank520", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank521", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank622", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank623", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank624", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank725", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank726", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bank727", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.raw_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_3ns_6_1_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_2_1_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_10ns_6ns_16_4_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_3ns_32ns_32_4_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_2ns_2ns_8_4_1_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_load_weights {
		weights_mem {Type I LastRead 16 FirstWrite -1}
		w {Type I LastRead 3 FirstWrite -1}
		base_r {Type I LastRead 3 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		bank {Type O LastRead -1 FirstWrite 17}
		bank1 {Type O LastRead -1 FirstWrite 17}
		bank2 {Type O LastRead -1 FirstWrite 17}
		bank3 {Type O LastRead -1 FirstWrite 17}
		bank14 {Type O LastRead -1 FirstWrite 17}
		bank15 {Type O LastRead -1 FirstWrite 17}
		bank16 {Type O LastRead -1 FirstWrite 17}
		bank17 {Type O LastRead -1 FirstWrite 17}
		bank28 {Type O LastRead -1 FirstWrite 17}
		bank29 {Type O LastRead -1 FirstWrite 17}
		bank210 {Type O LastRead -1 FirstWrite 17}
		bank211 {Type O LastRead -1 FirstWrite 17}
		bank312 {Type O LastRead -1 FirstWrite 17}
		bank313 {Type O LastRead -1 FirstWrite 17}
		bank314 {Type O LastRead -1 FirstWrite 17}
		bank315 {Type O LastRead -1 FirstWrite 17}
		bank4 {Type O LastRead -1 FirstWrite 17}
		bank416 {Type O LastRead -1 FirstWrite 17}
		bank417 {Type O LastRead -1 FirstWrite 17}
		bank418 {Type O LastRead -1 FirstWrite 17}
		bank5 {Type O LastRead -1 FirstWrite 17}
		bank519 {Type O LastRead -1 FirstWrite 17}
		bank520 {Type O LastRead -1 FirstWrite 17}
		bank521 {Type O LastRead -1 FirstWrite 17}
		bank6 {Type O LastRead -1 FirstWrite 17}
		bank622 {Type O LastRead -1 FirstWrite 17}
		bank623 {Type O LastRead -1 FirstWrite 17}
		bank624 {Type O LastRead -1 FirstWrite 17}
		bank7 {Type O LastRead -1 FirstWrite 17}
		bank725 {Type O LastRead -1 FirstWrite 17}
		bank726 {Type O LastRead -1 FirstWrite 17}
		bank727 {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "44", "Max" : "131188"}
	, {"Name" : "Interval", "Min" : "44", "Max" : "131188"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	weights_mem { m_axi {  { m_axi_weights_mem_AWVALID VALID 1 1 }  { m_axi_weights_mem_AWREADY READY 0 1 }  { m_axi_weights_mem_AWADDR ADDR 1 64 }  { m_axi_weights_mem_AWID ID 1 1 }  { m_axi_weights_mem_AWLEN LEN 1 32 }  { m_axi_weights_mem_AWSIZE SIZE 1 3 }  { m_axi_weights_mem_AWBURST BURST 1 2 }  { m_axi_weights_mem_AWLOCK LOCK 1 2 }  { m_axi_weights_mem_AWCACHE CACHE 1 4 }  { m_axi_weights_mem_AWPROT PROT 1 3 }  { m_axi_weights_mem_AWQOS QOS 1 4 }  { m_axi_weights_mem_AWREGION REGION 1 4 }  { m_axi_weights_mem_AWUSER USER 1 1 }  { m_axi_weights_mem_WVALID VALID 1 1 }  { m_axi_weights_mem_WREADY READY 0 1 }  { m_axi_weights_mem_WDATA DATA 1 64 }  { m_axi_weights_mem_WSTRB STRB 1 8 }  { m_axi_weights_mem_WLAST LAST 1 1 }  { m_axi_weights_mem_WID ID 1 1 }  { m_axi_weights_mem_WUSER USER 1 1 }  { m_axi_weights_mem_ARVALID VALID 1 1 }  { m_axi_weights_mem_ARREADY READY 0 1 }  { m_axi_weights_mem_ARADDR ADDR 1 64 }  { m_axi_weights_mem_ARID ID 1 1 }  { m_axi_weights_mem_ARLEN LEN 1 32 }  { m_axi_weights_mem_ARSIZE SIZE 1 3 }  { m_axi_weights_mem_ARBURST BURST 1 2 }  { m_axi_weights_mem_ARLOCK LOCK 1 2 }  { m_axi_weights_mem_ARCACHE CACHE 1 4 }  { m_axi_weights_mem_ARPROT PROT 1 3 }  { m_axi_weights_mem_ARQOS QOS 1 4 }  { m_axi_weights_mem_ARREGION REGION 1 4 }  { m_axi_weights_mem_ARUSER USER 1 1 }  { m_axi_weights_mem_RVALID VALID 0 1 }  { m_axi_weights_mem_RREADY READY 1 1 }  { m_axi_weights_mem_RDATA DATA 0 64 }  { m_axi_weights_mem_RLAST LAST 0 1 }  { m_axi_weights_mem_RID ID 0 1 }  { m_axi_weights_mem_RUSER USER 0 1 }  { m_axi_weights_mem_RRESP RESP 0 2 }  { m_axi_weights_mem_BVALID VALID 0 1 }  { m_axi_weights_mem_BREADY READY 1 1 }  { m_axi_weights_mem_BRESP RESP 0 2 }  { m_axi_weights_mem_BID ID 0 1 }  { m_axi_weights_mem_BUSER USER 0 1 } } }
	w { ap_none {  { w in_data 0 64 } } }
	base_r { ap_none {  { base_r in_data 0 32 } } }
	ci { ap_none {  { ci in_data 0 10 } } }
	k { ap_none {  { k in_data 0 3 } } }
	bank { ap_memory {  { bank_address0 mem_address 1 11 }  { bank_ce0 mem_ce 1 1 }  { bank_we0 mem_we 1 1 }  { bank_d0 mem_din 1 16 } } }
	bank1 { ap_memory {  { bank1_address0 mem_address 1 11 }  { bank1_ce0 mem_ce 1 1 }  { bank1_we0 mem_we 1 1 }  { bank1_d0 mem_din 1 16 } } }
	bank2 { ap_memory {  { bank2_address0 mem_address 1 11 }  { bank2_ce0 mem_ce 1 1 }  { bank2_we0 mem_we 1 1 }  { bank2_d0 mem_din 1 16 } } }
	bank3 { ap_memory {  { bank3_address0 mem_address 1 11 }  { bank3_ce0 mem_ce 1 1 }  { bank3_we0 mem_we 1 1 }  { bank3_d0 mem_din 1 16 } } }
	bank14 { ap_memory {  { bank14_address0 mem_address 1 11 }  { bank14_ce0 mem_ce 1 1 }  { bank14_we0 mem_we 1 1 }  { bank14_d0 mem_din 1 16 } } }
	bank15 { ap_memory {  { bank15_address0 mem_address 1 11 }  { bank15_ce0 mem_ce 1 1 }  { bank15_we0 mem_we 1 1 }  { bank15_d0 mem_din 1 16 } } }
	bank16 { ap_memory {  { bank16_address0 mem_address 1 11 }  { bank16_ce0 mem_ce 1 1 }  { bank16_we0 mem_we 1 1 }  { bank16_d0 mem_din 1 16 } } }
	bank17 { ap_memory {  { bank17_address0 mem_address 1 11 }  { bank17_ce0 mem_ce 1 1 }  { bank17_we0 mem_we 1 1 }  { bank17_d0 mem_din 1 16 } } }
	bank28 { ap_memory {  { bank28_address0 mem_address 1 11 }  { bank28_ce0 mem_ce 1 1 }  { bank28_we0 mem_we 1 1 }  { bank28_d0 mem_din 1 16 } } }
	bank29 { ap_memory {  { bank29_address0 mem_address 1 11 }  { bank29_ce0 mem_ce 1 1 }  { bank29_we0 mem_we 1 1 }  { bank29_d0 mem_din 1 16 } } }
	bank210 { ap_memory {  { bank210_address0 mem_address 1 11 }  { bank210_ce0 mem_ce 1 1 }  { bank210_we0 mem_we 1 1 }  { bank210_d0 mem_din 1 16 } } }
	bank211 { ap_memory {  { bank211_address0 mem_address 1 11 }  { bank211_ce0 mem_ce 1 1 }  { bank211_we0 mem_we 1 1 }  { bank211_d0 mem_din 1 16 } } }
	bank312 { ap_memory {  { bank312_address0 mem_address 1 11 }  { bank312_ce0 mem_ce 1 1 }  { bank312_we0 mem_we 1 1 }  { bank312_d0 mem_din 1 16 } } }
	bank313 { ap_memory {  { bank313_address0 mem_address 1 11 }  { bank313_ce0 mem_ce 1 1 }  { bank313_we0 mem_we 1 1 }  { bank313_d0 mem_din 1 16 } } }
	bank314 { ap_memory {  { bank314_address0 mem_address 1 11 }  { bank314_ce0 mem_ce 1 1 }  { bank314_we0 mem_we 1 1 }  { bank314_d0 mem_din 1 16 } } }
	bank315 { ap_memory {  { bank315_address0 mem_address 1 11 }  { bank315_ce0 mem_ce 1 1 }  { bank315_we0 mem_we 1 1 }  { bank315_d0 mem_din 1 16 } } }
	bank4 { ap_memory {  { bank4_address0 mem_address 1 11 }  { bank4_ce0 mem_ce 1 1 }  { bank4_we0 mem_we 1 1 }  { bank4_d0 mem_din 1 16 } } }
	bank416 { ap_memory {  { bank416_address0 mem_address 1 11 }  { bank416_ce0 mem_ce 1 1 }  { bank416_we0 mem_we 1 1 }  { bank416_d0 mem_din 1 16 } } }
	bank417 { ap_memory {  { bank417_address0 mem_address 1 11 }  { bank417_ce0 mem_ce 1 1 }  { bank417_we0 mem_we 1 1 }  { bank417_d0 mem_din 1 16 } } }
	bank418 { ap_memory {  { bank418_address0 mem_address 1 11 }  { bank418_ce0 mem_ce 1 1 }  { bank418_we0 mem_we 1 1 }  { bank418_d0 mem_din 1 16 } } }
	bank5 { ap_memory {  { bank5_address0 mem_address 1 11 }  { bank5_ce0 mem_ce 1 1 }  { bank5_we0 mem_we 1 1 }  { bank5_d0 mem_din 1 16 } } }
	bank519 { ap_memory {  { bank519_address0 mem_address 1 11 }  { bank519_ce0 mem_ce 1 1 }  { bank519_we0 mem_we 1 1 }  { bank519_d0 mem_din 1 16 } } }
	bank520 { ap_memory {  { bank520_address0 mem_address 1 11 }  { bank520_ce0 mem_ce 1 1 }  { bank520_we0 mem_we 1 1 }  { bank520_d0 mem_din 1 16 } } }
	bank521 { ap_memory {  { bank521_address0 mem_address 1 11 }  { bank521_ce0 mem_ce 1 1 }  { bank521_we0 mem_we 1 1 }  { bank521_d0 mem_din 1 16 } } }
	bank6 { ap_memory {  { bank6_address0 mem_address 1 11 }  { bank6_ce0 mem_ce 1 1 }  { bank6_we0 mem_we 1 1 }  { bank6_d0 mem_din 1 16 } } }
	bank622 { ap_memory {  { bank622_address0 mem_address 1 11 }  { bank622_ce0 mem_ce 1 1 }  { bank622_we0 mem_we 1 1 }  { bank622_d0 mem_din 1 16 } } }
	bank623 { ap_memory {  { bank623_address0 mem_address 1 11 }  { bank623_ce0 mem_ce 1 1 }  { bank623_we0 mem_we 1 1 }  { bank623_d0 mem_din 1 16 } } }
	bank624 { ap_memory {  { bank624_address0 mem_address 1 11 }  { bank624_ce0 mem_ce 1 1 }  { bank624_we0 mem_we 1 1 }  { bank624_d0 mem_din 1 16 } } }
	bank7 { ap_memory {  { bank7_address0 mem_address 1 11 }  { bank7_ce0 mem_ce 1 1 }  { bank7_we0 mem_we 1 1 }  { bank7_d0 mem_din 1 16 } } }
	bank725 { ap_memory {  { bank725_address0 mem_address 1 11 }  { bank725_ce0 mem_ce 1 1 }  { bank725_we0 mem_we 1 1 }  { bank725_d0 mem_din 1 16 } } }
	bank726 { ap_memory {  { bank726_address0 mem_address 1 11 }  { bank726_ce0 mem_ce 1 1 }  { bank726_we0 mem_we 1 1 }  { bank726_d0 mem_din 1 16 } } }
	bank727 { ap_memory {  { bank727_address0 mem_address 1 11 }  { bank727_ce0 mem_ce 1 1 }  { bank727_we0 mem_we 1 1 }  { bank727_d0 mem_din 1 16 } } }
}
