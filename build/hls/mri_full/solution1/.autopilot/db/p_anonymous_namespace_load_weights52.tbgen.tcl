set moduleName p_anonymous_namespace_load_weights52
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
set C_modelName {(anonymous namespace)load_weights52}
set C_modelType { void 0 }
set C_modelArgList {
	{ weights_mem int 64 regular {axi_master 0}  }
	{ w int 64 regular {fifo 0}  }
	{ wbase int 32 regular {fifo 0}  }
	{ p_read int 16 regular  }
	{ ci int 10 regular {fifo 0}  }
	{ k int 3 regular {fifo 0}  }
	{ p_read1 int 1 regular  }
	{ next_0_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_0_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_0_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_0_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_1_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_1_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_1_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_1_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_2_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_2_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_2_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_2_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_3_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_3_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_3_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_3_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_4_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_4_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_4_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_4_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_5_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_5_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_5_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_5_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_6_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_6_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_6_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_6_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_7_0 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_7_1 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_7_2 int 16 regular {array 1152 { 0 3 } 0 1 }  }
	{ next_7_3 int 16 regular {array 1152 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights_mem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "w", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wbase", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "next_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_0_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_2_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_4_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_4_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_5_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_5_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_5_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_5_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_6_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_6_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_6_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_6_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_7_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_7_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_7_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "next_7_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 194
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
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
	{ w_dout sc_in sc_lv 64 signal 1 } 
	{ w_empty_n sc_in sc_logic 1 signal 1 } 
	{ w_read sc_out sc_logic 1 signal 1 } 
	{ wbase_dout sc_in sc_lv 32 signal 2 } 
	{ wbase_empty_n sc_in sc_logic 1 signal 2 } 
	{ wbase_read sc_out sc_logic 1 signal 2 } 
	{ p_read sc_in sc_lv 16 signal 3 } 
	{ ci_dout sc_in sc_lv 10 signal 4 } 
	{ ci_empty_n sc_in sc_logic 1 signal 4 } 
	{ ci_read sc_out sc_logic 1 signal 4 } 
	{ k_dout sc_in sc_lv 3 signal 5 } 
	{ k_empty_n sc_in sc_logic 1 signal 5 } 
	{ k_read sc_out sc_logic 1 signal 5 } 
	{ p_read1 sc_in sc_lv 1 signal 6 } 
	{ next_0_0_address0 sc_out sc_lv 11 signal 7 } 
	{ next_0_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ next_0_0_we0 sc_out sc_logic 1 signal 7 } 
	{ next_0_0_d0 sc_out sc_lv 16 signal 7 } 
	{ next_0_1_address0 sc_out sc_lv 11 signal 8 } 
	{ next_0_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ next_0_1_we0 sc_out sc_logic 1 signal 8 } 
	{ next_0_1_d0 sc_out sc_lv 16 signal 8 } 
	{ next_0_2_address0 sc_out sc_lv 11 signal 9 } 
	{ next_0_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ next_0_2_we0 sc_out sc_logic 1 signal 9 } 
	{ next_0_2_d0 sc_out sc_lv 16 signal 9 } 
	{ next_0_3_address0 sc_out sc_lv 11 signal 10 } 
	{ next_0_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ next_0_3_we0 sc_out sc_logic 1 signal 10 } 
	{ next_0_3_d0 sc_out sc_lv 16 signal 10 } 
	{ next_1_0_address0 sc_out sc_lv 11 signal 11 } 
	{ next_1_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ next_1_0_we0 sc_out sc_logic 1 signal 11 } 
	{ next_1_0_d0 sc_out sc_lv 16 signal 11 } 
	{ next_1_1_address0 sc_out sc_lv 11 signal 12 } 
	{ next_1_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ next_1_1_we0 sc_out sc_logic 1 signal 12 } 
	{ next_1_1_d0 sc_out sc_lv 16 signal 12 } 
	{ next_1_2_address0 sc_out sc_lv 11 signal 13 } 
	{ next_1_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ next_1_2_we0 sc_out sc_logic 1 signal 13 } 
	{ next_1_2_d0 sc_out sc_lv 16 signal 13 } 
	{ next_1_3_address0 sc_out sc_lv 11 signal 14 } 
	{ next_1_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ next_1_3_we0 sc_out sc_logic 1 signal 14 } 
	{ next_1_3_d0 sc_out sc_lv 16 signal 14 } 
	{ next_2_0_address0 sc_out sc_lv 11 signal 15 } 
	{ next_2_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ next_2_0_we0 sc_out sc_logic 1 signal 15 } 
	{ next_2_0_d0 sc_out sc_lv 16 signal 15 } 
	{ next_2_1_address0 sc_out sc_lv 11 signal 16 } 
	{ next_2_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ next_2_1_we0 sc_out sc_logic 1 signal 16 } 
	{ next_2_1_d0 sc_out sc_lv 16 signal 16 } 
	{ next_2_2_address0 sc_out sc_lv 11 signal 17 } 
	{ next_2_2_ce0 sc_out sc_logic 1 signal 17 } 
	{ next_2_2_we0 sc_out sc_logic 1 signal 17 } 
	{ next_2_2_d0 sc_out sc_lv 16 signal 17 } 
	{ next_2_3_address0 sc_out sc_lv 11 signal 18 } 
	{ next_2_3_ce0 sc_out sc_logic 1 signal 18 } 
	{ next_2_3_we0 sc_out sc_logic 1 signal 18 } 
	{ next_2_3_d0 sc_out sc_lv 16 signal 18 } 
	{ next_3_0_address0 sc_out sc_lv 11 signal 19 } 
	{ next_3_0_ce0 sc_out sc_logic 1 signal 19 } 
	{ next_3_0_we0 sc_out sc_logic 1 signal 19 } 
	{ next_3_0_d0 sc_out sc_lv 16 signal 19 } 
	{ next_3_1_address0 sc_out sc_lv 11 signal 20 } 
	{ next_3_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ next_3_1_we0 sc_out sc_logic 1 signal 20 } 
	{ next_3_1_d0 sc_out sc_lv 16 signal 20 } 
	{ next_3_2_address0 sc_out sc_lv 11 signal 21 } 
	{ next_3_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ next_3_2_we0 sc_out sc_logic 1 signal 21 } 
	{ next_3_2_d0 sc_out sc_lv 16 signal 21 } 
	{ next_3_3_address0 sc_out sc_lv 11 signal 22 } 
	{ next_3_3_ce0 sc_out sc_logic 1 signal 22 } 
	{ next_3_3_we0 sc_out sc_logic 1 signal 22 } 
	{ next_3_3_d0 sc_out sc_lv 16 signal 22 } 
	{ next_4_0_address0 sc_out sc_lv 11 signal 23 } 
	{ next_4_0_ce0 sc_out sc_logic 1 signal 23 } 
	{ next_4_0_we0 sc_out sc_logic 1 signal 23 } 
	{ next_4_0_d0 sc_out sc_lv 16 signal 23 } 
	{ next_4_1_address0 sc_out sc_lv 11 signal 24 } 
	{ next_4_1_ce0 sc_out sc_logic 1 signal 24 } 
	{ next_4_1_we0 sc_out sc_logic 1 signal 24 } 
	{ next_4_1_d0 sc_out sc_lv 16 signal 24 } 
	{ next_4_2_address0 sc_out sc_lv 11 signal 25 } 
	{ next_4_2_ce0 sc_out sc_logic 1 signal 25 } 
	{ next_4_2_we0 sc_out sc_logic 1 signal 25 } 
	{ next_4_2_d0 sc_out sc_lv 16 signal 25 } 
	{ next_4_3_address0 sc_out sc_lv 11 signal 26 } 
	{ next_4_3_ce0 sc_out sc_logic 1 signal 26 } 
	{ next_4_3_we0 sc_out sc_logic 1 signal 26 } 
	{ next_4_3_d0 sc_out sc_lv 16 signal 26 } 
	{ next_5_0_address0 sc_out sc_lv 11 signal 27 } 
	{ next_5_0_ce0 sc_out sc_logic 1 signal 27 } 
	{ next_5_0_we0 sc_out sc_logic 1 signal 27 } 
	{ next_5_0_d0 sc_out sc_lv 16 signal 27 } 
	{ next_5_1_address0 sc_out sc_lv 11 signal 28 } 
	{ next_5_1_ce0 sc_out sc_logic 1 signal 28 } 
	{ next_5_1_we0 sc_out sc_logic 1 signal 28 } 
	{ next_5_1_d0 sc_out sc_lv 16 signal 28 } 
	{ next_5_2_address0 sc_out sc_lv 11 signal 29 } 
	{ next_5_2_ce0 sc_out sc_logic 1 signal 29 } 
	{ next_5_2_we0 sc_out sc_logic 1 signal 29 } 
	{ next_5_2_d0 sc_out sc_lv 16 signal 29 } 
	{ next_5_3_address0 sc_out sc_lv 11 signal 30 } 
	{ next_5_3_ce0 sc_out sc_logic 1 signal 30 } 
	{ next_5_3_we0 sc_out sc_logic 1 signal 30 } 
	{ next_5_3_d0 sc_out sc_lv 16 signal 30 } 
	{ next_6_0_address0 sc_out sc_lv 11 signal 31 } 
	{ next_6_0_ce0 sc_out sc_logic 1 signal 31 } 
	{ next_6_0_we0 sc_out sc_logic 1 signal 31 } 
	{ next_6_0_d0 sc_out sc_lv 16 signal 31 } 
	{ next_6_1_address0 sc_out sc_lv 11 signal 32 } 
	{ next_6_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ next_6_1_we0 sc_out sc_logic 1 signal 32 } 
	{ next_6_1_d0 sc_out sc_lv 16 signal 32 } 
	{ next_6_2_address0 sc_out sc_lv 11 signal 33 } 
	{ next_6_2_ce0 sc_out sc_logic 1 signal 33 } 
	{ next_6_2_we0 sc_out sc_logic 1 signal 33 } 
	{ next_6_2_d0 sc_out sc_lv 16 signal 33 } 
	{ next_6_3_address0 sc_out sc_lv 11 signal 34 } 
	{ next_6_3_ce0 sc_out sc_logic 1 signal 34 } 
	{ next_6_3_we0 sc_out sc_logic 1 signal 34 } 
	{ next_6_3_d0 sc_out sc_lv 16 signal 34 } 
	{ next_7_0_address0 sc_out sc_lv 11 signal 35 } 
	{ next_7_0_ce0 sc_out sc_logic 1 signal 35 } 
	{ next_7_0_we0 sc_out sc_logic 1 signal 35 } 
	{ next_7_0_d0 sc_out sc_lv 16 signal 35 } 
	{ next_7_1_address0 sc_out sc_lv 11 signal 36 } 
	{ next_7_1_ce0 sc_out sc_logic 1 signal 36 } 
	{ next_7_1_we0 sc_out sc_logic 1 signal 36 } 
	{ next_7_1_d0 sc_out sc_lv 16 signal 36 } 
	{ next_7_2_address0 sc_out sc_lv 11 signal 37 } 
	{ next_7_2_ce0 sc_out sc_logic 1 signal 37 } 
	{ next_7_2_we0 sc_out sc_logic 1 signal 37 } 
	{ next_7_2_d0 sc_out sc_lv 16 signal 37 } 
	{ next_7_3_address0 sc_out sc_lv 11 signal 38 } 
	{ next_7_3_ce0 sc_out sc_logic 1 signal 38 } 
	{ next_7_3_we0 sc_out sc_logic 1 signal 38 } 
	{ next_7_3_d0 sc_out sc_lv 16 signal 38 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "w_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w", "role": "dout" }} , 
 	{ "name": "w_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "empty_n" }} , 
 	{ "name": "w_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "read" }} , 
 	{ "name": "wbase_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wbase", "role": "dout" }} , 
 	{ "name": "wbase_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wbase", "role": "empty_n" }} , 
 	{ "name": "wbase_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wbase", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ci_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "dout" }} , 
 	{ "name": "ci_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "empty_n" }} , 
 	{ "name": "ci_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "read" }} , 
 	{ "name": "k_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "dout" }} , 
 	{ "name": "k_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "empty_n" }} , 
 	{ "name": "k_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "read" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "next_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_0_0", "role": "address0" }} , 
 	{ "name": "next_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_0", "role": "ce0" }} , 
 	{ "name": "next_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_0", "role": "we0" }} , 
 	{ "name": "next_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_0_0", "role": "d0" }} , 
 	{ "name": "next_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_0_1", "role": "address0" }} , 
 	{ "name": "next_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_1", "role": "ce0" }} , 
 	{ "name": "next_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_1", "role": "we0" }} , 
 	{ "name": "next_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_0_1", "role": "d0" }} , 
 	{ "name": "next_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_0_2", "role": "address0" }} , 
 	{ "name": "next_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_2", "role": "ce0" }} , 
 	{ "name": "next_0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_2", "role": "we0" }} , 
 	{ "name": "next_0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_0_2", "role": "d0" }} , 
 	{ "name": "next_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_0_3", "role": "address0" }} , 
 	{ "name": "next_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_3", "role": "ce0" }} , 
 	{ "name": "next_0_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_0_3", "role": "we0" }} , 
 	{ "name": "next_0_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_0_3", "role": "d0" }} , 
 	{ "name": "next_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_1_0", "role": "address0" }} , 
 	{ "name": "next_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_0", "role": "ce0" }} , 
 	{ "name": "next_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_0", "role": "we0" }} , 
 	{ "name": "next_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_1_0", "role": "d0" }} , 
 	{ "name": "next_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_1_1", "role": "address0" }} , 
 	{ "name": "next_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_1", "role": "ce0" }} , 
 	{ "name": "next_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_1", "role": "we0" }} , 
 	{ "name": "next_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_1_1", "role": "d0" }} , 
 	{ "name": "next_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_1_2", "role": "address0" }} , 
 	{ "name": "next_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_2", "role": "ce0" }} , 
 	{ "name": "next_1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_2", "role": "we0" }} , 
 	{ "name": "next_1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_1_2", "role": "d0" }} , 
 	{ "name": "next_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_1_3", "role": "address0" }} , 
 	{ "name": "next_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_3", "role": "ce0" }} , 
 	{ "name": "next_1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_1_3", "role": "we0" }} , 
 	{ "name": "next_1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_1_3", "role": "d0" }} , 
 	{ "name": "next_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_2_0", "role": "address0" }} , 
 	{ "name": "next_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_0", "role": "ce0" }} , 
 	{ "name": "next_2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_0", "role": "we0" }} , 
 	{ "name": "next_2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_2_0", "role": "d0" }} , 
 	{ "name": "next_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_2_1", "role": "address0" }} , 
 	{ "name": "next_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_1", "role": "ce0" }} , 
 	{ "name": "next_2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_1", "role": "we0" }} , 
 	{ "name": "next_2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_2_1", "role": "d0" }} , 
 	{ "name": "next_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_2_2", "role": "address0" }} , 
 	{ "name": "next_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_2", "role": "ce0" }} , 
 	{ "name": "next_2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_2", "role": "we0" }} , 
 	{ "name": "next_2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_2_2", "role": "d0" }} , 
 	{ "name": "next_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_2_3", "role": "address0" }} , 
 	{ "name": "next_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_3", "role": "ce0" }} , 
 	{ "name": "next_2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_2_3", "role": "we0" }} , 
 	{ "name": "next_2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_2_3", "role": "d0" }} , 
 	{ "name": "next_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_3_0", "role": "address0" }} , 
 	{ "name": "next_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_0", "role": "ce0" }} , 
 	{ "name": "next_3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_0", "role": "we0" }} , 
 	{ "name": "next_3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_3_0", "role": "d0" }} , 
 	{ "name": "next_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_3_1", "role": "address0" }} , 
 	{ "name": "next_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_1", "role": "ce0" }} , 
 	{ "name": "next_3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_1", "role": "we0" }} , 
 	{ "name": "next_3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_3_1", "role": "d0" }} , 
 	{ "name": "next_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_3_2", "role": "address0" }} , 
 	{ "name": "next_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_2", "role": "ce0" }} , 
 	{ "name": "next_3_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_2", "role": "we0" }} , 
 	{ "name": "next_3_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_3_2", "role": "d0" }} , 
 	{ "name": "next_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_3_3", "role": "address0" }} , 
 	{ "name": "next_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_3", "role": "ce0" }} , 
 	{ "name": "next_3_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_3_3", "role": "we0" }} , 
 	{ "name": "next_3_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_3_3", "role": "d0" }} , 
 	{ "name": "next_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_4_0", "role": "address0" }} , 
 	{ "name": "next_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_0", "role": "ce0" }} , 
 	{ "name": "next_4_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_0", "role": "we0" }} , 
 	{ "name": "next_4_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_4_0", "role": "d0" }} , 
 	{ "name": "next_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_4_1", "role": "address0" }} , 
 	{ "name": "next_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_1", "role": "ce0" }} , 
 	{ "name": "next_4_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_1", "role": "we0" }} , 
 	{ "name": "next_4_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_4_1", "role": "d0" }} , 
 	{ "name": "next_4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_4_2", "role": "address0" }} , 
 	{ "name": "next_4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_2", "role": "ce0" }} , 
 	{ "name": "next_4_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_2", "role": "we0" }} , 
 	{ "name": "next_4_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_4_2", "role": "d0" }} , 
 	{ "name": "next_4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_4_3", "role": "address0" }} , 
 	{ "name": "next_4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_3", "role": "ce0" }} , 
 	{ "name": "next_4_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_4_3", "role": "we0" }} , 
 	{ "name": "next_4_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_4_3", "role": "d0" }} , 
 	{ "name": "next_5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_5_0", "role": "address0" }} , 
 	{ "name": "next_5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_0", "role": "ce0" }} , 
 	{ "name": "next_5_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_0", "role": "we0" }} , 
 	{ "name": "next_5_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_5_0", "role": "d0" }} , 
 	{ "name": "next_5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_5_1", "role": "address0" }} , 
 	{ "name": "next_5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_1", "role": "ce0" }} , 
 	{ "name": "next_5_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_1", "role": "we0" }} , 
 	{ "name": "next_5_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_5_1", "role": "d0" }} , 
 	{ "name": "next_5_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_5_2", "role": "address0" }} , 
 	{ "name": "next_5_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_2", "role": "ce0" }} , 
 	{ "name": "next_5_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_2", "role": "we0" }} , 
 	{ "name": "next_5_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_5_2", "role": "d0" }} , 
 	{ "name": "next_5_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_5_3", "role": "address0" }} , 
 	{ "name": "next_5_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_3", "role": "ce0" }} , 
 	{ "name": "next_5_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_5_3", "role": "we0" }} , 
 	{ "name": "next_5_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_5_3", "role": "d0" }} , 
 	{ "name": "next_6_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_6_0", "role": "address0" }} , 
 	{ "name": "next_6_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_0", "role": "ce0" }} , 
 	{ "name": "next_6_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_0", "role": "we0" }} , 
 	{ "name": "next_6_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_6_0", "role": "d0" }} , 
 	{ "name": "next_6_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_6_1", "role": "address0" }} , 
 	{ "name": "next_6_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_1", "role": "ce0" }} , 
 	{ "name": "next_6_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_1", "role": "we0" }} , 
 	{ "name": "next_6_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_6_1", "role": "d0" }} , 
 	{ "name": "next_6_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_6_2", "role": "address0" }} , 
 	{ "name": "next_6_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_2", "role": "ce0" }} , 
 	{ "name": "next_6_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_2", "role": "we0" }} , 
 	{ "name": "next_6_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_6_2", "role": "d0" }} , 
 	{ "name": "next_6_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_6_3", "role": "address0" }} , 
 	{ "name": "next_6_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_3", "role": "ce0" }} , 
 	{ "name": "next_6_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_6_3", "role": "we0" }} , 
 	{ "name": "next_6_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_6_3", "role": "d0" }} , 
 	{ "name": "next_7_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_7_0", "role": "address0" }} , 
 	{ "name": "next_7_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_0", "role": "ce0" }} , 
 	{ "name": "next_7_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_0", "role": "we0" }} , 
 	{ "name": "next_7_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_7_0", "role": "d0" }} , 
 	{ "name": "next_7_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_7_1", "role": "address0" }} , 
 	{ "name": "next_7_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_1", "role": "ce0" }} , 
 	{ "name": "next_7_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_1", "role": "we0" }} , 
 	{ "name": "next_7_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_7_1", "role": "d0" }} , 
 	{ "name": "next_7_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_7_2", "role": "address0" }} , 
 	{ "name": "next_7_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_2", "role": "ce0" }} , 
 	{ "name": "next_7_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_2", "role": "we0" }} , 
 	{ "name": "next_7_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_7_2", "role": "d0" }} , 
 	{ "name": "next_7_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "next_7_3", "role": "address0" }} , 
 	{ "name": "next_7_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_3", "role": "ce0" }} , 
 	{ "name": "next_7_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "next_7_3", "role": "we0" }} , 
 	{ "name": "next_7_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "next_7_3", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "p_anonymous_namespace_load_weights52",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "131192",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "w", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "w_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wbase", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wbase_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "next_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_0_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_0_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_3_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_3_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_4_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_4_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_4_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_4_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_5_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_5_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_5_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_5_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_6_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_6_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_6_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_6_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_7_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_7_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_7_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "next_7_3", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.raw_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_3ns_6_1_1_U128", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2s_2s_2_1_1_U129", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_10ns_6ns_16_4_1_U130", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U131", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_3ns_32ns_32_4_1_U132", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_2ns_2ns_8_4_1_U133", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_load_weights52 {
		weights_mem {Type I LastRead 20 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		wbase {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		next_0_0 {Type O LastRead -1 FirstWrite 21}
		next_0_1 {Type O LastRead -1 FirstWrite 21}
		next_0_2 {Type O LastRead -1 FirstWrite 21}
		next_0_3 {Type O LastRead -1 FirstWrite 21}
		next_1_0 {Type O LastRead -1 FirstWrite 21}
		next_1_1 {Type O LastRead -1 FirstWrite 21}
		next_1_2 {Type O LastRead -1 FirstWrite 21}
		next_1_3 {Type O LastRead -1 FirstWrite 21}
		next_2_0 {Type O LastRead -1 FirstWrite 21}
		next_2_1 {Type O LastRead -1 FirstWrite 21}
		next_2_2 {Type O LastRead -1 FirstWrite 21}
		next_2_3 {Type O LastRead -1 FirstWrite 21}
		next_3_0 {Type O LastRead -1 FirstWrite 21}
		next_3_1 {Type O LastRead -1 FirstWrite 21}
		next_3_2 {Type O LastRead -1 FirstWrite 21}
		next_3_3 {Type O LastRead -1 FirstWrite 21}
		next_4_0 {Type O LastRead -1 FirstWrite 21}
		next_4_1 {Type O LastRead -1 FirstWrite 21}
		next_4_2 {Type O LastRead -1 FirstWrite 21}
		next_4_3 {Type O LastRead -1 FirstWrite 21}
		next_5_0 {Type O LastRead -1 FirstWrite 21}
		next_5_1 {Type O LastRead -1 FirstWrite 21}
		next_5_2 {Type O LastRead -1 FirstWrite 21}
		next_5_3 {Type O LastRead -1 FirstWrite 21}
		next_6_0 {Type O LastRead -1 FirstWrite 21}
		next_6_1 {Type O LastRead -1 FirstWrite 21}
		next_6_2 {Type O LastRead -1 FirstWrite 21}
		next_6_3 {Type O LastRead -1 FirstWrite 21}
		next_7_0 {Type O LastRead -1 FirstWrite 21}
		next_7_1 {Type O LastRead -1 FirstWrite 21}
		next_7_2 {Type O LastRead -1 FirstWrite 21}
		next_7_3 {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "131192"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "131192"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	weights_mem { m_axi {  { m_axi_weights_mem_AWVALID VALID 1 1 }  { m_axi_weights_mem_AWREADY READY 0 1 }  { m_axi_weights_mem_AWADDR ADDR 1 64 }  { m_axi_weights_mem_AWID ID 1 1 }  { m_axi_weights_mem_AWLEN LEN 1 32 }  { m_axi_weights_mem_AWSIZE SIZE 1 3 }  { m_axi_weights_mem_AWBURST BURST 1 2 }  { m_axi_weights_mem_AWLOCK LOCK 1 2 }  { m_axi_weights_mem_AWCACHE CACHE 1 4 }  { m_axi_weights_mem_AWPROT PROT 1 3 }  { m_axi_weights_mem_AWQOS QOS 1 4 }  { m_axi_weights_mem_AWREGION REGION 1 4 }  { m_axi_weights_mem_AWUSER USER 1 1 }  { m_axi_weights_mem_WVALID VALID 1 1 }  { m_axi_weights_mem_WREADY READY 0 1 }  { m_axi_weights_mem_WDATA DATA 1 64 }  { m_axi_weights_mem_WSTRB STRB 1 8 }  { m_axi_weights_mem_WLAST LAST 1 1 }  { m_axi_weights_mem_WID ID 1 1 }  { m_axi_weights_mem_WUSER USER 1 1 }  { m_axi_weights_mem_ARVALID VALID 1 1 }  { m_axi_weights_mem_ARREADY READY 0 1 }  { m_axi_weights_mem_ARADDR ADDR 1 64 }  { m_axi_weights_mem_ARID ID 1 1 }  { m_axi_weights_mem_ARLEN LEN 1 32 }  { m_axi_weights_mem_ARSIZE SIZE 1 3 }  { m_axi_weights_mem_ARBURST BURST 1 2 }  { m_axi_weights_mem_ARLOCK LOCK 1 2 }  { m_axi_weights_mem_ARCACHE CACHE 1 4 }  { m_axi_weights_mem_ARPROT PROT 1 3 }  { m_axi_weights_mem_ARQOS QOS 1 4 }  { m_axi_weights_mem_ARREGION REGION 1 4 }  { m_axi_weights_mem_ARUSER USER 1 1 }  { m_axi_weights_mem_RVALID VALID 0 1 }  { m_axi_weights_mem_RREADY READY 1 1 }  { m_axi_weights_mem_RDATA DATA 0 64 }  { m_axi_weights_mem_RLAST LAST 0 1 }  { m_axi_weights_mem_RID ID 0 1 }  { m_axi_weights_mem_RUSER USER 0 1 }  { m_axi_weights_mem_RRESP RESP 0 2 }  { m_axi_weights_mem_BVALID VALID 0 1 }  { m_axi_weights_mem_BREADY READY 1 1 }  { m_axi_weights_mem_BRESP RESP 0 2 }  { m_axi_weights_mem_BID ID 0 1 }  { m_axi_weights_mem_BUSER USER 0 1 } } }
	w { ap_fifo {  { w_dout fifo_data 0 64 }  { w_empty_n fifo_status 0 1 }  { w_read fifo_update 1 1 } } }
	wbase { ap_fifo {  { wbase_dout fifo_data 0 32 }  { wbase_empty_n fifo_status 0 1 }  { wbase_read fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 16 } } }
	ci { ap_fifo {  { ci_dout fifo_data 0 10 }  { ci_empty_n fifo_status 0 1 }  { ci_read fifo_update 1 1 } } }
	k { ap_fifo {  { k_dout fifo_data 0 3 }  { k_empty_n fifo_status 0 1 }  { k_read fifo_update 1 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 1 } } }
	next_0_0 { ap_memory {  { next_0_0_address0 mem_address 1 11 }  { next_0_0_ce0 mem_ce 1 1 }  { next_0_0_we0 mem_we 1 1 }  { next_0_0_d0 mem_din 1 16 } } }
	next_0_1 { ap_memory {  { next_0_1_address0 mem_address 1 11 }  { next_0_1_ce0 mem_ce 1 1 }  { next_0_1_we0 mem_we 1 1 }  { next_0_1_d0 mem_din 1 16 } } }
	next_0_2 { ap_memory {  { next_0_2_address0 mem_address 1 11 }  { next_0_2_ce0 mem_ce 1 1 }  { next_0_2_we0 mem_we 1 1 }  { next_0_2_d0 mem_din 1 16 } } }
	next_0_3 { ap_memory {  { next_0_3_address0 mem_address 1 11 }  { next_0_3_ce0 mem_ce 1 1 }  { next_0_3_we0 mem_we 1 1 }  { next_0_3_d0 mem_din 1 16 } } }
	next_1_0 { ap_memory {  { next_1_0_address0 mem_address 1 11 }  { next_1_0_ce0 mem_ce 1 1 }  { next_1_0_we0 mem_we 1 1 }  { next_1_0_d0 mem_din 1 16 } } }
	next_1_1 { ap_memory {  { next_1_1_address0 mem_address 1 11 }  { next_1_1_ce0 mem_ce 1 1 }  { next_1_1_we0 mem_we 1 1 }  { next_1_1_d0 mem_din 1 16 } } }
	next_1_2 { ap_memory {  { next_1_2_address0 mem_address 1 11 }  { next_1_2_ce0 mem_ce 1 1 }  { next_1_2_we0 mem_we 1 1 }  { next_1_2_d0 mem_din 1 16 } } }
	next_1_3 { ap_memory {  { next_1_3_address0 mem_address 1 11 }  { next_1_3_ce0 mem_ce 1 1 }  { next_1_3_we0 mem_we 1 1 }  { next_1_3_d0 mem_din 1 16 } } }
	next_2_0 { ap_memory {  { next_2_0_address0 mem_address 1 11 }  { next_2_0_ce0 mem_ce 1 1 }  { next_2_0_we0 mem_we 1 1 }  { next_2_0_d0 mem_din 1 16 } } }
	next_2_1 { ap_memory {  { next_2_1_address0 mem_address 1 11 }  { next_2_1_ce0 mem_ce 1 1 }  { next_2_1_we0 mem_we 1 1 }  { next_2_1_d0 mem_din 1 16 } } }
	next_2_2 { ap_memory {  { next_2_2_address0 mem_address 1 11 }  { next_2_2_ce0 mem_ce 1 1 }  { next_2_2_we0 mem_we 1 1 }  { next_2_2_d0 mem_din 1 16 } } }
	next_2_3 { ap_memory {  { next_2_3_address0 mem_address 1 11 }  { next_2_3_ce0 mem_ce 1 1 }  { next_2_3_we0 mem_we 1 1 }  { next_2_3_d0 mem_din 1 16 } } }
	next_3_0 { ap_memory {  { next_3_0_address0 mem_address 1 11 }  { next_3_0_ce0 mem_ce 1 1 }  { next_3_0_we0 mem_we 1 1 }  { next_3_0_d0 mem_din 1 16 } } }
	next_3_1 { ap_memory {  { next_3_1_address0 mem_address 1 11 }  { next_3_1_ce0 mem_ce 1 1 }  { next_3_1_we0 mem_we 1 1 }  { next_3_1_d0 mem_din 1 16 } } }
	next_3_2 { ap_memory {  { next_3_2_address0 mem_address 1 11 }  { next_3_2_ce0 mem_ce 1 1 }  { next_3_2_we0 mem_we 1 1 }  { next_3_2_d0 mem_din 1 16 } } }
	next_3_3 { ap_memory {  { next_3_3_address0 mem_address 1 11 }  { next_3_3_ce0 mem_ce 1 1 }  { next_3_3_we0 mem_we 1 1 }  { next_3_3_d0 mem_din 1 16 } } }
	next_4_0 { ap_memory {  { next_4_0_address0 mem_address 1 11 }  { next_4_0_ce0 mem_ce 1 1 }  { next_4_0_we0 mem_we 1 1 }  { next_4_0_d0 mem_din 1 16 } } }
	next_4_1 { ap_memory {  { next_4_1_address0 mem_address 1 11 }  { next_4_1_ce0 mem_ce 1 1 }  { next_4_1_we0 mem_we 1 1 }  { next_4_1_d0 mem_din 1 16 } } }
	next_4_2 { ap_memory {  { next_4_2_address0 mem_address 1 11 }  { next_4_2_ce0 mem_ce 1 1 }  { next_4_2_we0 mem_we 1 1 }  { next_4_2_d0 mem_din 1 16 } } }
	next_4_3 { ap_memory {  { next_4_3_address0 mem_address 1 11 }  { next_4_3_ce0 mem_ce 1 1 }  { next_4_3_we0 mem_we 1 1 }  { next_4_3_d0 mem_din 1 16 } } }
	next_5_0 { ap_memory {  { next_5_0_address0 mem_address 1 11 }  { next_5_0_ce0 mem_ce 1 1 }  { next_5_0_we0 mem_we 1 1 }  { next_5_0_d0 mem_din 1 16 } } }
	next_5_1 { ap_memory {  { next_5_1_address0 mem_address 1 11 }  { next_5_1_ce0 mem_ce 1 1 }  { next_5_1_we0 mem_we 1 1 }  { next_5_1_d0 mem_din 1 16 } } }
	next_5_2 { ap_memory {  { next_5_2_address0 mem_address 1 11 }  { next_5_2_ce0 mem_ce 1 1 }  { next_5_2_we0 mem_we 1 1 }  { next_5_2_d0 mem_din 1 16 } } }
	next_5_3 { ap_memory {  { next_5_3_address0 mem_address 1 11 }  { next_5_3_ce0 mem_ce 1 1 }  { next_5_3_we0 mem_we 1 1 }  { next_5_3_d0 mem_din 1 16 } } }
	next_6_0 { ap_memory {  { next_6_0_address0 mem_address 1 11 }  { next_6_0_ce0 mem_ce 1 1 }  { next_6_0_we0 mem_we 1 1 }  { next_6_0_d0 mem_din 1 16 } } }
	next_6_1 { ap_memory {  { next_6_1_address0 mem_address 1 11 }  { next_6_1_ce0 mem_ce 1 1 }  { next_6_1_we0 mem_we 1 1 }  { next_6_1_d0 mem_din 1 16 } } }
	next_6_2 { ap_memory {  { next_6_2_address0 mem_address 1 11 }  { next_6_2_ce0 mem_ce 1 1 }  { next_6_2_we0 mem_we 1 1 }  { next_6_2_d0 mem_din 1 16 } } }
	next_6_3 { ap_memory {  { next_6_3_address0 mem_address 1 11 }  { next_6_3_ce0 mem_ce 1 1 }  { next_6_3_we0 mem_we 1 1 }  { next_6_3_d0 mem_din 1 16 } } }
	next_7_0 { ap_memory {  { next_7_0_address0 mem_address 1 11 }  { next_7_0_ce0 mem_ce 1 1 }  { next_7_0_we0 mem_we 1 1 }  { next_7_0_d0 mem_din 1 16 } } }
	next_7_1 { ap_memory {  { next_7_1_address0 mem_address 1 11 }  { next_7_1_ce0 mem_ce 1 1 }  { next_7_1_we0 mem_we 1 1 }  { next_7_1_d0 mem_din 1 16 } } }
	next_7_2 { ap_memory {  { next_7_2_address0 mem_address 1 11 }  { next_7_2_ce0 mem_ce 1 1 }  { next_7_2_we0 mem_we 1 1 }  { next_7_2_d0 mem_din 1 16 } } }
	next_7_3 { ap_memory {  { next_7_3_address0 mem_address 1 11 }  { next_7_3_ce0 mem_ce 1 1 }  { next_7_3_we0 mem_we 1 1 }  { next_7_3_d0 mem_din 1 16 } } }
}
