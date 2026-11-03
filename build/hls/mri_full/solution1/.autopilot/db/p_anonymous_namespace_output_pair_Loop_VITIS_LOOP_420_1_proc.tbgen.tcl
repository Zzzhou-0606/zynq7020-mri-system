set moduleName p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc
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
set C_modelName {(anonymous namespace)output_pair_Loop_VITIS_LOOP_420_1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ batch_count int 32 regular {fifo 0}  }
	{ wide int 64 regular {fifo 0}  }
	{ input_r int 32 regular {fifo 0}  }
	{ output_r int 32 regular {fifo 0}  }
	{ skip int 32 regular {fifo 0}  }
	{ feature_read int 64 regular {axi_master 0}  }
	{ feature_mem int 64 regular {axi_master 2}  }
	{ fr int 64 regular {fifo 0}  }
	{ fw int 64 regular {fifo 0}  }
	{ current_0_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_0_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_0_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_0_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_1_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_1_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_1_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_1_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_2_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_2_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_2_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_2_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_3_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_3_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_3_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_3_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_4_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_4_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_4_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_4_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_5_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_5_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_5_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_5_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_6_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_6_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_6_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_6_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_7_0 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_7_1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_7_2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ current_7_3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ bias_0 int 48 regular {fifo 0}  }
	{ bias_1 int 48 regular {fifo 0}  }
	{ bias_2 int 48 regular {fifo 0}  }
	{ bias_3 int 48 regular {fifo 0}  }
	{ bias_4 int 48 regular {fifo 0}  }
	{ bias_5 int 48 regular {fifo 0}  }
	{ bias_6 int 48 regular {fifo 0}  }
	{ bias_7 int 48 regular {fifo 0}  }
	{ shifts_0 int 32 regular {fifo 0}  }
	{ shifts_1 int 32 regular {fifo 0}  }
	{ shifts_2 int 32 regular {fifo 0}  }
	{ shifts_3 int 32 regular {fifo 0}  }
	{ shifts_4 int 32 regular {fifo 0}  }
	{ shifts_5 int 32 regular {fifo 0}  }
	{ shifts_6 int 32 regular {fifo 0}  }
	{ shifts_7 int 32 regular {fifo 0}  }
	{ skipshift int 32 regular {fifo 0}  }
	{ ob int 16 regular {fifo 0}  }
	{ ci int 10 regular {fifo 0}  }
	{ h int 16 regular {fifo 0}  }
	{ wi int 16 regular {fifo 0}  }
	{ k int 3 regular {fifo 0}  }
	{ stride int 2 regular {fifo 0}  }
	{ pad int 2 regular {fifo 0}  }
	{ oh int 16 regular {fifo 0}  }
	{ ow int 16 regular {fifo 0}  }
	{ kind int 3 regular {fifo 0}  }
	{ p_anonymous_namespace_profile_ticks int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_mac int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_wait int 64 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "batch_count", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "wide", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skip", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "feature_read", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "feature_mem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "fr", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fw", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "current_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_0_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_1_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_2_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_4_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_4_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_5_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_5_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_5_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_5_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_6_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_6_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_6_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_6_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_7_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_7_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_7_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current_7_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_0", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_3", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_4", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_5", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_6", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "bias_7", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shifts_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "skipshift", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ob", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wi", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "oh", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "kind", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "p_anonymous_namespace_profile_ticks", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_mac", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_wait", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 304
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ batch_count_dout sc_in sc_lv 32 signal 0 } 
	{ batch_count_empty_n sc_in sc_logic 1 signal 0 } 
	{ batch_count_read sc_out sc_logic 1 signal 0 } 
	{ wide_dout sc_in sc_lv 64 signal 1 } 
	{ wide_empty_n sc_in sc_logic 1 signal 1 } 
	{ wide_read sc_out sc_logic 1 signal 1 } 
	{ input_r_dout sc_in sc_lv 32 signal 2 } 
	{ input_r_empty_n sc_in sc_logic 1 signal 2 } 
	{ input_r_read sc_out sc_logic 1 signal 2 } 
	{ output_r_dout sc_in sc_lv 32 signal 3 } 
	{ output_r_empty_n sc_in sc_logic 1 signal 3 } 
	{ output_r_read sc_out sc_logic 1 signal 3 } 
	{ skip_dout sc_in sc_lv 32 signal 4 } 
	{ skip_empty_n sc_in sc_logic 1 signal 4 } 
	{ skip_read sc_out sc_logic 1 signal 4 } 
	{ m_axi_feature_read_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_feature_read_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_feature_read_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_feature_read_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_feature_read_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_feature_read_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_feature_read_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_feature_read_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_feature_read_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_feature_read_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_feature_read_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_feature_read_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_feature_read_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_feature_read_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_feature_read_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_feature_read_WDATA sc_out sc_lv 64 signal 5 } 
	{ m_axi_feature_read_WSTRB sc_out sc_lv 8 signal 5 } 
	{ m_axi_feature_read_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_feature_read_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_feature_read_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_feature_read_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_feature_read_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_feature_read_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_feature_read_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_feature_read_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_feature_read_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_feature_read_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_feature_read_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_feature_read_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_feature_read_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_feature_read_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_feature_read_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_feature_read_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_feature_read_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_feature_read_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_feature_read_RDATA sc_in sc_lv 64 signal 5 } 
	{ m_axi_feature_read_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_feature_read_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_feature_read_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_feature_read_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_feature_read_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_feature_read_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_feature_read_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_feature_read_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_feature_read_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_feature_mem_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_feature_mem_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_feature_mem_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_feature_mem_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_feature_mem_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_feature_mem_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_feature_mem_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_feature_mem_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_feature_mem_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_feature_mem_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_WDATA sc_out sc_lv 64 signal 6 } 
	{ m_axi_feature_mem_WSTRB sc_out sc_lv 8 signal 6 } 
	{ m_axi_feature_mem_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_feature_mem_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_feature_mem_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_feature_mem_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_feature_mem_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_feature_mem_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_feature_mem_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_feature_mem_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_feature_mem_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_feature_mem_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_RDATA sc_in sc_lv 64 signal 6 } 
	{ m_axi_feature_mem_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_feature_mem_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_feature_mem_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_feature_mem_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_feature_mem_BUSER sc_in sc_lv 1 signal 6 } 
	{ fr_dout sc_in sc_lv 64 signal 7 } 
	{ fr_empty_n sc_in sc_logic 1 signal 7 } 
	{ fr_read sc_out sc_logic 1 signal 7 } 
	{ fw_dout sc_in sc_lv 64 signal 8 } 
	{ fw_empty_n sc_in sc_logic 1 signal 8 } 
	{ fw_read sc_out sc_logic 1 signal 8 } 
	{ current_0_0_address0 sc_out sc_lv 11 signal 9 } 
	{ current_0_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ current_0_0_q0 sc_in sc_lv 16 signal 9 } 
	{ current_0_1_address0 sc_out sc_lv 11 signal 10 } 
	{ current_0_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ current_0_1_q0 sc_in sc_lv 16 signal 10 } 
	{ current_0_2_address0 sc_out sc_lv 11 signal 11 } 
	{ current_0_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ current_0_2_q0 sc_in sc_lv 16 signal 11 } 
	{ current_0_3_address0 sc_out sc_lv 11 signal 12 } 
	{ current_0_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ current_0_3_q0 sc_in sc_lv 16 signal 12 } 
	{ current_1_0_address0 sc_out sc_lv 11 signal 13 } 
	{ current_1_0_ce0 sc_out sc_logic 1 signal 13 } 
	{ current_1_0_q0 sc_in sc_lv 16 signal 13 } 
	{ current_1_1_address0 sc_out sc_lv 11 signal 14 } 
	{ current_1_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ current_1_1_q0 sc_in sc_lv 16 signal 14 } 
	{ current_1_2_address0 sc_out sc_lv 11 signal 15 } 
	{ current_1_2_ce0 sc_out sc_logic 1 signal 15 } 
	{ current_1_2_q0 sc_in sc_lv 16 signal 15 } 
	{ current_1_3_address0 sc_out sc_lv 11 signal 16 } 
	{ current_1_3_ce0 sc_out sc_logic 1 signal 16 } 
	{ current_1_3_q0 sc_in sc_lv 16 signal 16 } 
	{ current_2_0_address0 sc_out sc_lv 11 signal 17 } 
	{ current_2_0_ce0 sc_out sc_logic 1 signal 17 } 
	{ current_2_0_q0 sc_in sc_lv 16 signal 17 } 
	{ current_2_1_address0 sc_out sc_lv 11 signal 18 } 
	{ current_2_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ current_2_1_q0 sc_in sc_lv 16 signal 18 } 
	{ current_2_2_address0 sc_out sc_lv 11 signal 19 } 
	{ current_2_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ current_2_2_q0 sc_in sc_lv 16 signal 19 } 
	{ current_2_3_address0 sc_out sc_lv 11 signal 20 } 
	{ current_2_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ current_2_3_q0 sc_in sc_lv 16 signal 20 } 
	{ current_3_0_address0 sc_out sc_lv 11 signal 21 } 
	{ current_3_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ current_3_0_q0 sc_in sc_lv 16 signal 21 } 
	{ current_3_1_address0 sc_out sc_lv 11 signal 22 } 
	{ current_3_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ current_3_1_q0 sc_in sc_lv 16 signal 22 } 
	{ current_3_2_address0 sc_out sc_lv 11 signal 23 } 
	{ current_3_2_ce0 sc_out sc_logic 1 signal 23 } 
	{ current_3_2_q0 sc_in sc_lv 16 signal 23 } 
	{ current_3_3_address0 sc_out sc_lv 11 signal 24 } 
	{ current_3_3_ce0 sc_out sc_logic 1 signal 24 } 
	{ current_3_3_q0 sc_in sc_lv 16 signal 24 } 
	{ current_4_0_address0 sc_out sc_lv 11 signal 25 } 
	{ current_4_0_ce0 sc_out sc_logic 1 signal 25 } 
	{ current_4_0_q0 sc_in sc_lv 16 signal 25 } 
	{ current_4_1_address0 sc_out sc_lv 11 signal 26 } 
	{ current_4_1_ce0 sc_out sc_logic 1 signal 26 } 
	{ current_4_1_q0 sc_in sc_lv 16 signal 26 } 
	{ current_4_2_address0 sc_out sc_lv 11 signal 27 } 
	{ current_4_2_ce0 sc_out sc_logic 1 signal 27 } 
	{ current_4_2_q0 sc_in sc_lv 16 signal 27 } 
	{ current_4_3_address0 sc_out sc_lv 11 signal 28 } 
	{ current_4_3_ce0 sc_out sc_logic 1 signal 28 } 
	{ current_4_3_q0 sc_in sc_lv 16 signal 28 } 
	{ current_5_0_address0 sc_out sc_lv 11 signal 29 } 
	{ current_5_0_ce0 sc_out sc_logic 1 signal 29 } 
	{ current_5_0_q0 sc_in sc_lv 16 signal 29 } 
	{ current_5_1_address0 sc_out sc_lv 11 signal 30 } 
	{ current_5_1_ce0 sc_out sc_logic 1 signal 30 } 
	{ current_5_1_q0 sc_in sc_lv 16 signal 30 } 
	{ current_5_2_address0 sc_out sc_lv 11 signal 31 } 
	{ current_5_2_ce0 sc_out sc_logic 1 signal 31 } 
	{ current_5_2_q0 sc_in sc_lv 16 signal 31 } 
	{ current_5_3_address0 sc_out sc_lv 11 signal 32 } 
	{ current_5_3_ce0 sc_out sc_logic 1 signal 32 } 
	{ current_5_3_q0 sc_in sc_lv 16 signal 32 } 
	{ current_6_0_address0 sc_out sc_lv 11 signal 33 } 
	{ current_6_0_ce0 sc_out sc_logic 1 signal 33 } 
	{ current_6_0_q0 sc_in sc_lv 16 signal 33 } 
	{ current_6_1_address0 sc_out sc_lv 11 signal 34 } 
	{ current_6_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ current_6_1_q0 sc_in sc_lv 16 signal 34 } 
	{ current_6_2_address0 sc_out sc_lv 11 signal 35 } 
	{ current_6_2_ce0 sc_out sc_logic 1 signal 35 } 
	{ current_6_2_q0 sc_in sc_lv 16 signal 35 } 
	{ current_6_3_address0 sc_out sc_lv 11 signal 36 } 
	{ current_6_3_ce0 sc_out sc_logic 1 signal 36 } 
	{ current_6_3_q0 sc_in sc_lv 16 signal 36 } 
	{ current_7_0_address0 sc_out sc_lv 11 signal 37 } 
	{ current_7_0_ce0 sc_out sc_logic 1 signal 37 } 
	{ current_7_0_q0 sc_in sc_lv 16 signal 37 } 
	{ current_7_1_address0 sc_out sc_lv 11 signal 38 } 
	{ current_7_1_ce0 sc_out sc_logic 1 signal 38 } 
	{ current_7_1_q0 sc_in sc_lv 16 signal 38 } 
	{ current_7_2_address0 sc_out sc_lv 11 signal 39 } 
	{ current_7_2_ce0 sc_out sc_logic 1 signal 39 } 
	{ current_7_2_q0 sc_in sc_lv 16 signal 39 } 
	{ current_7_3_address0 sc_out sc_lv 11 signal 40 } 
	{ current_7_3_ce0 sc_out sc_logic 1 signal 40 } 
	{ current_7_3_q0 sc_in sc_lv 16 signal 40 } 
	{ bias_0_dout sc_in sc_lv 48 signal 41 } 
	{ bias_0_empty_n sc_in sc_logic 1 signal 41 } 
	{ bias_0_read sc_out sc_logic 1 signal 41 } 
	{ bias_1_dout sc_in sc_lv 48 signal 42 } 
	{ bias_1_empty_n sc_in sc_logic 1 signal 42 } 
	{ bias_1_read sc_out sc_logic 1 signal 42 } 
	{ bias_2_dout sc_in sc_lv 48 signal 43 } 
	{ bias_2_empty_n sc_in sc_logic 1 signal 43 } 
	{ bias_2_read sc_out sc_logic 1 signal 43 } 
	{ bias_3_dout sc_in sc_lv 48 signal 44 } 
	{ bias_3_empty_n sc_in sc_logic 1 signal 44 } 
	{ bias_3_read sc_out sc_logic 1 signal 44 } 
	{ bias_4_dout sc_in sc_lv 48 signal 45 } 
	{ bias_4_empty_n sc_in sc_logic 1 signal 45 } 
	{ bias_4_read sc_out sc_logic 1 signal 45 } 
	{ bias_5_dout sc_in sc_lv 48 signal 46 } 
	{ bias_5_empty_n sc_in sc_logic 1 signal 46 } 
	{ bias_5_read sc_out sc_logic 1 signal 46 } 
	{ bias_6_dout sc_in sc_lv 48 signal 47 } 
	{ bias_6_empty_n sc_in sc_logic 1 signal 47 } 
	{ bias_6_read sc_out sc_logic 1 signal 47 } 
	{ bias_7_dout sc_in sc_lv 48 signal 48 } 
	{ bias_7_empty_n sc_in sc_logic 1 signal 48 } 
	{ bias_7_read sc_out sc_logic 1 signal 48 } 
	{ shifts_0_dout sc_in sc_lv 32 signal 49 } 
	{ shifts_0_empty_n sc_in sc_logic 1 signal 49 } 
	{ shifts_0_read sc_out sc_logic 1 signal 49 } 
	{ shifts_1_dout sc_in sc_lv 32 signal 50 } 
	{ shifts_1_empty_n sc_in sc_logic 1 signal 50 } 
	{ shifts_1_read sc_out sc_logic 1 signal 50 } 
	{ shifts_2_dout sc_in sc_lv 32 signal 51 } 
	{ shifts_2_empty_n sc_in sc_logic 1 signal 51 } 
	{ shifts_2_read sc_out sc_logic 1 signal 51 } 
	{ shifts_3_dout sc_in sc_lv 32 signal 52 } 
	{ shifts_3_empty_n sc_in sc_logic 1 signal 52 } 
	{ shifts_3_read sc_out sc_logic 1 signal 52 } 
	{ shifts_4_dout sc_in sc_lv 32 signal 53 } 
	{ shifts_4_empty_n sc_in sc_logic 1 signal 53 } 
	{ shifts_4_read sc_out sc_logic 1 signal 53 } 
	{ shifts_5_dout sc_in sc_lv 32 signal 54 } 
	{ shifts_5_empty_n sc_in sc_logic 1 signal 54 } 
	{ shifts_5_read sc_out sc_logic 1 signal 54 } 
	{ shifts_6_dout sc_in sc_lv 32 signal 55 } 
	{ shifts_6_empty_n sc_in sc_logic 1 signal 55 } 
	{ shifts_6_read sc_out sc_logic 1 signal 55 } 
	{ shifts_7_dout sc_in sc_lv 32 signal 56 } 
	{ shifts_7_empty_n sc_in sc_logic 1 signal 56 } 
	{ shifts_7_read sc_out sc_logic 1 signal 56 } 
	{ skipshift_dout sc_in sc_lv 32 signal 57 } 
	{ skipshift_empty_n sc_in sc_logic 1 signal 57 } 
	{ skipshift_read sc_out sc_logic 1 signal 57 } 
	{ ob_dout sc_in sc_lv 16 signal 58 } 
	{ ob_empty_n sc_in sc_logic 1 signal 58 } 
	{ ob_read sc_out sc_logic 1 signal 58 } 
	{ ci_dout sc_in sc_lv 10 signal 59 } 
	{ ci_empty_n sc_in sc_logic 1 signal 59 } 
	{ ci_read sc_out sc_logic 1 signal 59 } 
	{ h_dout sc_in sc_lv 16 signal 60 } 
	{ h_empty_n sc_in sc_logic 1 signal 60 } 
	{ h_read sc_out sc_logic 1 signal 60 } 
	{ wi_dout sc_in sc_lv 16 signal 61 } 
	{ wi_empty_n sc_in sc_logic 1 signal 61 } 
	{ wi_read sc_out sc_logic 1 signal 61 } 
	{ k_dout sc_in sc_lv 3 signal 62 } 
	{ k_empty_n sc_in sc_logic 1 signal 62 } 
	{ k_read sc_out sc_logic 1 signal 62 } 
	{ stride_dout sc_in sc_lv 2 signal 63 } 
	{ stride_empty_n sc_in sc_logic 1 signal 63 } 
	{ stride_read sc_out sc_logic 1 signal 63 } 
	{ pad_dout sc_in sc_lv 2 signal 64 } 
	{ pad_empty_n sc_in sc_logic 1 signal 64 } 
	{ pad_read sc_out sc_logic 1 signal 64 } 
	{ oh_dout sc_in sc_lv 16 signal 65 } 
	{ oh_empty_n sc_in sc_logic 1 signal 65 } 
	{ oh_read sc_out sc_logic 1 signal 65 } 
	{ ow_dout sc_in sc_lv 16 signal 66 } 
	{ ow_empty_n sc_in sc_logic 1 signal 66 } 
	{ ow_read sc_out sc_logic 1 signal 66 } 
	{ kind_dout sc_in sc_lv 3 signal 67 } 
	{ kind_empty_n sc_in sc_logic 1 signal 67 } 
	{ kind_read sc_out sc_logic 1 signal 67 } 
	{ p_anonymous_namespace_profile_ticks_i sc_in sc_lv 64 signal 68 } 
	{ p_anonymous_namespace_profile_ticks_o sc_out sc_lv 64 signal 68 } 
	{ p_anonymous_namespace_profile_ticks_o_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ p_anonymous_namespace_profile_mac_i sc_in sc_lv 64 signal 69 } 
	{ p_anonymous_namespace_profile_mac_o sc_out sc_lv 64 signal 69 } 
	{ p_anonymous_namespace_profile_mac_o_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ p_anonymous_namespace_profile_wait_i sc_in sc_lv 64 signal 70 } 
	{ p_anonymous_namespace_profile_wait_o sc_out sc_lv 64 signal 70 } 
	{ p_anonymous_namespace_profile_wait_o_ap_vld sc_out sc_logic 1 outvld 70 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "batch_count_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "batch_count", "role": "dout" }} , 
 	{ "name": "batch_count_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_count", "role": "empty_n" }} , 
 	{ "name": "batch_count_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "batch_count", "role": "read" }} , 
 	{ "name": "wide_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wide", "role": "dout" }} , 
 	{ "name": "wide_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide", "role": "empty_n" }} , 
 	{ "name": "wide_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide", "role": "read" }} , 
 	{ "name": "input_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "dout" }} , 
 	{ "name": "input_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "empty_n" }} , 
 	{ "name": "input_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "read" }} , 
 	{ "name": "output_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "dout" }} , 
 	{ "name": "output_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "empty_n" }} , 
 	{ "name": "output_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "read" }} , 
 	{ "name": "skip_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skip", "role": "dout" }} , 
 	{ "name": "skip_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip", "role": "empty_n" }} , 
 	{ "name": "skip_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skip", "role": "read" }} , 
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
 	{ "name": "fr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fr", "role": "dout" }} , 
 	{ "name": "fr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fr", "role": "empty_n" }} , 
 	{ "name": "fr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fr", "role": "read" }} , 
 	{ "name": "fw_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fw", "role": "dout" }} , 
 	{ "name": "fw_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fw", "role": "empty_n" }} , 
 	{ "name": "fw_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fw", "role": "read" }} , 
 	{ "name": "current_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_0_0", "role": "address0" }} , 
 	{ "name": "current_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_0_0", "role": "ce0" }} , 
 	{ "name": "current_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_0_0", "role": "q0" }} , 
 	{ "name": "current_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_0_1", "role": "address0" }} , 
 	{ "name": "current_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_0_1", "role": "ce0" }} , 
 	{ "name": "current_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_0_1", "role": "q0" }} , 
 	{ "name": "current_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_0_2", "role": "address0" }} , 
 	{ "name": "current_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_0_2", "role": "ce0" }} , 
 	{ "name": "current_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_0_2", "role": "q0" }} , 
 	{ "name": "current_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_0_3", "role": "address0" }} , 
 	{ "name": "current_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_0_3", "role": "ce0" }} , 
 	{ "name": "current_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_0_3", "role": "q0" }} , 
 	{ "name": "current_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_1_0", "role": "address0" }} , 
 	{ "name": "current_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_1_0", "role": "ce0" }} , 
 	{ "name": "current_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_1_0", "role": "q0" }} , 
 	{ "name": "current_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_1_1", "role": "address0" }} , 
 	{ "name": "current_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_1_1", "role": "ce0" }} , 
 	{ "name": "current_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_1_1", "role": "q0" }} , 
 	{ "name": "current_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_1_2", "role": "address0" }} , 
 	{ "name": "current_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_1_2", "role": "ce0" }} , 
 	{ "name": "current_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_1_2", "role": "q0" }} , 
 	{ "name": "current_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_1_3", "role": "address0" }} , 
 	{ "name": "current_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_1_3", "role": "ce0" }} , 
 	{ "name": "current_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_1_3", "role": "q0" }} , 
 	{ "name": "current_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_2_0", "role": "address0" }} , 
 	{ "name": "current_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_2_0", "role": "ce0" }} , 
 	{ "name": "current_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_2_0", "role": "q0" }} , 
 	{ "name": "current_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_2_1", "role": "address0" }} , 
 	{ "name": "current_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_2_1", "role": "ce0" }} , 
 	{ "name": "current_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_2_1", "role": "q0" }} , 
 	{ "name": "current_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_2_2", "role": "address0" }} , 
 	{ "name": "current_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_2_2", "role": "ce0" }} , 
 	{ "name": "current_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_2_2", "role": "q0" }} , 
 	{ "name": "current_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_2_3", "role": "address0" }} , 
 	{ "name": "current_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_2_3", "role": "ce0" }} , 
 	{ "name": "current_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_2_3", "role": "q0" }} , 
 	{ "name": "current_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_3_0", "role": "address0" }} , 
 	{ "name": "current_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_3_0", "role": "ce0" }} , 
 	{ "name": "current_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_3_0", "role": "q0" }} , 
 	{ "name": "current_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_3_1", "role": "address0" }} , 
 	{ "name": "current_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_3_1", "role": "ce0" }} , 
 	{ "name": "current_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_3_1", "role": "q0" }} , 
 	{ "name": "current_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_3_2", "role": "address0" }} , 
 	{ "name": "current_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_3_2", "role": "ce0" }} , 
 	{ "name": "current_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_3_2", "role": "q0" }} , 
 	{ "name": "current_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_3_3", "role": "address0" }} , 
 	{ "name": "current_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_3_3", "role": "ce0" }} , 
 	{ "name": "current_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_3_3", "role": "q0" }} , 
 	{ "name": "current_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_4_0", "role": "address0" }} , 
 	{ "name": "current_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_4_0", "role": "ce0" }} , 
 	{ "name": "current_4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_4_0", "role": "q0" }} , 
 	{ "name": "current_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_4_1", "role": "address0" }} , 
 	{ "name": "current_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_4_1", "role": "ce0" }} , 
 	{ "name": "current_4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_4_1", "role": "q0" }} , 
 	{ "name": "current_4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_4_2", "role": "address0" }} , 
 	{ "name": "current_4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_4_2", "role": "ce0" }} , 
 	{ "name": "current_4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_4_2", "role": "q0" }} , 
 	{ "name": "current_4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_4_3", "role": "address0" }} , 
 	{ "name": "current_4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_4_3", "role": "ce0" }} , 
 	{ "name": "current_4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_4_3", "role": "q0" }} , 
 	{ "name": "current_5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_5_0", "role": "address0" }} , 
 	{ "name": "current_5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_5_0", "role": "ce0" }} , 
 	{ "name": "current_5_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_5_0", "role": "q0" }} , 
 	{ "name": "current_5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_5_1", "role": "address0" }} , 
 	{ "name": "current_5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_5_1", "role": "ce0" }} , 
 	{ "name": "current_5_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_5_1", "role": "q0" }} , 
 	{ "name": "current_5_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_5_2", "role": "address0" }} , 
 	{ "name": "current_5_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_5_2", "role": "ce0" }} , 
 	{ "name": "current_5_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_5_2", "role": "q0" }} , 
 	{ "name": "current_5_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_5_3", "role": "address0" }} , 
 	{ "name": "current_5_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_5_3", "role": "ce0" }} , 
 	{ "name": "current_5_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_5_3", "role": "q0" }} , 
 	{ "name": "current_6_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_6_0", "role": "address0" }} , 
 	{ "name": "current_6_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_6_0", "role": "ce0" }} , 
 	{ "name": "current_6_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_6_0", "role": "q0" }} , 
 	{ "name": "current_6_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_6_1", "role": "address0" }} , 
 	{ "name": "current_6_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_6_1", "role": "ce0" }} , 
 	{ "name": "current_6_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_6_1", "role": "q0" }} , 
 	{ "name": "current_6_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_6_2", "role": "address0" }} , 
 	{ "name": "current_6_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_6_2", "role": "ce0" }} , 
 	{ "name": "current_6_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_6_2", "role": "q0" }} , 
 	{ "name": "current_6_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_6_3", "role": "address0" }} , 
 	{ "name": "current_6_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_6_3", "role": "ce0" }} , 
 	{ "name": "current_6_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_6_3", "role": "q0" }} , 
 	{ "name": "current_7_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_7_0", "role": "address0" }} , 
 	{ "name": "current_7_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_7_0", "role": "ce0" }} , 
 	{ "name": "current_7_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_7_0", "role": "q0" }} , 
 	{ "name": "current_7_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_7_1", "role": "address0" }} , 
 	{ "name": "current_7_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_7_1", "role": "ce0" }} , 
 	{ "name": "current_7_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_7_1", "role": "q0" }} , 
 	{ "name": "current_7_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_7_2", "role": "address0" }} , 
 	{ "name": "current_7_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_7_2", "role": "ce0" }} , 
 	{ "name": "current_7_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_7_2", "role": "q0" }} , 
 	{ "name": "current_7_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "current_7_3", "role": "address0" }} , 
 	{ "name": "current_7_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_7_3", "role": "ce0" }} , 
 	{ "name": "current_7_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "current_7_3", "role": "q0" }} , 
 	{ "name": "bias_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_0", "role": "dout" }} , 
 	{ "name": "bias_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_0", "role": "empty_n" }} , 
 	{ "name": "bias_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_0", "role": "read" }} , 
 	{ "name": "bias_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_1", "role": "dout" }} , 
 	{ "name": "bias_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "empty_n" }} , 
 	{ "name": "bias_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "read" }} , 
 	{ "name": "bias_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_2", "role": "dout" }} , 
 	{ "name": "bias_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "empty_n" }} , 
 	{ "name": "bias_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "read" }} , 
 	{ "name": "bias_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_3", "role": "dout" }} , 
 	{ "name": "bias_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_3", "role": "empty_n" }} , 
 	{ "name": "bias_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_3", "role": "read" }} , 
 	{ "name": "bias_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_4", "role": "dout" }} , 
 	{ "name": "bias_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_4", "role": "empty_n" }} , 
 	{ "name": "bias_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_4", "role": "read" }} , 
 	{ "name": "bias_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_5", "role": "dout" }} , 
 	{ "name": "bias_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_5", "role": "empty_n" }} , 
 	{ "name": "bias_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_5", "role": "read" }} , 
 	{ "name": "bias_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_6", "role": "dout" }} , 
 	{ "name": "bias_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_6", "role": "empty_n" }} , 
 	{ "name": "bias_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_6", "role": "read" }} , 
 	{ "name": "bias_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bias_7", "role": "dout" }} , 
 	{ "name": "bias_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_7", "role": "empty_n" }} , 
 	{ "name": "bias_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_7", "role": "read" }} , 
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
 	{ "name": "skipshift_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "skipshift", "role": "dout" }} , 
 	{ "name": "skipshift_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skipshift", "role": "empty_n" }} , 
 	{ "name": "skipshift_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "skipshift", "role": "read" }} , 
 	{ "name": "ob_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ob", "role": "dout" }} , 
 	{ "name": "ob_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob", "role": "empty_n" }} , 
 	{ "name": "ob_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ob", "role": "read" }} , 
 	{ "name": "ci_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "dout" }} , 
 	{ "name": "ci_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "empty_n" }} , 
 	{ "name": "ci_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ci", "role": "read" }} , 
 	{ "name": "h_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "h", "role": "dout" }} , 
 	{ "name": "h_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "empty_n" }} , 
 	{ "name": "h_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "read" }} , 
 	{ "name": "wi_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi", "role": "dout" }} , 
 	{ "name": "wi_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi", "role": "empty_n" }} , 
 	{ "name": "wi_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wi", "role": "read" }} , 
 	{ "name": "k_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "dout" }} , 
 	{ "name": "k_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "empty_n" }} , 
 	{ "name": "k_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "read" }} , 
 	{ "name": "stride_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "dout" }} , 
 	{ "name": "stride_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "empty_n" }} , 
 	{ "name": "stride_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "read" }} , 
 	{ "name": "pad_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "dout" }} , 
 	{ "name": "pad_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "empty_n" }} , 
 	{ "name": "pad_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pad", "role": "read" }} , 
 	{ "name": "oh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "oh", "role": "dout" }} , 
 	{ "name": "oh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "empty_n" }} , 
 	{ "name": "oh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oh", "role": "read" }} , 
 	{ "name": "ow_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "dout" }} , 
 	{ "name": "ow_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "empty_n" }} , 
 	{ "name": "ow_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ow", "role": "read" }} , 
 	{ "name": "kind_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kind", "role": "dout" }} , 
 	{ "name": "kind_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kind", "role": "empty_n" }} , 
 	{ "name": "kind_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kind", "role": "read" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "batch_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "feature_read"}]},
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "feature_mem"}]},
			{"Name" : "fr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fw", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fw_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "current_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_0"}]},
			{"Name" : "current_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_1"}]},
			{"Name" : "current_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_2"}]},
			{"Name" : "current_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_3"}]},
			{"Name" : "current_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_0"}]},
			{"Name" : "current_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_1"}]},
			{"Name" : "current_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_2"}]},
			{"Name" : "current_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_3"}]},
			{"Name" : "current_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_0"}]},
			{"Name" : "current_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_1"}]},
			{"Name" : "current_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_2"}]},
			{"Name" : "current_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_3"}]},
			{"Name" : "current_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_0"}]},
			{"Name" : "current_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_1"}]},
			{"Name" : "current_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_2"}]},
			{"Name" : "current_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_3"}]},
			{"Name" : "current_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_0"}]},
			{"Name" : "current_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_1"}]},
			{"Name" : "current_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_2"}]},
			{"Name" : "current_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_3"}]},
			{"Name" : "current_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_0"}]},
			{"Name" : "current_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_1"}]},
			{"Name" : "current_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_2"}]},
			{"Name" : "current_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_3"}]},
			{"Name" : "current_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_0"}]},
			{"Name" : "current_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_1"}]},
			{"Name" : "current_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_2"}]},
			{"Name" : "current_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_3"}]},
			{"Name" : "current_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_0"}]},
			{"Name" : "current_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_1"}]},
			{"Name" : "current_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_2"}]},
			{"Name" : "current_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_3"}]},
			{"Name" : "bias_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "cache"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473", "Parent" : "0", "Child" : ["2", "3", "45", "46", "297", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368"],
		"CDFG" : "p_anonymous_namespace_block",
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
			{"ID" : "2", "Name" : "p_anonymous_namespace_block_Block_split1_proc62_U0"},
			{"ID" : "3", "Name" : "p_anonymous_namespace_load_tiles_U0"},
			{"ID" : "46", "Name" : "p_anonymous_namespace_compute_tiles_U0"},
			{"ID" : "297", "Name" : "p_anonymous_namespace_store_tiles_U0"}],
		"OutputProcess" : [
			{"ID" : "46", "Name" : "p_anonymous_namespace_compute_tiles_U0"},
			{"ID" : "297", "Name" : "p_anonymous_namespace_store_tiles_U0"}],
		"Port" : [
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "p_anonymous_namespace_load_tiles_U0", "Port" : "feature_read"}]},
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "p_anonymous_namespace_store_tiles_U0", "Port" : "feature_mem"}]},
			{"Name" : "fr", "Type" : "None", "Direction" : "I"},
			{"Name" : "fw", "Type" : "None", "Direction" : "I"},
			{"Name" : "wide", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_0"}]},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_1"}]},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_2"}]},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_3"}]},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_0"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_1"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_2"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_3"}]},
			{"Name" : "weights_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_0"}]},
			{"Name" : "weights_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_1"}]},
			{"Name" : "weights_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_2"}]},
			{"Name" : "weights_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_3"}]},
			{"Name" : "weights_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_0"}]},
			{"Name" : "weights_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_1"}]},
			{"Name" : "weights_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_2"}]},
			{"Name" : "weights_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_3"}]},
			{"Name" : "weights_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_0"}]},
			{"Name" : "weights_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_1"}]},
			{"Name" : "weights_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_2"}]},
			{"Name" : "weights_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_3"}]},
			{"Name" : "weights_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_0"}]},
			{"Name" : "weights_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_1"}]},
			{"Name" : "weights_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_2"}]},
			{"Name" : "weights_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_3"}]},
			{"Name" : "weights_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_0"}]},
			{"Name" : "weights_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_1"}]},
			{"Name" : "weights_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_2"}]},
			{"Name" : "weights_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_3"}]},
			{"Name" : "weights_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_0"}]},
			{"Name" : "weights_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_1"}]},
			{"Name" : "weights_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_2"}]},
			{"Name" : "weights_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_3"}]},
			{"Name" : "bias_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip", "Type" : "None", "Direction" : "I"},
			{"Name" : "skipshift", "Type" : "None", "Direction" : "I"},
			{"Name" : "ob", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "oh", "Type" : "None", "Direction" : "I"},
			{"Name" : "ow", "Type" : "None", "Direction" : "I"},
			{"Name" : "kind", "Type" : "None", "Direction" : "I"},
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "p_anonymous_namespace_load_tiles_U0", "Port" : "cache"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0", "Parent" : "1",
		"CDFG" : "p_anonymous_namespace_block_Block_split1_proc62",
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
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "ob", "Type" : "None", "Direction" : "I"},
			{"Name" : "fr", "Type" : "None", "Direction" : "I"},
			{"Name" : "fw", "Type" : "None", "Direction" : "I"},
			{"Name" : "wide", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip", "Type" : "None", "Direction" : "I"},
			{"Name" : "skipshift", "Type" : "None", "Direction" : "I"},
			{"Name" : "oh", "Type" : "None", "Direction" : "I"},
			{"Name" : "ow", "Type" : "None", "Direction" : "I"},
			{"Name" : "kind", "Type" : "None", "Direction" : "I"},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "45", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "45", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "328", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "330", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "331", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "332", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "333", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "334", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "335", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "336", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "337", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "338", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "339", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "340", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "341", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "342", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "343", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "344", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "345", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "346", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "347", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "349", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "350", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "351", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "45", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "354", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "355", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0", "Parent" : "1", "Child" : ["4", "5", "6", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "p_anonymous_namespace_load_tiles",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "feature_read_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "feature_read_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_p_anonymous_namespace_load_uncached_fu_569", "Port" : "feature_read"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "359", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pixels_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_p_anonymous_namespace_load_uncached_fu_569", "Port" : "pixels"}]},
			{"Name" : "fr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "329", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "327", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "324", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "325", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "320", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "321", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "323", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "refresh", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.cache_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.row_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569", "Parent" : "3", "Child" : ["7", "13", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
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
			{"ID" : "7", "Name" : "p_anonymous_namespace_read_fresh_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "p_anonymous_namespace_assemble_rows_U0"}],
		"Port" : [
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "p_anonymous_namespace_read_fresh_U0", "Port" : "feature_read"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "p_anonymous_namespace_assemble_rows_U0", "Port" : "pixels"}]},
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
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0", "Parent" : "6", "Child" : ["8", "9", "10", "11", "12"],
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
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "22", "DependentChanDepth" : "512", "DependentChanType" : "0",
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
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mul_31s_16ns_32_2_1_U243", "Parent" : "7"},
	{"ID" : "9", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U244", "Parent" : "7"},
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mul_mul_16s_16s_16_4_1_U245", "Parent" : "7"},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mul_mul_16s_16s_16_4_1_U246", "Parent" : "7"},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mac_muladd_14ns_16ns_16s_31_4_1_U247", "Parent" : "7"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0", "Parent" : "6", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21"],
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
		"StartSource" : "7",
		"StartFifo" : "start_for_p_anonymous_namespace_assemble_rows_U0_U",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state18_pp0_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter7", "FromFinalOperation" : "ap_enable_operation_185", "FromFinalSV" : "17", "FromAddress" : "overlap_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state19_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_193", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter8_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_193", "ToFinalSV" : "18", "ToAddress" : "overlap_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_193", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter8_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_193", "FromFinalSV" : "18", "FromAddress" : "overlap_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state18_pp0_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter7", "ToFinalOperation" : "ap_enable_operation_185", "ToFinalSV" : "17", "ToAddress" : "overlap_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter6_stage0", "ap_enable_state18_pp0_iter7_stage0", "ap_enable_state19_pp0_iter8_stage0"]}],
		"Port" : [
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "22", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fresh_words_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pixels_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.overlap_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_4ns_16ns_20_1_1_U272", "Parent" : "13"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_11s_4s_11_1_1_U273", "Parent" : "13"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_11s_4s_11_1_1_U274", "Parent" : "13"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_mul_9ns_20ns_34_4_1_U275", "Parent" : "13"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U276", "Parent" : "13"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_mul_11s_11s_11_4_1_U277", "Parent" : "13"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_mul_11s_11s_11_4_1_U278", "Parent" : "13"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.fresh_words_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.ci_c_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.h_c_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.rw_c_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.ph_c_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.keep_c_U", "Parent" : "6"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.stride_c_U", "Parent" : "6"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.pad_c_U", "Parent" : "6"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.oh_c_U", "Parent" : "6"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.start_for_p_anonymous_namespace_assemble_rows_U0_U", "Parent" : "6"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_4ns_16ns_20_1_1_U316", "Parent" : "3"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_16s_8ns_16_4_1_U317", "Parent" : "3"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_9ns_16ns_30_4_1_U318", "Parent" : "3"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_16s_16s_16_4_1_U319", "Parent" : "3"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14ns_16ns_19_4_1_U320", "Parent" : "3"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U321", "Parent" : "3"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ama_addmuladd_19ns_17ns_16ns_30ns_32_4_1_U322", "Parent" : "3"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U323", "Parent" : "3"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_9ns_20ns_34_4_1_U324", "Parent" : "3"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U325", "Parent" : "3"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U326", "Parent" : "3"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U327", "Parent" : "3"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mac_muladd_14s_14s_14ns_14_4_1_U328", "Parent" : "3"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0", "Parent" : "1",
		"CDFG" : "p_anonymous_namespace_block_Block_split93_proc",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "326", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "322", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0", "Parent" : "1", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111"],
		"CDFG" : "p_anonymous_namespace_compute_tiles",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "359", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "pixels2"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "366", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "results"}]},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights"}]},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights1"}]},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights2"}]},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights3"}]},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights14"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights15"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights16"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights17"}]},
			{"Name" : "weights_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights28"}]},
			{"Name" : "weights_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights29"}]},
			{"Name" : "weights_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights210"}]},
			{"Name" : "weights_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights211"}]},
			{"Name" : "weights_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights312"}]},
			{"Name" : "weights_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights313"}]},
			{"Name" : "weights_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights314"}]},
			{"Name" : "weights_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights315"}]},
			{"Name" : "weights_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights4"}]},
			{"Name" : "weights_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights416"}]},
			{"Name" : "weights_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights417"}]},
			{"Name" : "weights_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights418"}]},
			{"Name" : "weights_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights5"}]},
			{"Name" : "weights_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights519"}]},
			{"Name" : "weights_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights520"}]},
			{"Name" : "weights_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights521"}]},
			{"Name" : "weights_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights6"}]},
			{"Name" : "weights_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights622"}]},
			{"Name" : "weights_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights623"}]},
			{"Name" : "weights_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights624"}]},
			{"Name" : "weights_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights7"}]},
			{"Name" : "weights_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights725"}]},
			{"Name" : "weights_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights726"}]},
			{"Name" : "weights_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights727"}]},
			{"Name" : "bias_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "332", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "333", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "334", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "335", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "336", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "337", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "338", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "339", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "None", "Direction" : "I", "DependentProc" : "45", "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "None", "Direction" : "I", "DependentProc" : "45", "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "354", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "297", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_0_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_1_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_2_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_3_U", "Parent" : "46"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_0_U", "Parent" : "46"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_1_U", "Parent" : "46"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_2_U", "Parent" : "46"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_3_U", "Parent" : "46"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_0_U", "Parent" : "46"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_1_U", "Parent" : "46"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_2_U", "Parent" : "46"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_3_U", "Parent" : "46"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_0_U", "Parent" : "46"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_1_U", "Parent" : "46"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_2_U", "Parent" : "46"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_3_U", "Parent" : "46"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_0_U", "Parent" : "46"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_1_U", "Parent" : "46"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_2_U", "Parent" : "46"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_3_U", "Parent" : "46"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_0_U", "Parent" : "46"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_1_U", "Parent" : "46"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_2_U", "Parent" : "46"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_3_U", "Parent" : "46"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_0_U", "Parent" : "46"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_1_U", "Parent" : "46"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_2_U", "Parent" : "46"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_3_U", "Parent" : "46"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_0_U", "Parent" : "46"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_1_U", "Parent" : "46"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_2_U", "Parent" : "46"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_3_U", "Parent" : "46"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_0_U", "Parent" : "46"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_1_U", "Parent" : "46"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_2_U", "Parent" : "46"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_3_U", "Parent" : "46"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_0_U", "Parent" : "46"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_1_U", "Parent" : "46"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_2_U", "Parent" : "46"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_3_U", "Parent" : "46"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_0_U", "Parent" : "46"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_1_U", "Parent" : "46"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_2_U", "Parent" : "46"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_3_U", "Parent" : "46"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_0_U", "Parent" : "46"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_1_U", "Parent" : "46"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_2_U", "Parent" : "46"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_3_U", "Parent" : "46"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_0_U", "Parent" : "46"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_1_U", "Parent" : "46"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_2_U", "Parent" : "46"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_3_U", "Parent" : "46"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_0_U", "Parent" : "46"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_1_U", "Parent" : "46"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_2_U", "Parent" : "46"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_3_U", "Parent" : "46"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_0_U", "Parent" : "46"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_1_U", "Parent" : "46"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_2_U", "Parent" : "46"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_3_U", "Parent" : "46"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_0_U", "Parent" : "46"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_1_U", "Parent" : "46"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_2_U", "Parent" : "46"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_3_U", "Parent" : "46"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591", "Parent" : "46", "Child" : ["112", "113", "269", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296"],
		"CDFG" : "p_anonymous_namespace_row_pair",
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
			{"ID" : "112", "Name" : "p_anonymous_namespace_row_pair_entry58_U0"},
			{"ID" : "113", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "269", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"OutputProcess" : [
			{"ID" : "113", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "269", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"Port" : [
			{"Name" : "pixels2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "pixels2"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "results"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights"}]},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights1"}]},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights2"}]},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights3"}]},
			{"Name" : "weights14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights14"}]},
			{"Name" : "weights15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights15"}]},
			{"Name" : "weights16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights16"}]},
			{"Name" : "weights17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights17"}]},
			{"Name" : "weights28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights28"}]},
			{"Name" : "weights29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights29"}]},
			{"Name" : "weights210", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights210"}]},
			{"Name" : "weights211", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights211"}]},
			{"Name" : "weights312", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights312"}]},
			{"Name" : "weights313", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights313"}]},
			{"Name" : "weights314", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights314"}]},
			{"Name" : "weights315", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights315"}]},
			{"Name" : "weights4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights4"}]},
			{"Name" : "weights416", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights416"}]},
			{"Name" : "weights417", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights417"}]},
			{"Name" : "weights418", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights418"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights5"}]},
			{"Name" : "weights519", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights519"}]},
			{"Name" : "weights520", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights520"}]},
			{"Name" : "weights521", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights521"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights6"}]},
			{"Name" : "weights622", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights622"}]},
			{"Name" : "weights623", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights623"}]},
			{"Name" : "weights624", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights624"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights7"}]},
			{"Name" : "weights725", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights725"}]},
			{"Name" : "weights726", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights726"}]},
			{"Name" : "weights727", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights727"}]},
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
			{"Name" : "current", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc"}]},
			{"Name" : "current28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc28"}]},
			{"Name" : "current29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc29"}]},
			{"Name" : "current30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc30"}]},
			{"Name" : "current15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc15"}]},
			{"Name" : "current1531", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1531"}]},
			{"Name" : "current1532", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1532"}]},
			{"Name" : "current1533", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1533"}]},
			{"Name" : "current16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc16"}]},
			{"Name" : "current1634", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1634"}]},
			{"Name" : "current1635", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1635"}]},
			{"Name" : "current1636", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1636"}]},
			{"Name" : "current17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc17"}]},
			{"Name" : "current1737", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1737"}]},
			{"Name" : "current1738", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1738"}]},
			{"Name" : "current1739", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1739"}]},
			{"Name" : "current18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc18"}]},
			{"Name" : "current1840", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1840"}]},
			{"Name" : "current1841", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1841"}]},
			{"Name" : "current1842", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1842"}]},
			{"Name" : "current19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc19"}]},
			{"Name" : "current1943", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1943"}]},
			{"Name" : "current1944", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1944"}]},
			{"Name" : "current1945", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1945"}]},
			{"Name" : "current20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc20"}]},
			{"Name" : "current2046", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2046"}]},
			{"Name" : "current2047", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2047"}]},
			{"Name" : "current2048", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2048"}]},
			{"Name" : "current21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc21"}]},
			{"Name" : "current2149", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2149"}]},
			{"Name" : "current2150", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2150"}]},
			{"Name" : "current2151", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2151"}]},
			{"Name" : "previous", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc"}]},
			{"Name" : "previous52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc1"}]},
			{"Name" : "previous53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc2"}]},
			{"Name" : "previous54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc3"}]},
			{"Name" : "previous22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc14"}]},
			{"Name" : "previous2255", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc15"}]},
			{"Name" : "previous2256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc16"}]},
			{"Name" : "previous2257", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc17"}]},
			{"Name" : "previous23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc28"}]},
			{"Name" : "previous2358", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc29"}]},
			{"Name" : "previous2359", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc210"}]},
			{"Name" : "previous2360", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc211"}]},
			{"Name" : "previous24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc312"}]},
			{"Name" : "previous2461", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc313"}]},
			{"Name" : "previous2462", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc314"}]},
			{"Name" : "previous2463", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc315"}]},
			{"Name" : "previous25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc4"}]},
			{"Name" : "previous2564", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc416"}]},
			{"Name" : "previous2565", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc417"}]},
			{"Name" : "previous2566", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc418"}]},
			{"Name" : "previous26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc5"}]},
			{"Name" : "previous2667", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc519"}]},
			{"Name" : "previous2668", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc520"}]},
			{"Name" : "previous2669", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc521"}]},
			{"Name" : "previous27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc6"}]},
			{"Name" : "previous2770", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc622"}]},
			{"Name" : "previous2771", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc623"}]},
			{"Name" : "previous2772", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc624"}]},
			{"Name" : "previous28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc7"}]},
			{"Name" : "previous2873", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc725"}]},
			{"Name" : "previous2874", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc726"}]},
			{"Name" : "previous2875", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc727"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0", "Parent" : "111",
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
			{"Name" : "bias_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "279", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "280", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "281", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "282", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "283", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "284", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "285", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "286", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "287", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "computing_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "computing_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "emitting_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "emitting_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "previous_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "269", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "previous_rows_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0", "Parent" : "111", "Child" : ["114", "123", "132", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268"],
		"CDFG" : "p_anonymous_namespace_compute_row",
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
		"HasNonBlockingOperation" : "1",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1233", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1485", "FromFinalSV" : "19", "FromAddress" : "acc_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1488", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1488", "ToFinalSV" : "19", "ToAddress" : "acc_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1488", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1488", "FromFinalSV" : "19", "FromAddress" : "acc_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1233", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1485", "ToFinalSV" : "19", "ToAddress" : "acc_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1264", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1499", "FromFinalSV" : "19", "FromAddress" : "acc28_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1502", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1502", "ToFinalSV" : "19", "ToAddress" : "acc28_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1502", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1502", "FromFinalSV" : "19", "FromAddress" : "acc28_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1264", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1499", "ToFinalSV" : "19", "ToAddress" : "acc28_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1271", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1513", "FromFinalSV" : "19", "FromAddress" : "acc29_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1516", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1516", "ToFinalSV" : "19", "ToAddress" : "acc29_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1516", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1516", "FromFinalSV" : "19", "FromAddress" : "acc29_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1271", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1513", "ToFinalSV" : "19", "ToAddress" : "acc29_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1278", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1527", "FromFinalSV" : "19", "FromAddress" : "acc30_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1530", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1530", "ToFinalSV" : "19", "ToAddress" : "acc30_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1530", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1530", "FromFinalSV" : "19", "FromAddress" : "acc30_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1278", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1527", "ToFinalSV" : "19", "ToAddress" : "acc30_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1285", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1541", "FromFinalSV" : "19", "FromAddress" : "acc15_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1544", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1544", "ToFinalSV" : "19", "ToAddress" : "acc15_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1544", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1544", "FromFinalSV" : "19", "FromAddress" : "acc15_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1285", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1541", "ToFinalSV" : "19", "ToAddress" : "acc15_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1292", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1555", "FromFinalSV" : "19", "FromAddress" : "acc1531_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1558", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1558", "ToFinalSV" : "19", "ToAddress" : "acc1531_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1558", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1558", "FromFinalSV" : "19", "FromAddress" : "acc1531_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1292", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1555", "ToFinalSV" : "19", "ToAddress" : "acc1531_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1299", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1569", "FromFinalSV" : "19", "FromAddress" : "acc1532_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1572", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1572", "ToFinalSV" : "19", "ToAddress" : "acc1532_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1572", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1572", "FromFinalSV" : "19", "FromAddress" : "acc1532_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1299", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1569", "ToFinalSV" : "19", "ToAddress" : "acc1532_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1306", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1583", "FromFinalSV" : "19", "FromAddress" : "acc1533_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1586", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1586", "ToFinalSV" : "19", "ToAddress" : "acc1533_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1586", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1586", "FromFinalSV" : "19", "FromAddress" : "acc1533_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1306", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1583", "ToFinalSV" : "19", "ToAddress" : "acc1533_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1313", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1597", "FromFinalSV" : "19", "FromAddress" : "acc16_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1600", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1600", "ToFinalSV" : "19", "ToAddress" : "acc16_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1600", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1600", "FromFinalSV" : "19", "FromAddress" : "acc16_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1313", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1597", "ToFinalSV" : "19", "ToAddress" : "acc16_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1320", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1611", "FromFinalSV" : "19", "FromAddress" : "acc1634_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1614", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1614", "ToFinalSV" : "19", "ToAddress" : "acc1634_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1614", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1614", "FromFinalSV" : "19", "FromAddress" : "acc1634_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1320", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1611", "ToFinalSV" : "19", "ToAddress" : "acc1634_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1327", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1625", "FromFinalSV" : "19", "FromAddress" : "acc1635_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1628", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1628", "ToFinalSV" : "19", "ToAddress" : "acc1635_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1628", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1628", "FromFinalSV" : "19", "FromAddress" : "acc1635_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1327", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1625", "ToFinalSV" : "19", "ToAddress" : "acc1635_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1334", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1639", "FromFinalSV" : "19", "FromAddress" : "acc1636_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1642", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1642", "ToFinalSV" : "19", "ToAddress" : "acc1636_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1642", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1642", "FromFinalSV" : "19", "FromAddress" : "acc1636_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1334", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1639", "ToFinalSV" : "19", "ToAddress" : "acc1636_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1341", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1653", "FromFinalSV" : "19", "FromAddress" : "acc17_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1656", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1656", "ToFinalSV" : "19", "ToAddress" : "acc17_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1656", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1656", "FromFinalSV" : "19", "FromAddress" : "acc17_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1341", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1653", "ToFinalSV" : "19", "ToAddress" : "acc17_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1348", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1667", "FromFinalSV" : "19", "FromAddress" : "acc1737_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1670", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1670", "ToFinalSV" : "19", "ToAddress" : "acc1737_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1670", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1670", "FromFinalSV" : "19", "FromAddress" : "acc1737_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1348", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1667", "ToFinalSV" : "19", "ToAddress" : "acc1737_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1355", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1681", "FromFinalSV" : "19", "FromAddress" : "acc1738_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1684", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1684", "ToFinalSV" : "19", "ToAddress" : "acc1738_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1684", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1684", "FromFinalSV" : "19", "FromAddress" : "acc1738_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1355", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1681", "ToFinalSV" : "19", "ToAddress" : "acc1738_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1362", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1695", "FromFinalSV" : "19", "FromAddress" : "acc1739_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1698", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1698", "ToFinalSV" : "19", "ToAddress" : "acc1739_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1698", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1698", "FromFinalSV" : "19", "FromAddress" : "acc1739_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1362", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1695", "ToFinalSV" : "19", "ToAddress" : "acc1739_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1369", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1709", "FromFinalSV" : "19", "FromAddress" : "acc18_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1712", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1712", "ToFinalSV" : "19", "ToAddress" : "acc18_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1712", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1712", "FromFinalSV" : "19", "FromAddress" : "acc18_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1369", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1709", "ToFinalSV" : "19", "ToAddress" : "acc18_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1376", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1723", "FromFinalSV" : "19", "FromAddress" : "acc1840_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1726", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1726", "ToFinalSV" : "19", "ToAddress" : "acc1840_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1726", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1726", "FromFinalSV" : "19", "FromAddress" : "acc1840_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1376", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1723", "ToFinalSV" : "19", "ToAddress" : "acc1840_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1383", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1737", "FromFinalSV" : "19", "FromAddress" : "acc1841_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1740", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1740", "ToFinalSV" : "19", "ToAddress" : "acc1841_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1740", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1740", "FromFinalSV" : "19", "FromAddress" : "acc1841_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1383", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1737", "ToFinalSV" : "19", "ToAddress" : "acc1841_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1390", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1751", "FromFinalSV" : "19", "FromAddress" : "acc1842_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1754", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1754", "ToFinalSV" : "19", "ToAddress" : "acc1842_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1754", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1754", "FromFinalSV" : "19", "FromAddress" : "acc1842_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1390", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1751", "ToFinalSV" : "19", "ToAddress" : "acc1842_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1397", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1765", "FromFinalSV" : "19", "FromAddress" : "acc19_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1768", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1768", "ToFinalSV" : "19", "ToAddress" : "acc19_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1768", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1768", "FromFinalSV" : "19", "FromAddress" : "acc19_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1397", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1765", "ToFinalSV" : "19", "ToAddress" : "acc19_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1404", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1779", "FromFinalSV" : "19", "FromAddress" : "acc1943_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1782", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1782", "ToFinalSV" : "19", "ToAddress" : "acc1943_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1782", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1782", "FromFinalSV" : "19", "FromAddress" : "acc1943_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1404", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1779", "ToFinalSV" : "19", "ToAddress" : "acc1943_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1411", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1793", "FromFinalSV" : "19", "FromAddress" : "acc1944_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1796", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1796", "ToFinalSV" : "19", "ToAddress" : "acc1944_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1796", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1796", "FromFinalSV" : "19", "FromAddress" : "acc1944_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1411", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1793", "ToFinalSV" : "19", "ToAddress" : "acc1944_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1418", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1807", "FromFinalSV" : "19", "FromAddress" : "acc1945_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1810", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1810", "ToFinalSV" : "19", "ToAddress" : "acc1945_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1810", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1810", "FromFinalSV" : "19", "FromAddress" : "acc1945_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1418", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1807", "ToFinalSV" : "19", "ToAddress" : "acc1945_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1425", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1821", "FromFinalSV" : "19", "FromAddress" : "acc20_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1824", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1824", "ToFinalSV" : "19", "ToAddress" : "acc20_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1824", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1824", "FromFinalSV" : "19", "FromAddress" : "acc20_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1425", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1821", "ToFinalSV" : "19", "ToAddress" : "acc20_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1432", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1835", "FromFinalSV" : "19", "FromAddress" : "acc2046_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1838", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1838", "ToFinalSV" : "19", "ToAddress" : "acc2046_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1838", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1838", "FromFinalSV" : "19", "FromAddress" : "acc2046_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1432", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1835", "ToFinalSV" : "19", "ToAddress" : "acc2046_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1439", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1849", "FromFinalSV" : "19", "FromAddress" : "acc2047_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1852", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1852", "ToFinalSV" : "19", "ToAddress" : "acc2047_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1852", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1852", "FromFinalSV" : "19", "FromAddress" : "acc2047_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1439", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1849", "ToFinalSV" : "19", "ToAddress" : "acc2047_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1446", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1863", "FromFinalSV" : "19", "FromAddress" : "acc2048_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1866", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1866", "ToFinalSV" : "19", "ToAddress" : "acc2048_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1866", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1866", "FromFinalSV" : "19", "FromAddress" : "acc2048_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1446", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1863", "ToFinalSV" : "19", "ToAddress" : "acc2048_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1453", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1877", "FromFinalSV" : "19", "FromAddress" : "acc21_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1880", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1880", "ToFinalSV" : "19", "ToAddress" : "acc21_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1880", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1880", "FromFinalSV" : "19", "FromAddress" : "acc21_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1453", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1877", "ToFinalSV" : "19", "ToAddress" : "acc21_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1460", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1891", "FromFinalSV" : "19", "FromAddress" : "acc2149_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1894", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1894", "ToFinalSV" : "19", "ToAddress" : "acc2149_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1894", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1894", "FromFinalSV" : "19", "FromAddress" : "acc2149_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1460", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1891", "ToFinalSV" : "19", "ToAddress" : "acc2149_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1467", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1905", "FromFinalSV" : "19", "FromAddress" : "acc2150_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1908", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1908", "ToFinalSV" : "19", "ToAddress" : "acc2150_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1908", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1908", "FromFinalSV" : "19", "FromAddress" : "acc2150_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1467", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1905", "ToFinalSV" : "19", "ToAddress" : "acc2150_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]},
			{"FromInitialState" : "ap_enable_state22_pp1_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter11", "FromInitialOperation" : "ap_enable_operation_1474", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1919", "FromFinalSV" : "19", "FromAddress" : "acc2151_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state23_pp1_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter12", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1922", "ToInitialSV" : "19", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1922", "ToFinalSV" : "19", "ToAddress" : "acc2151_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state23_pp1_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter12", "FromInitialOperation" : "ap_enable_operation_1922", "FromInitialSV" : "19", "FromFinalState" : "ap_enable_state23_pp1_iter12_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter12", "FromFinalOperation" : "ap_enable_operation_1922", "FromFinalSV" : "19", "FromAddress" : "acc2151_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state22_pp1_iter11_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter11", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter12", "ToInitialOperation" : "ap_enable_operation_1474", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state23_pp1_iter12_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter12", "ToFinalOperation" : "ap_enable_operation_1919", "ToFinalSV" : "19", "ToAddress" : "acc2151_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "6", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:264:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state22_pp1_iter11_stage0", "ap_enable_state23_pp1_iter12_stage0"]}],
		"Port" : [
			{"Name" : "pixels2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pixels2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights210", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights211", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights312", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights313", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights314", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights315", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights416", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights417", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights418", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights519", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights520", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights521", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights622", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights623", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights624", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights725", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights726", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights727", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "279", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "280", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "281", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "282", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "283", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "284", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "285", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "286", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "287", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "288", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "289", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "290", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "291", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "292", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "294", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "enabled_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1531", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1532", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1533", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1634", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1635", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1636", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1737", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1738", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1739", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1840", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1841", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1842", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1943", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1944", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc1945", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2046", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2047", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2048", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2149", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2150", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc2151", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Parent" : "113", "Child" : ["115", "116", "117", "118", "119", "120", "121", "122"],
		"CDFG" : "p_anonymous_namespace_bank_access_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_18", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_81", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_20", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_82", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_86", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_34", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_93", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_1_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "memory_1_0_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_24", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_32", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_88", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_91", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_1_1_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_48", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "memory_1_1_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_18", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_81", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_20", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_82", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_24", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_86", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_32", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_88", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_34", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_89", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_91", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_93", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "memory_1_0_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_1_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_48", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "memory_1_1_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_1_1_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "writing", "Type" : "None", "Direction" : "I"},
			{"Name" : "word", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa", "Type" : "None", "Direction" : "I"},
			{"Name" : "reading", "Type" : "None", "Direction" : "I"},
			{"Name" : "a0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_0_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_1_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_2_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_3_U", "Parent" : "114"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_0_U", "Parent" : "114"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_1_U", "Parent" : "114"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_2_U", "Parent" : "114"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_3_U", "Parent" : "114"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Parent" : "113", "Child" : ["124", "125", "126", "127", "128", "129", "130", "131"],
		"CDFG" : "p_anonymous_namespace_bank_access_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_18", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_81", "ToFinalSV" : "1", "ToAddress" : "memory_0_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "0", "FromAddress" : "memory_0_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_20", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_82", "ToFinalSV" : "1", "ToAddress" : "memory_0_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "memory_0_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "0", "FromAddress" : "memory_0_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_86", "ToFinalSV" : "1", "ToAddress" : "memory_0_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_34", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "1", "ToAddress" : "memory_0_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "0", "FromAddress" : "memory_0_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "memory_0_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_93", "ToFinalSV" : "1", "ToAddress" : "memory_0_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "0", "FromAddress" : "memory_0_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "memory_0_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_115_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "1", "ToAddress" : "memory_115_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "0", "FromAddress" : "memory_115_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_24", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "1", "ToAddress" : "memory_115_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_115_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "1", "ToAddress" : "memory_115_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "memory_115_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_32", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_88", "ToFinalSV" : "1", "ToAddress" : "memory_115_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_115_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_91", "ToFinalSV" : "1", "ToAddress" : "memory_115_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "0", "FromAddress" : "memory_115_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "memory_115_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_115_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "memory_115_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "0", "FromAddress" : "memory_115_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_48", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "memory_115_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_18", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_81", "FromFinalSV" : "1", "FromAddress" : "memory_0_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_20", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_82", "FromFinalSV" : "1", "FromAddress" : "memory_0_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "0", "ToAddress" : "memory_0_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "1", "FromAddress" : "memory_115_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_115_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_24", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "1", "FromAddress" : "memory_115_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "0", "ToAddress" : "memory_115_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "memory_0_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_86", "FromFinalSV" : "1", "FromAddress" : "memory_0_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "0", "ToAddress" : "memory_0_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "1", "FromAddress" : "memory_115_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_115_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_32", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_88", "FromFinalSV" : "1", "FromAddress" : "memory_115_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "memory_115_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_34", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_89", "FromFinalSV" : "1", "FromAddress" : "memory_0_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "memory_0_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "0", "ToAddress" : "memory_0_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_91", "FromFinalSV" : "1", "FromAddress" : "memory_115_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_115_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "memory_115_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "0", "ToAddress" : "memory_115_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_93", "FromFinalSV" : "1", "FromAddress" : "memory_0_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "memory_0_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "0", "ToAddress" : "memory_0_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "memory_115_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_115_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_48", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "memory_115_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "0", "ToAddress" : "memory_115_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:212:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "writing", "Type" : "None", "Direction" : "I"},
			{"Name" : "word", "Type" : "None", "Direction" : "I"},
			{"Name" : "wa", "Type" : "None", "Direction" : "I"},
			{"Name" : "reading", "Type" : "None", "Direction" : "I"},
			{"Name" : "a0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_0_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_1_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_2_U", "Parent" : "123"},
	{"ID" : "127", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_3_U", "Parent" : "123"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_0_U", "Parent" : "123"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_1_U", "Parent" : "123"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_2_U", "Parent" : "123"},
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_3_U", "Parent" : "123"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685", "Parent" : "113", "Child" : ["133", "134", "135", "136", "137"],
		"CDFG" : "p_anonymous_namespace_address_stage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "ky", "Type" : "None", "Direction" : "I"},
			{"Name" : "kx", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_11s_11ns_11_3_1_U402", "Parent" : "132"},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_16s_16ns_16_3_1_U403", "Parent" : "132"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_1ns_2ns_16ns_16_3_1_U404", "Parent" : "132"},
	{"ID" : "136", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U405", "Parent" : "132"},
	{"ID" : "137", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U406", "Parent" : "132"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_4ns_16ns_20_1_1_U426", "Parent" : "113"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_3ns_3ns_6_1_1_U427", "Parent" : "113"},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_15ns_6ns_20_4_1_U428", "Parent" : "113"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U429", "Parent" : "113"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U430", "Parent" : "113"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U431", "Parent" : "113"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U432", "Parent" : "113"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U433", "Parent" : "113"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U434", "Parent" : "113"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U435", "Parent" : "113"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U436", "Parent" : "113"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U437", "Parent" : "113"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U438", "Parent" : "113"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U439", "Parent" : "113"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U440", "Parent" : "113"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U441", "Parent" : "113"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U442", "Parent" : "113"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U443", "Parent" : "113"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U444", "Parent" : "113"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U445", "Parent" : "113"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U446", "Parent" : "113"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U447", "Parent" : "113"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U448", "Parent" : "113"},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U449", "Parent" : "113"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U450", "Parent" : "113"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U451", "Parent" : "113"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U452", "Parent" : "113"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U453", "Parent" : "113"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U454", "Parent" : "113"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U455", "Parent" : "113"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U456", "Parent" : "113"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U457", "Parent" : "113"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U458", "Parent" : "113"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U459", "Parent" : "113"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U460", "Parent" : "113"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U461", "Parent" : "113"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U462", "Parent" : "113"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U463", "Parent" : "113"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U464", "Parent" : "113"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U465", "Parent" : "113"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U466", "Parent" : "113"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U467", "Parent" : "113"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U468", "Parent" : "113"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U469", "Parent" : "113"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U470", "Parent" : "113"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U471", "Parent" : "113"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U472", "Parent" : "113"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U473", "Parent" : "113"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U474", "Parent" : "113"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U475", "Parent" : "113"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U476", "Parent" : "113"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U477", "Parent" : "113"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U478", "Parent" : "113"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U479", "Parent" : "113"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U480", "Parent" : "113"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U481", "Parent" : "113"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U482", "Parent" : "113"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U483", "Parent" : "113"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U484", "Parent" : "113"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U485", "Parent" : "113"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U486", "Parent" : "113"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U487", "Parent" : "113"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U488", "Parent" : "113"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U489", "Parent" : "113"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U490", "Parent" : "113"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U491", "Parent" : "113"},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U492", "Parent" : "113"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U493", "Parent" : "113"},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U494", "Parent" : "113"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U495", "Parent" : "113"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U496", "Parent" : "113"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U497", "Parent" : "113"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U498", "Parent" : "113"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U499", "Parent" : "113"},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U500", "Parent" : "113"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U501", "Parent" : "113"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U502", "Parent" : "113"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U503", "Parent" : "113"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U504", "Parent" : "113"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U505", "Parent" : "113"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U506", "Parent" : "113"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U507", "Parent" : "113"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U508", "Parent" : "113"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U509", "Parent" : "113"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U510", "Parent" : "113"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U511", "Parent" : "113"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U512", "Parent" : "113"},
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U513", "Parent" : "113"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U514", "Parent" : "113"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U515", "Parent" : "113"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U516", "Parent" : "113"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U517", "Parent" : "113"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U518", "Parent" : "113"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U519", "Parent" : "113"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U520", "Parent" : "113"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U521", "Parent" : "113"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U522", "Parent" : "113"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U523", "Parent" : "113"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U524", "Parent" : "113"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U525", "Parent" : "113"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U526", "Parent" : "113"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U527", "Parent" : "113"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U528", "Parent" : "113"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U529", "Parent" : "113"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U530", "Parent" : "113"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U531", "Parent" : "113"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U532", "Parent" : "113"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U533", "Parent" : "113"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U534", "Parent" : "113"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U535", "Parent" : "113"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U536", "Parent" : "113"},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U537", "Parent" : "113"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U538", "Parent" : "113"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U539", "Parent" : "113"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U540", "Parent" : "113"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U541", "Parent" : "113"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U542", "Parent" : "113"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U543", "Parent" : "113"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U544", "Parent" : "113"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U545", "Parent" : "113"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U546", "Parent" : "113"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U547", "Parent" : "113"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U548", "Parent" : "113"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U549", "Parent" : "113"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U550", "Parent" : "113"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U551", "Parent" : "113"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U552", "Parent" : "113"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U553", "Parent" : "113"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U554", "Parent" : "113"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U555", "Parent" : "113"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U556", "Parent" : "113"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0", "Parent" : "111", "Child" : ["270", "271", "272", "273", "274", "275", "276", "277", "278"],
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
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "296", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "293", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "295", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "enabled_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U645", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U646", "Parent" : "269"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U647", "Parent" : "269"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U648", "Parent" : "269"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U649", "Parent" : "269"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U650", "Parent" : "269"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U651", "Parent" : "269"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U652", "Parent" : "269"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mul_mul_16ns_16ns_32_4_1_U653", "Parent" : "269"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias_c_U", "Parent" : "111"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias8_c_U", "Parent" : "111"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias9_c_U", "Parent" : "111"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias10_c_U", "Parent" : "111"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias11_c_U", "Parent" : "111"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias12_c_U", "Parent" : "111"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias13_c_U", "Parent" : "111"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias14_c_U", "Parent" : "111"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ci_c_U", "Parent" : "111"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.wi_c_U", "Parent" : "111"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.k_c_U", "Parent" : "111"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.stride_c_U", "Parent" : "111"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.pad_c_U", "Parent" : "111"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ow_c_U", "Parent" : "111"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ow_c1_U", "Parent" : "111"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.computing_c_U", "Parent" : "111"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.emitting_offset_c_U", "Parent" : "111"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.previous_rows_c_U", "Parent" : "111"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0", "Parent" : "1", "Child" : ["298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319"],
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
			{"Name" : "results", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "366", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "results_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "330", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "331", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "340", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "341", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "342", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "343", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "344", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "345", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "346", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "347", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "349", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "350", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "351", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "328", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "46", "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "355", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.packed_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.skipbuf_U", "Parent" : "297"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_0_U", "Parent" : "297"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_1_U", "Parent" : "297"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_2_U", "Parent" : "297"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_3_U", "Parent" : "297"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_32s_16ns_32_2_1_U883", "Parent" : "297"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_30ns_16ns_32_2_1_U884", "Parent" : "297"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_30s_2ns_30_2_1_U885", "Parent" : "297"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_32s_3ns_32_2_1_U886", "Parent" : "297"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_8s_8s_8_1_1_U887", "Parent" : "297"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_8s_8s_8_1_1_U888", "Parent" : "297"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_32s_3ns_32_2_1_U889", "Parent" : "297"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mux_42_64_1_1_U890", "Parent" : "297"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_14ns_16ns_30_4_1_U891", "Parent" : "297"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U892", "Parent" : "297"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U893", "Parent" : "297"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U894", "Parent" : "297"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U895", "Parent" : "297"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U896", "Parent" : "297"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U897", "Parent" : "297"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U898", "Parent" : "297"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.k_c_U", "Parent" : "1"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.stride_c_U", "Parent" : "1"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.stride_c11_U", "Parent" : "1"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.pad_c_U", "Parent" : "1"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.h_c_U", "Parent" : "1"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.wi_c_U", "Parent" : "1"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.wi_c12_U", "Parent" : "1"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.ci_c_U", "Parent" : "1"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.ob_c_U", "Parent" : "1"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.fr_c_U", "Parent" : "1"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.fw_c_U", "Parent" : "1"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.wide_c_U", "Parent" : "1"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_0_c_U", "Parent" : "1"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_1_c_U", "Parent" : "1"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_2_c_U", "Parent" : "1"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_3_c_U", "Parent" : "1"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_4_c_U", "Parent" : "1"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_5_c_U", "Parent" : "1"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_6_c_U", "Parent" : "1"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.bias_7_c_U", "Parent" : "1"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_0_c_U", "Parent" : "1"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_1_c_U", "Parent" : "1"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_2_c_U", "Parent" : "1"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_3_c_U", "Parent" : "1"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_4_c_U", "Parent" : "1"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_5_c_U", "Parent" : "1"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_6_c_U", "Parent" : "1"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.shifts_7_c_U", "Parent" : "1"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.input_c_U", "Parent" : "1"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.output_c_U", "Parent" : "1"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.skip_c_U", "Parent" : "1"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.skipshift_c_U", "Parent" : "1"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.oh_c_U", "Parent" : "1"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.ow_c_U", "Parent" : "1"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.ow_c13_U", "Parent" : "1"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.kind_c_U", "Parent" : "1"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.compact_loc_channel_U", "Parent" : "1"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.p_loc_channel_U", "Parent" : "1"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.icmp_ln412_6_loc_channel_U", "Parent" : "1"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.pixels_U", "Parent" : "1"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.ci_c14_U", "Parent" : "1"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.k_c15_U", "Parent" : "1"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.pad_c16_U", "Parent" : "1"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.oh_c17_U", "Parent" : "1"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.select_ln413_loc_channel_U", "Parent" : "1"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.select_ln413_1_loc_channel_U", "Parent" : "1"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.results_U", "Parent" : "1"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.oh_c18_U", "Parent" : "1"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_block_fu_473.ow_c19_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc {
		batch_count {Type I LastRead 0 FirstWrite -1}
		wide {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		skip {Type I LastRead 0 FirstWrite -1}
		feature_read {Type I LastRead 25 FirstWrite -1}
		feature_mem {Type IO LastRead 33 FirstWrite 27}
		fr {Type I LastRead 0 FirstWrite -1}
		fw {Type I LastRead 0 FirstWrite -1}
		current_0_0 {Type I LastRead 12 FirstWrite -1}
		current_0_1 {Type I LastRead 14 FirstWrite -1}
		current_0_2 {Type I LastRead 13 FirstWrite -1}
		current_0_3 {Type I LastRead 15 FirstWrite -1}
		current_1_0 {Type I LastRead 12 FirstWrite -1}
		current_1_1 {Type I LastRead 14 FirstWrite -1}
		current_1_2 {Type I LastRead 13 FirstWrite -1}
		current_1_3 {Type I LastRead 15 FirstWrite -1}
		current_2_0 {Type I LastRead 12 FirstWrite -1}
		current_2_1 {Type I LastRead 14 FirstWrite -1}
		current_2_2 {Type I LastRead 13 FirstWrite -1}
		current_2_3 {Type I LastRead 15 FirstWrite -1}
		current_3_0 {Type I LastRead 12 FirstWrite -1}
		current_3_1 {Type I LastRead 14 FirstWrite -1}
		current_3_2 {Type I LastRead 13 FirstWrite -1}
		current_3_3 {Type I LastRead 15 FirstWrite -1}
		current_4_0 {Type I LastRead 12 FirstWrite -1}
		current_4_1 {Type I LastRead 14 FirstWrite -1}
		current_4_2 {Type I LastRead 13 FirstWrite -1}
		current_4_3 {Type I LastRead 15 FirstWrite -1}
		current_5_0 {Type I LastRead 12 FirstWrite -1}
		current_5_1 {Type I LastRead 14 FirstWrite -1}
		current_5_2 {Type I LastRead 13 FirstWrite -1}
		current_5_3 {Type I LastRead 15 FirstWrite -1}
		current_6_0 {Type I LastRead 12 FirstWrite -1}
		current_6_1 {Type I LastRead 14 FirstWrite -1}
		current_6_2 {Type I LastRead 13 FirstWrite -1}
		current_6_3 {Type I LastRead 15 FirstWrite -1}
		current_7_0 {Type I LastRead 12 FirstWrite -1}
		current_7_1 {Type I LastRead 14 FirstWrite -1}
		current_7_2 {Type I LastRead 13 FirstWrite -1}
		current_7_3 {Type I LastRead 15 FirstWrite -1}
		bias_0 {Type I LastRead 0 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		bias_2 {Type I LastRead 0 FirstWrite -1}
		bias_3 {Type I LastRead 0 FirstWrite -1}
		bias_4 {Type I LastRead 0 FirstWrite -1}
		bias_5 {Type I LastRead 0 FirstWrite -1}
		bias_6 {Type I LastRead 0 FirstWrite -1}
		bias_7 {Type I LastRead 0 FirstWrite -1}
		shifts_0 {Type I LastRead 0 FirstWrite -1}
		shifts_1 {Type I LastRead 0 FirstWrite -1}
		shifts_2 {Type I LastRead 0 FirstWrite -1}
		shifts_3 {Type I LastRead 0 FirstWrite -1}
		shifts_4 {Type I LastRead 0 FirstWrite -1}
		shifts_5 {Type I LastRead 0 FirstWrite -1}
		shifts_6 {Type I LastRead 0 FirstWrite -1}
		shifts_7 {Type I LastRead 0 FirstWrite -1}
		skipshift {Type I LastRead 0 FirstWrite -1}
		ob {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		kind {Type I LastRead 0 FirstWrite -1}
		cache {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_ticks {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_mac {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_wait {Type IO LastRead 8 FirstWrite 8}}
	p_anonymous_namespace_block {
		feature_read {Type I LastRead 25 FirstWrite -1}
		feature_mem {Type IO LastRead 33 FirstWrite 27}
		fr {Type I LastRead 0 FirstWrite -1}
		fw {Type I LastRead 0 FirstWrite -1}
		wide {Type I LastRead 0 FirstWrite -1}
		weights_0_0 {Type I LastRead 12 FirstWrite -1}
		weights_0_1 {Type I LastRead 14 FirstWrite -1}
		weights_0_2 {Type I LastRead 13 FirstWrite -1}
		weights_0_3 {Type I LastRead 15 FirstWrite -1}
		weights_1_0 {Type I LastRead 12 FirstWrite -1}
		weights_1_1 {Type I LastRead 14 FirstWrite -1}
		weights_1_2 {Type I LastRead 13 FirstWrite -1}
		weights_1_3 {Type I LastRead 15 FirstWrite -1}
		weights_2_0 {Type I LastRead 12 FirstWrite -1}
		weights_2_1 {Type I LastRead 14 FirstWrite -1}
		weights_2_2 {Type I LastRead 13 FirstWrite -1}
		weights_2_3 {Type I LastRead 15 FirstWrite -1}
		weights_3_0 {Type I LastRead 12 FirstWrite -1}
		weights_3_1 {Type I LastRead 14 FirstWrite -1}
		weights_3_2 {Type I LastRead 13 FirstWrite -1}
		weights_3_3 {Type I LastRead 15 FirstWrite -1}
		weights_4_0 {Type I LastRead 12 FirstWrite -1}
		weights_4_1 {Type I LastRead 14 FirstWrite -1}
		weights_4_2 {Type I LastRead 13 FirstWrite -1}
		weights_4_3 {Type I LastRead 15 FirstWrite -1}
		weights_5_0 {Type I LastRead 12 FirstWrite -1}
		weights_5_1 {Type I LastRead 14 FirstWrite -1}
		weights_5_2 {Type I LastRead 13 FirstWrite -1}
		weights_5_3 {Type I LastRead 15 FirstWrite -1}
		weights_6_0 {Type I LastRead 12 FirstWrite -1}
		weights_6_1 {Type I LastRead 14 FirstWrite -1}
		weights_6_2 {Type I LastRead 13 FirstWrite -1}
		weights_6_3 {Type I LastRead 15 FirstWrite -1}
		weights_7_0 {Type I LastRead 12 FirstWrite -1}
		weights_7_1 {Type I LastRead 14 FirstWrite -1}
		weights_7_2 {Type I LastRead 13 FirstWrite -1}
		weights_7_3 {Type I LastRead 15 FirstWrite -1}
		bias_0_read {Type I LastRead 0 FirstWrite -1}
		bias_1_read {Type I LastRead 0 FirstWrite -1}
		bias_2_read {Type I LastRead 0 FirstWrite -1}
		bias_3_read {Type I LastRead 0 FirstWrite -1}
		bias_4_read {Type I LastRead 0 FirstWrite -1}
		bias_5_read {Type I LastRead 0 FirstWrite -1}
		bias_6_read {Type I LastRead 0 FirstWrite -1}
		bias_7_read {Type I LastRead 0 FirstWrite -1}
		shifts_0_read {Type I LastRead 0 FirstWrite -1}
		shifts_1_read {Type I LastRead 0 FirstWrite -1}
		shifts_2_read {Type I LastRead 0 FirstWrite -1}
		shifts_3_read {Type I LastRead 0 FirstWrite -1}
		shifts_4_read {Type I LastRead 0 FirstWrite -1}
		shifts_5_read {Type I LastRead 0 FirstWrite -1}
		shifts_6_read {Type I LastRead 0 FirstWrite -1}
		shifts_7_read {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		skip {Type I LastRead 0 FirstWrite -1}
		skipshift {Type I LastRead 0 FirstWrite -1}
		ob {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		kind {Type I LastRead 0 FirstWrite -1}
		cache {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_ticks {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_mac {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_wait {Type IO LastRead 8 FirstWrite 8}}
	p_anonymous_namespace_block_Block_split1_proc62 {
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		ob {Type I LastRead 0 FirstWrite -1}
		fr {Type I LastRead 0 FirstWrite -1}
		fw {Type I LastRead 0 FirstWrite -1}
		wide {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		skip {Type I LastRead 0 FirstWrite -1}
		skipshift {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		kind {Type I LastRead 0 FirstWrite -1}
		k_out {Type O LastRead -1 FirstWrite 0}
		stride_out {Type O LastRead -1 FirstWrite 0}
		stride_out1 {Type O LastRead -1 FirstWrite 0}
		pad_out {Type O LastRead -1 FirstWrite 0}
		h_out {Type O LastRead -1 FirstWrite 0}
		wi_out {Type O LastRead -1 FirstWrite 0}
		wi_out2 {Type O LastRead -1 FirstWrite 0}
		ci_out {Type O LastRead -1 FirstWrite 0}
		ob_out {Type O LastRead -1 FirstWrite 0}
		fr_out {Type O LastRead -1 FirstWrite 0}
		fw_out {Type O LastRead -1 FirstWrite 0}
		wide_out {Type O LastRead -1 FirstWrite 0}
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
		shifts_7_out {Type O LastRead -1 FirstWrite 0}
		input_out {Type O LastRead -1 FirstWrite 0}
		output_out {Type O LastRead -1 FirstWrite 0}
		skip_out {Type O LastRead -1 FirstWrite 0}
		skipshift_out {Type O LastRead -1 FirstWrite 0}
		oh_out {Type O LastRead -1 FirstWrite 0}
		ow_out {Type O LastRead -1 FirstWrite 0}
		ow_out3 {Type O LastRead -1 FirstWrite 0}
		kind_out {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_load_tiles {
		feature_read {Type I LastRead 25 FirstWrite -1}
		pixels {Type O LastRead -1 FirstWrite 18}
		fr {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		cached {Type I LastRead 1 FirstWrite -1}
		refresh {Type I LastRead 1 FirstWrite -1}
		ci_out {Type O LastRead -1 FirstWrite 0}
		k_out {Type O LastRead -1 FirstWrite 0}
		pad_out {Type O LastRead -1 FirstWrite 0}
		oh_out {Type O LastRead -1 FirstWrite 0}
		cache {Type IO LastRead -1 FirstWrite -1}}
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
		oh {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_block_Block_split93_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_compute_tiles {
		pixels {Type I LastRead 7 FirstWrite -1}
		results {Type O LastRead -1 FirstWrite 7}
		weights_0_0 {Type I LastRead 12 FirstWrite -1}
		weights_0_1 {Type I LastRead 14 FirstWrite -1}
		weights_0_2 {Type I LastRead 13 FirstWrite -1}
		weights_0_3 {Type I LastRead 15 FirstWrite -1}
		weights_1_0 {Type I LastRead 12 FirstWrite -1}
		weights_1_1 {Type I LastRead 14 FirstWrite -1}
		weights_1_2 {Type I LastRead 13 FirstWrite -1}
		weights_1_3 {Type I LastRead 15 FirstWrite -1}
		weights_2_0 {Type I LastRead 12 FirstWrite -1}
		weights_2_1 {Type I LastRead 14 FirstWrite -1}
		weights_2_2 {Type I LastRead 13 FirstWrite -1}
		weights_2_3 {Type I LastRead 15 FirstWrite -1}
		weights_3_0 {Type I LastRead 12 FirstWrite -1}
		weights_3_1 {Type I LastRead 14 FirstWrite -1}
		weights_3_2 {Type I LastRead 13 FirstWrite -1}
		weights_3_3 {Type I LastRead 15 FirstWrite -1}
		weights_4_0 {Type I LastRead 12 FirstWrite -1}
		weights_4_1 {Type I LastRead 14 FirstWrite -1}
		weights_4_2 {Type I LastRead 13 FirstWrite -1}
		weights_4_3 {Type I LastRead 15 FirstWrite -1}
		weights_5_0 {Type I LastRead 12 FirstWrite -1}
		weights_5_1 {Type I LastRead 14 FirstWrite -1}
		weights_5_2 {Type I LastRead 13 FirstWrite -1}
		weights_5_3 {Type I LastRead 15 FirstWrite -1}
		weights_6_0 {Type I LastRead 12 FirstWrite -1}
		weights_6_1 {Type I LastRead 14 FirstWrite -1}
		weights_6_2 {Type I LastRead 13 FirstWrite -1}
		weights_6_3 {Type I LastRead 15 FirstWrite -1}
		weights_7_0 {Type I LastRead 12 FirstWrite -1}
		weights_7_1 {Type I LastRead 14 FirstWrite -1}
		weights_7_2 {Type I LastRead 13 FirstWrite -1}
		weights_7_3 {Type I LastRead 15 FirstWrite -1}
		bias_0 {Type I LastRead 0 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		bias_2 {Type I LastRead 0 FirstWrite -1}
		bias_3 {Type I LastRead 0 FirstWrite -1}
		bias_4 {Type I LastRead 0 FirstWrite -1}
		bias_5 {Type I LastRead 0 FirstWrite -1}
		bias_6 {Type I LastRead 0 FirstWrite -1}
		bias_7 {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 1 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 1 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		oh {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		oh_out {Type O LastRead -1 FirstWrite 0}
		ow_out {Type O LastRead -1 FirstWrite 0}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_ticks {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_mac {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_wait {Type IO LastRead 8 FirstWrite 8}}
	p_anonymous_namespace_row_pair {
		pixels2 {Type I LastRead 7 FirstWrite -1}
		results {Type O LastRead -1 FirstWrite 7}
		weights {Type I LastRead 12 FirstWrite -1}
		weights1 {Type I LastRead 14 FirstWrite -1}
		weights2 {Type I LastRead 13 FirstWrite -1}
		weights3 {Type I LastRead 15 FirstWrite -1}
		weights14 {Type I LastRead 12 FirstWrite -1}
		weights15 {Type I LastRead 14 FirstWrite -1}
		weights16 {Type I LastRead 13 FirstWrite -1}
		weights17 {Type I LastRead 15 FirstWrite -1}
		weights28 {Type I LastRead 12 FirstWrite -1}
		weights29 {Type I LastRead 14 FirstWrite -1}
		weights210 {Type I LastRead 13 FirstWrite -1}
		weights211 {Type I LastRead 15 FirstWrite -1}
		weights312 {Type I LastRead 12 FirstWrite -1}
		weights313 {Type I LastRead 14 FirstWrite -1}
		weights314 {Type I LastRead 13 FirstWrite -1}
		weights315 {Type I LastRead 15 FirstWrite -1}
		weights4 {Type I LastRead 12 FirstWrite -1}
		weights416 {Type I LastRead 14 FirstWrite -1}
		weights417 {Type I LastRead 13 FirstWrite -1}
		weights418 {Type I LastRead 15 FirstWrite -1}
		weights5 {Type I LastRead 12 FirstWrite -1}
		weights519 {Type I LastRead 14 FirstWrite -1}
		weights520 {Type I LastRead 13 FirstWrite -1}
		weights521 {Type I LastRead 15 FirstWrite -1}
		weights6 {Type I LastRead 12 FirstWrite -1}
		weights622 {Type I LastRead 14 FirstWrite -1}
		weights623 {Type I LastRead 13 FirstWrite -1}
		weights624 {Type I LastRead 15 FirstWrite -1}
		weights7 {Type I LastRead 12 FirstWrite -1}
		weights725 {Type I LastRead 14 FirstWrite -1}
		weights726 {Type I LastRead 13 FirstWrite -1}
		weights727 {Type I LastRead 15 FirstWrite -1}
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
		current {Type IO LastRead 18 FirstWrite 19}
		current28 {Type IO LastRead 18 FirstWrite 19}
		current29 {Type IO LastRead 18 FirstWrite 19}
		current30 {Type IO LastRead 18 FirstWrite 19}
		current15 {Type IO LastRead 18 FirstWrite 19}
		current1531 {Type IO LastRead 18 FirstWrite 19}
		current1532 {Type IO LastRead 18 FirstWrite 19}
		current1533 {Type IO LastRead 18 FirstWrite 19}
		current16 {Type IO LastRead 18 FirstWrite 19}
		current1634 {Type IO LastRead 18 FirstWrite 19}
		current1635 {Type IO LastRead 18 FirstWrite 19}
		current1636 {Type IO LastRead 18 FirstWrite 19}
		current17 {Type IO LastRead 18 FirstWrite 19}
		current1737 {Type IO LastRead 18 FirstWrite 19}
		current1738 {Type IO LastRead 18 FirstWrite 19}
		current1739 {Type IO LastRead 18 FirstWrite 19}
		current18 {Type IO LastRead 18 FirstWrite 19}
		current1840 {Type IO LastRead 18 FirstWrite 19}
		current1841 {Type IO LastRead 18 FirstWrite 19}
		current1842 {Type IO LastRead 18 FirstWrite 19}
		current19 {Type IO LastRead 18 FirstWrite 19}
		current1943 {Type IO LastRead 18 FirstWrite 19}
		current1944 {Type IO LastRead 18 FirstWrite 19}
		current1945 {Type IO LastRead 18 FirstWrite 19}
		current20 {Type IO LastRead 18 FirstWrite 19}
		current2046 {Type IO LastRead 18 FirstWrite 19}
		current2047 {Type IO LastRead 18 FirstWrite 19}
		current2048 {Type IO LastRead 18 FirstWrite 19}
		current21 {Type IO LastRead 18 FirstWrite 19}
		current2149 {Type IO LastRead 18 FirstWrite 19}
		current2150 {Type IO LastRead 18 FirstWrite 19}
		current2151 {Type IO LastRead 18 FirstWrite 19}
		previous {Type I LastRead 5 FirstWrite -1}
		previous52 {Type I LastRead 5 FirstWrite -1}
		previous53 {Type I LastRead 5 FirstWrite -1}
		previous54 {Type I LastRead 5 FirstWrite -1}
		previous22 {Type I LastRead 5 FirstWrite -1}
		previous2255 {Type I LastRead 5 FirstWrite -1}
		previous2256 {Type I LastRead 5 FirstWrite -1}
		previous2257 {Type I LastRead 5 FirstWrite -1}
		previous23 {Type I LastRead 5 FirstWrite -1}
		previous2358 {Type I LastRead 5 FirstWrite -1}
		previous2359 {Type I LastRead 5 FirstWrite -1}
		previous2360 {Type I LastRead 5 FirstWrite -1}
		previous24 {Type I LastRead 5 FirstWrite -1}
		previous2461 {Type I LastRead 5 FirstWrite -1}
		previous2462 {Type I LastRead 5 FirstWrite -1}
		previous2463 {Type I LastRead 5 FirstWrite -1}
		previous25 {Type I LastRead 5 FirstWrite -1}
		previous2564 {Type I LastRead 5 FirstWrite -1}
		previous2565 {Type I LastRead 5 FirstWrite -1}
		previous2566 {Type I LastRead 5 FirstWrite -1}
		previous26 {Type I LastRead 5 FirstWrite -1}
		previous2667 {Type I LastRead 5 FirstWrite -1}
		previous2668 {Type I LastRead 5 FirstWrite -1}
		previous2669 {Type I LastRead 5 FirstWrite -1}
		previous27 {Type I LastRead 5 FirstWrite -1}
		previous2770 {Type I LastRead 5 FirstWrite -1}
		previous2771 {Type I LastRead 5 FirstWrite -1}
		previous2772 {Type I LastRead 5 FirstWrite -1}
		previous28 {Type I LastRead 5 FirstWrite -1}
		previous2873 {Type I LastRead 5 FirstWrite -1}
		previous2874 {Type I LastRead 5 FirstWrite -1}
		previous2875 {Type I LastRead 5 FirstWrite -1}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_ticks {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_mac {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_wait {Type IO LastRead 8 FirstWrite 8}}
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
		previous_rows_out {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_compute_row {
		pixels2 {Type I LastRead 7 FirstWrite -1}
		weights {Type I LastRead 12 FirstWrite -1}
		weights1 {Type I LastRead 14 FirstWrite -1}
		weights2 {Type I LastRead 13 FirstWrite -1}
		weights3 {Type I LastRead 15 FirstWrite -1}
		weights14 {Type I LastRead 12 FirstWrite -1}
		weights15 {Type I LastRead 14 FirstWrite -1}
		weights16 {Type I LastRead 13 FirstWrite -1}
		weights17 {Type I LastRead 15 FirstWrite -1}
		weights28 {Type I LastRead 12 FirstWrite -1}
		weights29 {Type I LastRead 14 FirstWrite -1}
		weights210 {Type I LastRead 13 FirstWrite -1}
		weights211 {Type I LastRead 15 FirstWrite -1}
		weights312 {Type I LastRead 12 FirstWrite -1}
		weights313 {Type I LastRead 14 FirstWrite -1}
		weights314 {Type I LastRead 13 FirstWrite -1}
		weights315 {Type I LastRead 15 FirstWrite -1}
		weights4 {Type I LastRead 12 FirstWrite -1}
		weights416 {Type I LastRead 14 FirstWrite -1}
		weights417 {Type I LastRead 13 FirstWrite -1}
		weights418 {Type I LastRead 15 FirstWrite -1}
		weights5 {Type I LastRead 12 FirstWrite -1}
		weights519 {Type I LastRead 14 FirstWrite -1}
		weights520 {Type I LastRead 13 FirstWrite -1}
		weights521 {Type I LastRead 15 FirstWrite -1}
		weights6 {Type I LastRead 12 FirstWrite -1}
		weights622 {Type I LastRead 14 FirstWrite -1}
		weights623 {Type I LastRead 13 FirstWrite -1}
		weights624 {Type I LastRead 15 FirstWrite -1}
		weights7 {Type I LastRead 12 FirstWrite -1}
		weights725 {Type I LastRead 14 FirstWrite -1}
		weights726 {Type I LastRead 13 FirstWrite -1}
		weights727 {Type I LastRead 15 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		bias8 {Type I LastRead 0 FirstWrite -1}
		bias9 {Type I LastRead 0 FirstWrite -1}
		bias10 {Type I LastRead 0 FirstWrite -1}
		bias11 {Type I LastRead 0 FirstWrite -1}
		bias12 {Type I LastRead 0 FirstWrite -1}
		bias13 {Type I LastRead 0 FirstWrite -1}
		bias14 {Type I LastRead 0 FirstWrite -1}
		ci {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		ow {Type I LastRead 0 FirstWrite -1}
		enabled {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 18 FirstWrite 19}
		acc28 {Type IO LastRead 18 FirstWrite 19}
		acc29 {Type IO LastRead 18 FirstWrite 19}
		acc30 {Type IO LastRead 18 FirstWrite 19}
		acc15 {Type IO LastRead 18 FirstWrite 19}
		acc1531 {Type IO LastRead 18 FirstWrite 19}
		acc1532 {Type IO LastRead 18 FirstWrite 19}
		acc1533 {Type IO LastRead 18 FirstWrite 19}
		acc16 {Type IO LastRead 18 FirstWrite 19}
		acc1634 {Type IO LastRead 18 FirstWrite 19}
		acc1635 {Type IO LastRead 18 FirstWrite 19}
		acc1636 {Type IO LastRead 18 FirstWrite 19}
		acc17 {Type IO LastRead 18 FirstWrite 19}
		acc1737 {Type IO LastRead 18 FirstWrite 19}
		acc1738 {Type IO LastRead 18 FirstWrite 19}
		acc1739 {Type IO LastRead 18 FirstWrite 19}
		acc18 {Type IO LastRead 18 FirstWrite 19}
		acc1840 {Type IO LastRead 18 FirstWrite 19}
		acc1841 {Type IO LastRead 18 FirstWrite 19}
		acc1842 {Type IO LastRead 18 FirstWrite 19}
		acc19 {Type IO LastRead 18 FirstWrite 19}
		acc1943 {Type IO LastRead 18 FirstWrite 19}
		acc1944 {Type IO LastRead 18 FirstWrite 19}
		acc1945 {Type IO LastRead 18 FirstWrite 19}
		acc20 {Type IO LastRead 18 FirstWrite 19}
		acc2046 {Type IO LastRead 18 FirstWrite 19}
		acc2047 {Type IO LastRead 18 FirstWrite 19}
		acc2048 {Type IO LastRead 18 FirstWrite 19}
		acc21 {Type IO LastRead 18 FirstWrite 19}
		acc2149 {Type IO LastRead 18 FirstWrite 19}
		acc2150 {Type IO LastRead 18 FirstWrite 19}
		acc2151 {Type IO LastRead 18 FirstWrite 19}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_ticks {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_mac {Type IO LastRead 8 FirstWrite 8}
		p_anonymous_namespace_profile_wait {Type IO LastRead 8 FirstWrite 8}}
	p_anonymous_namespace_bank_access_0_s {
		writing {Type I LastRead 0 FirstWrite -1}
		word {Type I LastRead 0 FirstWrite -1}
		wa {Type I LastRead 0 FirstWrite -1}
		reading {Type I LastRead 0 FirstWrite -1}
		a0 {Type I LastRead 0 FirstWrite -1}
		a1 {Type I LastRead 0 FirstWrite -1}
		a2 {Type I LastRead 0 FirstWrite -1}
		a3 {Type I LastRead 0 FirstWrite -1}
		memory_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		memory_1_1_3 {Type IO LastRead -1 FirstWrite -1}}
	p_anonymous_namespace_bank_access_1_s {
		writing {Type I LastRead 0 FirstWrite -1}
		word {Type I LastRead 0 FirstWrite -1}
		wa {Type I LastRead 0 FirstWrite -1}
		reading {Type I LastRead 0 FirstWrite -1}
		a0 {Type I LastRead 0 FirstWrite -1}
		a1 {Type I LastRead 0 FirstWrite -1}
		a2 {Type I LastRead 0 FirstWrite -1}
		a3 {Type I LastRead 0 FirstWrite -1}
		memory_0_0 {Type IO LastRead -1 FirstWrite -1}
		memory_0_1 {Type IO LastRead -1 FirstWrite -1}
		memory_0_2 {Type IO LastRead -1 FirstWrite -1}
		memory_0_3 {Type IO LastRead -1 FirstWrite -1}
		memory_115_0 {Type IO LastRead -1 FirstWrite -1}
		memory_115_1 {Type IO LastRead -1 FirstWrite -1}
		memory_115_2 {Type IO LastRead -1 FirstWrite -1}
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}}
	p_anonymous_namespace_address_stage {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		ky {Type I LastRead 0 FirstWrite -1}
		kx {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}}
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
		enabled {Type I LastRead 0 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	batch_count { ap_fifo {  { batch_count_dout fifo_data 0 32 }  { batch_count_empty_n fifo_status 0 1 }  { batch_count_read fifo_update 1 1 } } }
	wide { ap_fifo {  { wide_dout fifo_data 0 64 }  { wide_empty_n fifo_status 0 1 }  { wide_read fifo_update 1 1 } } }
	input_r { ap_fifo {  { input_r_dout fifo_data 0 32 }  { input_r_empty_n fifo_status 0 1 }  { input_r_read fifo_update 1 1 } } }
	output_r { ap_fifo {  { output_r_dout fifo_data 0 32 }  { output_r_empty_n fifo_status 0 1 }  { output_r_read fifo_update 1 1 } } }
	skip { ap_fifo {  { skip_dout fifo_data 0 32 }  { skip_empty_n fifo_status 0 1 }  { skip_read fifo_update 1 1 } } }
	feature_read { m_axi {  { m_axi_feature_read_AWVALID VALID 1 1 }  { m_axi_feature_read_AWREADY READY 0 1 }  { m_axi_feature_read_AWADDR ADDR 1 64 }  { m_axi_feature_read_AWID ID 1 1 }  { m_axi_feature_read_AWLEN LEN 1 32 }  { m_axi_feature_read_AWSIZE SIZE 1 3 }  { m_axi_feature_read_AWBURST BURST 1 2 }  { m_axi_feature_read_AWLOCK LOCK 1 2 }  { m_axi_feature_read_AWCACHE CACHE 1 4 }  { m_axi_feature_read_AWPROT PROT 1 3 }  { m_axi_feature_read_AWQOS QOS 1 4 }  { m_axi_feature_read_AWREGION REGION 1 4 }  { m_axi_feature_read_AWUSER USER 1 1 }  { m_axi_feature_read_WVALID VALID 1 1 }  { m_axi_feature_read_WREADY READY 0 1 }  { m_axi_feature_read_WDATA DATA 1 64 }  { m_axi_feature_read_WSTRB STRB 1 8 }  { m_axi_feature_read_WLAST LAST 1 1 }  { m_axi_feature_read_WID ID 1 1 }  { m_axi_feature_read_WUSER USER 1 1 }  { m_axi_feature_read_ARVALID VALID 1 1 }  { m_axi_feature_read_ARREADY READY 0 1 }  { m_axi_feature_read_ARADDR ADDR 1 64 }  { m_axi_feature_read_ARID ID 1 1 }  { m_axi_feature_read_ARLEN LEN 1 32 }  { m_axi_feature_read_ARSIZE SIZE 1 3 }  { m_axi_feature_read_ARBURST BURST 1 2 }  { m_axi_feature_read_ARLOCK LOCK 1 2 }  { m_axi_feature_read_ARCACHE CACHE 1 4 }  { m_axi_feature_read_ARPROT PROT 1 3 }  { m_axi_feature_read_ARQOS QOS 1 4 }  { m_axi_feature_read_ARREGION REGION 1 4 }  { m_axi_feature_read_ARUSER USER 1 1 }  { m_axi_feature_read_RVALID VALID 0 1 }  { m_axi_feature_read_RREADY READY 1 1 }  { m_axi_feature_read_RDATA DATA 0 64 }  { m_axi_feature_read_RLAST LAST 0 1 }  { m_axi_feature_read_RID ID 0 1 }  { m_axi_feature_read_RUSER USER 0 1 }  { m_axi_feature_read_RRESP RESP 0 2 }  { m_axi_feature_read_BVALID VALID 0 1 }  { m_axi_feature_read_BREADY READY 1 1 }  { m_axi_feature_read_BRESP RESP 0 2 }  { m_axi_feature_read_BID ID 0 1 }  { m_axi_feature_read_BUSER USER 0 1 } } }
	feature_mem { m_axi {  { m_axi_feature_mem_AWVALID VALID 1 1 }  { m_axi_feature_mem_AWREADY READY 0 1 }  { m_axi_feature_mem_AWADDR ADDR 1 64 }  { m_axi_feature_mem_AWID ID 1 1 }  { m_axi_feature_mem_AWLEN LEN 1 32 }  { m_axi_feature_mem_AWSIZE SIZE 1 3 }  { m_axi_feature_mem_AWBURST BURST 1 2 }  { m_axi_feature_mem_AWLOCK LOCK 1 2 }  { m_axi_feature_mem_AWCACHE CACHE 1 4 }  { m_axi_feature_mem_AWPROT PROT 1 3 }  { m_axi_feature_mem_AWQOS QOS 1 4 }  { m_axi_feature_mem_AWREGION REGION 1 4 }  { m_axi_feature_mem_AWUSER USER 1 1 }  { m_axi_feature_mem_WVALID VALID 1 1 }  { m_axi_feature_mem_WREADY READY 0 1 }  { m_axi_feature_mem_WDATA DATA 1 64 }  { m_axi_feature_mem_WSTRB STRB 1 8 }  { m_axi_feature_mem_WLAST LAST 1 1 }  { m_axi_feature_mem_WID ID 1 1 }  { m_axi_feature_mem_WUSER USER 1 1 }  { m_axi_feature_mem_ARVALID VALID 1 1 }  { m_axi_feature_mem_ARREADY READY 0 1 }  { m_axi_feature_mem_ARADDR ADDR 1 64 }  { m_axi_feature_mem_ARID ID 1 1 }  { m_axi_feature_mem_ARLEN LEN 1 32 }  { m_axi_feature_mem_ARSIZE SIZE 1 3 }  { m_axi_feature_mem_ARBURST BURST 1 2 }  { m_axi_feature_mem_ARLOCK LOCK 1 2 }  { m_axi_feature_mem_ARCACHE CACHE 1 4 }  { m_axi_feature_mem_ARPROT PROT 1 3 }  { m_axi_feature_mem_ARQOS QOS 1 4 }  { m_axi_feature_mem_ARREGION REGION 1 4 }  { m_axi_feature_mem_ARUSER USER 1 1 }  { m_axi_feature_mem_RVALID VALID 0 1 }  { m_axi_feature_mem_RREADY READY 1 1 }  { m_axi_feature_mem_RDATA DATA 0 64 }  { m_axi_feature_mem_RLAST LAST 0 1 }  { m_axi_feature_mem_RID ID 0 1 }  { m_axi_feature_mem_RUSER USER 0 1 }  { m_axi_feature_mem_RRESP RESP 0 2 }  { m_axi_feature_mem_BVALID VALID 0 1 }  { m_axi_feature_mem_BREADY READY 1 1 }  { m_axi_feature_mem_BRESP RESP 0 2 }  { m_axi_feature_mem_BID ID 0 1 }  { m_axi_feature_mem_BUSER USER 0 1 } } }
	fr { ap_fifo {  { fr_dout fifo_data 0 64 }  { fr_empty_n fifo_status 0 1 }  { fr_read fifo_update 1 1 } } }
	fw { ap_fifo {  { fw_dout fifo_data 0 64 }  { fw_empty_n fifo_status 0 1 }  { fw_read fifo_update 1 1 } } }
	current_0_0 { ap_memory {  { current_0_0_address0 mem_address 1 11 }  { current_0_0_ce0 mem_ce 1 1 }  { current_0_0_q0 mem_dout 0 16 } } }
	current_0_1 { ap_memory {  { current_0_1_address0 mem_address 1 11 }  { current_0_1_ce0 mem_ce 1 1 }  { current_0_1_q0 mem_dout 0 16 } } }
	current_0_2 { ap_memory {  { current_0_2_address0 mem_address 1 11 }  { current_0_2_ce0 mem_ce 1 1 }  { current_0_2_q0 mem_dout 0 16 } } }
	current_0_3 { ap_memory {  { current_0_3_address0 mem_address 1 11 }  { current_0_3_ce0 mem_ce 1 1 }  { current_0_3_q0 mem_dout 0 16 } } }
	current_1_0 { ap_memory {  { current_1_0_address0 mem_address 1 11 }  { current_1_0_ce0 mem_ce 1 1 }  { current_1_0_q0 mem_dout 0 16 } } }
	current_1_1 { ap_memory {  { current_1_1_address0 mem_address 1 11 }  { current_1_1_ce0 mem_ce 1 1 }  { current_1_1_q0 mem_dout 0 16 } } }
	current_1_2 { ap_memory {  { current_1_2_address0 mem_address 1 11 }  { current_1_2_ce0 mem_ce 1 1 }  { current_1_2_q0 mem_dout 0 16 } } }
	current_1_3 { ap_memory {  { current_1_3_address0 mem_address 1 11 }  { current_1_3_ce0 mem_ce 1 1 }  { current_1_3_q0 mem_dout 0 16 } } }
	current_2_0 { ap_memory {  { current_2_0_address0 mem_address 1 11 }  { current_2_0_ce0 mem_ce 1 1 }  { current_2_0_q0 mem_dout 0 16 } } }
	current_2_1 { ap_memory {  { current_2_1_address0 mem_address 1 11 }  { current_2_1_ce0 mem_ce 1 1 }  { current_2_1_q0 mem_dout 0 16 } } }
	current_2_2 { ap_memory {  { current_2_2_address0 mem_address 1 11 }  { current_2_2_ce0 mem_ce 1 1 }  { current_2_2_q0 mem_dout 0 16 } } }
	current_2_3 { ap_memory {  { current_2_3_address0 mem_address 1 11 }  { current_2_3_ce0 mem_ce 1 1 }  { current_2_3_q0 mem_dout 0 16 } } }
	current_3_0 { ap_memory {  { current_3_0_address0 mem_address 1 11 }  { current_3_0_ce0 mem_ce 1 1 }  { current_3_0_q0 mem_dout 0 16 } } }
	current_3_1 { ap_memory {  { current_3_1_address0 mem_address 1 11 }  { current_3_1_ce0 mem_ce 1 1 }  { current_3_1_q0 mem_dout 0 16 } } }
	current_3_2 { ap_memory {  { current_3_2_address0 mem_address 1 11 }  { current_3_2_ce0 mem_ce 1 1 }  { current_3_2_q0 mem_dout 0 16 } } }
	current_3_3 { ap_memory {  { current_3_3_address0 mem_address 1 11 }  { current_3_3_ce0 mem_ce 1 1 }  { current_3_3_q0 mem_dout 0 16 } } }
	current_4_0 { ap_memory {  { current_4_0_address0 mem_address 1 11 }  { current_4_0_ce0 mem_ce 1 1 }  { current_4_0_q0 mem_dout 0 16 } } }
	current_4_1 { ap_memory {  { current_4_1_address0 mem_address 1 11 }  { current_4_1_ce0 mem_ce 1 1 }  { current_4_1_q0 mem_dout 0 16 } } }
	current_4_2 { ap_memory {  { current_4_2_address0 mem_address 1 11 }  { current_4_2_ce0 mem_ce 1 1 }  { current_4_2_q0 mem_dout 0 16 } } }
	current_4_3 { ap_memory {  { current_4_3_address0 mem_address 1 11 }  { current_4_3_ce0 mem_ce 1 1 }  { current_4_3_q0 mem_dout 0 16 } } }
	current_5_0 { ap_memory {  { current_5_0_address0 mem_address 1 11 }  { current_5_0_ce0 mem_ce 1 1 }  { current_5_0_q0 mem_dout 0 16 } } }
	current_5_1 { ap_memory {  { current_5_1_address0 mem_address 1 11 }  { current_5_1_ce0 mem_ce 1 1 }  { current_5_1_q0 mem_dout 0 16 } } }
	current_5_2 { ap_memory {  { current_5_2_address0 mem_address 1 11 }  { current_5_2_ce0 mem_ce 1 1 }  { current_5_2_q0 mem_dout 0 16 } } }
	current_5_3 { ap_memory {  { current_5_3_address0 mem_address 1 11 }  { current_5_3_ce0 mem_ce 1 1 }  { current_5_3_q0 mem_dout 0 16 } } }
	current_6_0 { ap_memory {  { current_6_0_address0 mem_address 1 11 }  { current_6_0_ce0 mem_ce 1 1 }  { current_6_0_q0 mem_dout 0 16 } } }
	current_6_1 { ap_memory {  { current_6_1_address0 mem_address 1 11 }  { current_6_1_ce0 mem_ce 1 1 }  { current_6_1_q0 mem_dout 0 16 } } }
	current_6_2 { ap_memory {  { current_6_2_address0 mem_address 1 11 }  { current_6_2_ce0 mem_ce 1 1 }  { current_6_2_q0 mem_dout 0 16 } } }
	current_6_3 { ap_memory {  { current_6_3_address0 mem_address 1 11 }  { current_6_3_ce0 mem_ce 1 1 }  { current_6_3_q0 mem_dout 0 16 } } }
	current_7_0 { ap_memory {  { current_7_0_address0 mem_address 1 11 }  { current_7_0_ce0 mem_ce 1 1 }  { current_7_0_q0 mem_dout 0 16 } } }
	current_7_1 { ap_memory {  { current_7_1_address0 mem_address 1 11 }  { current_7_1_ce0 mem_ce 1 1 }  { current_7_1_q0 mem_dout 0 16 } } }
	current_7_2 { ap_memory {  { current_7_2_address0 mem_address 1 11 }  { current_7_2_ce0 mem_ce 1 1 }  { current_7_2_q0 mem_dout 0 16 } } }
	current_7_3 { ap_memory {  { current_7_3_address0 mem_address 1 11 }  { current_7_3_ce0 mem_ce 1 1 }  { current_7_3_q0 mem_dout 0 16 } } }
	bias_0 { ap_fifo {  { bias_0_dout fifo_data 0 48 }  { bias_0_empty_n fifo_status 0 1 }  { bias_0_read fifo_update 1 1 } } }
	bias_1 { ap_fifo {  { bias_1_dout fifo_data 0 48 }  { bias_1_empty_n fifo_status 0 1 }  { bias_1_read fifo_update 1 1 } } }
	bias_2 { ap_fifo {  { bias_2_dout fifo_data 0 48 }  { bias_2_empty_n fifo_status 0 1 }  { bias_2_read fifo_update 1 1 } } }
	bias_3 { ap_fifo {  { bias_3_dout fifo_data 0 48 }  { bias_3_empty_n fifo_status 0 1 }  { bias_3_read fifo_update 1 1 } } }
	bias_4 { ap_fifo {  { bias_4_dout fifo_data 0 48 }  { bias_4_empty_n fifo_status 0 1 }  { bias_4_read fifo_update 1 1 } } }
	bias_5 { ap_fifo {  { bias_5_dout fifo_data 0 48 }  { bias_5_empty_n fifo_status 0 1 }  { bias_5_read fifo_update 1 1 } } }
	bias_6 { ap_fifo {  { bias_6_dout fifo_data 0 48 }  { bias_6_empty_n fifo_status 0 1 }  { bias_6_read fifo_update 1 1 } } }
	bias_7 { ap_fifo {  { bias_7_dout fifo_data 0 48 }  { bias_7_empty_n fifo_status 0 1 }  { bias_7_read fifo_update 1 1 } } }
	shifts_0 { ap_fifo {  { shifts_0_dout fifo_data 0 32 }  { shifts_0_empty_n fifo_status 0 1 }  { shifts_0_read fifo_update 1 1 } } }
	shifts_1 { ap_fifo {  { shifts_1_dout fifo_data 0 32 }  { shifts_1_empty_n fifo_status 0 1 }  { shifts_1_read fifo_update 1 1 } } }
	shifts_2 { ap_fifo {  { shifts_2_dout fifo_data 0 32 }  { shifts_2_empty_n fifo_status 0 1 }  { shifts_2_read fifo_update 1 1 } } }
	shifts_3 { ap_fifo {  { shifts_3_dout fifo_data 0 32 }  { shifts_3_empty_n fifo_status 0 1 }  { shifts_3_read fifo_update 1 1 } } }
	shifts_4 { ap_fifo {  { shifts_4_dout fifo_data 0 32 }  { shifts_4_empty_n fifo_status 0 1 }  { shifts_4_read fifo_update 1 1 } } }
	shifts_5 { ap_fifo {  { shifts_5_dout fifo_data 0 32 }  { shifts_5_empty_n fifo_status 0 1 }  { shifts_5_read fifo_update 1 1 } } }
	shifts_6 { ap_fifo {  { shifts_6_dout fifo_data 0 32 }  { shifts_6_empty_n fifo_status 0 1 }  { shifts_6_read fifo_update 1 1 } } }
	shifts_7 { ap_fifo {  { shifts_7_dout fifo_data 0 32 }  { shifts_7_empty_n fifo_status 0 1 }  { shifts_7_read fifo_update 1 1 } } }
	skipshift { ap_fifo {  { skipshift_dout fifo_data 0 32 }  { skipshift_empty_n fifo_status 0 1 }  { skipshift_read fifo_update 1 1 } } }
	ob { ap_fifo {  { ob_dout fifo_data 0 16 }  { ob_empty_n fifo_status 0 1 }  { ob_read fifo_update 1 1 } } }
	ci { ap_fifo {  { ci_dout fifo_data 0 10 }  { ci_empty_n fifo_status 0 1 }  { ci_read fifo_update 1 1 } } }
	h { ap_fifo {  { h_dout fifo_data 0 16 }  { h_empty_n fifo_status 0 1 }  { h_read fifo_update 1 1 } } }
	wi { ap_fifo {  { wi_dout fifo_data 0 16 }  { wi_empty_n fifo_status 0 1 }  { wi_read fifo_update 1 1 } } }
	k { ap_fifo {  { k_dout fifo_data 0 3 }  { k_empty_n fifo_status 0 1 }  { k_read fifo_update 1 1 } } }
	stride { ap_fifo {  { stride_dout fifo_data 0 2 }  { stride_empty_n fifo_status 0 1 }  { stride_read fifo_update 1 1 } } }
	pad { ap_fifo {  { pad_dout fifo_data 0 2 }  { pad_empty_n fifo_status 0 1 }  { pad_read fifo_update 1 1 } } }
	oh { ap_fifo {  { oh_dout fifo_data 0 16 }  { oh_empty_n fifo_status 0 1 }  { oh_read fifo_update 1 1 } } }
	ow { ap_fifo {  { ow_dout fifo_data 0 16 }  { ow_empty_n fifo_status 0 1 }  { ow_read fifo_update 1 1 } } }
	kind { ap_fifo {  { kind_dout fifo_data 0 3 }  { kind_empty_n fifo_status 0 1 }  { kind_read fifo_update 1 1 } } }
	p_anonymous_namespace_profile_ticks { ap_ovld {  { p_anonymous_namespace_profile_ticks_i in_data 0 64 }  { p_anonymous_namespace_profile_ticks_o out_data 1 64 }  { p_anonymous_namespace_profile_ticks_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_mac { ap_ovld {  { p_anonymous_namespace_profile_mac_i in_data 0 64 }  { p_anonymous_namespace_profile_mac_o out_data 1 64 }  { p_anonymous_namespace_profile_mac_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_wait { ap_ovld {  { p_anonymous_namespace_profile_wait_i in_data 0 64 }  { p_anonymous_namespace_profile_wait_o out_data 1 64 }  { p_anonymous_namespace_profile_wait_o_ap_vld out_vld 1 1 } } }
}
