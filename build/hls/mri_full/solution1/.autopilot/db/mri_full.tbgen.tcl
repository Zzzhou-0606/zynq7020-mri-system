set moduleName mri_full
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mri_full}
set C_modelType { int 32 }
set C_modelArgList {
	{ weights_mem int 64 regular {axi_master 0}  }
	{ feature_mem int 64 regular {axi_master 2}  }
	{ feature_read int 64 regular {axi_master 0}  }
	{ weights int 64 regular {axi_slave 0}  }
	{ biases int 64 regular {axi_slave 0}  }
	{ shifts int 64 regular {axi_slave 0}  }
	{ layers int 64 regular {axi_slave 0}  }
	{ features int 64 regular {axi_slave 0}  }
	{ wide int 64 regular {axi_slave 0}  }
	{ output_r int 64 regular {axi_slave 0}  }
	{ mode int 32 regular {axi_slave 0}  }
	{ batch_count int 32 regular {axi_slave 0}  }
	{ feature_input int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights_mem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "weights","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "weights","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "biases","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "biases","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "shifts","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "shifts","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "layers","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "layers","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "feature_mem", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "features","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "features","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "wide","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "wide","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "output","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "feature_read", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "feature_input","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "feature_input","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "weights", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":43}} , 
 	{ "Name" : "biases", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":44}, "offset_end" : {"in":55}} , 
 	{ "Name" : "shifts", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":67}} , 
 	{ "Name" : "layers", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":79}} , 
 	{ "Name" : "features", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":91}} , 
 	{ "Name" : "wide", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":92}, "offset_end" : {"in":103}} , 
 	{ "Name" : "output_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":115}} , 
 	{ "Name" : "mode", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "mode","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":116}, "offset_end" : {"in":123}} , 
 	{ "Name" : "batch_count", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "batch_count","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":124}, "offset_end" : {"in":131}} , 
 	{ "Name" : "feature_input", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_weights_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weights_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_weights_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weights_mem_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_weights_mem_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_feature_mem_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_feature_mem_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_feature_mem_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_feature_mem_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_feature_mem_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_feature_mem_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_feature_mem_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_feature_mem_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_feature_mem_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_feature_mem_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_feature_mem_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_feature_mem_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_feature_mem_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_feature_mem_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_feature_mem_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_feature_mem_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_feature_mem_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_feature_mem_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_feature_mem_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_feature_mem_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_feature_mem_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_feature_mem_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_feature_mem_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_feature_mem_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_feature_mem_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_feature_mem_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_feature_read_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_feature_read_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_feature_read_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_feature_read_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_feature_read_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_feature_read_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_feature_read_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_feature_read_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_feature_read_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_feature_read_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_feature_read_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_feature_read_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_feature_read_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_feature_read_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_feature_read_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_feature_read_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_feature_read_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_feature_read_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_feature_read_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_feature_read_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_feature_read_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_feature_read_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_feature_read_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_feature_read_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_feature_read_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_feature_read_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_feature_read_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_feature_read_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_feature_read_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_feature_read_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_feature_read_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_feature_read_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_feature_read_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_feature_read_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_feature_read_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_feature_read_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_feature_read_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_feature_read_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_feature_read_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_feature_read_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_feature_read_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_feature_read_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_feature_read_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_feature_read_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_feature_read_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"mri_full","role":"start","value":"0","valid_bit":"0"},{"name":"mri_full","role":"continue","value":"0","valid_bit":"4"},{"name":"mri_full","role":"auto_start","value":"0","valid_bit":"7"},{"name":"weights","role":"data","value":"32"},{"name":"biases","role":"data","value":"44"},{"name":"shifts","role":"data","value":"56"},{"name":"layers","role":"data","value":"68"},{"name":"features","role":"data","value":"80"},{"name":"wide","role":"data","value":"92"},{"name":"output_r","role":"data","value":"104"},{"name":"mode","role":"data","value":"116"},{"name":"batch_count","role":"data","value":"124"},{"name":"feature_input","role":"data","value":"136"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"mri_full","role":"start","value":"0","valid_bit":"0"},{"name":"mri_full","role":"done","value":"0","valid_bit":"1"},{"name":"mri_full","role":"idle","value":"0","valid_bit":"2"},{"name":"mri_full","role":"ready","value":"0","valid_bit":"3"},{"name":"mri_full","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_weights_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_weights_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_weights_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_weights_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWID" }} , 
 	{ "name": "m_axi_weights_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_mem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_weights_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_mem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_feature_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_feature_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_feature_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_feature_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWID" }} , 
 	{ "name": "m_axi_feature_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feature_mem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_feature_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feature_mem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_feature_read_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "AWVALID" }} , 
 	{ "name": "m_axi_feature_read_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "AWREADY" }} , 
 	{ "name": "m_axi_feature_read_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_read", "role": "AWADDR" }} , 
 	{ "name": "m_axi_feature_read_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "AWID" }} , 
 	{ "name": "m_axi_feature_read_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feature_read", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_feature_read_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feature_read", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_feature_read_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_read", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "509", "521"],
		"CDFG" : "mri_full",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_mem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "weights_mem"}]},
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "feature_mem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "feature_mem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "509", "SubInstance" : "grp_p_anonymous_namespace_maxpool_fu_1314", "Port" : "feature_mem"},
					{"ID" : "521", "SubInstance" : "grp_p_anonymous_namespace_sums_fu_1336", "Port" : "feature_mem"},
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "feature_mem"}]},
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "feature_read"}]},
			{"Name" : "weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases", "Type" : "None", "Direction" : "I"},
			{"Name" : "shifts", "Type" : "None", "Direction" : "I"},
			{"Name" : "layers", "Type" : "None", "Direction" : "I"},
			{"Name" : "features", "Type" : "None", "Direction" : "I"},
			{"Name" : "wide", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "batch_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_input", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "p_anonymous_namespace_profile_wait"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "co", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "cache"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_conv_fu_1218", "Port" : "memory_115_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.co_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_mem_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.feature_mem_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.feature_read_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_weight_offset_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_bias_offset_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_shift_offset_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_residual_shift_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_output_exp_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.metadata_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stats_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stats_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "502"],
		"CDFG" : "p_anonymous_namespace_conv",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weights_mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weights_mem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "weights_mem"},
					{"ID" : "502", "SubInstance" : "grp_p_anonymous_namespace_load_weights_fu_917", "Port" : "weights_mem"}]},
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "feature_mem"}]},
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "feature_read"}]},
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_input", "Type" : "None", "Direction" : "I"},
			{"Name" : "wide", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "skip", "Type" : "None", "Direction" : "I"},
			{"Name" : "ci", "Type" : "None", "Direction" : "I"},
			{"Name" : "hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "wi", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "pad", "Type" : "None", "Direction" : "I"},
			{"Name" : "kind", "Type" : "None", "Direction" : "I"},
			{"Name" : "batch_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "cache"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_p_anonymous_namespace_output_pair_fu_765", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_0_0_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_0_1_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_0_2_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_0_3_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_1_0_U", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_1_1_U", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_1_2_U", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_1_3_U", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_2_0_U", "Parent" : "14"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_2_1_U", "Parent" : "14"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_2_2_U", "Parent" : "14"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_2_3_U", "Parent" : "14"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_3_0_U", "Parent" : "14"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_3_1_U", "Parent" : "14"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_3_2_U", "Parent" : "14"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_3_3_U", "Parent" : "14"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_4_0_U", "Parent" : "14"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_4_1_U", "Parent" : "14"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_4_2_U", "Parent" : "14"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_4_3_U", "Parent" : "14"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_5_0_U", "Parent" : "14"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_5_1_U", "Parent" : "14"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_5_2_U", "Parent" : "14"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_5_3_U", "Parent" : "14"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_6_0_U", "Parent" : "14"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_6_1_U", "Parent" : "14"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_6_2_U", "Parent" : "14"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_6_3_U", "Parent" : "14"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_7_0_U", "Parent" : "14"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_7_1_U", "Parent" : "14"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_7_2_U", "Parent" : "14"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w0_7_3_U", "Parent" : "14"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_0_0_U", "Parent" : "14"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_0_1_U", "Parent" : "14"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_0_2_U", "Parent" : "14"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_0_3_U", "Parent" : "14"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_1_0_U", "Parent" : "14"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_1_1_U", "Parent" : "14"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_1_2_U", "Parent" : "14"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_1_3_U", "Parent" : "14"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_2_0_U", "Parent" : "14"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_2_1_U", "Parent" : "14"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_2_2_U", "Parent" : "14"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_2_3_U", "Parent" : "14"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_3_0_U", "Parent" : "14"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_3_1_U", "Parent" : "14"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_3_2_U", "Parent" : "14"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_3_3_U", "Parent" : "14"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_4_0_U", "Parent" : "14"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_4_1_U", "Parent" : "14"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_4_2_U", "Parent" : "14"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_4_3_U", "Parent" : "14"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_5_0_U", "Parent" : "14"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_5_1_U", "Parent" : "14"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_5_2_U", "Parent" : "14"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_5_3_U", "Parent" : "14"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_6_0_U", "Parent" : "14"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_6_1_U", "Parent" : "14"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_6_2_U", "Parent" : "14"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_6_3_U", "Parent" : "14"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_7_0_U", "Parent" : "14"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_7_1_U", "Parent" : "14"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_7_2_U", "Parent" : "14"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.w1_7_3_U", "Parent" : "14"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765", "Parent" : "14", "Child" : ["80", "81", "82", "90", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501"],
		"CDFG" : "p_anonymous_namespace_output_pair",
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
			{"ID" : "80", "Name" : "p_anonymous_namespace_output_pair_entry68_U0"},
			{"ID" : "82", "Name" : "p_anonymous_namespace_load_weights52_U0"},
			{"ID" : "90", "Name" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "82", "Name" : "p_anonymous_namespace_load_weights52_U0"},
			{"ID" : "90", "Name" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0"}],
		"Port" : [
			{"Name" : "weights_mem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "weights_mem"}]},
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "feature_read"}]},
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "feature_mem"}]},
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
			{"Name" : "next_0_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_0_0"}]},
			{"Name" : "next_0_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_0_1"}]},
			{"Name" : "next_0_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_0_2"}]},
			{"Name" : "next_0_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_0_3"}]},
			{"Name" : "next_1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_1_0"}]},
			{"Name" : "next_1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_1_1"}]},
			{"Name" : "next_1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_1_2"}]},
			{"Name" : "next_1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_1_3"}]},
			{"Name" : "next_2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_2_0"}]},
			{"Name" : "next_2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_2_1"}]},
			{"Name" : "next_2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_2_2"}]},
			{"Name" : "next_2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_2_3"}]},
			{"Name" : "next_3_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_3_0"}]},
			{"Name" : "next_3_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_3_1"}]},
			{"Name" : "next_3_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_3_2"}]},
			{"Name" : "next_3_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_3_3"}]},
			{"Name" : "next_4_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_4_0"}]},
			{"Name" : "next_4_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_4_1"}]},
			{"Name" : "next_4_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_4_2"}]},
			{"Name" : "next_4_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_4_3"}]},
			{"Name" : "next_5_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_5_0"}]},
			{"Name" : "next_5_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_5_1"}]},
			{"Name" : "next_5_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_5_2"}]},
			{"Name" : "next_5_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_5_3"}]},
			{"Name" : "next_6_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_6_0"}]},
			{"Name" : "next_6_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_6_1"}]},
			{"Name" : "next_6_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_6_2"}]},
			{"Name" : "next_6_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_6_3"}]},
			{"Name" : "next_7_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_7_0"}]},
			{"Name" : "next_7_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_7_1"}]},
			{"Name" : "next_7_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_7_2"}]},
			{"Name" : "next_7_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "p_anonymous_namespace_load_weights52_U0", "Port" : "next_7_3"}]},
			{"Name" : "current_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_0_0"}]},
			{"Name" : "current_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_0_1"}]},
			{"Name" : "current_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_0_2"}]},
			{"Name" : "current_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_0_3"}]},
			{"Name" : "current_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_1_0"}]},
			{"Name" : "current_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_1_1"}]},
			{"Name" : "current_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_1_2"}]},
			{"Name" : "current_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_1_3"}]},
			{"Name" : "current_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_2_0"}]},
			{"Name" : "current_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_2_1"}]},
			{"Name" : "current_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_2_2"}]},
			{"Name" : "current_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_2_3"}]},
			{"Name" : "current_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_3_0"}]},
			{"Name" : "current_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_3_1"}]},
			{"Name" : "current_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_3_2"}]},
			{"Name" : "current_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_3_3"}]},
			{"Name" : "current_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_4_0"}]},
			{"Name" : "current_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_4_1"}]},
			{"Name" : "current_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_4_2"}]},
			{"Name" : "current_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_4_3"}]},
			{"Name" : "current_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_5_0"}]},
			{"Name" : "current_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_5_1"}]},
			{"Name" : "current_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_5_2"}]},
			{"Name" : "current_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_5_3"}]},
			{"Name" : "current_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_6_0"}]},
			{"Name" : "current_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_6_1"}]},
			{"Name" : "current_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_6_2"}]},
			{"Name" : "current_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_6_3"}]},
			{"Name" : "current_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_7_0"}]},
			{"Name" : "current_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_7_1"}]},
			{"Name" : "current_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_7_2"}]},
			{"Name" : "current_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "current_7_3"}]},
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
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "cache"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0", "Parent" : "79",
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
			{"Name" : "w_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "459", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "w_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wbase_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "463", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wbase_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "466", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "co_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "471", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "batch_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_count_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Block_split5_proc_U0", "Parent" : "79",
		"CDFG" : "p_anonymous_namespace_output_pair_Block_split5_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "80",
		"StartFifo" : "start_for_p_anonymous_namespace_output_pair_Block_split5_proc_U0_U",
		"Port" : [
			{"Name" : "ob", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0", "Parent" : "79", "Child" : ["83", "84", "85", "86", "87", "88", "89"],
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
			{"Name" : "w", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "459", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "w_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wbase", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "463", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wbase_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "466", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "471", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "1"},
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
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.raw_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.mul_3ns_3ns_6_1_1_U128", "Parent" : "82"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.mul_2s_2s_2_1_1_U129", "Parent" : "82"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.mul_mul_10ns_6ns_16_4_1_U130", "Parent" : "82"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.mac_muladd_16ns_16ns_32ns_32_4_1_U131", "Parent" : "82"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.mac_muladd_16ns_3ns_32ns_32_4_1_U132", "Parent" : "82"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.mac_muladd_6ns_2ns_2ns_8_4_1_U133", "Parent" : "82"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0", "Parent" : "79", "Child" : ["91"],
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
			{"Name" : "batch_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "batch_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "feature_read"}]},
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "feature_mem"}]},
			{"Name" : "fr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fw", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fw_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "current_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_0"}]},
			{"Name" : "current_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_1"}]},
			{"Name" : "current_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_2"}]},
			{"Name" : "current_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_0_3"}]},
			{"Name" : "current_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_0"}]},
			{"Name" : "current_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_1"}]},
			{"Name" : "current_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_2"}]},
			{"Name" : "current_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_1_3"}]},
			{"Name" : "current_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_0"}]},
			{"Name" : "current_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_1"}]},
			{"Name" : "current_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_2"}]},
			{"Name" : "current_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_2_3"}]},
			{"Name" : "current_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_0"}]},
			{"Name" : "current_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_1"}]},
			{"Name" : "current_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_2"}]},
			{"Name" : "current_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_3_3"}]},
			{"Name" : "current_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_0"}]},
			{"Name" : "current_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_1"}]},
			{"Name" : "current_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_2"}]},
			{"Name" : "current_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_4_3"}]},
			{"Name" : "current_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_0"}]},
			{"Name" : "current_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_1"}]},
			{"Name" : "current_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_2"}]},
			{"Name" : "current_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_5_3"}]},
			{"Name" : "current_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_0"}]},
			{"Name" : "current_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_1"}]},
			{"Name" : "current_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_2"}]},
			{"Name" : "current_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_6_3"}]},
			{"Name" : "current_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_0"}]},
			{"Name" : "current_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_1"}]},
			{"Name" : "current_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_2"}]},
			{"Name" : "current_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "weights_7_3"}]},
			{"Name" : "bias_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "cache"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_p_anonymous_namespace_block_fu_473", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473", "Parent" : "90", "Child" : ["92", "93", "135", "136", "387", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458"],
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
			{"ID" : "92", "Name" : "p_anonymous_namespace_block_Block_split1_proc62_U0"},
			{"ID" : "93", "Name" : "p_anonymous_namespace_load_tiles_U0"},
			{"ID" : "136", "Name" : "p_anonymous_namespace_compute_tiles_U0"},
			{"ID" : "387", "Name" : "p_anonymous_namespace_store_tiles_U0"}],
		"OutputProcess" : [
			{"ID" : "136", "Name" : "p_anonymous_namespace_compute_tiles_U0"},
			{"ID" : "387", "Name" : "p_anonymous_namespace_store_tiles_U0"}],
		"Port" : [
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "p_anonymous_namespace_load_tiles_U0", "Port" : "feature_read"}]},
			{"Name" : "feature_mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "p_anonymous_namespace_store_tiles_U0", "Port" : "feature_mem"}]},
			{"Name" : "fr", "Type" : "None", "Direction" : "I"},
			{"Name" : "fw", "Type" : "None", "Direction" : "I"},
			{"Name" : "wide", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_0"}]},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_1"}]},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_2"}]},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_0_3"}]},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_0"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_1"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_2"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_1_3"}]},
			{"Name" : "weights_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_0"}]},
			{"Name" : "weights_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_1"}]},
			{"Name" : "weights_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_2"}]},
			{"Name" : "weights_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_2_3"}]},
			{"Name" : "weights_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_0"}]},
			{"Name" : "weights_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_1"}]},
			{"Name" : "weights_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_2"}]},
			{"Name" : "weights_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_3_3"}]},
			{"Name" : "weights_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_0"}]},
			{"Name" : "weights_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_1"}]},
			{"Name" : "weights_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_2"}]},
			{"Name" : "weights_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_4_3"}]},
			{"Name" : "weights_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_0"}]},
			{"Name" : "weights_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_1"}]},
			{"Name" : "weights_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_2"}]},
			{"Name" : "weights_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_5_3"}]},
			{"Name" : "weights_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_0"}]},
			{"Name" : "weights_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_1"}]},
			{"Name" : "weights_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_2"}]},
			{"Name" : "weights_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_6_3"}]},
			{"Name" : "weights_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_0"}]},
			{"Name" : "weights_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_1"}]},
			{"Name" : "weights_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_2"}]},
			{"Name" : "weights_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "weights_7_3"}]},
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
					{"ID" : "93", "SubInstance" : "p_anonymous_namespace_load_tiles_U0", "Port" : "cache"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "p_anonymous_namespace_compute_tiles_U0", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0", "Parent" : "91",
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
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "418", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "420", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "421", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "422", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "423", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "424", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "425", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "426", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "427", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "428", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "429", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "430", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "431", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "432", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "433", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "434", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "435", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "436", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "437", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "439", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "440", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "441", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "93", "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "444", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "445", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0", "Parent" : "91", "Child" : ["94", "95", "96", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134"],
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
					{"ID" : "96", "SubInstance" : "grp_p_anonymous_namespace_load_uncached_fu_569", "Port" : "feature_read"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "449", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pixels_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_p_anonymous_namespace_load_uncached_fu_569", "Port" : "pixels"}]},
			{"Name" : "fr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached", "Type" : "None", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "447", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "refresh", "Type" : "None", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "448", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "136", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cache", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.cache_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.row_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569", "Parent" : "93", "Child" : ["97", "103", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121"],
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
			{"ID" : "97", "Name" : "p_anonymous_namespace_read_fresh_U0"}],
		"OutputProcess" : [
			{"ID" : "103", "Name" : "p_anonymous_namespace_assemble_rows_U0"}],
		"Port" : [
			{"Name" : "feature_read", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "p_anonymous_namespace_read_fresh_U0", "Port" : "feature_read"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "p_anonymous_namespace_assemble_rows_U0", "Port" : "pixels"}]},
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
	{"ID" : "97", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0", "Parent" : "96", "Child" : ["98", "99", "100", "101", "102"],
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
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "112", "DependentChanDepth" : "512", "DependentChanType" : "0",
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
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "98", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mul_31s_16ns_32_2_1_U243", "Parent" : "97"},
	{"ID" : "99", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U244", "Parent" : "97"},
	{"ID" : "100", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mul_mul_16s_16s_16_4_1_U245", "Parent" : "97"},
	{"ID" : "101", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mul_mul_16s_16s_16_4_1_U246", "Parent" : "97"},
	{"ID" : "102", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.mac_muladd_14ns_16ns_16s_31_4_1_U247", "Parent" : "97"},
	{"ID" : "103", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0", "Parent" : "96", "Child" : ["104", "105", "106", "107", "108", "109", "110", "111"],
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
		"StartSource" : "97",
		"StartFifo" : "start_for_p_anonymous_namespace_assemble_rows_U0_U",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state18_pp0_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter7", "FromFinalOperation" : "ap_enable_operation_185", "FromFinalSV" : "17", "FromAddress" : "overlap_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state19_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_193", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter8_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_193", "ToFinalSV" : "18", "ToAddress" : "overlap_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_193", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter8_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_193", "FromFinalSV" : "18", "FromAddress" : "overlap_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state18_pp0_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter7", "ToFinalOperation" : "ap_enable_operation_185", "ToFinalSV" : "17", "ToAddress" : "overlap_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(F:/mri_fpga_delivery_20261025/src/fpga/pl/hls/cnn_v5/mri_full.cpp:123:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter6_stage0", "ap_enable_state18_pp0_iter7_stage0", "ap_enable_state19_pp0_iter8_stage0"]}],
		"Port" : [
			{"Name" : "fresh_words", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "112", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fresh_words_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pixels_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "h", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "h_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rw", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rw_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ph", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ph_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keep", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "keep_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "97", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "104", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.overlap_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_4ns_16ns_20_1_1_U272", "Parent" : "103"},
	{"ID" : "106", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_11s_4s_11_1_1_U273", "Parent" : "103"},
	{"ID" : "107", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_11s_4s_11_1_1_U274", "Parent" : "103"},
	{"ID" : "108", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_mul_9ns_20ns_34_4_1_U275", "Parent" : "103"},
	{"ID" : "109", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U276", "Parent" : "103"},
	{"ID" : "110", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_mul_11s_11s_11_4_1_U277", "Parent" : "103"},
	{"ID" : "111", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.mul_mul_11s_11s_11_4_1_U278", "Parent" : "103"},
	{"ID" : "112", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.fresh_words_U", "Parent" : "96"},
	{"ID" : "113", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.ci_c_U", "Parent" : "96"},
	{"ID" : "114", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.h_c_U", "Parent" : "96"},
	{"ID" : "115", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.rw_c_U", "Parent" : "96"},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.ph_c_U", "Parent" : "96"},
	{"ID" : "117", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.keep_c_U", "Parent" : "96"},
	{"ID" : "118", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.stride_c_U", "Parent" : "96"},
	{"ID" : "119", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.pad_c_U", "Parent" : "96"},
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.oh_c_U", "Parent" : "96"},
	{"ID" : "121", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.start_for_p_anonymous_namespace_assemble_rows_U0_U", "Parent" : "96"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_4ns_16ns_20_1_1_U316", "Parent" : "93"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_16s_8ns_16_4_1_U317", "Parent" : "93"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_9ns_16ns_30_4_1_U318", "Parent" : "93"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_16s_16s_16_4_1_U319", "Parent" : "93"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14ns_16ns_19_4_1_U320", "Parent" : "93"},
	{"ID" : "127", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U321", "Parent" : "93"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ama_addmuladd_19ns_17ns_16ns_30ns_32_4_1_U322", "Parent" : "93"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U323", "Parent" : "93"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_9ns_20ns_34_4_1_U324", "Parent" : "93"},
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mac_mul_sub_16s_2ns_2ns_16_4_1_U325", "Parent" : "93"},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U326", "Parent" : "93"},
	{"ID" : "133", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mul_mul_14s_14s_14_4_1_U327", "Parent" : "93"},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.mac_muladd_14s_14s_14ns_14_4_1_U328", "Parent" : "93"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0", "Parent" : "91",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "446", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0", "Parent" : "91", "Child" : ["137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201"],
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
			{"Name" : "pixels", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "449", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "pixels2"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "456", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "results"}]},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights"}]},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights1"}]},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights2"}]},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights3"}]},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights14"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights15"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights16"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights17"}]},
			{"Name" : "weights_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights28"}]},
			{"Name" : "weights_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights29"}]},
			{"Name" : "weights_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights210"}]},
			{"Name" : "weights_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights211"}]},
			{"Name" : "weights_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights312"}]},
			{"Name" : "weights_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights313"}]},
			{"Name" : "weights_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights314"}]},
			{"Name" : "weights_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights315"}]},
			{"Name" : "weights_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights4"}]},
			{"Name" : "weights_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights416"}]},
			{"Name" : "weights_4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights417"}]},
			{"Name" : "weights_4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights418"}]},
			{"Name" : "weights_5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights5"}]},
			{"Name" : "weights_5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights519"}]},
			{"Name" : "weights_5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights520"}]},
			{"Name" : "weights_5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights521"}]},
			{"Name" : "weights_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights6"}]},
			{"Name" : "weights_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights622"}]},
			{"Name" : "weights_6_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights623"}]},
			{"Name" : "weights_6_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights624"}]},
			{"Name" : "weights_7_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights7"}]},
			{"Name" : "weights_7_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights725"}]},
			{"Name" : "weights_7_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights726"}]},
			{"Name" : "weights_7_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "weights727"}]},
			{"Name" : "bias_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "422", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "423", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "424", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "425", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "426", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "427", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "428", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "429", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "None", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "None", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "93", "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "444", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "387", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_anonymous_namespace_row_pair_fu_591", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "137", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_0_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_1_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_2_U", "Parent" : "136"},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_0_3_U", "Parent" : "136"},
	{"ID" : "141", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_0_U", "Parent" : "136"},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_1_U", "Parent" : "136"},
	{"ID" : "143", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_2_U", "Parent" : "136"},
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_1_3_U", "Parent" : "136"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_0_U", "Parent" : "136"},
	{"ID" : "146", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_1_U", "Parent" : "136"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_2_U", "Parent" : "136"},
	{"ID" : "148", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_2_3_U", "Parent" : "136"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_0_U", "Parent" : "136"},
	{"ID" : "150", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_1_U", "Parent" : "136"},
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_2_U", "Parent" : "136"},
	{"ID" : "152", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_3_3_U", "Parent" : "136"},
	{"ID" : "153", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_0_U", "Parent" : "136"},
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_1_U", "Parent" : "136"},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_2_U", "Parent" : "136"},
	{"ID" : "156", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_4_3_U", "Parent" : "136"},
	{"ID" : "157", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_0_U", "Parent" : "136"},
	{"ID" : "158", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_1_U", "Parent" : "136"},
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_2_U", "Parent" : "136"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_5_3_U", "Parent" : "136"},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_0_U", "Parent" : "136"},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_1_U", "Parent" : "136"},
	{"ID" : "163", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_2_U", "Parent" : "136"},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_6_3_U", "Parent" : "136"},
	{"ID" : "165", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_0_U", "Parent" : "136"},
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_1_U", "Parent" : "136"},
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_2_U", "Parent" : "136"},
	{"ID" : "168", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a0_V_7_3_U", "Parent" : "136"},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_0_U", "Parent" : "136"},
	{"ID" : "170", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_1_U", "Parent" : "136"},
	{"ID" : "171", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_2_U", "Parent" : "136"},
	{"ID" : "172", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_0_3_U", "Parent" : "136"},
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_0_U", "Parent" : "136"},
	{"ID" : "174", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_1_U", "Parent" : "136"},
	{"ID" : "175", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_2_U", "Parent" : "136"},
	{"ID" : "176", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_1_3_U", "Parent" : "136"},
	{"ID" : "177", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_0_U", "Parent" : "136"},
	{"ID" : "178", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_1_U", "Parent" : "136"},
	{"ID" : "179", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_2_U", "Parent" : "136"},
	{"ID" : "180", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_2_3_U", "Parent" : "136"},
	{"ID" : "181", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_0_U", "Parent" : "136"},
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_1_U", "Parent" : "136"},
	{"ID" : "183", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_2_U", "Parent" : "136"},
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_3_3_U", "Parent" : "136"},
	{"ID" : "185", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_0_U", "Parent" : "136"},
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_1_U", "Parent" : "136"},
	{"ID" : "187", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_2_U", "Parent" : "136"},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_4_3_U", "Parent" : "136"},
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_0_U", "Parent" : "136"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_1_U", "Parent" : "136"},
	{"ID" : "191", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_2_U", "Parent" : "136"},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_5_3_U", "Parent" : "136"},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_0_U", "Parent" : "136"},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_1_U", "Parent" : "136"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_2_U", "Parent" : "136"},
	{"ID" : "196", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_6_3_U", "Parent" : "136"},
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_0_U", "Parent" : "136"},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_1_U", "Parent" : "136"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_2_U", "Parent" : "136"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.a1_V_7_3_U", "Parent" : "136"},
	{"ID" : "201", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591", "Parent" : "136", "Child" : ["202", "203", "359", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386"],
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
			{"ID" : "202", "Name" : "p_anonymous_namespace_row_pair_entry58_U0"},
			{"ID" : "203", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "359", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"OutputProcess" : [
			{"ID" : "203", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "359", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"Port" : [
			{"Name" : "pixels2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "pixels2"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "results"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights"}]},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights1"}]},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights2"}]},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights3"}]},
			{"Name" : "weights14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights14"}]},
			{"Name" : "weights15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights15"}]},
			{"Name" : "weights16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights16"}]},
			{"Name" : "weights17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights17"}]},
			{"Name" : "weights28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights28"}]},
			{"Name" : "weights29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights29"}]},
			{"Name" : "weights210", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights210"}]},
			{"Name" : "weights211", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights211"}]},
			{"Name" : "weights312", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights312"}]},
			{"Name" : "weights313", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights313"}]},
			{"Name" : "weights314", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights314"}]},
			{"Name" : "weights315", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights315"}]},
			{"Name" : "weights4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights4"}]},
			{"Name" : "weights416", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights416"}]},
			{"Name" : "weights417", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights417"}]},
			{"Name" : "weights418", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights418"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights5"}]},
			{"Name" : "weights519", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights519"}]},
			{"Name" : "weights520", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights520"}]},
			{"Name" : "weights521", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights521"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights6"}]},
			{"Name" : "weights622", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights622"}]},
			{"Name" : "weights623", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights623"}]},
			{"Name" : "weights624", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights624"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights7"}]},
			{"Name" : "weights725", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights725"}]},
			{"Name" : "weights726", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights726"}]},
			{"Name" : "weights727", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights727"}]},
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
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc"}]},
			{"Name" : "current28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc28"}]},
			{"Name" : "current29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc29"}]},
			{"Name" : "current30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc30"}]},
			{"Name" : "current15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc15"}]},
			{"Name" : "current1531", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1531"}]},
			{"Name" : "current1532", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1532"}]},
			{"Name" : "current1533", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1533"}]},
			{"Name" : "current16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc16"}]},
			{"Name" : "current1634", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1634"}]},
			{"Name" : "current1635", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1635"}]},
			{"Name" : "current1636", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1636"}]},
			{"Name" : "current17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc17"}]},
			{"Name" : "current1737", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1737"}]},
			{"Name" : "current1738", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1738"}]},
			{"Name" : "current1739", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1739"}]},
			{"Name" : "current18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc18"}]},
			{"Name" : "current1840", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1840"}]},
			{"Name" : "current1841", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1841"}]},
			{"Name" : "current1842", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1842"}]},
			{"Name" : "current19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc19"}]},
			{"Name" : "current1943", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1943"}]},
			{"Name" : "current1944", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1944"}]},
			{"Name" : "current1945", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1945"}]},
			{"Name" : "current20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc20"}]},
			{"Name" : "current2046", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2046"}]},
			{"Name" : "current2047", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2047"}]},
			{"Name" : "current2048", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2048"}]},
			{"Name" : "current21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc21"}]},
			{"Name" : "current2149", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2149"}]},
			{"Name" : "current2150", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2150"}]},
			{"Name" : "current2151", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2151"}]},
			{"Name" : "previous", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc"}]},
			{"Name" : "previous52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc1"}]},
			{"Name" : "previous53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc2"}]},
			{"Name" : "previous54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc3"}]},
			{"Name" : "previous22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc14"}]},
			{"Name" : "previous2255", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc15"}]},
			{"Name" : "previous2256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc16"}]},
			{"Name" : "previous2257", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc17"}]},
			{"Name" : "previous23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc28"}]},
			{"Name" : "previous2358", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc29"}]},
			{"Name" : "previous2359", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc210"}]},
			{"Name" : "previous2360", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc211"}]},
			{"Name" : "previous24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc312"}]},
			{"Name" : "previous2461", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc313"}]},
			{"Name" : "previous2462", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc314"}]},
			{"Name" : "previous2463", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc315"}]},
			{"Name" : "previous25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc4"}]},
			{"Name" : "previous2564", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc416"}]},
			{"Name" : "previous2565", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc417"}]},
			{"Name" : "previous2566", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc418"}]},
			{"Name" : "previous26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc5"}]},
			{"Name" : "previous2667", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc519"}]},
			{"Name" : "previous2668", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc520"}]},
			{"Name" : "previous2669", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc521"}]},
			{"Name" : "previous27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc6"}]},
			{"Name" : "previous2770", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc622"}]},
			{"Name" : "previous2771", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc623"}]},
			{"Name" : "previous2772", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc624"}]},
			{"Name" : "previous28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc7"}]},
			{"Name" : "previous2873", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc725"}]},
			{"Name" : "previous2874", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc726"}]},
			{"Name" : "previous2875", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "359", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc727"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0", "Parent" : "201",
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
			{"Name" : "bias_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "computing_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "computing_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "emitting_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "emitting_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "previous_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "359", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "previous_rows_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "203", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0", "Parent" : "201", "Child" : ["204", "213", "222", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358"],
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
			{"Name" : "bias", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "2",
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
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "204", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Parent" : "203", "Child" : ["205", "206", "207", "208", "209", "210", "211", "212"],
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
	{"ID" : "205", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_0_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_1_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_2_U", "Parent" : "204"},
	{"ID" : "208", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_3_U", "Parent" : "204"},
	{"ID" : "209", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_0_U", "Parent" : "204"},
	{"ID" : "210", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_1_U", "Parent" : "204"},
	{"ID" : "211", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_2_U", "Parent" : "204"},
	{"ID" : "212", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_3_U", "Parent" : "204"},
	{"ID" : "213", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Parent" : "203", "Child" : ["214", "215", "216", "217", "218", "219", "220", "221"],
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
	{"ID" : "214", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_0_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_1_U", "Parent" : "213"},
	{"ID" : "216", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_2_U", "Parent" : "213"},
	{"ID" : "217", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_3_U", "Parent" : "213"},
	{"ID" : "218", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_0_U", "Parent" : "213"},
	{"ID" : "219", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_1_U", "Parent" : "213"},
	{"ID" : "220", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_2_U", "Parent" : "213"},
	{"ID" : "221", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_3_U", "Parent" : "213"},
	{"ID" : "222", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685", "Parent" : "203", "Child" : ["223", "224", "225", "226", "227"],
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
	{"ID" : "223", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_11s_11ns_11_3_1_U402", "Parent" : "222"},
	{"ID" : "224", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_16s_16ns_16_3_1_U403", "Parent" : "222"},
	{"ID" : "225", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_1ns_2ns_16ns_16_3_1_U404", "Parent" : "222"},
	{"ID" : "226", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U405", "Parent" : "222"},
	{"ID" : "227", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U406", "Parent" : "222"},
	{"ID" : "228", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_4ns_16ns_20_1_1_U426", "Parent" : "203"},
	{"ID" : "229", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_3ns_3ns_6_1_1_U427", "Parent" : "203"},
	{"ID" : "230", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_15ns_6ns_20_4_1_U428", "Parent" : "203"},
	{"ID" : "231", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U429", "Parent" : "203"},
	{"ID" : "232", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U430", "Parent" : "203"},
	{"ID" : "233", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U431", "Parent" : "203"},
	{"ID" : "234", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U432", "Parent" : "203"},
	{"ID" : "235", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U433", "Parent" : "203"},
	{"ID" : "236", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U434", "Parent" : "203"},
	{"ID" : "237", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U435", "Parent" : "203"},
	{"ID" : "238", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U436", "Parent" : "203"},
	{"ID" : "239", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U437", "Parent" : "203"},
	{"ID" : "240", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U438", "Parent" : "203"},
	{"ID" : "241", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U439", "Parent" : "203"},
	{"ID" : "242", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U440", "Parent" : "203"},
	{"ID" : "243", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U441", "Parent" : "203"},
	{"ID" : "244", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U442", "Parent" : "203"},
	{"ID" : "245", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U443", "Parent" : "203"},
	{"ID" : "246", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U444", "Parent" : "203"},
	{"ID" : "247", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U445", "Parent" : "203"},
	{"ID" : "248", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U446", "Parent" : "203"},
	{"ID" : "249", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U447", "Parent" : "203"},
	{"ID" : "250", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U448", "Parent" : "203"},
	{"ID" : "251", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U449", "Parent" : "203"},
	{"ID" : "252", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U450", "Parent" : "203"},
	{"ID" : "253", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U451", "Parent" : "203"},
	{"ID" : "254", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U452", "Parent" : "203"},
	{"ID" : "255", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U453", "Parent" : "203"},
	{"ID" : "256", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U454", "Parent" : "203"},
	{"ID" : "257", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U455", "Parent" : "203"},
	{"ID" : "258", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U456", "Parent" : "203"},
	{"ID" : "259", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U457", "Parent" : "203"},
	{"ID" : "260", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U458", "Parent" : "203"},
	{"ID" : "261", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U459", "Parent" : "203"},
	{"ID" : "262", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U460", "Parent" : "203"},
	{"ID" : "263", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U461", "Parent" : "203"},
	{"ID" : "264", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U462", "Parent" : "203"},
	{"ID" : "265", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U463", "Parent" : "203"},
	{"ID" : "266", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U464", "Parent" : "203"},
	{"ID" : "267", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U465", "Parent" : "203"},
	{"ID" : "268", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U466", "Parent" : "203"},
	{"ID" : "269", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U467", "Parent" : "203"},
	{"ID" : "270", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U468", "Parent" : "203"},
	{"ID" : "271", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U469", "Parent" : "203"},
	{"ID" : "272", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U470", "Parent" : "203"},
	{"ID" : "273", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U471", "Parent" : "203"},
	{"ID" : "274", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U472", "Parent" : "203"},
	{"ID" : "275", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U473", "Parent" : "203"},
	{"ID" : "276", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U474", "Parent" : "203"},
	{"ID" : "277", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U475", "Parent" : "203"},
	{"ID" : "278", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U476", "Parent" : "203"},
	{"ID" : "279", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U477", "Parent" : "203"},
	{"ID" : "280", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U478", "Parent" : "203"},
	{"ID" : "281", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U479", "Parent" : "203"},
	{"ID" : "282", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U480", "Parent" : "203"},
	{"ID" : "283", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U481", "Parent" : "203"},
	{"ID" : "284", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U482", "Parent" : "203"},
	{"ID" : "285", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U483", "Parent" : "203"},
	{"ID" : "286", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U484", "Parent" : "203"},
	{"ID" : "287", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U485", "Parent" : "203"},
	{"ID" : "288", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U486", "Parent" : "203"},
	{"ID" : "289", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U487", "Parent" : "203"},
	{"ID" : "290", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U488", "Parent" : "203"},
	{"ID" : "291", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U489", "Parent" : "203"},
	{"ID" : "292", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U490", "Parent" : "203"},
	{"ID" : "293", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U491", "Parent" : "203"},
	{"ID" : "294", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U492", "Parent" : "203"},
	{"ID" : "295", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U493", "Parent" : "203"},
	{"ID" : "296", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U494", "Parent" : "203"},
	{"ID" : "297", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U495", "Parent" : "203"},
	{"ID" : "298", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U496", "Parent" : "203"},
	{"ID" : "299", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U497", "Parent" : "203"},
	{"ID" : "300", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U498", "Parent" : "203"},
	{"ID" : "301", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U499", "Parent" : "203"},
	{"ID" : "302", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U500", "Parent" : "203"},
	{"ID" : "303", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U501", "Parent" : "203"},
	{"ID" : "304", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U502", "Parent" : "203"},
	{"ID" : "305", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U503", "Parent" : "203"},
	{"ID" : "306", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U504", "Parent" : "203"},
	{"ID" : "307", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U505", "Parent" : "203"},
	{"ID" : "308", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U506", "Parent" : "203"},
	{"ID" : "309", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U507", "Parent" : "203"},
	{"ID" : "310", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U508", "Parent" : "203"},
	{"ID" : "311", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U509", "Parent" : "203"},
	{"ID" : "312", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U510", "Parent" : "203"},
	{"ID" : "313", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U511", "Parent" : "203"},
	{"ID" : "314", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U512", "Parent" : "203"},
	{"ID" : "315", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U513", "Parent" : "203"},
	{"ID" : "316", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U514", "Parent" : "203"},
	{"ID" : "317", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U515", "Parent" : "203"},
	{"ID" : "318", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U516", "Parent" : "203"},
	{"ID" : "319", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U517", "Parent" : "203"},
	{"ID" : "320", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U518", "Parent" : "203"},
	{"ID" : "321", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U519", "Parent" : "203"},
	{"ID" : "322", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U520", "Parent" : "203"},
	{"ID" : "323", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U521", "Parent" : "203"},
	{"ID" : "324", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U522", "Parent" : "203"},
	{"ID" : "325", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U523", "Parent" : "203"},
	{"ID" : "326", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U524", "Parent" : "203"},
	{"ID" : "327", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U525", "Parent" : "203"},
	{"ID" : "328", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U526", "Parent" : "203"},
	{"ID" : "329", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U527", "Parent" : "203"},
	{"ID" : "330", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U528", "Parent" : "203"},
	{"ID" : "331", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U529", "Parent" : "203"},
	{"ID" : "332", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U530", "Parent" : "203"},
	{"ID" : "333", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U531", "Parent" : "203"},
	{"ID" : "334", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U532", "Parent" : "203"},
	{"ID" : "335", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U533", "Parent" : "203"},
	{"ID" : "336", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U534", "Parent" : "203"},
	{"ID" : "337", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U535", "Parent" : "203"},
	{"ID" : "338", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U536", "Parent" : "203"},
	{"ID" : "339", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U537", "Parent" : "203"},
	{"ID" : "340", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U538", "Parent" : "203"},
	{"ID" : "341", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U539", "Parent" : "203"},
	{"ID" : "342", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U540", "Parent" : "203"},
	{"ID" : "343", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U541", "Parent" : "203"},
	{"ID" : "344", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U542", "Parent" : "203"},
	{"ID" : "345", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U543", "Parent" : "203"},
	{"ID" : "346", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U544", "Parent" : "203"},
	{"ID" : "347", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U545", "Parent" : "203"},
	{"ID" : "348", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U546", "Parent" : "203"},
	{"ID" : "349", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U547", "Parent" : "203"},
	{"ID" : "350", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U548", "Parent" : "203"},
	{"ID" : "351", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U549", "Parent" : "203"},
	{"ID" : "352", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U550", "Parent" : "203"},
	{"ID" : "353", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U551", "Parent" : "203"},
	{"ID" : "354", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U552", "Parent" : "203"},
	{"ID" : "355", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U553", "Parent" : "203"},
	{"ID" : "356", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U554", "Parent" : "203"},
	{"ID" : "357", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U555", "Parent" : "203"},
	{"ID" : "358", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U556", "Parent" : "203"},
	{"ID" : "359", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0", "Parent" : "201", "Child" : ["360", "361", "362", "363", "364", "365", "366", "367", "368"],
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
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "202", "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "enabled_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "360", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U645", "Parent" : "359"},
	{"ID" : "361", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U646", "Parent" : "359"},
	{"ID" : "362", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U647", "Parent" : "359"},
	{"ID" : "363", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U648", "Parent" : "359"},
	{"ID" : "364", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U649", "Parent" : "359"},
	{"ID" : "365", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U650", "Parent" : "359"},
	{"ID" : "366", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U651", "Parent" : "359"},
	{"ID" : "367", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U652", "Parent" : "359"},
	{"ID" : "368", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.mul_mul_16ns_16ns_32_4_1_U653", "Parent" : "359"},
	{"ID" : "369", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias_c_U", "Parent" : "201"},
	{"ID" : "370", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias8_c_U", "Parent" : "201"},
	{"ID" : "371", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias9_c_U", "Parent" : "201"},
	{"ID" : "372", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias10_c_U", "Parent" : "201"},
	{"ID" : "373", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias11_c_U", "Parent" : "201"},
	{"ID" : "374", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias12_c_U", "Parent" : "201"},
	{"ID" : "375", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias13_c_U", "Parent" : "201"},
	{"ID" : "376", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.bias14_c_U", "Parent" : "201"},
	{"ID" : "377", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ci_c_U", "Parent" : "201"},
	{"ID" : "378", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.wi_c_U", "Parent" : "201"},
	{"ID" : "379", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.k_c_U", "Parent" : "201"},
	{"ID" : "380", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.stride_c_U", "Parent" : "201"},
	{"ID" : "381", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.pad_c_U", "Parent" : "201"},
	{"ID" : "382", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ow_c_U", "Parent" : "201"},
	{"ID" : "383", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ow_c1_U", "Parent" : "201"},
	{"ID" : "384", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.computing_c_U", "Parent" : "201"},
	{"ID" : "385", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.emitting_offset_c_U", "Parent" : "201"},
	{"ID" : "386", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.previous_rows_c_U", "Parent" : "201"},
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0", "Parent" : "91", "Child" : ["388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409"],
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
			{"Name" : "results", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "456", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "results_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "420", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wide", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "421", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wide_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "430", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "431", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "432", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "433", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "434", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "435", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "436", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shifts_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "437", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shifts_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "439", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skip", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "440", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skip_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "skipshift", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "441", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "skipshift_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ob", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "418", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ob_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "oh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "oh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "136", "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kind", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "445", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "kind_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "388", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.packed_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.skipbuf_U", "Parent" : "387"},
	{"ID" : "390", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_0_U", "Parent" : "387"},
	{"ID" : "391", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_1_U", "Parent" : "387"},
	{"ID" : "392", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_2_U", "Parent" : "387"},
	{"ID" : "393", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.widebuf_3_U", "Parent" : "387"},
	{"ID" : "394", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_32s_16ns_32_2_1_U883", "Parent" : "387"},
	{"ID" : "395", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_30ns_16ns_32_2_1_U884", "Parent" : "387"},
	{"ID" : "396", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_30s_2ns_30_2_1_U885", "Parent" : "387"},
	{"ID" : "397", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_32s_3ns_32_2_1_U886", "Parent" : "387"},
	{"ID" : "398", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_8s_8s_8_1_1_U887", "Parent" : "387"},
	{"ID" : "399", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_8s_8s_8_1_1_U888", "Parent" : "387"},
	{"ID" : "400", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_32s_3ns_32_2_1_U889", "Parent" : "387"},
	{"ID" : "401", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mux_42_64_1_1_U890", "Parent" : "387"},
	{"ID" : "402", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_14ns_16ns_30_4_1_U891", "Parent" : "387"},
	{"ID" : "403", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U892", "Parent" : "387"},
	{"ID" : "404", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U893", "Parent" : "387"},
	{"ID" : "405", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U894", "Parent" : "387"},
	{"ID" : "406", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U895", "Parent" : "387"},
	{"ID" : "407", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U896", "Parent" : "387"},
	{"ID" : "408", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U897", "Parent" : "387"},
	{"ID" : "409", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.mul_mul_16ns_16ns_32_4_1_U898", "Parent" : "387"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.k_c_U", "Parent" : "91"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.stride_c_U", "Parent" : "91"},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.stride_c11_U", "Parent" : "91"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.pad_c_U", "Parent" : "91"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.h_c_U", "Parent" : "91"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.wi_c_U", "Parent" : "91"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.wi_c12_U", "Parent" : "91"},
	{"ID" : "417", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ci_c_U", "Parent" : "91"},
	{"ID" : "418", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ob_c_U", "Parent" : "91"},
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.fr_c_U", "Parent" : "91"},
	{"ID" : "420", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.fw_c_U", "Parent" : "91"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.wide_c_U", "Parent" : "91"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_0_c_U", "Parent" : "91"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_1_c_U", "Parent" : "91"},
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_2_c_U", "Parent" : "91"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_3_c_U", "Parent" : "91"},
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_4_c_U", "Parent" : "91"},
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_5_c_U", "Parent" : "91"},
	{"ID" : "428", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_6_c_U", "Parent" : "91"},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.bias_7_c_U", "Parent" : "91"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_0_c_U", "Parent" : "91"},
	{"ID" : "431", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_1_c_U", "Parent" : "91"},
	{"ID" : "432", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_2_c_U", "Parent" : "91"},
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_3_c_U", "Parent" : "91"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_4_c_U", "Parent" : "91"},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_5_c_U", "Parent" : "91"},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_6_c_U", "Parent" : "91"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.shifts_7_c_U", "Parent" : "91"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.input_c_U", "Parent" : "91"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.output_c_U", "Parent" : "91"},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.skip_c_U", "Parent" : "91"},
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.skipshift_c_U", "Parent" : "91"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.oh_c_U", "Parent" : "91"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ow_c_U", "Parent" : "91"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ow_c13_U", "Parent" : "91"},
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.kind_c_U", "Parent" : "91"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.compact_loc_channel_U", "Parent" : "91"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_loc_channel_U", "Parent" : "91"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.icmp_ln412_6_loc_channel_U", "Parent" : "91"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.pixels_U", "Parent" : "91"},
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ci_c14_U", "Parent" : "91"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.k_c15_U", "Parent" : "91"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.pad_c16_U", "Parent" : "91"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.oh_c17_U", "Parent" : "91"},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.select_ln413_loc_channel_U", "Parent" : "91"},
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.select_ln413_1_loc_channel_U", "Parent" : "91"},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.results_U", "Parent" : "91"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.oh_c18_U", "Parent" : "91"},
	{"ID" : "458", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ow_c19_U", "Parent" : "91"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.w_c_U", "Parent" : "79"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.fr_c_U", "Parent" : "79"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.fw_c_U", "Parent" : "79"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.wide_c_U", "Parent" : "79"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.wbase_c_U", "Parent" : "79"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ob_c_U", "Parent" : "79"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ob_c10_U", "Parent" : "79"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ci_c_U", "Parent" : "79"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ci_c11_U", "Parent" : "79"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.h_c_U", "Parent" : "79"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.wi_c_U", "Parent" : "79"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.co_c_U", "Parent" : "79"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.k_c_U", "Parent" : "79"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.k_c12_U", "Parent" : "79"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.stride_c_U", "Parent" : "79"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.pad_c_U", "Parent" : "79"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.oh_c_U", "Parent" : "79"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ow_c_U", "Parent" : "79"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.input_c_U", "Parent" : "79"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.output_c_U", "Parent" : "79"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.skip_c_U", "Parent" : "79"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.skipshift_c_U", "Parent" : "79"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.kind_c_U", "Parent" : "79"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.batch_count_c_U", "Parent" : "79"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_0_c_U", "Parent" : "79"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_1_c_U", "Parent" : "79"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_2_c_U", "Parent" : "79"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_3_c_U", "Parent" : "79"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_4_c_U", "Parent" : "79"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_5_c_U", "Parent" : "79"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_6_c_U", "Parent" : "79"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.bias_7_c_U", "Parent" : "79"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_0_c_U", "Parent" : "79"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_1_c_U", "Parent" : "79"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_2_c_U", "Parent" : "79"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_3_c_U", "Parent" : "79"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_4_c_U", "Parent" : "79"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_5_c_U", "Parent" : "79"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_6_c_U", "Parent" : "79"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.shifts_7_c_U", "Parent" : "79"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.add_ln419_1_loc_channel_U", "Parent" : "79"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.icmp_ln419_loc_channel_U", "Parent" : "79"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.start_for_p_anonymous_namespace_output_pair_Block_split5_proc_U0_U", "Parent" : "79"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_load_weights_fu_917", "Parent" : "14", "Child" : ["503", "504", "505", "506", "507", "508"],
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
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_load_weights_fu_917.raw_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_load_weights_fu_917.mul_3ns_3ns_6_1_1_U1", "Parent" : "502"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_load_weights_fu_917.mul_2s_2s_2_1_1_U2", "Parent" : "502"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_load_weights_fu_917.mul_mul_10ns_6ns_16_4_1_U3", "Parent" : "502"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_load_weights_fu_917.mac_muladd_16ns_3ns_32ns_32_4_1_U4", "Parent" : "502"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_load_weights_fu_917.mac_muladd_6ns_2ns_2ns_8_4_1_U5", "Parent" : "502"},
	{"ID" : "509", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314", "Parent" : "0", "Child" : ["510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520"],
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
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.rows_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.packed_U", "Parent" : "509"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mul_2ns_2ns_4_1_1_U1295", "Parent" : "509"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mul_30ns_16ns_32_2_1_U1296", "Parent" : "509"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mul_9s_9s_9_1_1_U1297", "Parent" : "509"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mul_mul_9ns_16ns_30_4_1_U1298", "Parent" : "509"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mul_mul_14ns_8ns_22_4_1_U1299", "Parent" : "509"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mac_muladd_14ns_16ns_16ns_30_4_1_U1300", "Parent" : "509"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mul_mul_17s_9ns_26_4_1_U1301", "Parent" : "509"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.ama_addmuladd_22ns_15ns_9ns_30ns_32_4_1_U1302", "Parent" : "509"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_maxpool_fu_1314.mul_mul_17s_9ns_26_4_1_U1303", "Parent" : "509"},
	{"ID" : "521", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_sums_fu_1336", "Parent" : "0", "Child" : ["522", "523", "524"],
		"CDFG" : "p_anonymous_namespace_sums",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3265", "EstimateLatencyMax" : "16897",
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
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_sums_fu_1336.tile_U", "Parent" : "521"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_sums_fu_1336.mux_42_32_1_1_U1320", "Parent" : "521"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_sums_fu_1336.mux_42_32_1_1_U1321", "Parent" : "521"}]}


set ArgLastReadFirstWriteLatency {
	mri_full {
		weights_mem {Type I LastRead 25 FirstWrite -1}
		feature_mem {Type IO LastRead 33 FirstWrite 16}
		feature_read {Type I LastRead 25 FirstWrite -1}
		weights {Type I LastRead 0 FirstWrite -1}
		biases {Type I LastRead 0 FirstWrite -1}
		shifts {Type I LastRead 0 FirstWrite -1}
		layers {Type I LastRead 0 FirstWrite -1}
		features {Type I LastRead 0 FirstWrite -1}
		wide {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		mode {Type I LastRead 0 FirstWrite -1}
		batch_count {Type I LastRead 0 FirstWrite -1}
		feature_input {Type I LastRead 0 FirstWrite -1}
		p_anonymous_namespace_profile_wait {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_mac {Type IO LastRead -1 FirstWrite -1}
		p_anonymous_namespace_profile_ticks {Type IO LastRead -1 FirstWrite -1}
		co {Type I LastRead -1 FirstWrite -1}
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
		memory_115_3 {Type IO LastRead -1 FirstWrite -1}}
	p_anonymous_namespace_conv {
		weights_mem {Type I LastRead 20 FirstWrite -1}
		feature_mem {Type IO LastRead 33 FirstWrite 27}
		feature_read {Type I LastRead 25 FirstWrite -1}
		w {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		s {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		f {Type I LastRead 1 FirstWrite -1}
		feature_input {Type I LastRead 1 FirstWrite -1}
		wide {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 1 FirstWrite -1}
		output_r {Type I LastRead 1 FirstWrite -1}
		skip {Type I LastRead 1 FirstWrite -1}
		ci {Type I LastRead 1 FirstWrite -1}
		hi {Type I LastRead 0 FirstWrite -1}
		wi {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 1 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 1 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}
		kind {Type I LastRead 1 FirstWrite -1}
		batch_count {Type I LastRead 1 FirstWrite -1}
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
	p_anonymous_namespace_output_pair {
		weights_mem {Type I LastRead 20 FirstWrite -1}
		feature_read {Type I LastRead 25 FirstWrite -1}
		feature_mem {Type IO LastRead 33 FirstWrite 27}
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
		next_7_3 {Type O LastRead -1 FirstWrite 21}
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
		shifts_7_out {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_output_pair_Block_split5_proc {
		ob {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}}
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
		next_7_3 {Type O LastRead -1 FirstWrite 21}}
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
		kind {Type I LastRead 0 FirstWrite -1}}
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
		bank727 {Type O LastRead -1 FirstWrite 17}}
	p_anonymous_namespace_maxpool {
		feature_mem {Type IO LastRead 23 FirstWrite 24}
		f {Type I LastRead 3 FirstWrite -1}
		input_r {Type I LastRead 3 FirstWrite -1}
		output_r {Type I LastRead 3 FirstWrite -1}
		channels {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		pad {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_sums {
		feature_mem {Type IO LastRead 19 FirstWrite 17}
		f {Type I LastRead 0 FirstWrite -1}
		base_r {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		mode {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	weights_mem { m_axi {  { m_axi_weights_mem_AWVALID VALID 1 1 }  { m_axi_weights_mem_AWREADY READY 0 1 }  { m_axi_weights_mem_AWADDR ADDR 1 64 }  { m_axi_weights_mem_AWID ID 1 1 }  { m_axi_weights_mem_AWLEN LEN 1 8 }  { m_axi_weights_mem_AWSIZE SIZE 1 3 }  { m_axi_weights_mem_AWBURST BURST 1 2 }  { m_axi_weights_mem_AWLOCK LOCK 1 2 }  { m_axi_weights_mem_AWCACHE CACHE 1 4 }  { m_axi_weights_mem_AWPROT PROT 1 3 }  { m_axi_weights_mem_AWQOS QOS 1 4 }  { m_axi_weights_mem_AWREGION REGION 1 4 }  { m_axi_weights_mem_AWUSER USER 1 1 }  { m_axi_weights_mem_WVALID VALID 1 1 }  { m_axi_weights_mem_WREADY READY 0 1 }  { m_axi_weights_mem_WDATA DATA 1 64 }  { m_axi_weights_mem_WSTRB STRB 1 8 }  { m_axi_weights_mem_WLAST LAST 1 1 }  { m_axi_weights_mem_WID ID 1 1 }  { m_axi_weights_mem_WUSER USER 1 1 }  { m_axi_weights_mem_ARVALID VALID 1 1 }  { m_axi_weights_mem_ARREADY READY 0 1 }  { m_axi_weights_mem_ARADDR ADDR 1 64 }  { m_axi_weights_mem_ARID ID 1 1 }  { m_axi_weights_mem_ARLEN LEN 1 8 }  { m_axi_weights_mem_ARSIZE SIZE 1 3 }  { m_axi_weights_mem_ARBURST BURST 1 2 }  { m_axi_weights_mem_ARLOCK LOCK 1 2 }  { m_axi_weights_mem_ARCACHE CACHE 1 4 }  { m_axi_weights_mem_ARPROT PROT 1 3 }  { m_axi_weights_mem_ARQOS QOS 1 4 }  { m_axi_weights_mem_ARREGION REGION 1 4 }  { m_axi_weights_mem_ARUSER USER 1 1 }  { m_axi_weights_mem_RVALID VALID 0 1 }  { m_axi_weights_mem_RREADY READY 1 1 }  { m_axi_weights_mem_RDATA DATA 0 64 }  { m_axi_weights_mem_RLAST LAST 0 1 }  { m_axi_weights_mem_RID ID 0 1 }  { m_axi_weights_mem_RUSER USER 0 1 }  { m_axi_weights_mem_RRESP RESP 0 2 }  { m_axi_weights_mem_BVALID VALID 0 1 }  { m_axi_weights_mem_BREADY READY 1 1 }  { m_axi_weights_mem_BRESP RESP 0 2 }  { m_axi_weights_mem_BID ID 0 1 }  { m_axi_weights_mem_BUSER USER 0 1 } } }
	feature_mem { m_axi {  { m_axi_feature_mem_AWVALID VALID 1 1 }  { m_axi_feature_mem_AWREADY READY 0 1 }  { m_axi_feature_mem_AWADDR ADDR 1 64 }  { m_axi_feature_mem_AWID ID 1 1 }  { m_axi_feature_mem_AWLEN LEN 1 8 }  { m_axi_feature_mem_AWSIZE SIZE 1 3 }  { m_axi_feature_mem_AWBURST BURST 1 2 }  { m_axi_feature_mem_AWLOCK LOCK 1 2 }  { m_axi_feature_mem_AWCACHE CACHE 1 4 }  { m_axi_feature_mem_AWPROT PROT 1 3 }  { m_axi_feature_mem_AWQOS QOS 1 4 }  { m_axi_feature_mem_AWREGION REGION 1 4 }  { m_axi_feature_mem_AWUSER USER 1 1 }  { m_axi_feature_mem_WVALID VALID 1 1 }  { m_axi_feature_mem_WREADY READY 0 1 }  { m_axi_feature_mem_WDATA DATA 1 64 }  { m_axi_feature_mem_WSTRB STRB 1 8 }  { m_axi_feature_mem_WLAST LAST 1 1 }  { m_axi_feature_mem_WID ID 1 1 }  { m_axi_feature_mem_WUSER USER 1 1 }  { m_axi_feature_mem_ARVALID VALID 1 1 }  { m_axi_feature_mem_ARREADY READY 0 1 }  { m_axi_feature_mem_ARADDR ADDR 1 64 }  { m_axi_feature_mem_ARID ID 1 1 }  { m_axi_feature_mem_ARLEN LEN 1 8 }  { m_axi_feature_mem_ARSIZE SIZE 1 3 }  { m_axi_feature_mem_ARBURST BURST 1 2 }  { m_axi_feature_mem_ARLOCK LOCK 1 2 }  { m_axi_feature_mem_ARCACHE CACHE 1 4 }  { m_axi_feature_mem_ARPROT PROT 1 3 }  { m_axi_feature_mem_ARQOS QOS 1 4 }  { m_axi_feature_mem_ARREGION REGION 1 4 }  { m_axi_feature_mem_ARUSER USER 1 1 }  { m_axi_feature_mem_RVALID VALID 0 1 }  { m_axi_feature_mem_RREADY READY 1 1 }  { m_axi_feature_mem_RDATA DATA 0 64 }  { m_axi_feature_mem_RLAST LAST 0 1 }  { m_axi_feature_mem_RID ID 0 1 }  { m_axi_feature_mem_RUSER USER 0 1 }  { m_axi_feature_mem_RRESP RESP 0 2 }  { m_axi_feature_mem_BVALID VALID 0 1 }  { m_axi_feature_mem_BREADY READY 1 1 }  { m_axi_feature_mem_BRESP RESP 0 2 }  { m_axi_feature_mem_BID ID 0 1 }  { m_axi_feature_mem_BUSER USER 0 1 } } }
	feature_read { m_axi {  { m_axi_feature_read_AWVALID VALID 1 1 }  { m_axi_feature_read_AWREADY READY 0 1 }  { m_axi_feature_read_AWADDR ADDR 1 64 }  { m_axi_feature_read_AWID ID 1 1 }  { m_axi_feature_read_AWLEN LEN 1 8 }  { m_axi_feature_read_AWSIZE SIZE 1 3 }  { m_axi_feature_read_AWBURST BURST 1 2 }  { m_axi_feature_read_AWLOCK LOCK 1 2 }  { m_axi_feature_read_AWCACHE CACHE 1 4 }  { m_axi_feature_read_AWPROT PROT 1 3 }  { m_axi_feature_read_AWQOS QOS 1 4 }  { m_axi_feature_read_AWREGION REGION 1 4 }  { m_axi_feature_read_AWUSER USER 1 1 }  { m_axi_feature_read_WVALID VALID 1 1 }  { m_axi_feature_read_WREADY READY 0 1 }  { m_axi_feature_read_WDATA DATA 1 64 }  { m_axi_feature_read_WSTRB STRB 1 8 }  { m_axi_feature_read_WLAST LAST 1 1 }  { m_axi_feature_read_WID ID 1 1 }  { m_axi_feature_read_WUSER USER 1 1 }  { m_axi_feature_read_ARVALID VALID 1 1 }  { m_axi_feature_read_ARREADY READY 0 1 }  { m_axi_feature_read_ARADDR ADDR 1 64 }  { m_axi_feature_read_ARID ID 1 1 }  { m_axi_feature_read_ARLEN LEN 1 8 }  { m_axi_feature_read_ARSIZE SIZE 1 3 }  { m_axi_feature_read_ARBURST BURST 1 2 }  { m_axi_feature_read_ARLOCK LOCK 1 2 }  { m_axi_feature_read_ARCACHE CACHE 1 4 }  { m_axi_feature_read_ARPROT PROT 1 3 }  { m_axi_feature_read_ARQOS QOS 1 4 }  { m_axi_feature_read_ARREGION REGION 1 4 }  { m_axi_feature_read_ARUSER USER 1 1 }  { m_axi_feature_read_RVALID VALID 0 1 }  { m_axi_feature_read_RREADY READY 1 1 }  { m_axi_feature_read_RDATA DATA 0 64 }  { m_axi_feature_read_RLAST LAST 0 1 }  { m_axi_feature_read_RID ID 0 1 }  { m_axi_feature_read_RUSER USER 0 1 }  { m_axi_feature_read_RRESP RESP 0 2 }  { m_axi_feature_read_BVALID VALID 0 1 }  { m_axi_feature_read_BREADY READY 1 1 }  { m_axi_feature_read_BRESP RESP 0 2 }  { m_axi_feature_read_BID ID 0 1 }  { m_axi_feature_read_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ weights_mem { NUM_READ_OUTSTANDING 4 NUM_WRITE_OUTSTANDING 2 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 } } \
	{ feature_mem { NUM_READ_OUTSTANDING 2 NUM_WRITE_OUTSTANDING 2 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 32 } } \
	{ feature_read { NUM_READ_OUTSTANDING 4 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ weights_mem 1 }
	{ feature_mem 1 }
	{ feature_read 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ weights_mem 1 }
	{ feature_mem 1 }
	{ feature_read 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
