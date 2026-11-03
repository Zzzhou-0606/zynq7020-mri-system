set moduleName p_anonymous_namespace_row_pair
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
set C_modelName {(anonymous namespace)row_pair}
set C_modelType { void 0 }
set C_modelArgList {
	{ pixels2 int 64 regular {fifo 0 volatile }  }
	{ results int 256 regular {fifo 1 volatile }  }
	{ weights int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights1 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights2 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights3 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights14 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights15 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights16 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights17 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights28 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights29 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights210 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights211 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights312 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights313 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights314 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights315 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights4 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights416 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights417 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights418 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights5 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights519 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights520 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights521 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights6 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights622 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights623 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights624 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights7 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights725 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights726 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ weights727 int 16 regular {array 1152 { 1 3 } 1 1 }  }
	{ p_read int 48 regular  }
	{ p_read1 int 48 regular  }
	{ p_read2 int 48 regular  }
	{ p_read3 int 48 regular  }
	{ p_read4 int 48 regular  }
	{ p_read5 int 48 regular  }
	{ p_read6 int 48 regular  }
	{ p_read7 int 48 regular  }
	{ ci uint 10 regular  }
	{ wi uint 16 regular  }
	{ k uint 3 regular  }
	{ stride uint 2 regular  }
	{ pad uint 2 regular  }
	{ ow uint 16 regular  }
	{ computing uint 1 regular  }
	{ emitting_offset uint 1 regular  }
	{ previous_rows uint 16 regular  }
	{ current int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current28 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current29 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current30 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current15 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1531 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1532 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1533 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current16 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1634 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1635 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1636 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current17 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1737 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1738 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1739 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current18 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1840 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1841 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1842 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current19 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1943 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1944 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current1945 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current20 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current2046 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current2047 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current2048 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current21 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current2149 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current2150 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ current2151 int 48 regular {array 64 { 1 0 } 1 1 }  }
	{ previous int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous52 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous53 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous54 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous22 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2255 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2256 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2257 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous23 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2358 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2359 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2360 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous24 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2461 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2462 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2463 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous25 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2564 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2565 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2566 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous26 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2667 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2668 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2669 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous27 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2770 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2771 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2772 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous28 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2873 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2874 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ previous2875 int 48 regular {array 64 { 1 3 } 1 1 }  }
	{ p_anonymous_namespace_profile_ticks int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_mac int 64 regular {pointer 2} {global 2}  }
	{ p_anonymous_namespace_profile_wait int 64 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixels2", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "results", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights16", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights17", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights28", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights29", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights210", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights211", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights312", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights313", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights314", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights315", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights416", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights417", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights418", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights519", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights520", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights521", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights622", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights623", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights624", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights725", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights726", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights727", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "ci", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "wi", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "pad", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ow", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "computing", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "emitting_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "previous_rows", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "current", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current28", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current29", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current30", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current15", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1531", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1532", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1533", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current16", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1634", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1635", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1636", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current17", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1737", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1738", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1739", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current18", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1840", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1841", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1842", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current19", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1943", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1944", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current1945", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current20", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current2046", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current2047", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current2048", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current21", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current2149", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current2150", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "current2151", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "previous", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous52", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous53", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous54", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous22", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2255", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2256", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2257", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous23", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2358", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2359", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2360", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous24", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2461", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2462", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2463", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous25", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2564", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2565", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2566", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous26", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2667", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2668", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2669", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous27", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2770", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2771", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2772", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous28", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2873", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2874", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "previous2875", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "p_anonymous_namespace_profile_ticks", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_mac", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "p_anonymous_namespace_profile_wait", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 1019
set portList { 
	{ pixels2_dout sc_in sc_lv 64 signal 0 } 
	{ pixels2_empty_n sc_in sc_logic 1 signal 0 } 
	{ pixels2_read sc_out sc_logic 1 signal 0 } 
	{ results_din sc_out sc_lv 256 signal 1 } 
	{ results_full_n sc_in sc_logic 1 signal 1 } 
	{ results_write sc_out sc_logic 1 signal 1 } 
	{ weights_address0 sc_out sc_lv 11 signal 2 } 
	{ weights_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_d0 sc_out sc_lv 16 signal 2 } 
	{ weights_q0 sc_in sc_lv 16 signal 2 } 
	{ weights_we0 sc_out sc_logic 1 signal 2 } 
	{ weights_address1 sc_out sc_lv 11 signal 2 } 
	{ weights_ce1 sc_out sc_logic 1 signal 2 } 
	{ weights_d1 sc_out sc_lv 16 signal 2 } 
	{ weights_q1 sc_in sc_lv 16 signal 2 } 
	{ weights_we1 sc_out sc_logic 1 signal 2 } 
	{ weights1_address0 sc_out sc_lv 11 signal 3 } 
	{ weights1_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights1_d0 sc_out sc_lv 16 signal 3 } 
	{ weights1_q0 sc_in sc_lv 16 signal 3 } 
	{ weights1_we0 sc_out sc_logic 1 signal 3 } 
	{ weights1_address1 sc_out sc_lv 11 signal 3 } 
	{ weights1_ce1 sc_out sc_logic 1 signal 3 } 
	{ weights1_d1 sc_out sc_lv 16 signal 3 } 
	{ weights1_q1 sc_in sc_lv 16 signal 3 } 
	{ weights1_we1 sc_out sc_logic 1 signal 3 } 
	{ weights2_address0 sc_out sc_lv 11 signal 4 } 
	{ weights2_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights2_d0 sc_out sc_lv 16 signal 4 } 
	{ weights2_q0 sc_in sc_lv 16 signal 4 } 
	{ weights2_we0 sc_out sc_logic 1 signal 4 } 
	{ weights2_address1 sc_out sc_lv 11 signal 4 } 
	{ weights2_ce1 sc_out sc_logic 1 signal 4 } 
	{ weights2_d1 sc_out sc_lv 16 signal 4 } 
	{ weights2_q1 sc_in sc_lv 16 signal 4 } 
	{ weights2_we1 sc_out sc_logic 1 signal 4 } 
	{ weights3_address0 sc_out sc_lv 11 signal 5 } 
	{ weights3_ce0 sc_out sc_logic 1 signal 5 } 
	{ weights3_d0 sc_out sc_lv 16 signal 5 } 
	{ weights3_q0 sc_in sc_lv 16 signal 5 } 
	{ weights3_we0 sc_out sc_logic 1 signal 5 } 
	{ weights3_address1 sc_out sc_lv 11 signal 5 } 
	{ weights3_ce1 sc_out sc_logic 1 signal 5 } 
	{ weights3_d1 sc_out sc_lv 16 signal 5 } 
	{ weights3_q1 sc_in sc_lv 16 signal 5 } 
	{ weights3_we1 sc_out sc_logic 1 signal 5 } 
	{ weights14_address0 sc_out sc_lv 11 signal 6 } 
	{ weights14_ce0 sc_out sc_logic 1 signal 6 } 
	{ weights14_d0 sc_out sc_lv 16 signal 6 } 
	{ weights14_q0 sc_in sc_lv 16 signal 6 } 
	{ weights14_we0 sc_out sc_logic 1 signal 6 } 
	{ weights14_address1 sc_out sc_lv 11 signal 6 } 
	{ weights14_ce1 sc_out sc_logic 1 signal 6 } 
	{ weights14_d1 sc_out sc_lv 16 signal 6 } 
	{ weights14_q1 sc_in sc_lv 16 signal 6 } 
	{ weights14_we1 sc_out sc_logic 1 signal 6 } 
	{ weights15_address0 sc_out sc_lv 11 signal 7 } 
	{ weights15_ce0 sc_out sc_logic 1 signal 7 } 
	{ weights15_d0 sc_out sc_lv 16 signal 7 } 
	{ weights15_q0 sc_in sc_lv 16 signal 7 } 
	{ weights15_we0 sc_out sc_logic 1 signal 7 } 
	{ weights15_address1 sc_out sc_lv 11 signal 7 } 
	{ weights15_ce1 sc_out sc_logic 1 signal 7 } 
	{ weights15_d1 sc_out sc_lv 16 signal 7 } 
	{ weights15_q1 sc_in sc_lv 16 signal 7 } 
	{ weights15_we1 sc_out sc_logic 1 signal 7 } 
	{ weights16_address0 sc_out sc_lv 11 signal 8 } 
	{ weights16_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights16_d0 sc_out sc_lv 16 signal 8 } 
	{ weights16_q0 sc_in sc_lv 16 signal 8 } 
	{ weights16_we0 sc_out sc_logic 1 signal 8 } 
	{ weights16_address1 sc_out sc_lv 11 signal 8 } 
	{ weights16_ce1 sc_out sc_logic 1 signal 8 } 
	{ weights16_d1 sc_out sc_lv 16 signal 8 } 
	{ weights16_q1 sc_in sc_lv 16 signal 8 } 
	{ weights16_we1 sc_out sc_logic 1 signal 8 } 
	{ weights17_address0 sc_out sc_lv 11 signal 9 } 
	{ weights17_ce0 sc_out sc_logic 1 signal 9 } 
	{ weights17_d0 sc_out sc_lv 16 signal 9 } 
	{ weights17_q0 sc_in sc_lv 16 signal 9 } 
	{ weights17_we0 sc_out sc_logic 1 signal 9 } 
	{ weights17_address1 sc_out sc_lv 11 signal 9 } 
	{ weights17_ce1 sc_out sc_logic 1 signal 9 } 
	{ weights17_d1 sc_out sc_lv 16 signal 9 } 
	{ weights17_q1 sc_in sc_lv 16 signal 9 } 
	{ weights17_we1 sc_out sc_logic 1 signal 9 } 
	{ weights28_address0 sc_out sc_lv 11 signal 10 } 
	{ weights28_ce0 sc_out sc_logic 1 signal 10 } 
	{ weights28_d0 sc_out sc_lv 16 signal 10 } 
	{ weights28_q0 sc_in sc_lv 16 signal 10 } 
	{ weights28_we0 sc_out sc_logic 1 signal 10 } 
	{ weights28_address1 sc_out sc_lv 11 signal 10 } 
	{ weights28_ce1 sc_out sc_logic 1 signal 10 } 
	{ weights28_d1 sc_out sc_lv 16 signal 10 } 
	{ weights28_q1 sc_in sc_lv 16 signal 10 } 
	{ weights28_we1 sc_out sc_logic 1 signal 10 } 
	{ weights29_address0 sc_out sc_lv 11 signal 11 } 
	{ weights29_ce0 sc_out sc_logic 1 signal 11 } 
	{ weights29_d0 sc_out sc_lv 16 signal 11 } 
	{ weights29_q0 sc_in sc_lv 16 signal 11 } 
	{ weights29_we0 sc_out sc_logic 1 signal 11 } 
	{ weights29_address1 sc_out sc_lv 11 signal 11 } 
	{ weights29_ce1 sc_out sc_logic 1 signal 11 } 
	{ weights29_d1 sc_out sc_lv 16 signal 11 } 
	{ weights29_q1 sc_in sc_lv 16 signal 11 } 
	{ weights29_we1 sc_out sc_logic 1 signal 11 } 
	{ weights210_address0 sc_out sc_lv 11 signal 12 } 
	{ weights210_ce0 sc_out sc_logic 1 signal 12 } 
	{ weights210_d0 sc_out sc_lv 16 signal 12 } 
	{ weights210_q0 sc_in sc_lv 16 signal 12 } 
	{ weights210_we0 sc_out sc_logic 1 signal 12 } 
	{ weights210_address1 sc_out sc_lv 11 signal 12 } 
	{ weights210_ce1 sc_out sc_logic 1 signal 12 } 
	{ weights210_d1 sc_out sc_lv 16 signal 12 } 
	{ weights210_q1 sc_in sc_lv 16 signal 12 } 
	{ weights210_we1 sc_out sc_logic 1 signal 12 } 
	{ weights211_address0 sc_out sc_lv 11 signal 13 } 
	{ weights211_ce0 sc_out sc_logic 1 signal 13 } 
	{ weights211_d0 sc_out sc_lv 16 signal 13 } 
	{ weights211_q0 sc_in sc_lv 16 signal 13 } 
	{ weights211_we0 sc_out sc_logic 1 signal 13 } 
	{ weights211_address1 sc_out sc_lv 11 signal 13 } 
	{ weights211_ce1 sc_out sc_logic 1 signal 13 } 
	{ weights211_d1 sc_out sc_lv 16 signal 13 } 
	{ weights211_q1 sc_in sc_lv 16 signal 13 } 
	{ weights211_we1 sc_out sc_logic 1 signal 13 } 
	{ weights312_address0 sc_out sc_lv 11 signal 14 } 
	{ weights312_ce0 sc_out sc_logic 1 signal 14 } 
	{ weights312_d0 sc_out sc_lv 16 signal 14 } 
	{ weights312_q0 sc_in sc_lv 16 signal 14 } 
	{ weights312_we0 sc_out sc_logic 1 signal 14 } 
	{ weights312_address1 sc_out sc_lv 11 signal 14 } 
	{ weights312_ce1 sc_out sc_logic 1 signal 14 } 
	{ weights312_d1 sc_out sc_lv 16 signal 14 } 
	{ weights312_q1 sc_in sc_lv 16 signal 14 } 
	{ weights312_we1 sc_out sc_logic 1 signal 14 } 
	{ weights313_address0 sc_out sc_lv 11 signal 15 } 
	{ weights313_ce0 sc_out sc_logic 1 signal 15 } 
	{ weights313_d0 sc_out sc_lv 16 signal 15 } 
	{ weights313_q0 sc_in sc_lv 16 signal 15 } 
	{ weights313_we0 sc_out sc_logic 1 signal 15 } 
	{ weights313_address1 sc_out sc_lv 11 signal 15 } 
	{ weights313_ce1 sc_out sc_logic 1 signal 15 } 
	{ weights313_d1 sc_out sc_lv 16 signal 15 } 
	{ weights313_q1 sc_in sc_lv 16 signal 15 } 
	{ weights313_we1 sc_out sc_logic 1 signal 15 } 
	{ weights314_address0 sc_out sc_lv 11 signal 16 } 
	{ weights314_ce0 sc_out sc_logic 1 signal 16 } 
	{ weights314_d0 sc_out sc_lv 16 signal 16 } 
	{ weights314_q0 sc_in sc_lv 16 signal 16 } 
	{ weights314_we0 sc_out sc_logic 1 signal 16 } 
	{ weights314_address1 sc_out sc_lv 11 signal 16 } 
	{ weights314_ce1 sc_out sc_logic 1 signal 16 } 
	{ weights314_d1 sc_out sc_lv 16 signal 16 } 
	{ weights314_q1 sc_in sc_lv 16 signal 16 } 
	{ weights314_we1 sc_out sc_logic 1 signal 16 } 
	{ weights315_address0 sc_out sc_lv 11 signal 17 } 
	{ weights315_ce0 sc_out sc_logic 1 signal 17 } 
	{ weights315_d0 sc_out sc_lv 16 signal 17 } 
	{ weights315_q0 sc_in sc_lv 16 signal 17 } 
	{ weights315_we0 sc_out sc_logic 1 signal 17 } 
	{ weights315_address1 sc_out sc_lv 11 signal 17 } 
	{ weights315_ce1 sc_out sc_logic 1 signal 17 } 
	{ weights315_d1 sc_out sc_lv 16 signal 17 } 
	{ weights315_q1 sc_in sc_lv 16 signal 17 } 
	{ weights315_we1 sc_out sc_logic 1 signal 17 } 
	{ weights4_address0 sc_out sc_lv 11 signal 18 } 
	{ weights4_ce0 sc_out sc_logic 1 signal 18 } 
	{ weights4_d0 sc_out sc_lv 16 signal 18 } 
	{ weights4_q0 sc_in sc_lv 16 signal 18 } 
	{ weights4_we0 sc_out sc_logic 1 signal 18 } 
	{ weights4_address1 sc_out sc_lv 11 signal 18 } 
	{ weights4_ce1 sc_out sc_logic 1 signal 18 } 
	{ weights4_d1 sc_out sc_lv 16 signal 18 } 
	{ weights4_q1 sc_in sc_lv 16 signal 18 } 
	{ weights4_we1 sc_out sc_logic 1 signal 18 } 
	{ weights416_address0 sc_out sc_lv 11 signal 19 } 
	{ weights416_ce0 sc_out sc_logic 1 signal 19 } 
	{ weights416_d0 sc_out sc_lv 16 signal 19 } 
	{ weights416_q0 sc_in sc_lv 16 signal 19 } 
	{ weights416_we0 sc_out sc_logic 1 signal 19 } 
	{ weights416_address1 sc_out sc_lv 11 signal 19 } 
	{ weights416_ce1 sc_out sc_logic 1 signal 19 } 
	{ weights416_d1 sc_out sc_lv 16 signal 19 } 
	{ weights416_q1 sc_in sc_lv 16 signal 19 } 
	{ weights416_we1 sc_out sc_logic 1 signal 19 } 
	{ weights417_address0 sc_out sc_lv 11 signal 20 } 
	{ weights417_ce0 sc_out sc_logic 1 signal 20 } 
	{ weights417_d0 sc_out sc_lv 16 signal 20 } 
	{ weights417_q0 sc_in sc_lv 16 signal 20 } 
	{ weights417_we0 sc_out sc_logic 1 signal 20 } 
	{ weights417_address1 sc_out sc_lv 11 signal 20 } 
	{ weights417_ce1 sc_out sc_logic 1 signal 20 } 
	{ weights417_d1 sc_out sc_lv 16 signal 20 } 
	{ weights417_q1 sc_in sc_lv 16 signal 20 } 
	{ weights417_we1 sc_out sc_logic 1 signal 20 } 
	{ weights418_address0 sc_out sc_lv 11 signal 21 } 
	{ weights418_ce0 sc_out sc_logic 1 signal 21 } 
	{ weights418_d0 sc_out sc_lv 16 signal 21 } 
	{ weights418_q0 sc_in sc_lv 16 signal 21 } 
	{ weights418_we0 sc_out sc_logic 1 signal 21 } 
	{ weights418_address1 sc_out sc_lv 11 signal 21 } 
	{ weights418_ce1 sc_out sc_logic 1 signal 21 } 
	{ weights418_d1 sc_out sc_lv 16 signal 21 } 
	{ weights418_q1 sc_in sc_lv 16 signal 21 } 
	{ weights418_we1 sc_out sc_logic 1 signal 21 } 
	{ weights5_address0 sc_out sc_lv 11 signal 22 } 
	{ weights5_ce0 sc_out sc_logic 1 signal 22 } 
	{ weights5_d0 sc_out sc_lv 16 signal 22 } 
	{ weights5_q0 sc_in sc_lv 16 signal 22 } 
	{ weights5_we0 sc_out sc_logic 1 signal 22 } 
	{ weights5_address1 sc_out sc_lv 11 signal 22 } 
	{ weights5_ce1 sc_out sc_logic 1 signal 22 } 
	{ weights5_d1 sc_out sc_lv 16 signal 22 } 
	{ weights5_q1 sc_in sc_lv 16 signal 22 } 
	{ weights5_we1 sc_out sc_logic 1 signal 22 } 
	{ weights519_address0 sc_out sc_lv 11 signal 23 } 
	{ weights519_ce0 sc_out sc_logic 1 signal 23 } 
	{ weights519_d0 sc_out sc_lv 16 signal 23 } 
	{ weights519_q0 sc_in sc_lv 16 signal 23 } 
	{ weights519_we0 sc_out sc_logic 1 signal 23 } 
	{ weights519_address1 sc_out sc_lv 11 signal 23 } 
	{ weights519_ce1 sc_out sc_logic 1 signal 23 } 
	{ weights519_d1 sc_out sc_lv 16 signal 23 } 
	{ weights519_q1 sc_in sc_lv 16 signal 23 } 
	{ weights519_we1 sc_out sc_logic 1 signal 23 } 
	{ weights520_address0 sc_out sc_lv 11 signal 24 } 
	{ weights520_ce0 sc_out sc_logic 1 signal 24 } 
	{ weights520_d0 sc_out sc_lv 16 signal 24 } 
	{ weights520_q0 sc_in sc_lv 16 signal 24 } 
	{ weights520_we0 sc_out sc_logic 1 signal 24 } 
	{ weights520_address1 sc_out sc_lv 11 signal 24 } 
	{ weights520_ce1 sc_out sc_logic 1 signal 24 } 
	{ weights520_d1 sc_out sc_lv 16 signal 24 } 
	{ weights520_q1 sc_in sc_lv 16 signal 24 } 
	{ weights520_we1 sc_out sc_logic 1 signal 24 } 
	{ weights521_address0 sc_out sc_lv 11 signal 25 } 
	{ weights521_ce0 sc_out sc_logic 1 signal 25 } 
	{ weights521_d0 sc_out sc_lv 16 signal 25 } 
	{ weights521_q0 sc_in sc_lv 16 signal 25 } 
	{ weights521_we0 sc_out sc_logic 1 signal 25 } 
	{ weights521_address1 sc_out sc_lv 11 signal 25 } 
	{ weights521_ce1 sc_out sc_logic 1 signal 25 } 
	{ weights521_d1 sc_out sc_lv 16 signal 25 } 
	{ weights521_q1 sc_in sc_lv 16 signal 25 } 
	{ weights521_we1 sc_out sc_logic 1 signal 25 } 
	{ weights6_address0 sc_out sc_lv 11 signal 26 } 
	{ weights6_ce0 sc_out sc_logic 1 signal 26 } 
	{ weights6_d0 sc_out sc_lv 16 signal 26 } 
	{ weights6_q0 sc_in sc_lv 16 signal 26 } 
	{ weights6_we0 sc_out sc_logic 1 signal 26 } 
	{ weights6_address1 sc_out sc_lv 11 signal 26 } 
	{ weights6_ce1 sc_out sc_logic 1 signal 26 } 
	{ weights6_d1 sc_out sc_lv 16 signal 26 } 
	{ weights6_q1 sc_in sc_lv 16 signal 26 } 
	{ weights6_we1 sc_out sc_logic 1 signal 26 } 
	{ weights622_address0 sc_out sc_lv 11 signal 27 } 
	{ weights622_ce0 sc_out sc_logic 1 signal 27 } 
	{ weights622_d0 sc_out sc_lv 16 signal 27 } 
	{ weights622_q0 sc_in sc_lv 16 signal 27 } 
	{ weights622_we0 sc_out sc_logic 1 signal 27 } 
	{ weights622_address1 sc_out sc_lv 11 signal 27 } 
	{ weights622_ce1 sc_out sc_logic 1 signal 27 } 
	{ weights622_d1 sc_out sc_lv 16 signal 27 } 
	{ weights622_q1 sc_in sc_lv 16 signal 27 } 
	{ weights622_we1 sc_out sc_logic 1 signal 27 } 
	{ weights623_address0 sc_out sc_lv 11 signal 28 } 
	{ weights623_ce0 sc_out sc_logic 1 signal 28 } 
	{ weights623_d0 sc_out sc_lv 16 signal 28 } 
	{ weights623_q0 sc_in sc_lv 16 signal 28 } 
	{ weights623_we0 sc_out sc_logic 1 signal 28 } 
	{ weights623_address1 sc_out sc_lv 11 signal 28 } 
	{ weights623_ce1 sc_out sc_logic 1 signal 28 } 
	{ weights623_d1 sc_out sc_lv 16 signal 28 } 
	{ weights623_q1 sc_in sc_lv 16 signal 28 } 
	{ weights623_we1 sc_out sc_logic 1 signal 28 } 
	{ weights624_address0 sc_out sc_lv 11 signal 29 } 
	{ weights624_ce0 sc_out sc_logic 1 signal 29 } 
	{ weights624_d0 sc_out sc_lv 16 signal 29 } 
	{ weights624_q0 sc_in sc_lv 16 signal 29 } 
	{ weights624_we0 sc_out sc_logic 1 signal 29 } 
	{ weights624_address1 sc_out sc_lv 11 signal 29 } 
	{ weights624_ce1 sc_out sc_logic 1 signal 29 } 
	{ weights624_d1 sc_out sc_lv 16 signal 29 } 
	{ weights624_q1 sc_in sc_lv 16 signal 29 } 
	{ weights624_we1 sc_out sc_logic 1 signal 29 } 
	{ weights7_address0 sc_out sc_lv 11 signal 30 } 
	{ weights7_ce0 sc_out sc_logic 1 signal 30 } 
	{ weights7_d0 sc_out sc_lv 16 signal 30 } 
	{ weights7_q0 sc_in sc_lv 16 signal 30 } 
	{ weights7_we0 sc_out sc_logic 1 signal 30 } 
	{ weights7_address1 sc_out sc_lv 11 signal 30 } 
	{ weights7_ce1 sc_out sc_logic 1 signal 30 } 
	{ weights7_d1 sc_out sc_lv 16 signal 30 } 
	{ weights7_q1 sc_in sc_lv 16 signal 30 } 
	{ weights7_we1 sc_out sc_logic 1 signal 30 } 
	{ weights725_address0 sc_out sc_lv 11 signal 31 } 
	{ weights725_ce0 sc_out sc_logic 1 signal 31 } 
	{ weights725_d0 sc_out sc_lv 16 signal 31 } 
	{ weights725_q0 sc_in sc_lv 16 signal 31 } 
	{ weights725_we0 sc_out sc_logic 1 signal 31 } 
	{ weights725_address1 sc_out sc_lv 11 signal 31 } 
	{ weights725_ce1 sc_out sc_logic 1 signal 31 } 
	{ weights725_d1 sc_out sc_lv 16 signal 31 } 
	{ weights725_q1 sc_in sc_lv 16 signal 31 } 
	{ weights725_we1 sc_out sc_logic 1 signal 31 } 
	{ weights726_address0 sc_out sc_lv 11 signal 32 } 
	{ weights726_ce0 sc_out sc_logic 1 signal 32 } 
	{ weights726_d0 sc_out sc_lv 16 signal 32 } 
	{ weights726_q0 sc_in sc_lv 16 signal 32 } 
	{ weights726_we0 sc_out sc_logic 1 signal 32 } 
	{ weights726_address1 sc_out sc_lv 11 signal 32 } 
	{ weights726_ce1 sc_out sc_logic 1 signal 32 } 
	{ weights726_d1 sc_out sc_lv 16 signal 32 } 
	{ weights726_q1 sc_in sc_lv 16 signal 32 } 
	{ weights726_we1 sc_out sc_logic 1 signal 32 } 
	{ weights727_address0 sc_out sc_lv 11 signal 33 } 
	{ weights727_ce0 sc_out sc_logic 1 signal 33 } 
	{ weights727_d0 sc_out sc_lv 16 signal 33 } 
	{ weights727_q0 sc_in sc_lv 16 signal 33 } 
	{ weights727_we0 sc_out sc_logic 1 signal 33 } 
	{ weights727_address1 sc_out sc_lv 11 signal 33 } 
	{ weights727_ce1 sc_out sc_logic 1 signal 33 } 
	{ weights727_d1 sc_out sc_lv 16 signal 33 } 
	{ weights727_q1 sc_in sc_lv 16 signal 33 } 
	{ weights727_we1 sc_out sc_logic 1 signal 33 } 
	{ p_read sc_in sc_lv 48 signal 34 } 
	{ p_read1 sc_in sc_lv 48 signal 35 } 
	{ p_read2 sc_in sc_lv 48 signal 36 } 
	{ p_read3 sc_in sc_lv 48 signal 37 } 
	{ p_read4 sc_in sc_lv 48 signal 38 } 
	{ p_read5 sc_in sc_lv 48 signal 39 } 
	{ p_read6 sc_in sc_lv 48 signal 40 } 
	{ p_read7 sc_in sc_lv 48 signal 41 } 
	{ ci sc_in sc_lv 10 signal 42 } 
	{ wi sc_in sc_lv 16 signal 43 } 
	{ k sc_in sc_lv 3 signal 44 } 
	{ stride sc_in sc_lv 2 signal 45 } 
	{ pad sc_in sc_lv 2 signal 46 } 
	{ ow sc_in sc_lv 16 signal 47 } 
	{ computing sc_in sc_logic 1 signal 48 } 
	{ emitting_offset sc_in sc_logic 1 signal 49 } 
	{ previous_rows sc_in sc_lv 16 signal 50 } 
	{ current_address0 sc_out sc_lv 6 signal 51 } 
	{ current_ce0 sc_out sc_logic 1 signal 51 } 
	{ current_d0 sc_out sc_lv 48 signal 51 } 
	{ current_q0 sc_in sc_lv 48 signal 51 } 
	{ current_we0 sc_out sc_logic 1 signal 51 } 
	{ current_address1 sc_out sc_lv 6 signal 51 } 
	{ current_ce1 sc_out sc_logic 1 signal 51 } 
	{ current_d1 sc_out sc_lv 48 signal 51 } 
	{ current_q1 sc_in sc_lv 48 signal 51 } 
	{ current_we1 sc_out sc_logic 1 signal 51 } 
	{ current28_address0 sc_out sc_lv 6 signal 52 } 
	{ current28_ce0 sc_out sc_logic 1 signal 52 } 
	{ current28_d0 sc_out sc_lv 48 signal 52 } 
	{ current28_q0 sc_in sc_lv 48 signal 52 } 
	{ current28_we0 sc_out sc_logic 1 signal 52 } 
	{ current28_address1 sc_out sc_lv 6 signal 52 } 
	{ current28_ce1 sc_out sc_logic 1 signal 52 } 
	{ current28_d1 sc_out sc_lv 48 signal 52 } 
	{ current28_q1 sc_in sc_lv 48 signal 52 } 
	{ current28_we1 sc_out sc_logic 1 signal 52 } 
	{ current29_address0 sc_out sc_lv 6 signal 53 } 
	{ current29_ce0 sc_out sc_logic 1 signal 53 } 
	{ current29_d0 sc_out sc_lv 48 signal 53 } 
	{ current29_q0 sc_in sc_lv 48 signal 53 } 
	{ current29_we0 sc_out sc_logic 1 signal 53 } 
	{ current29_address1 sc_out sc_lv 6 signal 53 } 
	{ current29_ce1 sc_out sc_logic 1 signal 53 } 
	{ current29_d1 sc_out sc_lv 48 signal 53 } 
	{ current29_q1 sc_in sc_lv 48 signal 53 } 
	{ current29_we1 sc_out sc_logic 1 signal 53 } 
	{ current30_address0 sc_out sc_lv 6 signal 54 } 
	{ current30_ce0 sc_out sc_logic 1 signal 54 } 
	{ current30_d0 sc_out sc_lv 48 signal 54 } 
	{ current30_q0 sc_in sc_lv 48 signal 54 } 
	{ current30_we0 sc_out sc_logic 1 signal 54 } 
	{ current30_address1 sc_out sc_lv 6 signal 54 } 
	{ current30_ce1 sc_out sc_logic 1 signal 54 } 
	{ current30_d1 sc_out sc_lv 48 signal 54 } 
	{ current30_q1 sc_in sc_lv 48 signal 54 } 
	{ current30_we1 sc_out sc_logic 1 signal 54 } 
	{ current15_address0 sc_out sc_lv 6 signal 55 } 
	{ current15_ce0 sc_out sc_logic 1 signal 55 } 
	{ current15_d0 sc_out sc_lv 48 signal 55 } 
	{ current15_q0 sc_in sc_lv 48 signal 55 } 
	{ current15_we0 sc_out sc_logic 1 signal 55 } 
	{ current15_address1 sc_out sc_lv 6 signal 55 } 
	{ current15_ce1 sc_out sc_logic 1 signal 55 } 
	{ current15_d1 sc_out sc_lv 48 signal 55 } 
	{ current15_q1 sc_in sc_lv 48 signal 55 } 
	{ current15_we1 sc_out sc_logic 1 signal 55 } 
	{ current1531_address0 sc_out sc_lv 6 signal 56 } 
	{ current1531_ce0 sc_out sc_logic 1 signal 56 } 
	{ current1531_d0 sc_out sc_lv 48 signal 56 } 
	{ current1531_q0 sc_in sc_lv 48 signal 56 } 
	{ current1531_we0 sc_out sc_logic 1 signal 56 } 
	{ current1531_address1 sc_out sc_lv 6 signal 56 } 
	{ current1531_ce1 sc_out sc_logic 1 signal 56 } 
	{ current1531_d1 sc_out sc_lv 48 signal 56 } 
	{ current1531_q1 sc_in sc_lv 48 signal 56 } 
	{ current1531_we1 sc_out sc_logic 1 signal 56 } 
	{ current1532_address0 sc_out sc_lv 6 signal 57 } 
	{ current1532_ce0 sc_out sc_logic 1 signal 57 } 
	{ current1532_d0 sc_out sc_lv 48 signal 57 } 
	{ current1532_q0 sc_in sc_lv 48 signal 57 } 
	{ current1532_we0 sc_out sc_logic 1 signal 57 } 
	{ current1532_address1 sc_out sc_lv 6 signal 57 } 
	{ current1532_ce1 sc_out sc_logic 1 signal 57 } 
	{ current1532_d1 sc_out sc_lv 48 signal 57 } 
	{ current1532_q1 sc_in sc_lv 48 signal 57 } 
	{ current1532_we1 sc_out sc_logic 1 signal 57 } 
	{ current1533_address0 sc_out sc_lv 6 signal 58 } 
	{ current1533_ce0 sc_out sc_logic 1 signal 58 } 
	{ current1533_d0 sc_out sc_lv 48 signal 58 } 
	{ current1533_q0 sc_in sc_lv 48 signal 58 } 
	{ current1533_we0 sc_out sc_logic 1 signal 58 } 
	{ current1533_address1 sc_out sc_lv 6 signal 58 } 
	{ current1533_ce1 sc_out sc_logic 1 signal 58 } 
	{ current1533_d1 sc_out sc_lv 48 signal 58 } 
	{ current1533_q1 sc_in sc_lv 48 signal 58 } 
	{ current1533_we1 sc_out sc_logic 1 signal 58 } 
	{ current16_address0 sc_out sc_lv 6 signal 59 } 
	{ current16_ce0 sc_out sc_logic 1 signal 59 } 
	{ current16_d0 sc_out sc_lv 48 signal 59 } 
	{ current16_q0 sc_in sc_lv 48 signal 59 } 
	{ current16_we0 sc_out sc_logic 1 signal 59 } 
	{ current16_address1 sc_out sc_lv 6 signal 59 } 
	{ current16_ce1 sc_out sc_logic 1 signal 59 } 
	{ current16_d1 sc_out sc_lv 48 signal 59 } 
	{ current16_q1 sc_in sc_lv 48 signal 59 } 
	{ current16_we1 sc_out sc_logic 1 signal 59 } 
	{ current1634_address0 sc_out sc_lv 6 signal 60 } 
	{ current1634_ce0 sc_out sc_logic 1 signal 60 } 
	{ current1634_d0 sc_out sc_lv 48 signal 60 } 
	{ current1634_q0 sc_in sc_lv 48 signal 60 } 
	{ current1634_we0 sc_out sc_logic 1 signal 60 } 
	{ current1634_address1 sc_out sc_lv 6 signal 60 } 
	{ current1634_ce1 sc_out sc_logic 1 signal 60 } 
	{ current1634_d1 sc_out sc_lv 48 signal 60 } 
	{ current1634_q1 sc_in sc_lv 48 signal 60 } 
	{ current1634_we1 sc_out sc_logic 1 signal 60 } 
	{ current1635_address0 sc_out sc_lv 6 signal 61 } 
	{ current1635_ce0 sc_out sc_logic 1 signal 61 } 
	{ current1635_d0 sc_out sc_lv 48 signal 61 } 
	{ current1635_q0 sc_in sc_lv 48 signal 61 } 
	{ current1635_we0 sc_out sc_logic 1 signal 61 } 
	{ current1635_address1 sc_out sc_lv 6 signal 61 } 
	{ current1635_ce1 sc_out sc_logic 1 signal 61 } 
	{ current1635_d1 sc_out sc_lv 48 signal 61 } 
	{ current1635_q1 sc_in sc_lv 48 signal 61 } 
	{ current1635_we1 sc_out sc_logic 1 signal 61 } 
	{ current1636_address0 sc_out sc_lv 6 signal 62 } 
	{ current1636_ce0 sc_out sc_logic 1 signal 62 } 
	{ current1636_d0 sc_out sc_lv 48 signal 62 } 
	{ current1636_q0 sc_in sc_lv 48 signal 62 } 
	{ current1636_we0 sc_out sc_logic 1 signal 62 } 
	{ current1636_address1 sc_out sc_lv 6 signal 62 } 
	{ current1636_ce1 sc_out sc_logic 1 signal 62 } 
	{ current1636_d1 sc_out sc_lv 48 signal 62 } 
	{ current1636_q1 sc_in sc_lv 48 signal 62 } 
	{ current1636_we1 sc_out sc_logic 1 signal 62 } 
	{ current17_address0 sc_out sc_lv 6 signal 63 } 
	{ current17_ce0 sc_out sc_logic 1 signal 63 } 
	{ current17_d0 sc_out sc_lv 48 signal 63 } 
	{ current17_q0 sc_in sc_lv 48 signal 63 } 
	{ current17_we0 sc_out sc_logic 1 signal 63 } 
	{ current17_address1 sc_out sc_lv 6 signal 63 } 
	{ current17_ce1 sc_out sc_logic 1 signal 63 } 
	{ current17_d1 sc_out sc_lv 48 signal 63 } 
	{ current17_q1 sc_in sc_lv 48 signal 63 } 
	{ current17_we1 sc_out sc_logic 1 signal 63 } 
	{ current1737_address0 sc_out sc_lv 6 signal 64 } 
	{ current1737_ce0 sc_out sc_logic 1 signal 64 } 
	{ current1737_d0 sc_out sc_lv 48 signal 64 } 
	{ current1737_q0 sc_in sc_lv 48 signal 64 } 
	{ current1737_we0 sc_out sc_logic 1 signal 64 } 
	{ current1737_address1 sc_out sc_lv 6 signal 64 } 
	{ current1737_ce1 sc_out sc_logic 1 signal 64 } 
	{ current1737_d1 sc_out sc_lv 48 signal 64 } 
	{ current1737_q1 sc_in sc_lv 48 signal 64 } 
	{ current1737_we1 sc_out sc_logic 1 signal 64 } 
	{ current1738_address0 sc_out sc_lv 6 signal 65 } 
	{ current1738_ce0 sc_out sc_logic 1 signal 65 } 
	{ current1738_d0 sc_out sc_lv 48 signal 65 } 
	{ current1738_q0 sc_in sc_lv 48 signal 65 } 
	{ current1738_we0 sc_out sc_logic 1 signal 65 } 
	{ current1738_address1 sc_out sc_lv 6 signal 65 } 
	{ current1738_ce1 sc_out sc_logic 1 signal 65 } 
	{ current1738_d1 sc_out sc_lv 48 signal 65 } 
	{ current1738_q1 sc_in sc_lv 48 signal 65 } 
	{ current1738_we1 sc_out sc_logic 1 signal 65 } 
	{ current1739_address0 sc_out sc_lv 6 signal 66 } 
	{ current1739_ce0 sc_out sc_logic 1 signal 66 } 
	{ current1739_d0 sc_out sc_lv 48 signal 66 } 
	{ current1739_q0 sc_in sc_lv 48 signal 66 } 
	{ current1739_we0 sc_out sc_logic 1 signal 66 } 
	{ current1739_address1 sc_out sc_lv 6 signal 66 } 
	{ current1739_ce1 sc_out sc_logic 1 signal 66 } 
	{ current1739_d1 sc_out sc_lv 48 signal 66 } 
	{ current1739_q1 sc_in sc_lv 48 signal 66 } 
	{ current1739_we1 sc_out sc_logic 1 signal 66 } 
	{ current18_address0 sc_out sc_lv 6 signal 67 } 
	{ current18_ce0 sc_out sc_logic 1 signal 67 } 
	{ current18_d0 sc_out sc_lv 48 signal 67 } 
	{ current18_q0 sc_in sc_lv 48 signal 67 } 
	{ current18_we0 sc_out sc_logic 1 signal 67 } 
	{ current18_address1 sc_out sc_lv 6 signal 67 } 
	{ current18_ce1 sc_out sc_logic 1 signal 67 } 
	{ current18_d1 sc_out sc_lv 48 signal 67 } 
	{ current18_q1 sc_in sc_lv 48 signal 67 } 
	{ current18_we1 sc_out sc_logic 1 signal 67 } 
	{ current1840_address0 sc_out sc_lv 6 signal 68 } 
	{ current1840_ce0 sc_out sc_logic 1 signal 68 } 
	{ current1840_d0 sc_out sc_lv 48 signal 68 } 
	{ current1840_q0 sc_in sc_lv 48 signal 68 } 
	{ current1840_we0 sc_out sc_logic 1 signal 68 } 
	{ current1840_address1 sc_out sc_lv 6 signal 68 } 
	{ current1840_ce1 sc_out sc_logic 1 signal 68 } 
	{ current1840_d1 sc_out sc_lv 48 signal 68 } 
	{ current1840_q1 sc_in sc_lv 48 signal 68 } 
	{ current1840_we1 sc_out sc_logic 1 signal 68 } 
	{ current1841_address0 sc_out sc_lv 6 signal 69 } 
	{ current1841_ce0 sc_out sc_logic 1 signal 69 } 
	{ current1841_d0 sc_out sc_lv 48 signal 69 } 
	{ current1841_q0 sc_in sc_lv 48 signal 69 } 
	{ current1841_we0 sc_out sc_logic 1 signal 69 } 
	{ current1841_address1 sc_out sc_lv 6 signal 69 } 
	{ current1841_ce1 sc_out sc_logic 1 signal 69 } 
	{ current1841_d1 sc_out sc_lv 48 signal 69 } 
	{ current1841_q1 sc_in sc_lv 48 signal 69 } 
	{ current1841_we1 sc_out sc_logic 1 signal 69 } 
	{ current1842_address0 sc_out sc_lv 6 signal 70 } 
	{ current1842_ce0 sc_out sc_logic 1 signal 70 } 
	{ current1842_d0 sc_out sc_lv 48 signal 70 } 
	{ current1842_q0 sc_in sc_lv 48 signal 70 } 
	{ current1842_we0 sc_out sc_logic 1 signal 70 } 
	{ current1842_address1 sc_out sc_lv 6 signal 70 } 
	{ current1842_ce1 sc_out sc_logic 1 signal 70 } 
	{ current1842_d1 sc_out sc_lv 48 signal 70 } 
	{ current1842_q1 sc_in sc_lv 48 signal 70 } 
	{ current1842_we1 sc_out sc_logic 1 signal 70 } 
	{ current19_address0 sc_out sc_lv 6 signal 71 } 
	{ current19_ce0 sc_out sc_logic 1 signal 71 } 
	{ current19_d0 sc_out sc_lv 48 signal 71 } 
	{ current19_q0 sc_in sc_lv 48 signal 71 } 
	{ current19_we0 sc_out sc_logic 1 signal 71 } 
	{ current19_address1 sc_out sc_lv 6 signal 71 } 
	{ current19_ce1 sc_out sc_logic 1 signal 71 } 
	{ current19_d1 sc_out sc_lv 48 signal 71 } 
	{ current19_q1 sc_in sc_lv 48 signal 71 } 
	{ current19_we1 sc_out sc_logic 1 signal 71 } 
	{ current1943_address0 sc_out sc_lv 6 signal 72 } 
	{ current1943_ce0 sc_out sc_logic 1 signal 72 } 
	{ current1943_d0 sc_out sc_lv 48 signal 72 } 
	{ current1943_q0 sc_in sc_lv 48 signal 72 } 
	{ current1943_we0 sc_out sc_logic 1 signal 72 } 
	{ current1943_address1 sc_out sc_lv 6 signal 72 } 
	{ current1943_ce1 sc_out sc_logic 1 signal 72 } 
	{ current1943_d1 sc_out sc_lv 48 signal 72 } 
	{ current1943_q1 sc_in sc_lv 48 signal 72 } 
	{ current1943_we1 sc_out sc_logic 1 signal 72 } 
	{ current1944_address0 sc_out sc_lv 6 signal 73 } 
	{ current1944_ce0 sc_out sc_logic 1 signal 73 } 
	{ current1944_d0 sc_out sc_lv 48 signal 73 } 
	{ current1944_q0 sc_in sc_lv 48 signal 73 } 
	{ current1944_we0 sc_out sc_logic 1 signal 73 } 
	{ current1944_address1 sc_out sc_lv 6 signal 73 } 
	{ current1944_ce1 sc_out sc_logic 1 signal 73 } 
	{ current1944_d1 sc_out sc_lv 48 signal 73 } 
	{ current1944_q1 sc_in sc_lv 48 signal 73 } 
	{ current1944_we1 sc_out sc_logic 1 signal 73 } 
	{ current1945_address0 sc_out sc_lv 6 signal 74 } 
	{ current1945_ce0 sc_out sc_logic 1 signal 74 } 
	{ current1945_d0 sc_out sc_lv 48 signal 74 } 
	{ current1945_q0 sc_in sc_lv 48 signal 74 } 
	{ current1945_we0 sc_out sc_logic 1 signal 74 } 
	{ current1945_address1 sc_out sc_lv 6 signal 74 } 
	{ current1945_ce1 sc_out sc_logic 1 signal 74 } 
	{ current1945_d1 sc_out sc_lv 48 signal 74 } 
	{ current1945_q1 sc_in sc_lv 48 signal 74 } 
	{ current1945_we1 sc_out sc_logic 1 signal 74 } 
	{ current20_address0 sc_out sc_lv 6 signal 75 } 
	{ current20_ce0 sc_out sc_logic 1 signal 75 } 
	{ current20_d0 sc_out sc_lv 48 signal 75 } 
	{ current20_q0 sc_in sc_lv 48 signal 75 } 
	{ current20_we0 sc_out sc_logic 1 signal 75 } 
	{ current20_address1 sc_out sc_lv 6 signal 75 } 
	{ current20_ce1 sc_out sc_logic 1 signal 75 } 
	{ current20_d1 sc_out sc_lv 48 signal 75 } 
	{ current20_q1 sc_in sc_lv 48 signal 75 } 
	{ current20_we1 sc_out sc_logic 1 signal 75 } 
	{ current2046_address0 sc_out sc_lv 6 signal 76 } 
	{ current2046_ce0 sc_out sc_logic 1 signal 76 } 
	{ current2046_d0 sc_out sc_lv 48 signal 76 } 
	{ current2046_q0 sc_in sc_lv 48 signal 76 } 
	{ current2046_we0 sc_out sc_logic 1 signal 76 } 
	{ current2046_address1 sc_out sc_lv 6 signal 76 } 
	{ current2046_ce1 sc_out sc_logic 1 signal 76 } 
	{ current2046_d1 sc_out sc_lv 48 signal 76 } 
	{ current2046_q1 sc_in sc_lv 48 signal 76 } 
	{ current2046_we1 sc_out sc_logic 1 signal 76 } 
	{ current2047_address0 sc_out sc_lv 6 signal 77 } 
	{ current2047_ce0 sc_out sc_logic 1 signal 77 } 
	{ current2047_d0 sc_out sc_lv 48 signal 77 } 
	{ current2047_q0 sc_in sc_lv 48 signal 77 } 
	{ current2047_we0 sc_out sc_logic 1 signal 77 } 
	{ current2047_address1 sc_out sc_lv 6 signal 77 } 
	{ current2047_ce1 sc_out sc_logic 1 signal 77 } 
	{ current2047_d1 sc_out sc_lv 48 signal 77 } 
	{ current2047_q1 sc_in sc_lv 48 signal 77 } 
	{ current2047_we1 sc_out sc_logic 1 signal 77 } 
	{ current2048_address0 sc_out sc_lv 6 signal 78 } 
	{ current2048_ce0 sc_out sc_logic 1 signal 78 } 
	{ current2048_d0 sc_out sc_lv 48 signal 78 } 
	{ current2048_q0 sc_in sc_lv 48 signal 78 } 
	{ current2048_we0 sc_out sc_logic 1 signal 78 } 
	{ current2048_address1 sc_out sc_lv 6 signal 78 } 
	{ current2048_ce1 sc_out sc_logic 1 signal 78 } 
	{ current2048_d1 sc_out sc_lv 48 signal 78 } 
	{ current2048_q1 sc_in sc_lv 48 signal 78 } 
	{ current2048_we1 sc_out sc_logic 1 signal 78 } 
	{ current21_address0 sc_out sc_lv 6 signal 79 } 
	{ current21_ce0 sc_out sc_logic 1 signal 79 } 
	{ current21_d0 sc_out sc_lv 48 signal 79 } 
	{ current21_q0 sc_in sc_lv 48 signal 79 } 
	{ current21_we0 sc_out sc_logic 1 signal 79 } 
	{ current21_address1 sc_out sc_lv 6 signal 79 } 
	{ current21_ce1 sc_out sc_logic 1 signal 79 } 
	{ current21_d1 sc_out sc_lv 48 signal 79 } 
	{ current21_q1 sc_in sc_lv 48 signal 79 } 
	{ current21_we1 sc_out sc_logic 1 signal 79 } 
	{ current2149_address0 sc_out sc_lv 6 signal 80 } 
	{ current2149_ce0 sc_out sc_logic 1 signal 80 } 
	{ current2149_d0 sc_out sc_lv 48 signal 80 } 
	{ current2149_q0 sc_in sc_lv 48 signal 80 } 
	{ current2149_we0 sc_out sc_logic 1 signal 80 } 
	{ current2149_address1 sc_out sc_lv 6 signal 80 } 
	{ current2149_ce1 sc_out sc_logic 1 signal 80 } 
	{ current2149_d1 sc_out sc_lv 48 signal 80 } 
	{ current2149_q1 sc_in sc_lv 48 signal 80 } 
	{ current2149_we1 sc_out sc_logic 1 signal 80 } 
	{ current2150_address0 sc_out sc_lv 6 signal 81 } 
	{ current2150_ce0 sc_out sc_logic 1 signal 81 } 
	{ current2150_d0 sc_out sc_lv 48 signal 81 } 
	{ current2150_q0 sc_in sc_lv 48 signal 81 } 
	{ current2150_we0 sc_out sc_logic 1 signal 81 } 
	{ current2150_address1 sc_out sc_lv 6 signal 81 } 
	{ current2150_ce1 sc_out sc_logic 1 signal 81 } 
	{ current2150_d1 sc_out sc_lv 48 signal 81 } 
	{ current2150_q1 sc_in sc_lv 48 signal 81 } 
	{ current2150_we1 sc_out sc_logic 1 signal 81 } 
	{ current2151_address0 sc_out sc_lv 6 signal 82 } 
	{ current2151_ce0 sc_out sc_logic 1 signal 82 } 
	{ current2151_d0 sc_out sc_lv 48 signal 82 } 
	{ current2151_q0 sc_in sc_lv 48 signal 82 } 
	{ current2151_we0 sc_out sc_logic 1 signal 82 } 
	{ current2151_address1 sc_out sc_lv 6 signal 82 } 
	{ current2151_ce1 sc_out sc_logic 1 signal 82 } 
	{ current2151_d1 sc_out sc_lv 48 signal 82 } 
	{ current2151_q1 sc_in sc_lv 48 signal 82 } 
	{ current2151_we1 sc_out sc_logic 1 signal 82 } 
	{ previous_address0 sc_out sc_lv 6 signal 83 } 
	{ previous_ce0 sc_out sc_logic 1 signal 83 } 
	{ previous_d0 sc_out sc_lv 48 signal 83 } 
	{ previous_q0 sc_in sc_lv 48 signal 83 } 
	{ previous_we0 sc_out sc_logic 1 signal 83 } 
	{ previous_address1 sc_out sc_lv 6 signal 83 } 
	{ previous_ce1 sc_out sc_logic 1 signal 83 } 
	{ previous_d1 sc_out sc_lv 48 signal 83 } 
	{ previous_q1 sc_in sc_lv 48 signal 83 } 
	{ previous_we1 sc_out sc_logic 1 signal 83 } 
	{ previous52_address0 sc_out sc_lv 6 signal 84 } 
	{ previous52_ce0 sc_out sc_logic 1 signal 84 } 
	{ previous52_d0 sc_out sc_lv 48 signal 84 } 
	{ previous52_q0 sc_in sc_lv 48 signal 84 } 
	{ previous52_we0 sc_out sc_logic 1 signal 84 } 
	{ previous52_address1 sc_out sc_lv 6 signal 84 } 
	{ previous52_ce1 sc_out sc_logic 1 signal 84 } 
	{ previous52_d1 sc_out sc_lv 48 signal 84 } 
	{ previous52_q1 sc_in sc_lv 48 signal 84 } 
	{ previous52_we1 sc_out sc_logic 1 signal 84 } 
	{ previous53_address0 sc_out sc_lv 6 signal 85 } 
	{ previous53_ce0 sc_out sc_logic 1 signal 85 } 
	{ previous53_d0 sc_out sc_lv 48 signal 85 } 
	{ previous53_q0 sc_in sc_lv 48 signal 85 } 
	{ previous53_we0 sc_out sc_logic 1 signal 85 } 
	{ previous53_address1 sc_out sc_lv 6 signal 85 } 
	{ previous53_ce1 sc_out sc_logic 1 signal 85 } 
	{ previous53_d1 sc_out sc_lv 48 signal 85 } 
	{ previous53_q1 sc_in sc_lv 48 signal 85 } 
	{ previous53_we1 sc_out sc_logic 1 signal 85 } 
	{ previous54_address0 sc_out sc_lv 6 signal 86 } 
	{ previous54_ce0 sc_out sc_logic 1 signal 86 } 
	{ previous54_d0 sc_out sc_lv 48 signal 86 } 
	{ previous54_q0 sc_in sc_lv 48 signal 86 } 
	{ previous54_we0 sc_out sc_logic 1 signal 86 } 
	{ previous54_address1 sc_out sc_lv 6 signal 86 } 
	{ previous54_ce1 sc_out sc_logic 1 signal 86 } 
	{ previous54_d1 sc_out sc_lv 48 signal 86 } 
	{ previous54_q1 sc_in sc_lv 48 signal 86 } 
	{ previous54_we1 sc_out sc_logic 1 signal 86 } 
	{ previous22_address0 sc_out sc_lv 6 signal 87 } 
	{ previous22_ce0 sc_out sc_logic 1 signal 87 } 
	{ previous22_d0 sc_out sc_lv 48 signal 87 } 
	{ previous22_q0 sc_in sc_lv 48 signal 87 } 
	{ previous22_we0 sc_out sc_logic 1 signal 87 } 
	{ previous22_address1 sc_out sc_lv 6 signal 87 } 
	{ previous22_ce1 sc_out sc_logic 1 signal 87 } 
	{ previous22_d1 sc_out sc_lv 48 signal 87 } 
	{ previous22_q1 sc_in sc_lv 48 signal 87 } 
	{ previous22_we1 sc_out sc_logic 1 signal 87 } 
	{ previous2255_address0 sc_out sc_lv 6 signal 88 } 
	{ previous2255_ce0 sc_out sc_logic 1 signal 88 } 
	{ previous2255_d0 sc_out sc_lv 48 signal 88 } 
	{ previous2255_q0 sc_in sc_lv 48 signal 88 } 
	{ previous2255_we0 sc_out sc_logic 1 signal 88 } 
	{ previous2255_address1 sc_out sc_lv 6 signal 88 } 
	{ previous2255_ce1 sc_out sc_logic 1 signal 88 } 
	{ previous2255_d1 sc_out sc_lv 48 signal 88 } 
	{ previous2255_q1 sc_in sc_lv 48 signal 88 } 
	{ previous2255_we1 sc_out sc_logic 1 signal 88 } 
	{ previous2256_address0 sc_out sc_lv 6 signal 89 } 
	{ previous2256_ce0 sc_out sc_logic 1 signal 89 } 
	{ previous2256_d0 sc_out sc_lv 48 signal 89 } 
	{ previous2256_q0 sc_in sc_lv 48 signal 89 } 
	{ previous2256_we0 sc_out sc_logic 1 signal 89 } 
	{ previous2256_address1 sc_out sc_lv 6 signal 89 } 
	{ previous2256_ce1 sc_out sc_logic 1 signal 89 } 
	{ previous2256_d1 sc_out sc_lv 48 signal 89 } 
	{ previous2256_q1 sc_in sc_lv 48 signal 89 } 
	{ previous2256_we1 sc_out sc_logic 1 signal 89 } 
	{ previous2257_address0 sc_out sc_lv 6 signal 90 } 
	{ previous2257_ce0 sc_out sc_logic 1 signal 90 } 
	{ previous2257_d0 sc_out sc_lv 48 signal 90 } 
	{ previous2257_q0 sc_in sc_lv 48 signal 90 } 
	{ previous2257_we0 sc_out sc_logic 1 signal 90 } 
	{ previous2257_address1 sc_out sc_lv 6 signal 90 } 
	{ previous2257_ce1 sc_out sc_logic 1 signal 90 } 
	{ previous2257_d1 sc_out sc_lv 48 signal 90 } 
	{ previous2257_q1 sc_in sc_lv 48 signal 90 } 
	{ previous2257_we1 sc_out sc_logic 1 signal 90 } 
	{ previous23_address0 sc_out sc_lv 6 signal 91 } 
	{ previous23_ce0 sc_out sc_logic 1 signal 91 } 
	{ previous23_d0 sc_out sc_lv 48 signal 91 } 
	{ previous23_q0 sc_in sc_lv 48 signal 91 } 
	{ previous23_we0 sc_out sc_logic 1 signal 91 } 
	{ previous23_address1 sc_out sc_lv 6 signal 91 } 
	{ previous23_ce1 sc_out sc_logic 1 signal 91 } 
	{ previous23_d1 sc_out sc_lv 48 signal 91 } 
	{ previous23_q1 sc_in sc_lv 48 signal 91 } 
	{ previous23_we1 sc_out sc_logic 1 signal 91 } 
	{ previous2358_address0 sc_out sc_lv 6 signal 92 } 
	{ previous2358_ce0 sc_out sc_logic 1 signal 92 } 
	{ previous2358_d0 sc_out sc_lv 48 signal 92 } 
	{ previous2358_q0 sc_in sc_lv 48 signal 92 } 
	{ previous2358_we0 sc_out sc_logic 1 signal 92 } 
	{ previous2358_address1 sc_out sc_lv 6 signal 92 } 
	{ previous2358_ce1 sc_out sc_logic 1 signal 92 } 
	{ previous2358_d1 sc_out sc_lv 48 signal 92 } 
	{ previous2358_q1 sc_in sc_lv 48 signal 92 } 
	{ previous2358_we1 sc_out sc_logic 1 signal 92 } 
	{ previous2359_address0 sc_out sc_lv 6 signal 93 } 
	{ previous2359_ce0 sc_out sc_logic 1 signal 93 } 
	{ previous2359_d0 sc_out sc_lv 48 signal 93 } 
	{ previous2359_q0 sc_in sc_lv 48 signal 93 } 
	{ previous2359_we0 sc_out sc_logic 1 signal 93 } 
	{ previous2359_address1 sc_out sc_lv 6 signal 93 } 
	{ previous2359_ce1 sc_out sc_logic 1 signal 93 } 
	{ previous2359_d1 sc_out sc_lv 48 signal 93 } 
	{ previous2359_q1 sc_in sc_lv 48 signal 93 } 
	{ previous2359_we1 sc_out sc_logic 1 signal 93 } 
	{ previous2360_address0 sc_out sc_lv 6 signal 94 } 
	{ previous2360_ce0 sc_out sc_logic 1 signal 94 } 
	{ previous2360_d0 sc_out sc_lv 48 signal 94 } 
	{ previous2360_q0 sc_in sc_lv 48 signal 94 } 
	{ previous2360_we0 sc_out sc_logic 1 signal 94 } 
	{ previous2360_address1 sc_out sc_lv 6 signal 94 } 
	{ previous2360_ce1 sc_out sc_logic 1 signal 94 } 
	{ previous2360_d1 sc_out sc_lv 48 signal 94 } 
	{ previous2360_q1 sc_in sc_lv 48 signal 94 } 
	{ previous2360_we1 sc_out sc_logic 1 signal 94 } 
	{ previous24_address0 sc_out sc_lv 6 signal 95 } 
	{ previous24_ce0 sc_out sc_logic 1 signal 95 } 
	{ previous24_d0 sc_out sc_lv 48 signal 95 } 
	{ previous24_q0 sc_in sc_lv 48 signal 95 } 
	{ previous24_we0 sc_out sc_logic 1 signal 95 } 
	{ previous24_address1 sc_out sc_lv 6 signal 95 } 
	{ previous24_ce1 sc_out sc_logic 1 signal 95 } 
	{ previous24_d1 sc_out sc_lv 48 signal 95 } 
	{ previous24_q1 sc_in sc_lv 48 signal 95 } 
	{ previous24_we1 sc_out sc_logic 1 signal 95 } 
	{ previous2461_address0 sc_out sc_lv 6 signal 96 } 
	{ previous2461_ce0 sc_out sc_logic 1 signal 96 } 
	{ previous2461_d0 sc_out sc_lv 48 signal 96 } 
	{ previous2461_q0 sc_in sc_lv 48 signal 96 } 
	{ previous2461_we0 sc_out sc_logic 1 signal 96 } 
	{ previous2461_address1 sc_out sc_lv 6 signal 96 } 
	{ previous2461_ce1 sc_out sc_logic 1 signal 96 } 
	{ previous2461_d1 sc_out sc_lv 48 signal 96 } 
	{ previous2461_q1 sc_in sc_lv 48 signal 96 } 
	{ previous2461_we1 sc_out sc_logic 1 signal 96 } 
	{ previous2462_address0 sc_out sc_lv 6 signal 97 } 
	{ previous2462_ce0 sc_out sc_logic 1 signal 97 } 
	{ previous2462_d0 sc_out sc_lv 48 signal 97 } 
	{ previous2462_q0 sc_in sc_lv 48 signal 97 } 
	{ previous2462_we0 sc_out sc_logic 1 signal 97 } 
	{ previous2462_address1 sc_out sc_lv 6 signal 97 } 
	{ previous2462_ce1 sc_out sc_logic 1 signal 97 } 
	{ previous2462_d1 sc_out sc_lv 48 signal 97 } 
	{ previous2462_q1 sc_in sc_lv 48 signal 97 } 
	{ previous2462_we1 sc_out sc_logic 1 signal 97 } 
	{ previous2463_address0 sc_out sc_lv 6 signal 98 } 
	{ previous2463_ce0 sc_out sc_logic 1 signal 98 } 
	{ previous2463_d0 sc_out sc_lv 48 signal 98 } 
	{ previous2463_q0 sc_in sc_lv 48 signal 98 } 
	{ previous2463_we0 sc_out sc_logic 1 signal 98 } 
	{ previous2463_address1 sc_out sc_lv 6 signal 98 } 
	{ previous2463_ce1 sc_out sc_logic 1 signal 98 } 
	{ previous2463_d1 sc_out sc_lv 48 signal 98 } 
	{ previous2463_q1 sc_in sc_lv 48 signal 98 } 
	{ previous2463_we1 sc_out sc_logic 1 signal 98 } 
	{ previous25_address0 sc_out sc_lv 6 signal 99 } 
	{ previous25_ce0 sc_out sc_logic 1 signal 99 } 
	{ previous25_d0 sc_out sc_lv 48 signal 99 } 
	{ previous25_q0 sc_in sc_lv 48 signal 99 } 
	{ previous25_we0 sc_out sc_logic 1 signal 99 } 
	{ previous25_address1 sc_out sc_lv 6 signal 99 } 
	{ previous25_ce1 sc_out sc_logic 1 signal 99 } 
	{ previous25_d1 sc_out sc_lv 48 signal 99 } 
	{ previous25_q1 sc_in sc_lv 48 signal 99 } 
	{ previous25_we1 sc_out sc_logic 1 signal 99 } 
	{ previous2564_address0 sc_out sc_lv 6 signal 100 } 
	{ previous2564_ce0 sc_out sc_logic 1 signal 100 } 
	{ previous2564_d0 sc_out sc_lv 48 signal 100 } 
	{ previous2564_q0 sc_in sc_lv 48 signal 100 } 
	{ previous2564_we0 sc_out sc_logic 1 signal 100 } 
	{ previous2564_address1 sc_out sc_lv 6 signal 100 } 
	{ previous2564_ce1 sc_out sc_logic 1 signal 100 } 
	{ previous2564_d1 sc_out sc_lv 48 signal 100 } 
	{ previous2564_q1 sc_in sc_lv 48 signal 100 } 
	{ previous2564_we1 sc_out sc_logic 1 signal 100 } 
	{ previous2565_address0 sc_out sc_lv 6 signal 101 } 
	{ previous2565_ce0 sc_out sc_logic 1 signal 101 } 
	{ previous2565_d0 sc_out sc_lv 48 signal 101 } 
	{ previous2565_q0 sc_in sc_lv 48 signal 101 } 
	{ previous2565_we0 sc_out sc_logic 1 signal 101 } 
	{ previous2565_address1 sc_out sc_lv 6 signal 101 } 
	{ previous2565_ce1 sc_out sc_logic 1 signal 101 } 
	{ previous2565_d1 sc_out sc_lv 48 signal 101 } 
	{ previous2565_q1 sc_in sc_lv 48 signal 101 } 
	{ previous2565_we1 sc_out sc_logic 1 signal 101 } 
	{ previous2566_address0 sc_out sc_lv 6 signal 102 } 
	{ previous2566_ce0 sc_out sc_logic 1 signal 102 } 
	{ previous2566_d0 sc_out sc_lv 48 signal 102 } 
	{ previous2566_q0 sc_in sc_lv 48 signal 102 } 
	{ previous2566_we0 sc_out sc_logic 1 signal 102 } 
	{ previous2566_address1 sc_out sc_lv 6 signal 102 } 
	{ previous2566_ce1 sc_out sc_logic 1 signal 102 } 
	{ previous2566_d1 sc_out sc_lv 48 signal 102 } 
	{ previous2566_q1 sc_in sc_lv 48 signal 102 } 
	{ previous2566_we1 sc_out sc_logic 1 signal 102 } 
	{ previous26_address0 sc_out sc_lv 6 signal 103 } 
	{ previous26_ce0 sc_out sc_logic 1 signal 103 } 
	{ previous26_d0 sc_out sc_lv 48 signal 103 } 
	{ previous26_q0 sc_in sc_lv 48 signal 103 } 
	{ previous26_we0 sc_out sc_logic 1 signal 103 } 
	{ previous26_address1 sc_out sc_lv 6 signal 103 } 
	{ previous26_ce1 sc_out sc_logic 1 signal 103 } 
	{ previous26_d1 sc_out sc_lv 48 signal 103 } 
	{ previous26_q1 sc_in sc_lv 48 signal 103 } 
	{ previous26_we1 sc_out sc_logic 1 signal 103 } 
	{ previous2667_address0 sc_out sc_lv 6 signal 104 } 
	{ previous2667_ce0 sc_out sc_logic 1 signal 104 } 
	{ previous2667_d0 sc_out sc_lv 48 signal 104 } 
	{ previous2667_q0 sc_in sc_lv 48 signal 104 } 
	{ previous2667_we0 sc_out sc_logic 1 signal 104 } 
	{ previous2667_address1 sc_out sc_lv 6 signal 104 } 
	{ previous2667_ce1 sc_out sc_logic 1 signal 104 } 
	{ previous2667_d1 sc_out sc_lv 48 signal 104 } 
	{ previous2667_q1 sc_in sc_lv 48 signal 104 } 
	{ previous2667_we1 sc_out sc_logic 1 signal 104 } 
	{ previous2668_address0 sc_out sc_lv 6 signal 105 } 
	{ previous2668_ce0 sc_out sc_logic 1 signal 105 } 
	{ previous2668_d0 sc_out sc_lv 48 signal 105 } 
	{ previous2668_q0 sc_in sc_lv 48 signal 105 } 
	{ previous2668_we0 sc_out sc_logic 1 signal 105 } 
	{ previous2668_address1 sc_out sc_lv 6 signal 105 } 
	{ previous2668_ce1 sc_out sc_logic 1 signal 105 } 
	{ previous2668_d1 sc_out sc_lv 48 signal 105 } 
	{ previous2668_q1 sc_in sc_lv 48 signal 105 } 
	{ previous2668_we1 sc_out sc_logic 1 signal 105 } 
	{ previous2669_address0 sc_out sc_lv 6 signal 106 } 
	{ previous2669_ce0 sc_out sc_logic 1 signal 106 } 
	{ previous2669_d0 sc_out sc_lv 48 signal 106 } 
	{ previous2669_q0 sc_in sc_lv 48 signal 106 } 
	{ previous2669_we0 sc_out sc_logic 1 signal 106 } 
	{ previous2669_address1 sc_out sc_lv 6 signal 106 } 
	{ previous2669_ce1 sc_out sc_logic 1 signal 106 } 
	{ previous2669_d1 sc_out sc_lv 48 signal 106 } 
	{ previous2669_q1 sc_in sc_lv 48 signal 106 } 
	{ previous2669_we1 sc_out sc_logic 1 signal 106 } 
	{ previous27_address0 sc_out sc_lv 6 signal 107 } 
	{ previous27_ce0 sc_out sc_logic 1 signal 107 } 
	{ previous27_d0 sc_out sc_lv 48 signal 107 } 
	{ previous27_q0 sc_in sc_lv 48 signal 107 } 
	{ previous27_we0 sc_out sc_logic 1 signal 107 } 
	{ previous27_address1 sc_out sc_lv 6 signal 107 } 
	{ previous27_ce1 sc_out sc_logic 1 signal 107 } 
	{ previous27_d1 sc_out sc_lv 48 signal 107 } 
	{ previous27_q1 sc_in sc_lv 48 signal 107 } 
	{ previous27_we1 sc_out sc_logic 1 signal 107 } 
	{ previous2770_address0 sc_out sc_lv 6 signal 108 } 
	{ previous2770_ce0 sc_out sc_logic 1 signal 108 } 
	{ previous2770_d0 sc_out sc_lv 48 signal 108 } 
	{ previous2770_q0 sc_in sc_lv 48 signal 108 } 
	{ previous2770_we0 sc_out sc_logic 1 signal 108 } 
	{ previous2770_address1 sc_out sc_lv 6 signal 108 } 
	{ previous2770_ce1 sc_out sc_logic 1 signal 108 } 
	{ previous2770_d1 sc_out sc_lv 48 signal 108 } 
	{ previous2770_q1 sc_in sc_lv 48 signal 108 } 
	{ previous2770_we1 sc_out sc_logic 1 signal 108 } 
	{ previous2771_address0 sc_out sc_lv 6 signal 109 } 
	{ previous2771_ce0 sc_out sc_logic 1 signal 109 } 
	{ previous2771_d0 sc_out sc_lv 48 signal 109 } 
	{ previous2771_q0 sc_in sc_lv 48 signal 109 } 
	{ previous2771_we0 sc_out sc_logic 1 signal 109 } 
	{ previous2771_address1 sc_out sc_lv 6 signal 109 } 
	{ previous2771_ce1 sc_out sc_logic 1 signal 109 } 
	{ previous2771_d1 sc_out sc_lv 48 signal 109 } 
	{ previous2771_q1 sc_in sc_lv 48 signal 109 } 
	{ previous2771_we1 sc_out sc_logic 1 signal 109 } 
	{ previous2772_address0 sc_out sc_lv 6 signal 110 } 
	{ previous2772_ce0 sc_out sc_logic 1 signal 110 } 
	{ previous2772_d0 sc_out sc_lv 48 signal 110 } 
	{ previous2772_q0 sc_in sc_lv 48 signal 110 } 
	{ previous2772_we0 sc_out sc_logic 1 signal 110 } 
	{ previous2772_address1 sc_out sc_lv 6 signal 110 } 
	{ previous2772_ce1 sc_out sc_logic 1 signal 110 } 
	{ previous2772_d1 sc_out sc_lv 48 signal 110 } 
	{ previous2772_q1 sc_in sc_lv 48 signal 110 } 
	{ previous2772_we1 sc_out sc_logic 1 signal 110 } 
	{ previous28_address0 sc_out sc_lv 6 signal 111 } 
	{ previous28_ce0 sc_out sc_logic 1 signal 111 } 
	{ previous28_d0 sc_out sc_lv 48 signal 111 } 
	{ previous28_q0 sc_in sc_lv 48 signal 111 } 
	{ previous28_we0 sc_out sc_logic 1 signal 111 } 
	{ previous28_address1 sc_out sc_lv 6 signal 111 } 
	{ previous28_ce1 sc_out sc_logic 1 signal 111 } 
	{ previous28_d1 sc_out sc_lv 48 signal 111 } 
	{ previous28_q1 sc_in sc_lv 48 signal 111 } 
	{ previous28_we1 sc_out sc_logic 1 signal 111 } 
	{ previous2873_address0 sc_out sc_lv 6 signal 112 } 
	{ previous2873_ce0 sc_out sc_logic 1 signal 112 } 
	{ previous2873_d0 sc_out sc_lv 48 signal 112 } 
	{ previous2873_q0 sc_in sc_lv 48 signal 112 } 
	{ previous2873_we0 sc_out sc_logic 1 signal 112 } 
	{ previous2873_address1 sc_out sc_lv 6 signal 112 } 
	{ previous2873_ce1 sc_out sc_logic 1 signal 112 } 
	{ previous2873_d1 sc_out sc_lv 48 signal 112 } 
	{ previous2873_q1 sc_in sc_lv 48 signal 112 } 
	{ previous2873_we1 sc_out sc_logic 1 signal 112 } 
	{ previous2874_address0 sc_out sc_lv 6 signal 113 } 
	{ previous2874_ce0 sc_out sc_logic 1 signal 113 } 
	{ previous2874_d0 sc_out sc_lv 48 signal 113 } 
	{ previous2874_q0 sc_in sc_lv 48 signal 113 } 
	{ previous2874_we0 sc_out sc_logic 1 signal 113 } 
	{ previous2874_address1 sc_out sc_lv 6 signal 113 } 
	{ previous2874_ce1 sc_out sc_logic 1 signal 113 } 
	{ previous2874_d1 sc_out sc_lv 48 signal 113 } 
	{ previous2874_q1 sc_in sc_lv 48 signal 113 } 
	{ previous2874_we1 sc_out sc_logic 1 signal 113 } 
	{ previous2875_address0 sc_out sc_lv 6 signal 114 } 
	{ previous2875_ce0 sc_out sc_logic 1 signal 114 } 
	{ previous2875_d0 sc_out sc_lv 48 signal 114 } 
	{ previous2875_q0 sc_in sc_lv 48 signal 114 } 
	{ previous2875_we0 sc_out sc_logic 1 signal 114 } 
	{ previous2875_address1 sc_out sc_lv 6 signal 114 } 
	{ previous2875_ce1 sc_out sc_logic 1 signal 114 } 
	{ previous2875_d1 sc_out sc_lv 48 signal 114 } 
	{ previous2875_q1 sc_in sc_lv 48 signal 114 } 
	{ previous2875_we1 sc_out sc_logic 1 signal 114 } 
	{ p_anonymous_namespace_profile_ticks_i sc_in sc_lv 64 signal 115 } 
	{ p_anonymous_namespace_profile_ticks_o sc_out sc_lv 64 signal 115 } 
	{ p_anonymous_namespace_profile_mac_i sc_in sc_lv 64 signal 116 } 
	{ p_anonymous_namespace_profile_mac_o sc_out sc_lv 64 signal 116 } 
	{ p_anonymous_namespace_profile_wait_i sc_in sc_lv 64 signal 117 } 
	{ p_anonymous_namespace_profile_wait_o sc_out sc_lv 64 signal 117 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 34 } 
	{ p_read1_ap_vld sc_in sc_logic 1 invld 35 } 
	{ p_read2_ap_vld sc_in sc_logic 1 invld 36 } 
	{ p_read3_ap_vld sc_in sc_logic 1 invld 37 } 
	{ p_read4_ap_vld sc_in sc_logic 1 invld 38 } 
	{ p_read5_ap_vld sc_in sc_logic 1 invld 39 } 
	{ p_read6_ap_vld sc_in sc_logic 1 invld 40 } 
	{ p_read7_ap_vld sc_in sc_logic 1 invld 41 } 
	{ ci_ap_vld sc_in sc_logic 1 invld 42 } 
	{ wi_ap_vld sc_in sc_logic 1 invld 43 } 
	{ k_ap_vld sc_in sc_logic 1 invld 44 } 
	{ stride_ap_vld sc_in sc_logic 1 invld 45 } 
	{ pad_ap_vld sc_in sc_logic 1 invld 46 } 
	{ ow_ap_vld sc_in sc_logic 1 invld 47 } 
	{ computing_ap_vld sc_in sc_logic 1 invld 48 } 
	{ emitting_offset_ap_vld sc_in sc_logic 1 invld 49 } 
	{ previous_rows_ap_vld sc_in sc_logic 1 invld 50 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ p_anonymous_namespace_profile_ticks_i_ap_vld sc_in sc_logic 1 invld 115 } 
	{ p_anonymous_namespace_profile_ticks_o_ap_vld sc_out sc_logic 1 outvld 115 } 
	{ p_anonymous_namespace_profile_mac_i_ap_vld sc_in sc_logic 1 invld 116 } 
	{ p_anonymous_namespace_profile_mac_o_ap_vld sc_out sc_logic 1 outvld 116 } 
	{ p_anonymous_namespace_profile_wait_i_ap_vld sc_in sc_logic 1 invld 117 } 
	{ p_anonymous_namespace_profile_wait_o_ap_vld sc_out sc_logic 1 outvld 117 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "pixels2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pixels2", "role": "dout" }} , 
 	{ "name": "pixels2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels2", "role": "empty_n" }} , 
 	{ "name": "pixels2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pixels2", "role": "read" }} , 
 	{ "name": "results_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "results", "role": "din" }} , 
 	{ "name": "results_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "full_n" }} , 
 	{ "name": "results_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "write" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights", "role": "d0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "weights_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "we0" }} , 
 	{ "name": "weights_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights", "role": "address1" }} , 
 	{ "name": "weights_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce1" }} , 
 	{ "name": "weights_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights", "role": "d1" }} , 
 	{ "name": "weights_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights", "role": "q1" }} , 
 	{ "name": "weights_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "we1" }} , 
 	{ "name": "weights1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights1", "role": "address0" }} , 
 	{ "name": "weights1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce0" }} , 
 	{ "name": "weights1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights1", "role": "d0" }} , 
 	{ "name": "weights1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights1", "role": "q0" }} , 
 	{ "name": "weights1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "we0" }} , 
 	{ "name": "weights1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights1", "role": "address1" }} , 
 	{ "name": "weights1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce1" }} , 
 	{ "name": "weights1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights1", "role": "d1" }} , 
 	{ "name": "weights1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights1", "role": "q1" }} , 
 	{ "name": "weights1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "we1" }} , 
 	{ "name": "weights2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights2", "role": "address0" }} , 
 	{ "name": "weights2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "ce0" }} , 
 	{ "name": "weights2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights2", "role": "d0" }} , 
 	{ "name": "weights2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights2", "role": "q0" }} , 
 	{ "name": "weights2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "we0" }} , 
 	{ "name": "weights2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights2", "role": "address1" }} , 
 	{ "name": "weights2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "ce1" }} , 
 	{ "name": "weights2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights2", "role": "d1" }} , 
 	{ "name": "weights2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights2", "role": "q1" }} , 
 	{ "name": "weights2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "we1" }} , 
 	{ "name": "weights3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights3", "role": "address0" }} , 
 	{ "name": "weights3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce0" }} , 
 	{ "name": "weights3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights3", "role": "d0" }} , 
 	{ "name": "weights3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights3", "role": "q0" }} , 
 	{ "name": "weights3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "we0" }} , 
 	{ "name": "weights3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights3", "role": "address1" }} , 
 	{ "name": "weights3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce1" }} , 
 	{ "name": "weights3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights3", "role": "d1" }} , 
 	{ "name": "weights3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights3", "role": "q1" }} , 
 	{ "name": "weights3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "we1" }} , 
 	{ "name": "weights14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights14", "role": "address0" }} , 
 	{ "name": "weights14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights14", "role": "ce0" }} , 
 	{ "name": "weights14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights14", "role": "d0" }} , 
 	{ "name": "weights14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights14", "role": "q0" }} , 
 	{ "name": "weights14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights14", "role": "we0" }} , 
 	{ "name": "weights14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights14", "role": "address1" }} , 
 	{ "name": "weights14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights14", "role": "ce1" }} , 
 	{ "name": "weights14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights14", "role": "d1" }} , 
 	{ "name": "weights14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights14", "role": "q1" }} , 
 	{ "name": "weights14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights14", "role": "we1" }} , 
 	{ "name": "weights15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights15", "role": "address0" }} , 
 	{ "name": "weights15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights15", "role": "ce0" }} , 
 	{ "name": "weights15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights15", "role": "d0" }} , 
 	{ "name": "weights15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights15", "role": "q0" }} , 
 	{ "name": "weights15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights15", "role": "we0" }} , 
 	{ "name": "weights15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights15", "role": "address1" }} , 
 	{ "name": "weights15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights15", "role": "ce1" }} , 
 	{ "name": "weights15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights15", "role": "d1" }} , 
 	{ "name": "weights15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights15", "role": "q1" }} , 
 	{ "name": "weights15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights15", "role": "we1" }} , 
 	{ "name": "weights16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights16", "role": "address0" }} , 
 	{ "name": "weights16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights16", "role": "ce0" }} , 
 	{ "name": "weights16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights16", "role": "d0" }} , 
 	{ "name": "weights16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights16", "role": "q0" }} , 
 	{ "name": "weights16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights16", "role": "we0" }} , 
 	{ "name": "weights16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights16", "role": "address1" }} , 
 	{ "name": "weights16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights16", "role": "ce1" }} , 
 	{ "name": "weights16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights16", "role": "d1" }} , 
 	{ "name": "weights16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights16", "role": "q1" }} , 
 	{ "name": "weights16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights16", "role": "we1" }} , 
 	{ "name": "weights17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights17", "role": "address0" }} , 
 	{ "name": "weights17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights17", "role": "ce0" }} , 
 	{ "name": "weights17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights17", "role": "d0" }} , 
 	{ "name": "weights17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights17", "role": "q0" }} , 
 	{ "name": "weights17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights17", "role": "we0" }} , 
 	{ "name": "weights17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights17", "role": "address1" }} , 
 	{ "name": "weights17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights17", "role": "ce1" }} , 
 	{ "name": "weights17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights17", "role": "d1" }} , 
 	{ "name": "weights17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights17", "role": "q1" }} , 
 	{ "name": "weights17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights17", "role": "we1" }} , 
 	{ "name": "weights28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights28", "role": "address0" }} , 
 	{ "name": "weights28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights28", "role": "ce0" }} , 
 	{ "name": "weights28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights28", "role": "d0" }} , 
 	{ "name": "weights28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights28", "role": "q0" }} , 
 	{ "name": "weights28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights28", "role": "we0" }} , 
 	{ "name": "weights28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights28", "role": "address1" }} , 
 	{ "name": "weights28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights28", "role": "ce1" }} , 
 	{ "name": "weights28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights28", "role": "d1" }} , 
 	{ "name": "weights28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights28", "role": "q1" }} , 
 	{ "name": "weights28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights28", "role": "we1" }} , 
 	{ "name": "weights29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights29", "role": "address0" }} , 
 	{ "name": "weights29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights29", "role": "ce0" }} , 
 	{ "name": "weights29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights29", "role": "d0" }} , 
 	{ "name": "weights29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights29", "role": "q0" }} , 
 	{ "name": "weights29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights29", "role": "we0" }} , 
 	{ "name": "weights29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights29", "role": "address1" }} , 
 	{ "name": "weights29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights29", "role": "ce1" }} , 
 	{ "name": "weights29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights29", "role": "d1" }} , 
 	{ "name": "weights29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights29", "role": "q1" }} , 
 	{ "name": "weights29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights29", "role": "we1" }} , 
 	{ "name": "weights210_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights210", "role": "address0" }} , 
 	{ "name": "weights210_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights210", "role": "ce0" }} , 
 	{ "name": "weights210_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights210", "role": "d0" }} , 
 	{ "name": "weights210_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights210", "role": "q0" }} , 
 	{ "name": "weights210_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights210", "role": "we0" }} , 
 	{ "name": "weights210_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights210", "role": "address1" }} , 
 	{ "name": "weights210_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights210", "role": "ce1" }} , 
 	{ "name": "weights210_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights210", "role": "d1" }} , 
 	{ "name": "weights210_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights210", "role": "q1" }} , 
 	{ "name": "weights210_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights210", "role": "we1" }} , 
 	{ "name": "weights211_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights211", "role": "address0" }} , 
 	{ "name": "weights211_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights211", "role": "ce0" }} , 
 	{ "name": "weights211_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights211", "role": "d0" }} , 
 	{ "name": "weights211_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights211", "role": "q0" }} , 
 	{ "name": "weights211_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights211", "role": "we0" }} , 
 	{ "name": "weights211_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights211", "role": "address1" }} , 
 	{ "name": "weights211_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights211", "role": "ce1" }} , 
 	{ "name": "weights211_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights211", "role": "d1" }} , 
 	{ "name": "weights211_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights211", "role": "q1" }} , 
 	{ "name": "weights211_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights211", "role": "we1" }} , 
 	{ "name": "weights312_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights312", "role": "address0" }} , 
 	{ "name": "weights312_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights312", "role": "ce0" }} , 
 	{ "name": "weights312_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights312", "role": "d0" }} , 
 	{ "name": "weights312_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights312", "role": "q0" }} , 
 	{ "name": "weights312_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights312", "role": "we0" }} , 
 	{ "name": "weights312_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights312", "role": "address1" }} , 
 	{ "name": "weights312_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights312", "role": "ce1" }} , 
 	{ "name": "weights312_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights312", "role": "d1" }} , 
 	{ "name": "weights312_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights312", "role": "q1" }} , 
 	{ "name": "weights312_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights312", "role": "we1" }} , 
 	{ "name": "weights313_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights313", "role": "address0" }} , 
 	{ "name": "weights313_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights313", "role": "ce0" }} , 
 	{ "name": "weights313_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights313", "role": "d0" }} , 
 	{ "name": "weights313_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights313", "role": "q0" }} , 
 	{ "name": "weights313_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights313", "role": "we0" }} , 
 	{ "name": "weights313_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights313", "role": "address1" }} , 
 	{ "name": "weights313_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights313", "role": "ce1" }} , 
 	{ "name": "weights313_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights313", "role": "d1" }} , 
 	{ "name": "weights313_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights313", "role": "q1" }} , 
 	{ "name": "weights313_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights313", "role": "we1" }} , 
 	{ "name": "weights314_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights314", "role": "address0" }} , 
 	{ "name": "weights314_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights314", "role": "ce0" }} , 
 	{ "name": "weights314_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights314", "role": "d0" }} , 
 	{ "name": "weights314_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights314", "role": "q0" }} , 
 	{ "name": "weights314_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights314", "role": "we0" }} , 
 	{ "name": "weights314_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights314", "role": "address1" }} , 
 	{ "name": "weights314_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights314", "role": "ce1" }} , 
 	{ "name": "weights314_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights314", "role": "d1" }} , 
 	{ "name": "weights314_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights314", "role": "q1" }} , 
 	{ "name": "weights314_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights314", "role": "we1" }} , 
 	{ "name": "weights315_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights315", "role": "address0" }} , 
 	{ "name": "weights315_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights315", "role": "ce0" }} , 
 	{ "name": "weights315_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights315", "role": "d0" }} , 
 	{ "name": "weights315_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights315", "role": "q0" }} , 
 	{ "name": "weights315_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights315", "role": "we0" }} , 
 	{ "name": "weights315_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights315", "role": "address1" }} , 
 	{ "name": "weights315_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights315", "role": "ce1" }} , 
 	{ "name": "weights315_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights315", "role": "d1" }} , 
 	{ "name": "weights315_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights315", "role": "q1" }} , 
 	{ "name": "weights315_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights315", "role": "we1" }} , 
 	{ "name": "weights4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights4", "role": "address0" }} , 
 	{ "name": "weights4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights4", "role": "ce0" }} , 
 	{ "name": "weights4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights4", "role": "d0" }} , 
 	{ "name": "weights4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights4", "role": "q0" }} , 
 	{ "name": "weights4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights4", "role": "we0" }} , 
 	{ "name": "weights4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights4", "role": "address1" }} , 
 	{ "name": "weights4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights4", "role": "ce1" }} , 
 	{ "name": "weights4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights4", "role": "d1" }} , 
 	{ "name": "weights4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights4", "role": "q1" }} , 
 	{ "name": "weights4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights4", "role": "we1" }} , 
 	{ "name": "weights416_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights416", "role": "address0" }} , 
 	{ "name": "weights416_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights416", "role": "ce0" }} , 
 	{ "name": "weights416_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights416", "role": "d0" }} , 
 	{ "name": "weights416_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights416", "role": "q0" }} , 
 	{ "name": "weights416_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights416", "role": "we0" }} , 
 	{ "name": "weights416_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights416", "role": "address1" }} , 
 	{ "name": "weights416_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights416", "role": "ce1" }} , 
 	{ "name": "weights416_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights416", "role": "d1" }} , 
 	{ "name": "weights416_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights416", "role": "q1" }} , 
 	{ "name": "weights416_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights416", "role": "we1" }} , 
 	{ "name": "weights417_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights417", "role": "address0" }} , 
 	{ "name": "weights417_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights417", "role": "ce0" }} , 
 	{ "name": "weights417_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights417", "role": "d0" }} , 
 	{ "name": "weights417_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights417", "role": "q0" }} , 
 	{ "name": "weights417_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights417", "role": "we0" }} , 
 	{ "name": "weights417_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights417", "role": "address1" }} , 
 	{ "name": "weights417_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights417", "role": "ce1" }} , 
 	{ "name": "weights417_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights417", "role": "d1" }} , 
 	{ "name": "weights417_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights417", "role": "q1" }} , 
 	{ "name": "weights417_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights417", "role": "we1" }} , 
 	{ "name": "weights418_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights418", "role": "address0" }} , 
 	{ "name": "weights418_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights418", "role": "ce0" }} , 
 	{ "name": "weights418_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights418", "role": "d0" }} , 
 	{ "name": "weights418_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights418", "role": "q0" }} , 
 	{ "name": "weights418_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights418", "role": "we0" }} , 
 	{ "name": "weights418_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights418", "role": "address1" }} , 
 	{ "name": "weights418_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights418", "role": "ce1" }} , 
 	{ "name": "weights418_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights418", "role": "d1" }} , 
 	{ "name": "weights418_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights418", "role": "q1" }} , 
 	{ "name": "weights418_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights418", "role": "we1" }} , 
 	{ "name": "weights5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights5", "role": "address0" }} , 
 	{ "name": "weights5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "ce0" }} , 
 	{ "name": "weights5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights5", "role": "d0" }} , 
 	{ "name": "weights5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights5", "role": "q0" }} , 
 	{ "name": "weights5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "we0" }} , 
 	{ "name": "weights5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights5", "role": "address1" }} , 
 	{ "name": "weights5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "ce1" }} , 
 	{ "name": "weights5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights5", "role": "d1" }} , 
 	{ "name": "weights5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights5", "role": "q1" }} , 
 	{ "name": "weights5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights5", "role": "we1" }} , 
 	{ "name": "weights519_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights519", "role": "address0" }} , 
 	{ "name": "weights519_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights519", "role": "ce0" }} , 
 	{ "name": "weights519_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights519", "role": "d0" }} , 
 	{ "name": "weights519_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights519", "role": "q0" }} , 
 	{ "name": "weights519_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights519", "role": "we0" }} , 
 	{ "name": "weights519_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights519", "role": "address1" }} , 
 	{ "name": "weights519_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights519", "role": "ce1" }} , 
 	{ "name": "weights519_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights519", "role": "d1" }} , 
 	{ "name": "weights519_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights519", "role": "q1" }} , 
 	{ "name": "weights519_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights519", "role": "we1" }} , 
 	{ "name": "weights520_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights520", "role": "address0" }} , 
 	{ "name": "weights520_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights520", "role": "ce0" }} , 
 	{ "name": "weights520_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights520", "role": "d0" }} , 
 	{ "name": "weights520_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights520", "role": "q0" }} , 
 	{ "name": "weights520_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights520", "role": "we0" }} , 
 	{ "name": "weights520_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights520", "role": "address1" }} , 
 	{ "name": "weights520_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights520", "role": "ce1" }} , 
 	{ "name": "weights520_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights520", "role": "d1" }} , 
 	{ "name": "weights520_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights520", "role": "q1" }} , 
 	{ "name": "weights520_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights520", "role": "we1" }} , 
 	{ "name": "weights521_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights521", "role": "address0" }} , 
 	{ "name": "weights521_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights521", "role": "ce0" }} , 
 	{ "name": "weights521_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights521", "role": "d0" }} , 
 	{ "name": "weights521_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights521", "role": "q0" }} , 
 	{ "name": "weights521_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights521", "role": "we0" }} , 
 	{ "name": "weights521_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights521", "role": "address1" }} , 
 	{ "name": "weights521_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights521", "role": "ce1" }} , 
 	{ "name": "weights521_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights521", "role": "d1" }} , 
 	{ "name": "weights521_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights521", "role": "q1" }} , 
 	{ "name": "weights521_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights521", "role": "we1" }} , 
 	{ "name": "weights6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights6", "role": "address0" }} , 
 	{ "name": "weights6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "ce0" }} , 
 	{ "name": "weights6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights6", "role": "d0" }} , 
 	{ "name": "weights6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights6", "role": "q0" }} , 
 	{ "name": "weights6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "we0" }} , 
 	{ "name": "weights6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights6", "role": "address1" }} , 
 	{ "name": "weights6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "ce1" }} , 
 	{ "name": "weights6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights6", "role": "d1" }} , 
 	{ "name": "weights6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights6", "role": "q1" }} , 
 	{ "name": "weights6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights6", "role": "we1" }} , 
 	{ "name": "weights622_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights622", "role": "address0" }} , 
 	{ "name": "weights622_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights622", "role": "ce0" }} , 
 	{ "name": "weights622_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights622", "role": "d0" }} , 
 	{ "name": "weights622_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights622", "role": "q0" }} , 
 	{ "name": "weights622_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights622", "role": "we0" }} , 
 	{ "name": "weights622_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights622", "role": "address1" }} , 
 	{ "name": "weights622_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights622", "role": "ce1" }} , 
 	{ "name": "weights622_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights622", "role": "d1" }} , 
 	{ "name": "weights622_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights622", "role": "q1" }} , 
 	{ "name": "weights622_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights622", "role": "we1" }} , 
 	{ "name": "weights623_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights623", "role": "address0" }} , 
 	{ "name": "weights623_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights623", "role": "ce0" }} , 
 	{ "name": "weights623_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights623", "role": "d0" }} , 
 	{ "name": "weights623_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights623", "role": "q0" }} , 
 	{ "name": "weights623_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights623", "role": "we0" }} , 
 	{ "name": "weights623_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights623", "role": "address1" }} , 
 	{ "name": "weights623_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights623", "role": "ce1" }} , 
 	{ "name": "weights623_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights623", "role": "d1" }} , 
 	{ "name": "weights623_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights623", "role": "q1" }} , 
 	{ "name": "weights623_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights623", "role": "we1" }} , 
 	{ "name": "weights624_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights624", "role": "address0" }} , 
 	{ "name": "weights624_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights624", "role": "ce0" }} , 
 	{ "name": "weights624_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights624", "role": "d0" }} , 
 	{ "name": "weights624_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights624", "role": "q0" }} , 
 	{ "name": "weights624_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights624", "role": "we0" }} , 
 	{ "name": "weights624_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights624", "role": "address1" }} , 
 	{ "name": "weights624_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights624", "role": "ce1" }} , 
 	{ "name": "weights624_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights624", "role": "d1" }} , 
 	{ "name": "weights624_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights624", "role": "q1" }} , 
 	{ "name": "weights624_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights624", "role": "we1" }} , 
 	{ "name": "weights7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights7", "role": "address0" }} , 
 	{ "name": "weights7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "ce0" }} , 
 	{ "name": "weights7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights7", "role": "d0" }} , 
 	{ "name": "weights7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights7", "role": "q0" }} , 
 	{ "name": "weights7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "we0" }} , 
 	{ "name": "weights7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights7", "role": "address1" }} , 
 	{ "name": "weights7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "ce1" }} , 
 	{ "name": "weights7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights7", "role": "d1" }} , 
 	{ "name": "weights7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights7", "role": "q1" }} , 
 	{ "name": "weights7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights7", "role": "we1" }} , 
 	{ "name": "weights725_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights725", "role": "address0" }} , 
 	{ "name": "weights725_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights725", "role": "ce0" }} , 
 	{ "name": "weights725_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights725", "role": "d0" }} , 
 	{ "name": "weights725_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights725", "role": "q0" }} , 
 	{ "name": "weights725_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights725", "role": "we0" }} , 
 	{ "name": "weights725_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights725", "role": "address1" }} , 
 	{ "name": "weights725_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights725", "role": "ce1" }} , 
 	{ "name": "weights725_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights725", "role": "d1" }} , 
 	{ "name": "weights725_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights725", "role": "q1" }} , 
 	{ "name": "weights725_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights725", "role": "we1" }} , 
 	{ "name": "weights726_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights726", "role": "address0" }} , 
 	{ "name": "weights726_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights726", "role": "ce0" }} , 
 	{ "name": "weights726_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights726", "role": "d0" }} , 
 	{ "name": "weights726_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights726", "role": "q0" }} , 
 	{ "name": "weights726_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights726", "role": "we0" }} , 
 	{ "name": "weights726_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights726", "role": "address1" }} , 
 	{ "name": "weights726_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights726", "role": "ce1" }} , 
 	{ "name": "weights726_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights726", "role": "d1" }} , 
 	{ "name": "weights726_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights726", "role": "q1" }} , 
 	{ "name": "weights726_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights726", "role": "we1" }} , 
 	{ "name": "weights727_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights727", "role": "address0" }} , 
 	{ "name": "weights727_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights727", "role": "ce0" }} , 
 	{ "name": "weights727_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights727", "role": "d0" }} , 
 	{ "name": "weights727_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights727", "role": "q0" }} , 
 	{ "name": "weights727_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights727", "role": "we0" }} , 
 	{ "name": "weights727_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "weights727", "role": "address1" }} , 
 	{ "name": "weights727_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights727", "role": "ce1" }} , 
 	{ "name": "weights727_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights727", "role": "d1" }} , 
 	{ "name": "weights727_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights727", "role": "q1" }} , 
 	{ "name": "weights727_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights727", "role": "we1" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "ci", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ci", "role": "default" }} , 
 	{ "name": "wi", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wi", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "pad", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pad", "role": "default" }} , 
 	{ "name": "ow", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ow", "role": "default" }} , 
 	{ "name": "computing", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "computing", "role": "default" }} , 
 	{ "name": "emitting_offset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emitting_offset", "role": "default" }} , 
 	{ "name": "previous_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "previous_rows", "role": "default" }} , 
 	{ "name": "current_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current", "role": "address0" }} , 
 	{ "name": "current_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current", "role": "ce0" }} , 
 	{ "name": "current_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current", "role": "d0" }} , 
 	{ "name": "current_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current", "role": "q0" }} , 
 	{ "name": "current_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current", "role": "we0" }} , 
 	{ "name": "current_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current", "role": "address1" }} , 
 	{ "name": "current_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current", "role": "ce1" }} , 
 	{ "name": "current_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current", "role": "d1" }} , 
 	{ "name": "current_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current", "role": "q1" }} , 
 	{ "name": "current_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current", "role": "we1" }} , 
 	{ "name": "current28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current28", "role": "address0" }} , 
 	{ "name": "current28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current28", "role": "ce0" }} , 
 	{ "name": "current28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current28", "role": "d0" }} , 
 	{ "name": "current28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current28", "role": "q0" }} , 
 	{ "name": "current28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current28", "role": "we0" }} , 
 	{ "name": "current28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current28", "role": "address1" }} , 
 	{ "name": "current28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current28", "role": "ce1" }} , 
 	{ "name": "current28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current28", "role": "d1" }} , 
 	{ "name": "current28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current28", "role": "q1" }} , 
 	{ "name": "current28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current28", "role": "we1" }} , 
 	{ "name": "current29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current29", "role": "address0" }} , 
 	{ "name": "current29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current29", "role": "ce0" }} , 
 	{ "name": "current29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current29", "role": "d0" }} , 
 	{ "name": "current29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current29", "role": "q0" }} , 
 	{ "name": "current29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current29", "role": "we0" }} , 
 	{ "name": "current29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current29", "role": "address1" }} , 
 	{ "name": "current29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current29", "role": "ce1" }} , 
 	{ "name": "current29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current29", "role": "d1" }} , 
 	{ "name": "current29_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current29", "role": "q1" }} , 
 	{ "name": "current29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current29", "role": "we1" }} , 
 	{ "name": "current30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current30", "role": "address0" }} , 
 	{ "name": "current30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current30", "role": "ce0" }} , 
 	{ "name": "current30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current30", "role": "d0" }} , 
 	{ "name": "current30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current30", "role": "q0" }} , 
 	{ "name": "current30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current30", "role": "we0" }} , 
 	{ "name": "current30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current30", "role": "address1" }} , 
 	{ "name": "current30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current30", "role": "ce1" }} , 
 	{ "name": "current30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current30", "role": "d1" }} , 
 	{ "name": "current30_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current30", "role": "q1" }} , 
 	{ "name": "current30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current30", "role": "we1" }} , 
 	{ "name": "current15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current15", "role": "address0" }} , 
 	{ "name": "current15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current15", "role": "ce0" }} , 
 	{ "name": "current15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current15", "role": "d0" }} , 
 	{ "name": "current15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current15", "role": "q0" }} , 
 	{ "name": "current15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current15", "role": "we0" }} , 
 	{ "name": "current15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current15", "role": "address1" }} , 
 	{ "name": "current15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current15", "role": "ce1" }} , 
 	{ "name": "current15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current15", "role": "d1" }} , 
 	{ "name": "current15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current15", "role": "q1" }} , 
 	{ "name": "current15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current15", "role": "we1" }} , 
 	{ "name": "current1531_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1531", "role": "address0" }} , 
 	{ "name": "current1531_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1531", "role": "ce0" }} , 
 	{ "name": "current1531_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1531", "role": "d0" }} , 
 	{ "name": "current1531_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1531", "role": "q0" }} , 
 	{ "name": "current1531_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1531", "role": "we0" }} , 
 	{ "name": "current1531_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1531", "role": "address1" }} , 
 	{ "name": "current1531_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1531", "role": "ce1" }} , 
 	{ "name": "current1531_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1531", "role": "d1" }} , 
 	{ "name": "current1531_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1531", "role": "q1" }} , 
 	{ "name": "current1531_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1531", "role": "we1" }} , 
 	{ "name": "current1532_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1532", "role": "address0" }} , 
 	{ "name": "current1532_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1532", "role": "ce0" }} , 
 	{ "name": "current1532_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1532", "role": "d0" }} , 
 	{ "name": "current1532_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1532", "role": "q0" }} , 
 	{ "name": "current1532_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1532", "role": "we0" }} , 
 	{ "name": "current1532_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1532", "role": "address1" }} , 
 	{ "name": "current1532_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1532", "role": "ce1" }} , 
 	{ "name": "current1532_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1532", "role": "d1" }} , 
 	{ "name": "current1532_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1532", "role": "q1" }} , 
 	{ "name": "current1532_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1532", "role": "we1" }} , 
 	{ "name": "current1533_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1533", "role": "address0" }} , 
 	{ "name": "current1533_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1533", "role": "ce0" }} , 
 	{ "name": "current1533_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1533", "role": "d0" }} , 
 	{ "name": "current1533_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1533", "role": "q0" }} , 
 	{ "name": "current1533_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1533", "role": "we0" }} , 
 	{ "name": "current1533_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1533", "role": "address1" }} , 
 	{ "name": "current1533_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1533", "role": "ce1" }} , 
 	{ "name": "current1533_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1533", "role": "d1" }} , 
 	{ "name": "current1533_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1533", "role": "q1" }} , 
 	{ "name": "current1533_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1533", "role": "we1" }} , 
 	{ "name": "current16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current16", "role": "address0" }} , 
 	{ "name": "current16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current16", "role": "ce0" }} , 
 	{ "name": "current16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current16", "role": "d0" }} , 
 	{ "name": "current16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current16", "role": "q0" }} , 
 	{ "name": "current16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current16", "role": "we0" }} , 
 	{ "name": "current16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current16", "role": "address1" }} , 
 	{ "name": "current16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current16", "role": "ce1" }} , 
 	{ "name": "current16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current16", "role": "d1" }} , 
 	{ "name": "current16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current16", "role": "q1" }} , 
 	{ "name": "current16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current16", "role": "we1" }} , 
 	{ "name": "current1634_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1634", "role": "address0" }} , 
 	{ "name": "current1634_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1634", "role": "ce0" }} , 
 	{ "name": "current1634_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1634", "role": "d0" }} , 
 	{ "name": "current1634_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1634", "role": "q0" }} , 
 	{ "name": "current1634_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1634", "role": "we0" }} , 
 	{ "name": "current1634_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1634", "role": "address1" }} , 
 	{ "name": "current1634_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1634", "role": "ce1" }} , 
 	{ "name": "current1634_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1634", "role": "d1" }} , 
 	{ "name": "current1634_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1634", "role": "q1" }} , 
 	{ "name": "current1634_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1634", "role": "we1" }} , 
 	{ "name": "current1635_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1635", "role": "address0" }} , 
 	{ "name": "current1635_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1635", "role": "ce0" }} , 
 	{ "name": "current1635_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1635", "role": "d0" }} , 
 	{ "name": "current1635_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1635", "role": "q0" }} , 
 	{ "name": "current1635_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1635", "role": "we0" }} , 
 	{ "name": "current1635_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1635", "role": "address1" }} , 
 	{ "name": "current1635_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1635", "role": "ce1" }} , 
 	{ "name": "current1635_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1635", "role": "d1" }} , 
 	{ "name": "current1635_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1635", "role": "q1" }} , 
 	{ "name": "current1635_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1635", "role": "we1" }} , 
 	{ "name": "current1636_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1636", "role": "address0" }} , 
 	{ "name": "current1636_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1636", "role": "ce0" }} , 
 	{ "name": "current1636_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1636", "role": "d0" }} , 
 	{ "name": "current1636_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1636", "role": "q0" }} , 
 	{ "name": "current1636_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1636", "role": "we0" }} , 
 	{ "name": "current1636_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1636", "role": "address1" }} , 
 	{ "name": "current1636_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1636", "role": "ce1" }} , 
 	{ "name": "current1636_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1636", "role": "d1" }} , 
 	{ "name": "current1636_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1636", "role": "q1" }} , 
 	{ "name": "current1636_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1636", "role": "we1" }} , 
 	{ "name": "current17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current17", "role": "address0" }} , 
 	{ "name": "current17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current17", "role": "ce0" }} , 
 	{ "name": "current17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current17", "role": "d0" }} , 
 	{ "name": "current17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current17", "role": "q0" }} , 
 	{ "name": "current17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current17", "role": "we0" }} , 
 	{ "name": "current17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current17", "role": "address1" }} , 
 	{ "name": "current17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current17", "role": "ce1" }} , 
 	{ "name": "current17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current17", "role": "d1" }} , 
 	{ "name": "current17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current17", "role": "q1" }} , 
 	{ "name": "current17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current17", "role": "we1" }} , 
 	{ "name": "current1737_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1737", "role": "address0" }} , 
 	{ "name": "current1737_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1737", "role": "ce0" }} , 
 	{ "name": "current1737_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1737", "role": "d0" }} , 
 	{ "name": "current1737_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1737", "role": "q0" }} , 
 	{ "name": "current1737_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1737", "role": "we0" }} , 
 	{ "name": "current1737_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1737", "role": "address1" }} , 
 	{ "name": "current1737_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1737", "role": "ce1" }} , 
 	{ "name": "current1737_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1737", "role": "d1" }} , 
 	{ "name": "current1737_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1737", "role": "q1" }} , 
 	{ "name": "current1737_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1737", "role": "we1" }} , 
 	{ "name": "current1738_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1738", "role": "address0" }} , 
 	{ "name": "current1738_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1738", "role": "ce0" }} , 
 	{ "name": "current1738_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1738", "role": "d0" }} , 
 	{ "name": "current1738_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1738", "role": "q0" }} , 
 	{ "name": "current1738_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1738", "role": "we0" }} , 
 	{ "name": "current1738_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1738", "role": "address1" }} , 
 	{ "name": "current1738_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1738", "role": "ce1" }} , 
 	{ "name": "current1738_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1738", "role": "d1" }} , 
 	{ "name": "current1738_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1738", "role": "q1" }} , 
 	{ "name": "current1738_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1738", "role": "we1" }} , 
 	{ "name": "current1739_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1739", "role": "address0" }} , 
 	{ "name": "current1739_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1739", "role": "ce0" }} , 
 	{ "name": "current1739_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1739", "role": "d0" }} , 
 	{ "name": "current1739_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1739", "role": "q0" }} , 
 	{ "name": "current1739_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1739", "role": "we0" }} , 
 	{ "name": "current1739_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1739", "role": "address1" }} , 
 	{ "name": "current1739_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1739", "role": "ce1" }} , 
 	{ "name": "current1739_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1739", "role": "d1" }} , 
 	{ "name": "current1739_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1739", "role": "q1" }} , 
 	{ "name": "current1739_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1739", "role": "we1" }} , 
 	{ "name": "current18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current18", "role": "address0" }} , 
 	{ "name": "current18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current18", "role": "ce0" }} , 
 	{ "name": "current18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current18", "role": "d0" }} , 
 	{ "name": "current18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current18", "role": "q0" }} , 
 	{ "name": "current18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current18", "role": "we0" }} , 
 	{ "name": "current18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current18", "role": "address1" }} , 
 	{ "name": "current18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current18", "role": "ce1" }} , 
 	{ "name": "current18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current18", "role": "d1" }} , 
 	{ "name": "current18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current18", "role": "q1" }} , 
 	{ "name": "current18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current18", "role": "we1" }} , 
 	{ "name": "current1840_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1840", "role": "address0" }} , 
 	{ "name": "current1840_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1840", "role": "ce0" }} , 
 	{ "name": "current1840_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1840", "role": "d0" }} , 
 	{ "name": "current1840_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1840", "role": "q0" }} , 
 	{ "name": "current1840_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1840", "role": "we0" }} , 
 	{ "name": "current1840_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1840", "role": "address1" }} , 
 	{ "name": "current1840_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1840", "role": "ce1" }} , 
 	{ "name": "current1840_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1840", "role": "d1" }} , 
 	{ "name": "current1840_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1840", "role": "q1" }} , 
 	{ "name": "current1840_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1840", "role": "we1" }} , 
 	{ "name": "current1841_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1841", "role": "address0" }} , 
 	{ "name": "current1841_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1841", "role": "ce0" }} , 
 	{ "name": "current1841_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1841", "role": "d0" }} , 
 	{ "name": "current1841_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1841", "role": "q0" }} , 
 	{ "name": "current1841_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1841", "role": "we0" }} , 
 	{ "name": "current1841_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1841", "role": "address1" }} , 
 	{ "name": "current1841_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1841", "role": "ce1" }} , 
 	{ "name": "current1841_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1841", "role": "d1" }} , 
 	{ "name": "current1841_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1841", "role": "q1" }} , 
 	{ "name": "current1841_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1841", "role": "we1" }} , 
 	{ "name": "current1842_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1842", "role": "address0" }} , 
 	{ "name": "current1842_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1842", "role": "ce0" }} , 
 	{ "name": "current1842_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1842", "role": "d0" }} , 
 	{ "name": "current1842_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1842", "role": "q0" }} , 
 	{ "name": "current1842_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1842", "role": "we0" }} , 
 	{ "name": "current1842_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1842", "role": "address1" }} , 
 	{ "name": "current1842_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1842", "role": "ce1" }} , 
 	{ "name": "current1842_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1842", "role": "d1" }} , 
 	{ "name": "current1842_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1842", "role": "q1" }} , 
 	{ "name": "current1842_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1842", "role": "we1" }} , 
 	{ "name": "current19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current19", "role": "address0" }} , 
 	{ "name": "current19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current19", "role": "ce0" }} , 
 	{ "name": "current19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current19", "role": "d0" }} , 
 	{ "name": "current19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current19", "role": "q0" }} , 
 	{ "name": "current19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current19", "role": "we0" }} , 
 	{ "name": "current19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current19", "role": "address1" }} , 
 	{ "name": "current19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current19", "role": "ce1" }} , 
 	{ "name": "current19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current19", "role": "d1" }} , 
 	{ "name": "current19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current19", "role": "q1" }} , 
 	{ "name": "current19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current19", "role": "we1" }} , 
 	{ "name": "current1943_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1943", "role": "address0" }} , 
 	{ "name": "current1943_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1943", "role": "ce0" }} , 
 	{ "name": "current1943_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1943", "role": "d0" }} , 
 	{ "name": "current1943_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1943", "role": "q0" }} , 
 	{ "name": "current1943_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1943", "role": "we0" }} , 
 	{ "name": "current1943_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1943", "role": "address1" }} , 
 	{ "name": "current1943_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1943", "role": "ce1" }} , 
 	{ "name": "current1943_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1943", "role": "d1" }} , 
 	{ "name": "current1943_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1943", "role": "q1" }} , 
 	{ "name": "current1943_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1943", "role": "we1" }} , 
 	{ "name": "current1944_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1944", "role": "address0" }} , 
 	{ "name": "current1944_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1944", "role": "ce0" }} , 
 	{ "name": "current1944_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1944", "role": "d0" }} , 
 	{ "name": "current1944_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1944", "role": "q0" }} , 
 	{ "name": "current1944_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1944", "role": "we0" }} , 
 	{ "name": "current1944_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1944", "role": "address1" }} , 
 	{ "name": "current1944_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1944", "role": "ce1" }} , 
 	{ "name": "current1944_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1944", "role": "d1" }} , 
 	{ "name": "current1944_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1944", "role": "q1" }} , 
 	{ "name": "current1944_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1944", "role": "we1" }} , 
 	{ "name": "current1945_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1945", "role": "address0" }} , 
 	{ "name": "current1945_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1945", "role": "ce0" }} , 
 	{ "name": "current1945_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1945", "role": "d0" }} , 
 	{ "name": "current1945_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1945", "role": "q0" }} , 
 	{ "name": "current1945_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1945", "role": "we0" }} , 
 	{ "name": "current1945_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current1945", "role": "address1" }} , 
 	{ "name": "current1945_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1945", "role": "ce1" }} , 
 	{ "name": "current1945_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1945", "role": "d1" }} , 
 	{ "name": "current1945_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current1945", "role": "q1" }} , 
 	{ "name": "current1945_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current1945", "role": "we1" }} , 
 	{ "name": "current20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current20", "role": "address0" }} , 
 	{ "name": "current20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current20", "role": "ce0" }} , 
 	{ "name": "current20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current20", "role": "d0" }} , 
 	{ "name": "current20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current20", "role": "q0" }} , 
 	{ "name": "current20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current20", "role": "we0" }} , 
 	{ "name": "current20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current20", "role": "address1" }} , 
 	{ "name": "current20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current20", "role": "ce1" }} , 
 	{ "name": "current20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current20", "role": "d1" }} , 
 	{ "name": "current20_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current20", "role": "q1" }} , 
 	{ "name": "current20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current20", "role": "we1" }} , 
 	{ "name": "current2046_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2046", "role": "address0" }} , 
 	{ "name": "current2046_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2046", "role": "ce0" }} , 
 	{ "name": "current2046_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2046", "role": "d0" }} , 
 	{ "name": "current2046_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2046", "role": "q0" }} , 
 	{ "name": "current2046_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2046", "role": "we0" }} , 
 	{ "name": "current2046_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2046", "role": "address1" }} , 
 	{ "name": "current2046_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2046", "role": "ce1" }} , 
 	{ "name": "current2046_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2046", "role": "d1" }} , 
 	{ "name": "current2046_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2046", "role": "q1" }} , 
 	{ "name": "current2046_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2046", "role": "we1" }} , 
 	{ "name": "current2047_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2047", "role": "address0" }} , 
 	{ "name": "current2047_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2047", "role": "ce0" }} , 
 	{ "name": "current2047_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2047", "role": "d0" }} , 
 	{ "name": "current2047_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2047", "role": "q0" }} , 
 	{ "name": "current2047_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2047", "role": "we0" }} , 
 	{ "name": "current2047_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2047", "role": "address1" }} , 
 	{ "name": "current2047_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2047", "role": "ce1" }} , 
 	{ "name": "current2047_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2047", "role": "d1" }} , 
 	{ "name": "current2047_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2047", "role": "q1" }} , 
 	{ "name": "current2047_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2047", "role": "we1" }} , 
 	{ "name": "current2048_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2048", "role": "address0" }} , 
 	{ "name": "current2048_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2048", "role": "ce0" }} , 
 	{ "name": "current2048_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2048", "role": "d0" }} , 
 	{ "name": "current2048_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2048", "role": "q0" }} , 
 	{ "name": "current2048_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2048", "role": "we0" }} , 
 	{ "name": "current2048_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2048", "role": "address1" }} , 
 	{ "name": "current2048_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2048", "role": "ce1" }} , 
 	{ "name": "current2048_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2048", "role": "d1" }} , 
 	{ "name": "current2048_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2048", "role": "q1" }} , 
 	{ "name": "current2048_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2048", "role": "we1" }} , 
 	{ "name": "current21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current21", "role": "address0" }} , 
 	{ "name": "current21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current21", "role": "ce0" }} , 
 	{ "name": "current21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current21", "role": "d0" }} , 
 	{ "name": "current21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current21", "role": "q0" }} , 
 	{ "name": "current21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current21", "role": "we0" }} , 
 	{ "name": "current21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current21", "role": "address1" }} , 
 	{ "name": "current21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current21", "role": "ce1" }} , 
 	{ "name": "current21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current21", "role": "d1" }} , 
 	{ "name": "current21_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current21", "role": "q1" }} , 
 	{ "name": "current21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current21", "role": "we1" }} , 
 	{ "name": "current2149_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2149", "role": "address0" }} , 
 	{ "name": "current2149_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2149", "role": "ce0" }} , 
 	{ "name": "current2149_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2149", "role": "d0" }} , 
 	{ "name": "current2149_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2149", "role": "q0" }} , 
 	{ "name": "current2149_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2149", "role": "we0" }} , 
 	{ "name": "current2149_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2149", "role": "address1" }} , 
 	{ "name": "current2149_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2149", "role": "ce1" }} , 
 	{ "name": "current2149_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2149", "role": "d1" }} , 
 	{ "name": "current2149_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2149", "role": "q1" }} , 
 	{ "name": "current2149_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2149", "role": "we1" }} , 
 	{ "name": "current2150_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2150", "role": "address0" }} , 
 	{ "name": "current2150_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2150", "role": "ce0" }} , 
 	{ "name": "current2150_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2150", "role": "d0" }} , 
 	{ "name": "current2150_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2150", "role": "q0" }} , 
 	{ "name": "current2150_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2150", "role": "we0" }} , 
 	{ "name": "current2150_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2150", "role": "address1" }} , 
 	{ "name": "current2150_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2150", "role": "ce1" }} , 
 	{ "name": "current2150_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2150", "role": "d1" }} , 
 	{ "name": "current2150_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2150", "role": "q1" }} , 
 	{ "name": "current2150_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2150", "role": "we1" }} , 
 	{ "name": "current2151_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2151", "role": "address0" }} , 
 	{ "name": "current2151_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2151", "role": "ce0" }} , 
 	{ "name": "current2151_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2151", "role": "d0" }} , 
 	{ "name": "current2151_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2151", "role": "q0" }} , 
 	{ "name": "current2151_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2151", "role": "we0" }} , 
 	{ "name": "current2151_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "current2151", "role": "address1" }} , 
 	{ "name": "current2151_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2151", "role": "ce1" }} , 
 	{ "name": "current2151_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2151", "role": "d1" }} , 
 	{ "name": "current2151_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "current2151", "role": "q1" }} , 
 	{ "name": "current2151_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current2151", "role": "we1" }} , 
 	{ "name": "previous_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous", "role": "address0" }} , 
 	{ "name": "previous_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous", "role": "ce0" }} , 
 	{ "name": "previous_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous", "role": "d0" }} , 
 	{ "name": "previous_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous", "role": "q0" }} , 
 	{ "name": "previous_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous", "role": "we0" }} , 
 	{ "name": "previous_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous", "role": "address1" }} , 
 	{ "name": "previous_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous", "role": "ce1" }} , 
 	{ "name": "previous_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous", "role": "d1" }} , 
 	{ "name": "previous_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous", "role": "q1" }} , 
 	{ "name": "previous_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous", "role": "we1" }} , 
 	{ "name": "previous52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous52", "role": "address0" }} , 
 	{ "name": "previous52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous52", "role": "ce0" }} , 
 	{ "name": "previous52_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous52", "role": "d0" }} , 
 	{ "name": "previous52_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous52", "role": "q0" }} , 
 	{ "name": "previous52_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous52", "role": "we0" }} , 
 	{ "name": "previous52_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous52", "role": "address1" }} , 
 	{ "name": "previous52_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous52", "role": "ce1" }} , 
 	{ "name": "previous52_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous52", "role": "d1" }} , 
 	{ "name": "previous52_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous52", "role": "q1" }} , 
 	{ "name": "previous52_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous52", "role": "we1" }} , 
 	{ "name": "previous53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous53", "role": "address0" }} , 
 	{ "name": "previous53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous53", "role": "ce0" }} , 
 	{ "name": "previous53_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous53", "role": "d0" }} , 
 	{ "name": "previous53_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous53", "role": "q0" }} , 
 	{ "name": "previous53_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous53", "role": "we0" }} , 
 	{ "name": "previous53_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous53", "role": "address1" }} , 
 	{ "name": "previous53_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous53", "role": "ce1" }} , 
 	{ "name": "previous53_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous53", "role": "d1" }} , 
 	{ "name": "previous53_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous53", "role": "q1" }} , 
 	{ "name": "previous53_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous53", "role": "we1" }} , 
 	{ "name": "previous54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous54", "role": "address0" }} , 
 	{ "name": "previous54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous54", "role": "ce0" }} , 
 	{ "name": "previous54_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous54", "role": "d0" }} , 
 	{ "name": "previous54_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous54", "role": "q0" }} , 
 	{ "name": "previous54_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous54", "role": "we0" }} , 
 	{ "name": "previous54_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous54", "role": "address1" }} , 
 	{ "name": "previous54_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous54", "role": "ce1" }} , 
 	{ "name": "previous54_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous54", "role": "d1" }} , 
 	{ "name": "previous54_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous54", "role": "q1" }} , 
 	{ "name": "previous54_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous54", "role": "we1" }} , 
 	{ "name": "previous22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous22", "role": "address0" }} , 
 	{ "name": "previous22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous22", "role": "ce0" }} , 
 	{ "name": "previous22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous22", "role": "d0" }} , 
 	{ "name": "previous22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous22", "role": "q0" }} , 
 	{ "name": "previous22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous22", "role": "we0" }} , 
 	{ "name": "previous22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous22", "role": "address1" }} , 
 	{ "name": "previous22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous22", "role": "ce1" }} , 
 	{ "name": "previous22_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous22", "role": "d1" }} , 
 	{ "name": "previous22_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous22", "role": "q1" }} , 
 	{ "name": "previous22_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous22", "role": "we1" }} , 
 	{ "name": "previous2255_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2255", "role": "address0" }} , 
 	{ "name": "previous2255_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2255", "role": "ce0" }} , 
 	{ "name": "previous2255_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2255", "role": "d0" }} , 
 	{ "name": "previous2255_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2255", "role": "q0" }} , 
 	{ "name": "previous2255_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2255", "role": "we0" }} , 
 	{ "name": "previous2255_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2255", "role": "address1" }} , 
 	{ "name": "previous2255_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2255", "role": "ce1" }} , 
 	{ "name": "previous2255_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2255", "role": "d1" }} , 
 	{ "name": "previous2255_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2255", "role": "q1" }} , 
 	{ "name": "previous2255_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2255", "role": "we1" }} , 
 	{ "name": "previous2256_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2256", "role": "address0" }} , 
 	{ "name": "previous2256_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2256", "role": "ce0" }} , 
 	{ "name": "previous2256_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2256", "role": "d0" }} , 
 	{ "name": "previous2256_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2256", "role": "q0" }} , 
 	{ "name": "previous2256_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2256", "role": "we0" }} , 
 	{ "name": "previous2256_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2256", "role": "address1" }} , 
 	{ "name": "previous2256_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2256", "role": "ce1" }} , 
 	{ "name": "previous2256_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2256", "role": "d1" }} , 
 	{ "name": "previous2256_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2256", "role": "q1" }} , 
 	{ "name": "previous2256_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2256", "role": "we1" }} , 
 	{ "name": "previous2257_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2257", "role": "address0" }} , 
 	{ "name": "previous2257_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2257", "role": "ce0" }} , 
 	{ "name": "previous2257_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2257", "role": "d0" }} , 
 	{ "name": "previous2257_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2257", "role": "q0" }} , 
 	{ "name": "previous2257_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2257", "role": "we0" }} , 
 	{ "name": "previous2257_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2257", "role": "address1" }} , 
 	{ "name": "previous2257_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2257", "role": "ce1" }} , 
 	{ "name": "previous2257_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2257", "role": "d1" }} , 
 	{ "name": "previous2257_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2257", "role": "q1" }} , 
 	{ "name": "previous2257_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2257", "role": "we1" }} , 
 	{ "name": "previous23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous23", "role": "address0" }} , 
 	{ "name": "previous23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous23", "role": "ce0" }} , 
 	{ "name": "previous23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous23", "role": "d0" }} , 
 	{ "name": "previous23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous23", "role": "q0" }} , 
 	{ "name": "previous23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous23", "role": "we0" }} , 
 	{ "name": "previous23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous23", "role": "address1" }} , 
 	{ "name": "previous23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous23", "role": "ce1" }} , 
 	{ "name": "previous23_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous23", "role": "d1" }} , 
 	{ "name": "previous23_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous23", "role": "q1" }} , 
 	{ "name": "previous23_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous23", "role": "we1" }} , 
 	{ "name": "previous2358_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2358", "role": "address0" }} , 
 	{ "name": "previous2358_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2358", "role": "ce0" }} , 
 	{ "name": "previous2358_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2358", "role": "d0" }} , 
 	{ "name": "previous2358_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2358", "role": "q0" }} , 
 	{ "name": "previous2358_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2358", "role": "we0" }} , 
 	{ "name": "previous2358_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2358", "role": "address1" }} , 
 	{ "name": "previous2358_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2358", "role": "ce1" }} , 
 	{ "name": "previous2358_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2358", "role": "d1" }} , 
 	{ "name": "previous2358_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2358", "role": "q1" }} , 
 	{ "name": "previous2358_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2358", "role": "we1" }} , 
 	{ "name": "previous2359_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2359", "role": "address0" }} , 
 	{ "name": "previous2359_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2359", "role": "ce0" }} , 
 	{ "name": "previous2359_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2359", "role": "d0" }} , 
 	{ "name": "previous2359_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2359", "role": "q0" }} , 
 	{ "name": "previous2359_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2359", "role": "we0" }} , 
 	{ "name": "previous2359_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2359", "role": "address1" }} , 
 	{ "name": "previous2359_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2359", "role": "ce1" }} , 
 	{ "name": "previous2359_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2359", "role": "d1" }} , 
 	{ "name": "previous2359_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2359", "role": "q1" }} , 
 	{ "name": "previous2359_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2359", "role": "we1" }} , 
 	{ "name": "previous2360_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2360", "role": "address0" }} , 
 	{ "name": "previous2360_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2360", "role": "ce0" }} , 
 	{ "name": "previous2360_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2360", "role": "d0" }} , 
 	{ "name": "previous2360_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2360", "role": "q0" }} , 
 	{ "name": "previous2360_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2360", "role": "we0" }} , 
 	{ "name": "previous2360_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2360", "role": "address1" }} , 
 	{ "name": "previous2360_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2360", "role": "ce1" }} , 
 	{ "name": "previous2360_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2360", "role": "d1" }} , 
 	{ "name": "previous2360_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2360", "role": "q1" }} , 
 	{ "name": "previous2360_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2360", "role": "we1" }} , 
 	{ "name": "previous24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous24", "role": "address0" }} , 
 	{ "name": "previous24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous24", "role": "ce0" }} , 
 	{ "name": "previous24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous24", "role": "d0" }} , 
 	{ "name": "previous24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous24", "role": "q0" }} , 
 	{ "name": "previous24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous24", "role": "we0" }} , 
 	{ "name": "previous24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous24", "role": "address1" }} , 
 	{ "name": "previous24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous24", "role": "ce1" }} , 
 	{ "name": "previous24_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous24", "role": "d1" }} , 
 	{ "name": "previous24_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous24", "role": "q1" }} , 
 	{ "name": "previous24_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous24", "role": "we1" }} , 
 	{ "name": "previous2461_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2461", "role": "address0" }} , 
 	{ "name": "previous2461_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2461", "role": "ce0" }} , 
 	{ "name": "previous2461_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2461", "role": "d0" }} , 
 	{ "name": "previous2461_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2461", "role": "q0" }} , 
 	{ "name": "previous2461_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2461", "role": "we0" }} , 
 	{ "name": "previous2461_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2461", "role": "address1" }} , 
 	{ "name": "previous2461_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2461", "role": "ce1" }} , 
 	{ "name": "previous2461_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2461", "role": "d1" }} , 
 	{ "name": "previous2461_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2461", "role": "q1" }} , 
 	{ "name": "previous2461_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2461", "role": "we1" }} , 
 	{ "name": "previous2462_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2462", "role": "address0" }} , 
 	{ "name": "previous2462_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2462", "role": "ce0" }} , 
 	{ "name": "previous2462_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2462", "role": "d0" }} , 
 	{ "name": "previous2462_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2462", "role": "q0" }} , 
 	{ "name": "previous2462_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2462", "role": "we0" }} , 
 	{ "name": "previous2462_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2462", "role": "address1" }} , 
 	{ "name": "previous2462_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2462", "role": "ce1" }} , 
 	{ "name": "previous2462_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2462", "role": "d1" }} , 
 	{ "name": "previous2462_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2462", "role": "q1" }} , 
 	{ "name": "previous2462_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2462", "role": "we1" }} , 
 	{ "name": "previous2463_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2463", "role": "address0" }} , 
 	{ "name": "previous2463_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2463", "role": "ce0" }} , 
 	{ "name": "previous2463_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2463", "role": "d0" }} , 
 	{ "name": "previous2463_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2463", "role": "q0" }} , 
 	{ "name": "previous2463_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2463", "role": "we0" }} , 
 	{ "name": "previous2463_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2463", "role": "address1" }} , 
 	{ "name": "previous2463_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2463", "role": "ce1" }} , 
 	{ "name": "previous2463_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2463", "role": "d1" }} , 
 	{ "name": "previous2463_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2463", "role": "q1" }} , 
 	{ "name": "previous2463_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2463", "role": "we1" }} , 
 	{ "name": "previous25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous25", "role": "address0" }} , 
 	{ "name": "previous25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous25", "role": "ce0" }} , 
 	{ "name": "previous25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous25", "role": "d0" }} , 
 	{ "name": "previous25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous25", "role": "q0" }} , 
 	{ "name": "previous25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous25", "role": "we0" }} , 
 	{ "name": "previous25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous25", "role": "address1" }} , 
 	{ "name": "previous25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous25", "role": "ce1" }} , 
 	{ "name": "previous25_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous25", "role": "d1" }} , 
 	{ "name": "previous25_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous25", "role": "q1" }} , 
 	{ "name": "previous25_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous25", "role": "we1" }} , 
 	{ "name": "previous2564_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2564", "role": "address0" }} , 
 	{ "name": "previous2564_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2564", "role": "ce0" }} , 
 	{ "name": "previous2564_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2564", "role": "d0" }} , 
 	{ "name": "previous2564_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2564", "role": "q0" }} , 
 	{ "name": "previous2564_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2564", "role": "we0" }} , 
 	{ "name": "previous2564_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2564", "role": "address1" }} , 
 	{ "name": "previous2564_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2564", "role": "ce1" }} , 
 	{ "name": "previous2564_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2564", "role": "d1" }} , 
 	{ "name": "previous2564_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2564", "role": "q1" }} , 
 	{ "name": "previous2564_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2564", "role": "we1" }} , 
 	{ "name": "previous2565_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2565", "role": "address0" }} , 
 	{ "name": "previous2565_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2565", "role": "ce0" }} , 
 	{ "name": "previous2565_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2565", "role": "d0" }} , 
 	{ "name": "previous2565_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2565", "role": "q0" }} , 
 	{ "name": "previous2565_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2565", "role": "we0" }} , 
 	{ "name": "previous2565_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2565", "role": "address1" }} , 
 	{ "name": "previous2565_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2565", "role": "ce1" }} , 
 	{ "name": "previous2565_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2565", "role": "d1" }} , 
 	{ "name": "previous2565_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2565", "role": "q1" }} , 
 	{ "name": "previous2565_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2565", "role": "we1" }} , 
 	{ "name": "previous2566_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2566", "role": "address0" }} , 
 	{ "name": "previous2566_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2566", "role": "ce0" }} , 
 	{ "name": "previous2566_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2566", "role": "d0" }} , 
 	{ "name": "previous2566_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2566", "role": "q0" }} , 
 	{ "name": "previous2566_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2566", "role": "we0" }} , 
 	{ "name": "previous2566_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2566", "role": "address1" }} , 
 	{ "name": "previous2566_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2566", "role": "ce1" }} , 
 	{ "name": "previous2566_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2566", "role": "d1" }} , 
 	{ "name": "previous2566_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2566", "role": "q1" }} , 
 	{ "name": "previous2566_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2566", "role": "we1" }} , 
 	{ "name": "previous26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous26", "role": "address0" }} , 
 	{ "name": "previous26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous26", "role": "ce0" }} , 
 	{ "name": "previous26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous26", "role": "d0" }} , 
 	{ "name": "previous26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous26", "role": "q0" }} , 
 	{ "name": "previous26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous26", "role": "we0" }} , 
 	{ "name": "previous26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous26", "role": "address1" }} , 
 	{ "name": "previous26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous26", "role": "ce1" }} , 
 	{ "name": "previous26_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous26", "role": "d1" }} , 
 	{ "name": "previous26_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous26", "role": "q1" }} , 
 	{ "name": "previous26_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous26", "role": "we1" }} , 
 	{ "name": "previous2667_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2667", "role": "address0" }} , 
 	{ "name": "previous2667_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2667", "role": "ce0" }} , 
 	{ "name": "previous2667_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2667", "role": "d0" }} , 
 	{ "name": "previous2667_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2667", "role": "q0" }} , 
 	{ "name": "previous2667_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2667", "role": "we0" }} , 
 	{ "name": "previous2667_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2667", "role": "address1" }} , 
 	{ "name": "previous2667_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2667", "role": "ce1" }} , 
 	{ "name": "previous2667_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2667", "role": "d1" }} , 
 	{ "name": "previous2667_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2667", "role": "q1" }} , 
 	{ "name": "previous2667_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2667", "role": "we1" }} , 
 	{ "name": "previous2668_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2668", "role": "address0" }} , 
 	{ "name": "previous2668_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2668", "role": "ce0" }} , 
 	{ "name": "previous2668_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2668", "role": "d0" }} , 
 	{ "name": "previous2668_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2668", "role": "q0" }} , 
 	{ "name": "previous2668_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2668", "role": "we0" }} , 
 	{ "name": "previous2668_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2668", "role": "address1" }} , 
 	{ "name": "previous2668_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2668", "role": "ce1" }} , 
 	{ "name": "previous2668_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2668", "role": "d1" }} , 
 	{ "name": "previous2668_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2668", "role": "q1" }} , 
 	{ "name": "previous2668_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2668", "role": "we1" }} , 
 	{ "name": "previous2669_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2669", "role": "address0" }} , 
 	{ "name": "previous2669_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2669", "role": "ce0" }} , 
 	{ "name": "previous2669_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2669", "role": "d0" }} , 
 	{ "name": "previous2669_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2669", "role": "q0" }} , 
 	{ "name": "previous2669_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2669", "role": "we0" }} , 
 	{ "name": "previous2669_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2669", "role": "address1" }} , 
 	{ "name": "previous2669_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2669", "role": "ce1" }} , 
 	{ "name": "previous2669_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2669", "role": "d1" }} , 
 	{ "name": "previous2669_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2669", "role": "q1" }} , 
 	{ "name": "previous2669_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2669", "role": "we1" }} , 
 	{ "name": "previous27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous27", "role": "address0" }} , 
 	{ "name": "previous27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous27", "role": "ce0" }} , 
 	{ "name": "previous27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous27", "role": "d0" }} , 
 	{ "name": "previous27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous27", "role": "q0" }} , 
 	{ "name": "previous27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous27", "role": "we0" }} , 
 	{ "name": "previous27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous27", "role": "address1" }} , 
 	{ "name": "previous27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous27", "role": "ce1" }} , 
 	{ "name": "previous27_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous27", "role": "d1" }} , 
 	{ "name": "previous27_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous27", "role": "q1" }} , 
 	{ "name": "previous27_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous27", "role": "we1" }} , 
 	{ "name": "previous2770_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2770", "role": "address0" }} , 
 	{ "name": "previous2770_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2770", "role": "ce0" }} , 
 	{ "name": "previous2770_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2770", "role": "d0" }} , 
 	{ "name": "previous2770_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2770", "role": "q0" }} , 
 	{ "name": "previous2770_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2770", "role": "we0" }} , 
 	{ "name": "previous2770_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2770", "role": "address1" }} , 
 	{ "name": "previous2770_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2770", "role": "ce1" }} , 
 	{ "name": "previous2770_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2770", "role": "d1" }} , 
 	{ "name": "previous2770_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2770", "role": "q1" }} , 
 	{ "name": "previous2770_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2770", "role": "we1" }} , 
 	{ "name": "previous2771_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2771", "role": "address0" }} , 
 	{ "name": "previous2771_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2771", "role": "ce0" }} , 
 	{ "name": "previous2771_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2771", "role": "d0" }} , 
 	{ "name": "previous2771_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2771", "role": "q0" }} , 
 	{ "name": "previous2771_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2771", "role": "we0" }} , 
 	{ "name": "previous2771_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2771", "role": "address1" }} , 
 	{ "name": "previous2771_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2771", "role": "ce1" }} , 
 	{ "name": "previous2771_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2771", "role": "d1" }} , 
 	{ "name": "previous2771_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2771", "role": "q1" }} , 
 	{ "name": "previous2771_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2771", "role": "we1" }} , 
 	{ "name": "previous2772_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2772", "role": "address0" }} , 
 	{ "name": "previous2772_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2772", "role": "ce0" }} , 
 	{ "name": "previous2772_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2772", "role": "d0" }} , 
 	{ "name": "previous2772_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2772", "role": "q0" }} , 
 	{ "name": "previous2772_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2772", "role": "we0" }} , 
 	{ "name": "previous2772_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2772", "role": "address1" }} , 
 	{ "name": "previous2772_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2772", "role": "ce1" }} , 
 	{ "name": "previous2772_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2772", "role": "d1" }} , 
 	{ "name": "previous2772_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2772", "role": "q1" }} , 
 	{ "name": "previous2772_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2772", "role": "we1" }} , 
 	{ "name": "previous28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous28", "role": "address0" }} , 
 	{ "name": "previous28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous28", "role": "ce0" }} , 
 	{ "name": "previous28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous28", "role": "d0" }} , 
 	{ "name": "previous28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous28", "role": "q0" }} , 
 	{ "name": "previous28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous28", "role": "we0" }} , 
 	{ "name": "previous28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous28", "role": "address1" }} , 
 	{ "name": "previous28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous28", "role": "ce1" }} , 
 	{ "name": "previous28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous28", "role": "d1" }} , 
 	{ "name": "previous28_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous28", "role": "q1" }} , 
 	{ "name": "previous28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous28", "role": "we1" }} , 
 	{ "name": "previous2873_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2873", "role": "address0" }} , 
 	{ "name": "previous2873_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2873", "role": "ce0" }} , 
 	{ "name": "previous2873_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2873", "role": "d0" }} , 
 	{ "name": "previous2873_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2873", "role": "q0" }} , 
 	{ "name": "previous2873_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2873", "role": "we0" }} , 
 	{ "name": "previous2873_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2873", "role": "address1" }} , 
 	{ "name": "previous2873_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2873", "role": "ce1" }} , 
 	{ "name": "previous2873_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2873", "role": "d1" }} , 
 	{ "name": "previous2873_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2873", "role": "q1" }} , 
 	{ "name": "previous2873_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2873", "role": "we1" }} , 
 	{ "name": "previous2874_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2874", "role": "address0" }} , 
 	{ "name": "previous2874_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2874", "role": "ce0" }} , 
 	{ "name": "previous2874_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2874", "role": "d0" }} , 
 	{ "name": "previous2874_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2874", "role": "q0" }} , 
 	{ "name": "previous2874_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2874", "role": "we0" }} , 
 	{ "name": "previous2874_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2874", "role": "address1" }} , 
 	{ "name": "previous2874_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2874", "role": "ce1" }} , 
 	{ "name": "previous2874_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2874", "role": "d1" }} , 
 	{ "name": "previous2874_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2874", "role": "q1" }} , 
 	{ "name": "previous2874_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2874", "role": "we1" }} , 
 	{ "name": "previous2875_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2875", "role": "address0" }} , 
 	{ "name": "previous2875_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2875", "role": "ce0" }} , 
 	{ "name": "previous2875_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2875", "role": "d0" }} , 
 	{ "name": "previous2875_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2875", "role": "q0" }} , 
 	{ "name": "previous2875_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2875", "role": "we0" }} , 
 	{ "name": "previous2875_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "previous2875", "role": "address1" }} , 
 	{ "name": "previous2875_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2875", "role": "ce1" }} , 
 	{ "name": "previous2875_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2875", "role": "d1" }} , 
 	{ "name": "previous2875_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "previous2875", "role": "q1" }} , 
 	{ "name": "previous2875_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "previous2875", "role": "we1" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "o" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "i" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "o" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "p_read1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read1", "role": "ap_vld" }} , 
 	{ "name": "p_read2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read2", "role": "ap_vld" }} , 
 	{ "name": "p_read3_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read3", "role": "ap_vld" }} , 
 	{ "name": "p_read4_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read4", "role": "ap_vld" }} , 
 	{ "name": "p_read5_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read5", "role": "ap_vld" }} , 
 	{ "name": "p_read6_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read6", "role": "ap_vld" }} , 
 	{ "name": "p_read7_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read7", "role": "ap_vld" }} , 
 	{ "name": "ci_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ci", "role": "ap_vld" }} , 
 	{ "name": "wi_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wi", "role": "ap_vld" }} , 
 	{ "name": "k_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "k", "role": "ap_vld" }} , 
 	{ "name": "stride_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stride", "role": "ap_vld" }} , 
 	{ "name": "pad_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pad", "role": "ap_vld" }} , 
 	{ "name": "ow_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ow", "role": "ap_vld" }} , 
 	{ "name": "computing_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "computing", "role": "ap_vld" }} , 
 	{ "name": "emitting_offset_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "emitting_offset", "role": "ap_vld" }} , 
 	{ "name": "previous_rows_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "previous_rows", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_ticks_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_ticks", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_mac_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_mac", "role": "o_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "i_ap_vld" }} , 
 	{ "name": "p_anonymous_namespace_profile_wait_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_anonymous_namespace_profile_wait", "role": "o_ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "158", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185"],
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
			{"ID" : "1", "Name" : "p_anonymous_namespace_row_pair_entry58_U0"},
			{"ID" : "2", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "158", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "p_anonymous_namespace_compute_row_U0"},
			{"ID" : "158", "Name" : "p_anonymous_namespace_emit_row_U0"}],
		"Port" : [
			{"Name" : "pixels2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "pixels2"}]},
			{"Name" : "results", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "results"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights"}]},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights1"}]},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights2"}]},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights3"}]},
			{"Name" : "weights14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights14"}]},
			{"Name" : "weights15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights15"}]},
			{"Name" : "weights16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights16"}]},
			{"Name" : "weights17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights17"}]},
			{"Name" : "weights28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights28"}]},
			{"Name" : "weights29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights29"}]},
			{"Name" : "weights210", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights210"}]},
			{"Name" : "weights211", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights211"}]},
			{"Name" : "weights312", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights312"}]},
			{"Name" : "weights313", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights313"}]},
			{"Name" : "weights314", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights314"}]},
			{"Name" : "weights315", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights315"}]},
			{"Name" : "weights4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights4"}]},
			{"Name" : "weights416", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights416"}]},
			{"Name" : "weights417", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights417"}]},
			{"Name" : "weights418", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights418"}]},
			{"Name" : "weights5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights5"}]},
			{"Name" : "weights519", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights519"}]},
			{"Name" : "weights520", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights520"}]},
			{"Name" : "weights521", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights521"}]},
			{"Name" : "weights6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights6"}]},
			{"Name" : "weights622", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights622"}]},
			{"Name" : "weights623", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights623"}]},
			{"Name" : "weights624", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights624"}]},
			{"Name" : "weights7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights7"}]},
			{"Name" : "weights725", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights725"}]},
			{"Name" : "weights726", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights726"}]},
			{"Name" : "weights727", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "weights727"}]},
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
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc"}]},
			{"Name" : "current28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc28"}]},
			{"Name" : "current29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc29"}]},
			{"Name" : "current30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc30"}]},
			{"Name" : "current15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc15"}]},
			{"Name" : "current1531", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1531"}]},
			{"Name" : "current1532", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1532"}]},
			{"Name" : "current1533", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1533"}]},
			{"Name" : "current16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc16"}]},
			{"Name" : "current1634", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1634"}]},
			{"Name" : "current1635", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1635"}]},
			{"Name" : "current1636", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1636"}]},
			{"Name" : "current17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc17"}]},
			{"Name" : "current1737", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1737"}]},
			{"Name" : "current1738", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1738"}]},
			{"Name" : "current1739", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1739"}]},
			{"Name" : "current18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc18"}]},
			{"Name" : "current1840", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1840"}]},
			{"Name" : "current1841", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1841"}]},
			{"Name" : "current1842", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1842"}]},
			{"Name" : "current19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc19"}]},
			{"Name" : "current1943", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1943"}]},
			{"Name" : "current1944", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1944"}]},
			{"Name" : "current1945", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc1945"}]},
			{"Name" : "current20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc20"}]},
			{"Name" : "current2046", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2046"}]},
			{"Name" : "current2047", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2047"}]},
			{"Name" : "current2048", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2048"}]},
			{"Name" : "current21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc21"}]},
			{"Name" : "current2149", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2149"}]},
			{"Name" : "current2150", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2150"}]},
			{"Name" : "current2151", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "acc2151"}]},
			{"Name" : "previous", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc"}]},
			{"Name" : "previous52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc1"}]},
			{"Name" : "previous53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc2"}]},
			{"Name" : "previous54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc3"}]},
			{"Name" : "previous22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc14"}]},
			{"Name" : "previous2255", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc15"}]},
			{"Name" : "previous2256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc16"}]},
			{"Name" : "previous2257", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc17"}]},
			{"Name" : "previous23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc28"}]},
			{"Name" : "previous2358", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc29"}]},
			{"Name" : "previous2359", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc210"}]},
			{"Name" : "previous2360", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc211"}]},
			{"Name" : "previous24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc312"}]},
			{"Name" : "previous2461", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc313"}]},
			{"Name" : "previous2462", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc314"}]},
			{"Name" : "previous2463", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc315"}]},
			{"Name" : "previous25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc4"}]},
			{"Name" : "previous2564", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc416"}]},
			{"Name" : "previous2565", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc417"}]},
			{"Name" : "previous2566", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc418"}]},
			{"Name" : "previous26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc5"}]},
			{"Name" : "previous2667", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc519"}]},
			{"Name" : "previous2668", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc520"}]},
			{"Name" : "previous2669", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc521"}]},
			{"Name" : "previous27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc6"}]},
			{"Name" : "previous2770", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc622"}]},
			{"Name" : "previous2771", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc623"}]},
			{"Name" : "previous2772", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc624"}]},
			{"Name" : "previous28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc7"}]},
			{"Name" : "previous2873", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc725"}]},
			{"Name" : "previous2874", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc726"}]},
			{"Name" : "previous2875", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "p_anonymous_namespace_emit_row_U0", "Port" : "acc727"}]},
			{"Name" : "memory_1_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_ticks"}]},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_mac"}]},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "p_anonymous_namespace_compute_row_U0", "Port" : "p_anonymous_namespace_profile_wait"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_row_pair_entry58_U0", "Parent" : "0",
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
			{"Name" : "bias_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "168", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "169", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "170", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "171", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "172", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "173", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "174", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "175", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "176", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "177", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "178", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "179", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "180", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "181", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "158", "DependentChan" : "182", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "computing_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "183", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "computing_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "emitting_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "158", "DependentChan" : "184", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "emitting_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "previous_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "158", "DependentChan" : "185", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "previous_rows_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0", "Parent" : "0", "Child" : ["3", "12", "21", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157"],
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
			{"Name" : "bias", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "168", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "169", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "170", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "171", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "172", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "173", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "174", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "175", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "bias14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ci", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "176", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ci_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wi", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "177", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "wi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "178", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "179", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "180", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "pad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "181", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "183", "DependentChanDepth" : "2", "DependentChanType" : "2",
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
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_0"}]},
			{"Name" : "memory_1_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_1"}]},
			{"Name" : "memory_1_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_2"}]},
			{"Name" : "memory_1_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_0_3"}]},
			{"Name" : "memory_1_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_0"}]},
			{"Name" : "memory_1_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_1"}]},
			{"Name" : "memory_1_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_2"}]},
			{"Name" : "memory_1_1_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Port" : "memory_1_1_3"}]},
			{"Name" : "memory_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_0"}]},
			{"Name" : "memory_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_1"}]},
			{"Name" : "memory_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_2"}]},
			{"Name" : "memory_0_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_0_3"}]},
			{"Name" : "memory_115_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_0"}]},
			{"Name" : "memory_115_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_1"}]},
			{"Name" : "memory_115_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_2"}]},
			{"Name" : "memory_115_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Port" : "memory_115_3"}]},
			{"Name" : "p_anonymous_namespace_profile_ticks", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_mac", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_anonymous_namespace_profile_wait", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_0_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_1_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_2_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_0_3_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_0_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_1_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_2_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_0_s_fu_1621.memory_1_1_3_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656", "Parent" : "2", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_0_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_1_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_2_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_0_3_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_0_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_1_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_2_U", "Parent" : "12"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_bank_access_1_s_fu_1656.memory_115_3_U", "Parent" : "12"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685", "Parent" : "2", "Child" : ["22", "23", "24", "25", "26"],
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
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_11s_11ns_11_3_1_U402", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.mac_muladd_2ns_16s_16ns_16_3_1_U403", "Parent" : "21"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_1ns_2ns_16ns_16_3_1_U404", "Parent" : "21"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U405", "Parent" : "21"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.grp_p_anonymous_namespace_address_stage_fu_1685.ama_addmuladd_16s_3ns_2ns_16ns_16_3_1_U406", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_4ns_16ns_20_1_1_U426", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_3ns_3ns_6_1_1_U427", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_15ns_6ns_20_4_1_U428", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U429", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U430", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U431", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U432", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U433", "Parent" : "2"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U434", "Parent" : "2"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U435", "Parent" : "2"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U436", "Parent" : "2"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U437", "Parent" : "2"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U438", "Parent" : "2"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U439", "Parent" : "2"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U440", "Parent" : "2"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U441", "Parent" : "2"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U442", "Parent" : "2"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U443", "Parent" : "2"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U444", "Parent" : "2"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U445", "Parent" : "2"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U446", "Parent" : "2"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U447", "Parent" : "2"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U448", "Parent" : "2"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U449", "Parent" : "2"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U450", "Parent" : "2"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U451", "Parent" : "2"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U452", "Parent" : "2"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U453", "Parent" : "2"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U454", "Parent" : "2"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U455", "Parent" : "2"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U456", "Parent" : "2"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U457", "Parent" : "2"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U458", "Parent" : "2"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U459", "Parent" : "2"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mul_mul_16s_16s_32_4_1_U460", "Parent" : "2"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U461", "Parent" : "2"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U462", "Parent" : "2"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U463", "Parent" : "2"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U464", "Parent" : "2"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U465", "Parent" : "2"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U466", "Parent" : "2"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U467", "Parent" : "2"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U468", "Parent" : "2"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U469", "Parent" : "2"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U470", "Parent" : "2"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U471", "Parent" : "2"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U472", "Parent" : "2"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U473", "Parent" : "2"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U474", "Parent" : "2"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U475", "Parent" : "2"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U476", "Parent" : "2"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U477", "Parent" : "2"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U478", "Parent" : "2"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U479", "Parent" : "2"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U480", "Parent" : "2"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U481", "Parent" : "2"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U482", "Parent" : "2"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U483", "Parent" : "2"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U484", "Parent" : "2"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U485", "Parent" : "2"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U486", "Parent" : "2"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U487", "Parent" : "2"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U488", "Parent" : "2"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U489", "Parent" : "2"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U490", "Parent" : "2"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U491", "Parent" : "2"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_32s_33_4_1_U492", "Parent" : "2"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U493", "Parent" : "2"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U494", "Parent" : "2"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U495", "Parent" : "2"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U496", "Parent" : "2"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U497", "Parent" : "2"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U498", "Parent" : "2"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U499", "Parent" : "2"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U500", "Parent" : "2"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U501", "Parent" : "2"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U502", "Parent" : "2"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U503", "Parent" : "2"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U504", "Parent" : "2"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U505", "Parent" : "2"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U506", "Parent" : "2"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U507", "Parent" : "2"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U508", "Parent" : "2"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U509", "Parent" : "2"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U510", "Parent" : "2"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U511", "Parent" : "2"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U512", "Parent" : "2"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U513", "Parent" : "2"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U514", "Parent" : "2"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U515", "Parent" : "2"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U516", "Parent" : "2"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U517", "Parent" : "2"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U518", "Parent" : "2"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U519", "Parent" : "2"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U520", "Parent" : "2"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U521", "Parent" : "2"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U522", "Parent" : "2"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U523", "Parent" : "2"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_33_4_1_U524", "Parent" : "2"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U525", "Parent" : "2"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U526", "Parent" : "2"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U527", "Parent" : "2"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U528", "Parent" : "2"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U529", "Parent" : "2"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U530", "Parent" : "2"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U531", "Parent" : "2"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U532", "Parent" : "2"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U533", "Parent" : "2"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U534", "Parent" : "2"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U535", "Parent" : "2"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U536", "Parent" : "2"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U537", "Parent" : "2"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U538", "Parent" : "2"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U539", "Parent" : "2"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U540", "Parent" : "2"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U541", "Parent" : "2"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U542", "Parent" : "2"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U543", "Parent" : "2"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U544", "Parent" : "2"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U545", "Parent" : "2"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U546", "Parent" : "2"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U547", "Parent" : "2"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U548", "Parent" : "2"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U549", "Parent" : "2"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U550", "Parent" : "2"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U551", "Parent" : "2"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U552", "Parent" : "2"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U553", "Parent" : "2"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U554", "Parent" : "2"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U555", "Parent" : "2"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_compute_row_U0.mac_muladd_16s_16s_33s_34_4_1_U556", "Parent" : "2"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0", "Parent" : "0", "Child" : ["159", "160", "161", "162", "163", "164", "165", "166", "167"],
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
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "185", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ow", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "182", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ow_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "enabled", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "184", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "enabled_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U645", "Parent" : "158"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U646", "Parent" : "158"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U647", "Parent" : "158"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U648", "Parent" : "158"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U649", "Parent" : "158"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U650", "Parent" : "158"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U651", "Parent" : "158"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mux_416_48_1_1_U652", "Parent" : "158"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_emit_row_U0.mul_mul_16ns_16ns_32_4_1_U653", "Parent" : "158"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_c_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias8_c_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias9_c_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias10_c_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias11_c_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias12_c_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias13_c_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias14_c_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ci_c_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wi_c_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_c_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stride_c_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_c_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ow_c_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ow_c1_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.computing_c_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emitting_offset_c_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.previous_rows_c_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		enabled {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pixels2 { ap_fifo {  { pixels2_dout fifo_data 0 64 }  { pixels2_empty_n fifo_status 0 1 }  { pixels2_read fifo_update 1 1 } } }
	results { ap_fifo {  { results_din fifo_data 1 256 }  { results_full_n fifo_status 0 1 }  { results_write fifo_update 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 11 }  { weights_ce0 mem_ce 1 1 }  { weights_d0 mem_din 1 16 }  { weights_q0 mem_dout 0 16 }  { weights_we0 mem_we 1 1 }  { weights_address1 mem_address 1 11 }  { weights_ce1 mem_ce 1 1 }  { weights_d1 mem_din 1 16 }  { weights_q1 mem_dout 0 16 }  { weights_we1 mem_we 1 1 } } }
	weights1 { ap_memory {  { weights1_address0 mem_address 1 11 }  { weights1_ce0 mem_ce 1 1 }  { weights1_d0 mem_din 1 16 }  { weights1_q0 mem_dout 0 16 }  { weights1_we0 mem_we 1 1 }  { weights1_address1 mem_address 1 11 }  { weights1_ce1 mem_ce 1 1 }  { weights1_d1 mem_din 1 16 }  { weights1_q1 mem_dout 0 16 }  { weights1_we1 mem_we 1 1 } } }
	weights2 { ap_memory {  { weights2_address0 mem_address 1 11 }  { weights2_ce0 mem_ce 1 1 }  { weights2_d0 mem_din 1 16 }  { weights2_q0 mem_dout 0 16 }  { weights2_we0 mem_we 1 1 }  { weights2_address1 mem_address 1 11 }  { weights2_ce1 mem_ce 1 1 }  { weights2_d1 mem_din 1 16 }  { weights2_q1 mem_dout 0 16 }  { weights2_we1 mem_we 1 1 } } }
	weights3 { ap_memory {  { weights3_address0 mem_address 1 11 }  { weights3_ce0 mem_ce 1 1 }  { weights3_d0 mem_din 1 16 }  { weights3_q0 mem_dout 0 16 }  { weights3_we0 mem_we 1 1 }  { weights3_address1 mem_address 1 11 }  { weights3_ce1 mem_ce 1 1 }  { weights3_d1 mem_din 1 16 }  { weights3_q1 mem_dout 0 16 }  { weights3_we1 mem_we 1 1 } } }
	weights14 { ap_memory {  { weights14_address0 mem_address 1 11 }  { weights14_ce0 mem_ce 1 1 }  { weights14_d0 mem_din 1 16 }  { weights14_q0 mem_dout 0 16 }  { weights14_we0 mem_we 1 1 }  { weights14_address1 mem_address 1 11 }  { weights14_ce1 mem_ce 1 1 }  { weights14_d1 mem_din 1 16 }  { weights14_q1 mem_dout 0 16 }  { weights14_we1 mem_we 1 1 } } }
	weights15 { ap_memory {  { weights15_address0 mem_address 1 11 }  { weights15_ce0 mem_ce 1 1 }  { weights15_d0 mem_din 1 16 }  { weights15_q0 mem_dout 0 16 }  { weights15_we0 mem_we 1 1 }  { weights15_address1 mem_address 1 11 }  { weights15_ce1 mem_ce 1 1 }  { weights15_d1 mem_din 1 16 }  { weights15_q1 mem_dout 0 16 }  { weights15_we1 mem_we 1 1 } } }
	weights16 { ap_memory {  { weights16_address0 mem_address 1 11 }  { weights16_ce0 mem_ce 1 1 }  { weights16_d0 mem_din 1 16 }  { weights16_q0 mem_dout 0 16 }  { weights16_we0 mem_we 1 1 }  { weights16_address1 mem_address 1 11 }  { weights16_ce1 mem_ce 1 1 }  { weights16_d1 mem_din 1 16 }  { weights16_q1 mem_dout 0 16 }  { weights16_we1 mem_we 1 1 } } }
	weights17 { ap_memory {  { weights17_address0 mem_address 1 11 }  { weights17_ce0 mem_ce 1 1 }  { weights17_d0 mem_din 1 16 }  { weights17_q0 mem_dout 0 16 }  { weights17_we0 mem_we 1 1 }  { weights17_address1 mem_address 1 11 }  { weights17_ce1 mem_ce 1 1 }  { weights17_d1 mem_din 1 16 }  { weights17_q1 mem_dout 0 16 }  { weights17_we1 mem_we 1 1 } } }
	weights28 { ap_memory {  { weights28_address0 mem_address 1 11 }  { weights28_ce0 mem_ce 1 1 }  { weights28_d0 mem_din 1 16 }  { weights28_q0 mem_dout 0 16 }  { weights28_we0 mem_we 1 1 }  { weights28_address1 mem_address 1 11 }  { weights28_ce1 mem_ce 1 1 }  { weights28_d1 mem_din 1 16 }  { weights28_q1 mem_dout 0 16 }  { weights28_we1 mem_we 1 1 } } }
	weights29 { ap_memory {  { weights29_address0 mem_address 1 11 }  { weights29_ce0 mem_ce 1 1 }  { weights29_d0 mem_din 1 16 }  { weights29_q0 mem_dout 0 16 }  { weights29_we0 mem_we 1 1 }  { weights29_address1 mem_address 1 11 }  { weights29_ce1 mem_ce 1 1 }  { weights29_d1 mem_din 1 16 }  { weights29_q1 mem_dout 0 16 }  { weights29_we1 mem_we 1 1 } } }
	weights210 { ap_memory {  { weights210_address0 mem_address 1 11 }  { weights210_ce0 mem_ce 1 1 }  { weights210_d0 mem_din 1 16 }  { weights210_q0 mem_dout 0 16 }  { weights210_we0 mem_we 1 1 }  { weights210_address1 mem_address 1 11 }  { weights210_ce1 mem_ce 1 1 }  { weights210_d1 mem_din 1 16 }  { weights210_q1 mem_dout 0 16 }  { weights210_we1 mem_we 1 1 } } }
	weights211 { ap_memory {  { weights211_address0 mem_address 1 11 }  { weights211_ce0 mem_ce 1 1 }  { weights211_d0 mem_din 1 16 }  { weights211_q0 mem_dout 0 16 }  { weights211_we0 mem_we 1 1 }  { weights211_address1 mem_address 1 11 }  { weights211_ce1 mem_ce 1 1 }  { weights211_d1 mem_din 1 16 }  { weights211_q1 mem_dout 0 16 }  { weights211_we1 mem_we 1 1 } } }
	weights312 { ap_memory {  { weights312_address0 mem_address 1 11 }  { weights312_ce0 mem_ce 1 1 }  { weights312_d0 mem_din 1 16 }  { weights312_q0 mem_dout 0 16 }  { weights312_we0 mem_we 1 1 }  { weights312_address1 mem_address 1 11 }  { weights312_ce1 mem_ce 1 1 }  { weights312_d1 mem_din 1 16 }  { weights312_q1 mem_dout 0 16 }  { weights312_we1 mem_we 1 1 } } }
	weights313 { ap_memory {  { weights313_address0 mem_address 1 11 }  { weights313_ce0 mem_ce 1 1 }  { weights313_d0 mem_din 1 16 }  { weights313_q0 mem_dout 0 16 }  { weights313_we0 mem_we 1 1 }  { weights313_address1 mem_address 1 11 }  { weights313_ce1 mem_ce 1 1 }  { weights313_d1 mem_din 1 16 }  { weights313_q1 mem_dout 0 16 }  { weights313_we1 mem_we 1 1 } } }
	weights314 { ap_memory {  { weights314_address0 mem_address 1 11 }  { weights314_ce0 mem_ce 1 1 }  { weights314_d0 mem_din 1 16 }  { weights314_q0 mem_dout 0 16 }  { weights314_we0 mem_we 1 1 }  { weights314_address1 mem_address 1 11 }  { weights314_ce1 mem_ce 1 1 }  { weights314_d1 mem_din 1 16 }  { weights314_q1 mem_dout 0 16 }  { weights314_we1 mem_we 1 1 } } }
	weights315 { ap_memory {  { weights315_address0 mem_address 1 11 }  { weights315_ce0 mem_ce 1 1 }  { weights315_d0 mem_din 1 16 }  { weights315_q0 mem_dout 0 16 }  { weights315_we0 mem_we 1 1 }  { weights315_address1 mem_address 1 11 }  { weights315_ce1 mem_ce 1 1 }  { weights315_d1 mem_din 1 16 }  { weights315_q1 mem_dout 0 16 }  { weights315_we1 mem_we 1 1 } } }
	weights4 { ap_memory {  { weights4_address0 mem_address 1 11 }  { weights4_ce0 mem_ce 1 1 }  { weights4_d0 mem_din 1 16 }  { weights4_q0 mem_dout 0 16 }  { weights4_we0 mem_we 1 1 }  { weights4_address1 mem_address 1 11 }  { weights4_ce1 mem_ce 1 1 }  { weights4_d1 mem_din 1 16 }  { weights4_q1 mem_dout 0 16 }  { weights4_we1 mem_we 1 1 } } }
	weights416 { ap_memory {  { weights416_address0 mem_address 1 11 }  { weights416_ce0 mem_ce 1 1 }  { weights416_d0 mem_din 1 16 }  { weights416_q0 mem_dout 0 16 }  { weights416_we0 mem_we 1 1 }  { weights416_address1 mem_address 1 11 }  { weights416_ce1 mem_ce 1 1 }  { weights416_d1 mem_din 1 16 }  { weights416_q1 mem_dout 0 16 }  { weights416_we1 mem_we 1 1 } } }
	weights417 { ap_memory {  { weights417_address0 mem_address 1 11 }  { weights417_ce0 mem_ce 1 1 }  { weights417_d0 mem_din 1 16 }  { weights417_q0 mem_dout 0 16 }  { weights417_we0 mem_we 1 1 }  { weights417_address1 mem_address 1 11 }  { weights417_ce1 mem_ce 1 1 }  { weights417_d1 mem_din 1 16 }  { weights417_q1 mem_dout 0 16 }  { weights417_we1 mem_we 1 1 } } }
	weights418 { ap_memory {  { weights418_address0 mem_address 1 11 }  { weights418_ce0 mem_ce 1 1 }  { weights418_d0 mem_din 1 16 }  { weights418_q0 mem_dout 0 16 }  { weights418_we0 mem_we 1 1 }  { weights418_address1 mem_address 1 11 }  { weights418_ce1 mem_ce 1 1 }  { weights418_d1 mem_din 1 16 }  { weights418_q1 mem_dout 0 16 }  { weights418_we1 mem_we 1 1 } } }
	weights5 { ap_memory {  { weights5_address0 mem_address 1 11 }  { weights5_ce0 mem_ce 1 1 }  { weights5_d0 mem_din 1 16 }  { weights5_q0 mem_dout 0 16 }  { weights5_we0 mem_we 1 1 }  { weights5_address1 mem_address 1 11 }  { weights5_ce1 mem_ce 1 1 }  { weights5_d1 mem_din 1 16 }  { weights5_q1 mem_dout 0 16 }  { weights5_we1 mem_we 1 1 } } }
	weights519 { ap_memory {  { weights519_address0 mem_address 1 11 }  { weights519_ce0 mem_ce 1 1 }  { weights519_d0 mem_din 1 16 }  { weights519_q0 mem_dout 0 16 }  { weights519_we0 mem_we 1 1 }  { weights519_address1 mem_address 1 11 }  { weights519_ce1 mem_ce 1 1 }  { weights519_d1 mem_din 1 16 }  { weights519_q1 mem_dout 0 16 }  { weights519_we1 mem_we 1 1 } } }
	weights520 { ap_memory {  { weights520_address0 mem_address 1 11 }  { weights520_ce0 mem_ce 1 1 }  { weights520_d0 mem_din 1 16 }  { weights520_q0 mem_dout 0 16 }  { weights520_we0 mem_we 1 1 }  { weights520_address1 mem_address 1 11 }  { weights520_ce1 mem_ce 1 1 }  { weights520_d1 mem_din 1 16 }  { weights520_q1 mem_dout 0 16 }  { weights520_we1 mem_we 1 1 } } }
	weights521 { ap_memory {  { weights521_address0 mem_address 1 11 }  { weights521_ce0 mem_ce 1 1 }  { weights521_d0 mem_din 1 16 }  { weights521_q0 mem_dout 0 16 }  { weights521_we0 mem_we 1 1 }  { weights521_address1 mem_address 1 11 }  { weights521_ce1 mem_ce 1 1 }  { weights521_d1 mem_din 1 16 }  { weights521_q1 mem_dout 0 16 }  { weights521_we1 mem_we 1 1 } } }
	weights6 { ap_memory {  { weights6_address0 mem_address 1 11 }  { weights6_ce0 mem_ce 1 1 }  { weights6_d0 mem_din 1 16 }  { weights6_q0 mem_dout 0 16 }  { weights6_we0 mem_we 1 1 }  { weights6_address1 mem_address 1 11 }  { weights6_ce1 mem_ce 1 1 }  { weights6_d1 mem_din 1 16 }  { weights6_q1 mem_dout 0 16 }  { weights6_we1 mem_we 1 1 } } }
	weights622 { ap_memory {  { weights622_address0 mem_address 1 11 }  { weights622_ce0 mem_ce 1 1 }  { weights622_d0 mem_din 1 16 }  { weights622_q0 mem_dout 0 16 }  { weights622_we0 mem_we 1 1 }  { weights622_address1 mem_address 1 11 }  { weights622_ce1 mem_ce 1 1 }  { weights622_d1 mem_din 1 16 }  { weights622_q1 mem_dout 0 16 }  { weights622_we1 mem_we 1 1 } } }
	weights623 { ap_memory {  { weights623_address0 mem_address 1 11 }  { weights623_ce0 mem_ce 1 1 }  { weights623_d0 mem_din 1 16 }  { weights623_q0 mem_dout 0 16 }  { weights623_we0 mem_we 1 1 }  { weights623_address1 mem_address 1 11 }  { weights623_ce1 mem_ce 1 1 }  { weights623_d1 mem_din 1 16 }  { weights623_q1 mem_dout 0 16 }  { weights623_we1 mem_we 1 1 } } }
	weights624 { ap_memory {  { weights624_address0 mem_address 1 11 }  { weights624_ce0 mem_ce 1 1 }  { weights624_d0 mem_din 1 16 }  { weights624_q0 mem_dout 0 16 }  { weights624_we0 mem_we 1 1 }  { weights624_address1 mem_address 1 11 }  { weights624_ce1 mem_ce 1 1 }  { weights624_d1 mem_din 1 16 }  { weights624_q1 mem_dout 0 16 }  { weights624_we1 mem_we 1 1 } } }
	weights7 { ap_memory {  { weights7_address0 mem_address 1 11 }  { weights7_ce0 mem_ce 1 1 }  { weights7_d0 mem_din 1 16 }  { weights7_q0 mem_dout 0 16 }  { weights7_we0 mem_we 1 1 }  { weights7_address1 mem_address 1 11 }  { weights7_ce1 mem_ce 1 1 }  { weights7_d1 mem_din 1 16 }  { weights7_q1 mem_dout 0 16 }  { weights7_we1 mem_we 1 1 } } }
	weights725 { ap_memory {  { weights725_address0 mem_address 1 11 }  { weights725_ce0 mem_ce 1 1 }  { weights725_d0 mem_din 1 16 }  { weights725_q0 mem_dout 0 16 }  { weights725_we0 mem_we 1 1 }  { weights725_address1 mem_address 1 11 }  { weights725_ce1 mem_ce 1 1 }  { weights725_d1 mem_din 1 16 }  { weights725_q1 mem_dout 0 16 }  { weights725_we1 mem_we 1 1 } } }
	weights726 { ap_memory {  { weights726_address0 mem_address 1 11 }  { weights726_ce0 mem_ce 1 1 }  { weights726_d0 mem_din 1 16 }  { weights726_q0 mem_dout 0 16 }  { weights726_we0 mem_we 1 1 }  { weights726_address1 mem_address 1 11 }  { weights726_ce1 mem_ce 1 1 }  { weights726_d1 mem_din 1 16 }  { weights726_q1 mem_dout 0 16 }  { weights726_we1 mem_we 1 1 } } }
	weights727 { ap_memory {  { weights727_address0 mem_address 1 11 }  { weights727_ce0 mem_ce 1 1 }  { weights727_d0 mem_din 1 16 }  { weights727_q0 mem_dout 0 16 }  { weights727_we0 mem_we 1 1 }  { weights727_address1 mem_address 1 11 }  { weights727_ce1 mem_ce 1 1 }  { weights727_d1 mem_din 1 16 }  { weights727_q1 mem_dout 0 16 }  { weights727_we1 mem_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 48 }  { p_read_ap_vld in_vld 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 48 }  { p_read1_ap_vld in_vld 0 1 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 48 }  { p_read2_ap_vld in_vld 0 1 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 48 }  { p_read3_ap_vld in_vld 0 1 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 48 }  { p_read4_ap_vld in_vld 0 1 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 48 }  { p_read5_ap_vld in_vld 0 1 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 48 }  { p_read6_ap_vld in_vld 0 1 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 48 }  { p_read7_ap_vld in_vld 0 1 } } }
	ci { ap_none {  { ci in_data 0 10 }  { ci_ap_vld in_vld 0 1 } } }
	wi { ap_none {  { wi in_data 0 16 }  { wi_ap_vld in_vld 0 1 } } }
	k { ap_none {  { k in_data 0 3 }  { k_ap_vld in_vld 0 1 } } }
	stride { ap_none {  { stride in_data 0 2 }  { stride_ap_vld in_vld 0 1 } } }
	pad { ap_none {  { pad in_data 0 2 }  { pad_ap_vld in_vld 0 1 } } }
	ow { ap_none {  { ow in_data 0 16 }  { ow_ap_vld in_vld 0 1 } } }
	computing { ap_none {  { computing in_data 0 1 }  { computing_ap_vld in_vld 0 1 } } }
	emitting_offset { ap_none {  { emitting_offset in_data 0 1 }  { emitting_offset_ap_vld in_vld 0 1 } } }
	previous_rows { ap_none {  { previous_rows in_data 0 16 }  { previous_rows_ap_vld in_vld 0 1 } } }
	current { ap_memory {  { current_address0 mem_address 1 6 }  { current_ce0 mem_ce 1 1 }  { current_d0 mem_din 1 48 }  { current_q0 mem_dout 0 48 }  { current_we0 mem_we 1 1 }  { current_address1 MemPortADDR2 1 6 }  { current_ce1 MemPortCE2 1 1 }  { current_d1 MemPortDIN2 1 48 }  { current_q1 mem_dout 0 48 }  { current_we1 MemPortWE2 1 1 } } }
	current28 { ap_memory {  { current28_address0 mem_address 1 6 }  { current28_ce0 mem_ce 1 1 }  { current28_d0 mem_din 1 48 }  { current28_q0 mem_dout 0 48 }  { current28_we0 mem_we 1 1 }  { current28_address1 MemPortADDR2 1 6 }  { current28_ce1 MemPortCE2 1 1 }  { current28_d1 MemPortDIN2 1 48 }  { current28_q1 mem_dout 0 48 }  { current28_we1 MemPortWE2 1 1 } } }
	current29 { ap_memory {  { current29_address0 mem_address 1 6 }  { current29_ce0 mem_ce 1 1 }  { current29_d0 mem_din 1 48 }  { current29_q0 mem_dout 0 48 }  { current29_we0 mem_we 1 1 }  { current29_address1 MemPortADDR2 1 6 }  { current29_ce1 MemPortCE2 1 1 }  { current29_d1 MemPortDIN2 1 48 }  { current29_q1 mem_dout 0 48 }  { current29_we1 MemPortWE2 1 1 } } }
	current30 { ap_memory {  { current30_address0 mem_address 1 6 }  { current30_ce0 mem_ce 1 1 }  { current30_d0 mem_din 1 48 }  { current30_q0 mem_dout 0 48 }  { current30_we0 mem_we 1 1 }  { current30_address1 MemPortADDR2 1 6 }  { current30_ce1 MemPortCE2 1 1 }  { current30_d1 MemPortDIN2 1 48 }  { current30_q1 mem_dout 0 48 }  { current30_we1 MemPortWE2 1 1 } } }
	current15 { ap_memory {  { current15_address0 mem_address 1 6 }  { current15_ce0 mem_ce 1 1 }  { current15_d0 mem_din 1 48 }  { current15_q0 mem_dout 0 48 }  { current15_we0 mem_we 1 1 }  { current15_address1 MemPortADDR2 1 6 }  { current15_ce1 MemPortCE2 1 1 }  { current15_d1 MemPortDIN2 1 48 }  { current15_q1 mem_dout 0 48 }  { current15_we1 MemPortWE2 1 1 } } }
	current1531 { ap_memory {  { current1531_address0 mem_address 1 6 }  { current1531_ce0 mem_ce 1 1 }  { current1531_d0 mem_din 1 48 }  { current1531_q0 mem_dout 0 48 }  { current1531_we0 mem_we 1 1 }  { current1531_address1 MemPortADDR2 1 6 }  { current1531_ce1 MemPortCE2 1 1 }  { current1531_d1 MemPortDIN2 1 48 }  { current1531_q1 mem_dout 0 48 }  { current1531_we1 MemPortWE2 1 1 } } }
	current1532 { ap_memory {  { current1532_address0 mem_address 1 6 }  { current1532_ce0 mem_ce 1 1 }  { current1532_d0 mem_din 1 48 }  { current1532_q0 mem_dout 0 48 }  { current1532_we0 mem_we 1 1 }  { current1532_address1 MemPortADDR2 1 6 }  { current1532_ce1 MemPortCE2 1 1 }  { current1532_d1 MemPortDIN2 1 48 }  { current1532_q1 mem_dout 0 48 }  { current1532_we1 MemPortWE2 1 1 } } }
	current1533 { ap_memory {  { current1533_address0 mem_address 1 6 }  { current1533_ce0 mem_ce 1 1 }  { current1533_d0 mem_din 1 48 }  { current1533_q0 mem_dout 0 48 }  { current1533_we0 mem_we 1 1 }  { current1533_address1 MemPortADDR2 1 6 }  { current1533_ce1 MemPortCE2 1 1 }  { current1533_d1 MemPortDIN2 1 48 }  { current1533_q1 mem_dout 0 48 }  { current1533_we1 MemPortWE2 1 1 } } }
	current16 { ap_memory {  { current16_address0 mem_address 1 6 }  { current16_ce0 mem_ce 1 1 }  { current16_d0 mem_din 1 48 }  { current16_q0 mem_dout 0 48 }  { current16_we0 mem_we 1 1 }  { current16_address1 MemPortADDR2 1 6 }  { current16_ce1 MemPortCE2 1 1 }  { current16_d1 MemPortDIN2 1 48 }  { current16_q1 mem_dout 0 48 }  { current16_we1 MemPortWE2 1 1 } } }
	current1634 { ap_memory {  { current1634_address0 mem_address 1 6 }  { current1634_ce0 mem_ce 1 1 }  { current1634_d0 mem_din 1 48 }  { current1634_q0 mem_dout 0 48 }  { current1634_we0 mem_we 1 1 }  { current1634_address1 MemPortADDR2 1 6 }  { current1634_ce1 MemPortCE2 1 1 }  { current1634_d1 MemPortDIN2 1 48 }  { current1634_q1 mem_dout 0 48 }  { current1634_we1 MemPortWE2 1 1 } } }
	current1635 { ap_memory {  { current1635_address0 mem_address 1 6 }  { current1635_ce0 mem_ce 1 1 }  { current1635_d0 mem_din 1 48 }  { current1635_q0 mem_dout 0 48 }  { current1635_we0 mem_we 1 1 }  { current1635_address1 MemPortADDR2 1 6 }  { current1635_ce1 MemPortCE2 1 1 }  { current1635_d1 MemPortDIN2 1 48 }  { current1635_q1 mem_dout 0 48 }  { current1635_we1 MemPortWE2 1 1 } } }
	current1636 { ap_memory {  { current1636_address0 mem_address 1 6 }  { current1636_ce0 mem_ce 1 1 }  { current1636_d0 mem_din 1 48 }  { current1636_q0 mem_dout 0 48 }  { current1636_we0 mem_we 1 1 }  { current1636_address1 MemPortADDR2 1 6 }  { current1636_ce1 MemPortCE2 1 1 }  { current1636_d1 MemPortDIN2 1 48 }  { current1636_q1 mem_dout 0 48 }  { current1636_we1 MemPortWE2 1 1 } } }
	current17 { ap_memory {  { current17_address0 mem_address 1 6 }  { current17_ce0 mem_ce 1 1 }  { current17_d0 mem_din 1 48 }  { current17_q0 mem_dout 0 48 }  { current17_we0 mem_we 1 1 }  { current17_address1 MemPortADDR2 1 6 }  { current17_ce1 MemPortCE2 1 1 }  { current17_d1 MemPortDIN2 1 48 }  { current17_q1 mem_dout 0 48 }  { current17_we1 MemPortWE2 1 1 } } }
	current1737 { ap_memory {  { current1737_address0 mem_address 1 6 }  { current1737_ce0 mem_ce 1 1 }  { current1737_d0 mem_din 1 48 }  { current1737_q0 mem_dout 0 48 }  { current1737_we0 mem_we 1 1 }  { current1737_address1 MemPortADDR2 1 6 }  { current1737_ce1 MemPortCE2 1 1 }  { current1737_d1 MemPortDIN2 1 48 }  { current1737_q1 mem_dout 0 48 }  { current1737_we1 MemPortWE2 1 1 } } }
	current1738 { ap_memory {  { current1738_address0 mem_address 1 6 }  { current1738_ce0 mem_ce 1 1 }  { current1738_d0 mem_din 1 48 }  { current1738_q0 mem_dout 0 48 }  { current1738_we0 mem_we 1 1 }  { current1738_address1 MemPortADDR2 1 6 }  { current1738_ce1 MemPortCE2 1 1 }  { current1738_d1 MemPortDIN2 1 48 }  { current1738_q1 mem_dout 0 48 }  { current1738_we1 MemPortWE2 1 1 } } }
	current1739 { ap_memory {  { current1739_address0 mem_address 1 6 }  { current1739_ce0 mem_ce 1 1 }  { current1739_d0 mem_din 1 48 }  { current1739_q0 mem_dout 0 48 }  { current1739_we0 mem_we 1 1 }  { current1739_address1 MemPortADDR2 1 6 }  { current1739_ce1 MemPortCE2 1 1 }  { current1739_d1 MemPortDIN2 1 48 }  { current1739_q1 mem_dout 0 48 }  { current1739_we1 MemPortWE2 1 1 } } }
	current18 { ap_memory {  { current18_address0 mem_address 1 6 }  { current18_ce0 mem_ce 1 1 }  { current18_d0 mem_din 1 48 }  { current18_q0 mem_dout 0 48 }  { current18_we0 mem_we 1 1 }  { current18_address1 MemPortADDR2 1 6 }  { current18_ce1 MemPortCE2 1 1 }  { current18_d1 MemPortDIN2 1 48 }  { current18_q1 mem_dout 0 48 }  { current18_we1 MemPortWE2 1 1 } } }
	current1840 { ap_memory {  { current1840_address0 mem_address 1 6 }  { current1840_ce0 mem_ce 1 1 }  { current1840_d0 mem_din 1 48 }  { current1840_q0 mem_dout 0 48 }  { current1840_we0 mem_we 1 1 }  { current1840_address1 MemPortADDR2 1 6 }  { current1840_ce1 MemPortCE2 1 1 }  { current1840_d1 MemPortDIN2 1 48 }  { current1840_q1 mem_dout 0 48 }  { current1840_we1 MemPortWE2 1 1 } } }
	current1841 { ap_memory {  { current1841_address0 mem_address 1 6 }  { current1841_ce0 mem_ce 1 1 }  { current1841_d0 mem_din 1 48 }  { current1841_q0 mem_dout 0 48 }  { current1841_we0 mem_we 1 1 }  { current1841_address1 MemPortADDR2 1 6 }  { current1841_ce1 MemPortCE2 1 1 }  { current1841_d1 MemPortDIN2 1 48 }  { current1841_q1 mem_dout 0 48 }  { current1841_we1 MemPortWE2 1 1 } } }
	current1842 { ap_memory {  { current1842_address0 mem_address 1 6 }  { current1842_ce0 mem_ce 1 1 }  { current1842_d0 mem_din 1 48 }  { current1842_q0 mem_dout 0 48 }  { current1842_we0 mem_we 1 1 }  { current1842_address1 MemPortADDR2 1 6 }  { current1842_ce1 MemPortCE2 1 1 }  { current1842_d1 MemPortDIN2 1 48 }  { current1842_q1 mem_dout 0 48 }  { current1842_we1 MemPortWE2 1 1 } } }
	current19 { ap_memory {  { current19_address0 mem_address 1 6 }  { current19_ce0 mem_ce 1 1 }  { current19_d0 mem_din 1 48 }  { current19_q0 mem_dout 0 48 }  { current19_we0 mem_we 1 1 }  { current19_address1 MemPortADDR2 1 6 }  { current19_ce1 MemPortCE2 1 1 }  { current19_d1 MemPortDIN2 1 48 }  { current19_q1 mem_dout 0 48 }  { current19_we1 MemPortWE2 1 1 } } }
	current1943 { ap_memory {  { current1943_address0 mem_address 1 6 }  { current1943_ce0 mem_ce 1 1 }  { current1943_d0 mem_din 1 48 }  { current1943_q0 mem_dout 0 48 }  { current1943_we0 mem_we 1 1 }  { current1943_address1 MemPortADDR2 1 6 }  { current1943_ce1 MemPortCE2 1 1 }  { current1943_d1 MemPortDIN2 1 48 }  { current1943_q1 mem_dout 0 48 }  { current1943_we1 MemPortWE2 1 1 } } }
	current1944 { ap_memory {  { current1944_address0 mem_address 1 6 }  { current1944_ce0 mem_ce 1 1 }  { current1944_d0 mem_din 1 48 }  { current1944_q0 mem_dout 0 48 }  { current1944_we0 mem_we 1 1 }  { current1944_address1 MemPortADDR2 1 6 }  { current1944_ce1 MemPortCE2 1 1 }  { current1944_d1 MemPortDIN2 1 48 }  { current1944_q1 mem_dout 0 48 }  { current1944_we1 MemPortWE2 1 1 } } }
	current1945 { ap_memory {  { current1945_address0 mem_address 1 6 }  { current1945_ce0 mem_ce 1 1 }  { current1945_d0 mem_din 1 48 }  { current1945_q0 mem_dout 0 48 }  { current1945_we0 mem_we 1 1 }  { current1945_address1 MemPortADDR2 1 6 }  { current1945_ce1 MemPortCE2 1 1 }  { current1945_d1 MemPortDIN2 1 48 }  { current1945_q1 mem_dout 0 48 }  { current1945_we1 MemPortWE2 1 1 } } }
	current20 { ap_memory {  { current20_address0 mem_address 1 6 }  { current20_ce0 mem_ce 1 1 }  { current20_d0 mem_din 1 48 }  { current20_q0 mem_dout 0 48 }  { current20_we0 mem_we 1 1 }  { current20_address1 MemPortADDR2 1 6 }  { current20_ce1 MemPortCE2 1 1 }  { current20_d1 MemPortDIN2 1 48 }  { current20_q1 mem_dout 0 48 }  { current20_we1 MemPortWE2 1 1 } } }
	current2046 { ap_memory {  { current2046_address0 mem_address 1 6 }  { current2046_ce0 mem_ce 1 1 }  { current2046_d0 mem_din 1 48 }  { current2046_q0 mem_dout 0 48 }  { current2046_we0 mem_we 1 1 }  { current2046_address1 MemPortADDR2 1 6 }  { current2046_ce1 MemPortCE2 1 1 }  { current2046_d1 MemPortDIN2 1 48 }  { current2046_q1 mem_dout 0 48 }  { current2046_we1 MemPortWE2 1 1 } } }
	current2047 { ap_memory {  { current2047_address0 mem_address 1 6 }  { current2047_ce0 mem_ce 1 1 }  { current2047_d0 mem_din 1 48 }  { current2047_q0 mem_dout 0 48 }  { current2047_we0 mem_we 1 1 }  { current2047_address1 MemPortADDR2 1 6 }  { current2047_ce1 MemPortCE2 1 1 }  { current2047_d1 MemPortDIN2 1 48 }  { current2047_q1 mem_dout 0 48 }  { current2047_we1 MemPortWE2 1 1 } } }
	current2048 { ap_memory {  { current2048_address0 mem_address 1 6 }  { current2048_ce0 mem_ce 1 1 }  { current2048_d0 mem_din 1 48 }  { current2048_q0 mem_dout 0 48 }  { current2048_we0 mem_we 1 1 }  { current2048_address1 MemPortADDR2 1 6 }  { current2048_ce1 MemPortCE2 1 1 }  { current2048_d1 MemPortDIN2 1 48 }  { current2048_q1 mem_dout 0 48 }  { current2048_we1 MemPortWE2 1 1 } } }
	current21 { ap_memory {  { current21_address0 mem_address 1 6 }  { current21_ce0 mem_ce 1 1 }  { current21_d0 mem_din 1 48 }  { current21_q0 mem_dout 0 48 }  { current21_we0 mem_we 1 1 }  { current21_address1 MemPortADDR2 1 6 }  { current21_ce1 MemPortCE2 1 1 }  { current21_d1 MemPortDIN2 1 48 }  { current21_q1 mem_dout 0 48 }  { current21_we1 MemPortWE2 1 1 } } }
	current2149 { ap_memory {  { current2149_address0 mem_address 1 6 }  { current2149_ce0 mem_ce 1 1 }  { current2149_d0 mem_din 1 48 }  { current2149_q0 mem_dout 0 48 }  { current2149_we0 mem_we 1 1 }  { current2149_address1 MemPortADDR2 1 6 }  { current2149_ce1 MemPortCE2 1 1 }  { current2149_d1 MemPortDIN2 1 48 }  { current2149_q1 mem_dout 0 48 }  { current2149_we1 MemPortWE2 1 1 } } }
	current2150 { ap_memory {  { current2150_address0 mem_address 1 6 }  { current2150_ce0 mem_ce 1 1 }  { current2150_d0 mem_din 1 48 }  { current2150_q0 mem_dout 0 48 }  { current2150_we0 mem_we 1 1 }  { current2150_address1 MemPortADDR2 1 6 }  { current2150_ce1 MemPortCE2 1 1 }  { current2150_d1 MemPortDIN2 1 48 }  { current2150_q1 mem_dout 0 48 }  { current2150_we1 MemPortWE2 1 1 } } }
	current2151 { ap_memory {  { current2151_address0 mem_address 1 6 }  { current2151_ce0 mem_ce 1 1 }  { current2151_d0 mem_din 1 48 }  { current2151_q0 mem_dout 0 48 }  { current2151_we0 mem_we 1 1 }  { current2151_address1 MemPortADDR2 1 6 }  { current2151_ce1 MemPortCE2 1 1 }  { current2151_d1 MemPortDIN2 1 48 }  { current2151_q1 mem_dout 0 48 }  { current2151_we1 MemPortWE2 1 1 } } }
	previous { ap_memory {  { previous_address0 mem_address 1 6 }  { previous_ce0 mem_ce 1 1 }  { previous_d0 mem_din 1 48 }  { previous_q0 mem_dout 0 48 }  { previous_we0 mem_we 1 1 }  { previous_address1 mem_address 1 6 }  { previous_ce1 mem_ce 1 1 }  { previous_d1 mem_din 1 48 }  { previous_q1 mem_dout 0 48 }  { previous_we1 mem_we 1 1 } } }
	previous52 { ap_memory {  { previous52_address0 mem_address 1 6 }  { previous52_ce0 mem_ce 1 1 }  { previous52_d0 mem_din 1 48 }  { previous52_q0 mem_dout 0 48 }  { previous52_we0 mem_we 1 1 }  { previous52_address1 mem_address 1 6 }  { previous52_ce1 mem_ce 1 1 }  { previous52_d1 mem_din 1 48 }  { previous52_q1 mem_dout 0 48 }  { previous52_we1 mem_we 1 1 } } }
	previous53 { ap_memory {  { previous53_address0 mem_address 1 6 }  { previous53_ce0 mem_ce 1 1 }  { previous53_d0 mem_din 1 48 }  { previous53_q0 mem_dout 0 48 }  { previous53_we0 mem_we 1 1 }  { previous53_address1 mem_address 1 6 }  { previous53_ce1 mem_ce 1 1 }  { previous53_d1 mem_din 1 48 }  { previous53_q1 mem_dout 0 48 }  { previous53_we1 mem_we 1 1 } } }
	previous54 { ap_memory {  { previous54_address0 mem_address 1 6 }  { previous54_ce0 mem_ce 1 1 }  { previous54_d0 mem_din 1 48 }  { previous54_q0 mem_dout 0 48 }  { previous54_we0 mem_we 1 1 }  { previous54_address1 mem_address 1 6 }  { previous54_ce1 mem_ce 1 1 }  { previous54_d1 mem_din 1 48 }  { previous54_q1 mem_dout 0 48 }  { previous54_we1 mem_we 1 1 } } }
	previous22 { ap_memory {  { previous22_address0 mem_address 1 6 }  { previous22_ce0 mem_ce 1 1 }  { previous22_d0 mem_din 1 48 }  { previous22_q0 mem_dout 0 48 }  { previous22_we0 mem_we 1 1 }  { previous22_address1 mem_address 1 6 }  { previous22_ce1 mem_ce 1 1 }  { previous22_d1 mem_din 1 48 }  { previous22_q1 mem_dout 0 48 }  { previous22_we1 mem_we 1 1 } } }
	previous2255 { ap_memory {  { previous2255_address0 mem_address 1 6 }  { previous2255_ce0 mem_ce 1 1 }  { previous2255_d0 mem_din 1 48 }  { previous2255_q0 mem_dout 0 48 }  { previous2255_we0 mem_we 1 1 }  { previous2255_address1 mem_address 1 6 }  { previous2255_ce1 mem_ce 1 1 }  { previous2255_d1 mem_din 1 48 }  { previous2255_q1 mem_dout 0 48 }  { previous2255_we1 mem_we 1 1 } } }
	previous2256 { ap_memory {  { previous2256_address0 mem_address 1 6 }  { previous2256_ce0 mem_ce 1 1 }  { previous2256_d0 mem_din 1 48 }  { previous2256_q0 mem_dout 0 48 }  { previous2256_we0 mem_we 1 1 }  { previous2256_address1 mem_address 1 6 }  { previous2256_ce1 mem_ce 1 1 }  { previous2256_d1 mem_din 1 48 }  { previous2256_q1 mem_dout 0 48 }  { previous2256_we1 mem_we 1 1 } } }
	previous2257 { ap_memory {  { previous2257_address0 mem_address 1 6 }  { previous2257_ce0 mem_ce 1 1 }  { previous2257_d0 mem_din 1 48 }  { previous2257_q0 mem_dout 0 48 }  { previous2257_we0 mem_we 1 1 }  { previous2257_address1 mem_address 1 6 }  { previous2257_ce1 mem_ce 1 1 }  { previous2257_d1 mem_din 1 48 }  { previous2257_q1 mem_dout 0 48 }  { previous2257_we1 mem_we 1 1 } } }
	previous23 { ap_memory {  { previous23_address0 mem_address 1 6 }  { previous23_ce0 mem_ce 1 1 }  { previous23_d0 mem_din 1 48 }  { previous23_q0 mem_dout 0 48 }  { previous23_we0 mem_we 1 1 }  { previous23_address1 mem_address 1 6 }  { previous23_ce1 mem_ce 1 1 }  { previous23_d1 mem_din 1 48 }  { previous23_q1 mem_dout 0 48 }  { previous23_we1 mem_we 1 1 } } }
	previous2358 { ap_memory {  { previous2358_address0 mem_address 1 6 }  { previous2358_ce0 mem_ce 1 1 }  { previous2358_d0 mem_din 1 48 }  { previous2358_q0 mem_dout 0 48 }  { previous2358_we0 mem_we 1 1 }  { previous2358_address1 mem_address 1 6 }  { previous2358_ce1 mem_ce 1 1 }  { previous2358_d1 mem_din 1 48 }  { previous2358_q1 mem_dout 0 48 }  { previous2358_we1 mem_we 1 1 } } }
	previous2359 { ap_memory {  { previous2359_address0 mem_address 1 6 }  { previous2359_ce0 mem_ce 1 1 }  { previous2359_d0 mem_din 1 48 }  { previous2359_q0 mem_dout 0 48 }  { previous2359_we0 mem_we 1 1 }  { previous2359_address1 mem_address 1 6 }  { previous2359_ce1 mem_ce 1 1 }  { previous2359_d1 mem_din 1 48 }  { previous2359_q1 mem_dout 0 48 }  { previous2359_we1 mem_we 1 1 } } }
	previous2360 { ap_memory {  { previous2360_address0 mem_address 1 6 }  { previous2360_ce0 mem_ce 1 1 }  { previous2360_d0 mem_din 1 48 }  { previous2360_q0 mem_dout 0 48 }  { previous2360_we0 mem_we 1 1 }  { previous2360_address1 mem_address 1 6 }  { previous2360_ce1 mem_ce 1 1 }  { previous2360_d1 mem_din 1 48 }  { previous2360_q1 mem_dout 0 48 }  { previous2360_we1 mem_we 1 1 } } }
	previous24 { ap_memory {  { previous24_address0 mem_address 1 6 }  { previous24_ce0 mem_ce 1 1 }  { previous24_d0 mem_din 1 48 }  { previous24_q0 mem_dout 0 48 }  { previous24_we0 mem_we 1 1 }  { previous24_address1 mem_address 1 6 }  { previous24_ce1 mem_ce 1 1 }  { previous24_d1 mem_din 1 48 }  { previous24_q1 mem_dout 0 48 }  { previous24_we1 mem_we 1 1 } } }
	previous2461 { ap_memory {  { previous2461_address0 mem_address 1 6 }  { previous2461_ce0 mem_ce 1 1 }  { previous2461_d0 mem_din 1 48 }  { previous2461_q0 mem_dout 0 48 }  { previous2461_we0 mem_we 1 1 }  { previous2461_address1 mem_address 1 6 }  { previous2461_ce1 mem_ce 1 1 }  { previous2461_d1 mem_din 1 48 }  { previous2461_q1 mem_dout 0 48 }  { previous2461_we1 mem_we 1 1 } } }
	previous2462 { ap_memory {  { previous2462_address0 mem_address 1 6 }  { previous2462_ce0 mem_ce 1 1 }  { previous2462_d0 mem_din 1 48 }  { previous2462_q0 mem_dout 0 48 }  { previous2462_we0 mem_we 1 1 }  { previous2462_address1 mem_address 1 6 }  { previous2462_ce1 mem_ce 1 1 }  { previous2462_d1 mem_din 1 48 }  { previous2462_q1 mem_dout 0 48 }  { previous2462_we1 mem_we 1 1 } } }
	previous2463 { ap_memory {  { previous2463_address0 mem_address 1 6 }  { previous2463_ce0 mem_ce 1 1 }  { previous2463_d0 mem_din 1 48 }  { previous2463_q0 mem_dout 0 48 }  { previous2463_we0 mem_we 1 1 }  { previous2463_address1 mem_address 1 6 }  { previous2463_ce1 mem_ce 1 1 }  { previous2463_d1 mem_din 1 48 }  { previous2463_q1 mem_dout 0 48 }  { previous2463_we1 mem_we 1 1 } } }
	previous25 { ap_memory {  { previous25_address0 mem_address 1 6 }  { previous25_ce0 mem_ce 1 1 }  { previous25_d0 mem_din 1 48 }  { previous25_q0 mem_dout 0 48 }  { previous25_we0 mem_we 1 1 }  { previous25_address1 mem_address 1 6 }  { previous25_ce1 mem_ce 1 1 }  { previous25_d1 mem_din 1 48 }  { previous25_q1 mem_dout 0 48 }  { previous25_we1 mem_we 1 1 } } }
	previous2564 { ap_memory {  { previous2564_address0 mem_address 1 6 }  { previous2564_ce0 mem_ce 1 1 }  { previous2564_d0 mem_din 1 48 }  { previous2564_q0 mem_dout 0 48 }  { previous2564_we0 mem_we 1 1 }  { previous2564_address1 mem_address 1 6 }  { previous2564_ce1 mem_ce 1 1 }  { previous2564_d1 mem_din 1 48 }  { previous2564_q1 mem_dout 0 48 }  { previous2564_we1 mem_we 1 1 } } }
	previous2565 { ap_memory {  { previous2565_address0 mem_address 1 6 }  { previous2565_ce0 mem_ce 1 1 }  { previous2565_d0 mem_din 1 48 }  { previous2565_q0 mem_dout 0 48 }  { previous2565_we0 mem_we 1 1 }  { previous2565_address1 mem_address 1 6 }  { previous2565_ce1 mem_ce 1 1 }  { previous2565_d1 mem_din 1 48 }  { previous2565_q1 mem_dout 0 48 }  { previous2565_we1 mem_we 1 1 } } }
	previous2566 { ap_memory {  { previous2566_address0 mem_address 1 6 }  { previous2566_ce0 mem_ce 1 1 }  { previous2566_d0 mem_din 1 48 }  { previous2566_q0 mem_dout 0 48 }  { previous2566_we0 mem_we 1 1 }  { previous2566_address1 mem_address 1 6 }  { previous2566_ce1 mem_ce 1 1 }  { previous2566_d1 mem_din 1 48 }  { previous2566_q1 mem_dout 0 48 }  { previous2566_we1 mem_we 1 1 } } }
	previous26 { ap_memory {  { previous26_address0 mem_address 1 6 }  { previous26_ce0 mem_ce 1 1 }  { previous26_d0 mem_din 1 48 }  { previous26_q0 mem_dout 0 48 }  { previous26_we0 mem_we 1 1 }  { previous26_address1 mem_address 1 6 }  { previous26_ce1 mem_ce 1 1 }  { previous26_d1 mem_din 1 48 }  { previous26_q1 mem_dout 0 48 }  { previous26_we1 mem_we 1 1 } } }
	previous2667 { ap_memory {  { previous2667_address0 mem_address 1 6 }  { previous2667_ce0 mem_ce 1 1 }  { previous2667_d0 mem_din 1 48 }  { previous2667_q0 mem_dout 0 48 }  { previous2667_we0 mem_we 1 1 }  { previous2667_address1 mem_address 1 6 }  { previous2667_ce1 mem_ce 1 1 }  { previous2667_d1 mem_din 1 48 }  { previous2667_q1 mem_dout 0 48 }  { previous2667_we1 mem_we 1 1 } } }
	previous2668 { ap_memory {  { previous2668_address0 mem_address 1 6 }  { previous2668_ce0 mem_ce 1 1 }  { previous2668_d0 mem_din 1 48 }  { previous2668_q0 mem_dout 0 48 }  { previous2668_we0 mem_we 1 1 }  { previous2668_address1 mem_address 1 6 }  { previous2668_ce1 mem_ce 1 1 }  { previous2668_d1 mem_din 1 48 }  { previous2668_q1 mem_dout 0 48 }  { previous2668_we1 mem_we 1 1 } } }
	previous2669 { ap_memory {  { previous2669_address0 mem_address 1 6 }  { previous2669_ce0 mem_ce 1 1 }  { previous2669_d0 mem_din 1 48 }  { previous2669_q0 mem_dout 0 48 }  { previous2669_we0 mem_we 1 1 }  { previous2669_address1 mem_address 1 6 }  { previous2669_ce1 mem_ce 1 1 }  { previous2669_d1 mem_din 1 48 }  { previous2669_q1 mem_dout 0 48 }  { previous2669_we1 mem_we 1 1 } } }
	previous27 { ap_memory {  { previous27_address0 mem_address 1 6 }  { previous27_ce0 mem_ce 1 1 }  { previous27_d0 mem_din 1 48 }  { previous27_q0 mem_dout 0 48 }  { previous27_we0 mem_we 1 1 }  { previous27_address1 mem_address 1 6 }  { previous27_ce1 mem_ce 1 1 }  { previous27_d1 mem_din 1 48 }  { previous27_q1 mem_dout 0 48 }  { previous27_we1 mem_we 1 1 } } }
	previous2770 { ap_memory {  { previous2770_address0 mem_address 1 6 }  { previous2770_ce0 mem_ce 1 1 }  { previous2770_d0 mem_din 1 48 }  { previous2770_q0 mem_dout 0 48 }  { previous2770_we0 mem_we 1 1 }  { previous2770_address1 mem_address 1 6 }  { previous2770_ce1 mem_ce 1 1 }  { previous2770_d1 mem_din 1 48 }  { previous2770_q1 mem_dout 0 48 }  { previous2770_we1 mem_we 1 1 } } }
	previous2771 { ap_memory {  { previous2771_address0 mem_address 1 6 }  { previous2771_ce0 mem_ce 1 1 }  { previous2771_d0 mem_din 1 48 }  { previous2771_q0 mem_dout 0 48 }  { previous2771_we0 mem_we 1 1 }  { previous2771_address1 mem_address 1 6 }  { previous2771_ce1 mem_ce 1 1 }  { previous2771_d1 mem_din 1 48 }  { previous2771_q1 mem_dout 0 48 }  { previous2771_we1 mem_we 1 1 } } }
	previous2772 { ap_memory {  { previous2772_address0 mem_address 1 6 }  { previous2772_ce0 mem_ce 1 1 }  { previous2772_d0 mem_din 1 48 }  { previous2772_q0 mem_dout 0 48 }  { previous2772_we0 mem_we 1 1 }  { previous2772_address1 mem_address 1 6 }  { previous2772_ce1 mem_ce 1 1 }  { previous2772_d1 mem_din 1 48 }  { previous2772_q1 mem_dout 0 48 }  { previous2772_we1 mem_we 1 1 } } }
	previous28 { ap_memory {  { previous28_address0 mem_address 1 6 }  { previous28_ce0 mem_ce 1 1 }  { previous28_d0 mem_din 1 48 }  { previous28_q0 mem_dout 0 48 }  { previous28_we0 mem_we 1 1 }  { previous28_address1 mem_address 1 6 }  { previous28_ce1 mem_ce 1 1 }  { previous28_d1 mem_din 1 48 }  { previous28_q1 mem_dout 0 48 }  { previous28_we1 mem_we 1 1 } } }
	previous2873 { ap_memory {  { previous2873_address0 mem_address 1 6 }  { previous2873_ce0 mem_ce 1 1 }  { previous2873_d0 mem_din 1 48 }  { previous2873_q0 mem_dout 0 48 }  { previous2873_we0 mem_we 1 1 }  { previous2873_address1 mem_address 1 6 }  { previous2873_ce1 mem_ce 1 1 }  { previous2873_d1 mem_din 1 48 }  { previous2873_q1 mem_dout 0 48 }  { previous2873_we1 mem_we 1 1 } } }
	previous2874 { ap_memory {  { previous2874_address0 mem_address 1 6 }  { previous2874_ce0 mem_ce 1 1 }  { previous2874_d0 mem_din 1 48 }  { previous2874_q0 mem_dout 0 48 }  { previous2874_we0 mem_we 1 1 }  { previous2874_address1 mem_address 1 6 }  { previous2874_ce1 mem_ce 1 1 }  { previous2874_d1 mem_din 1 48 }  { previous2874_q1 mem_dout 0 48 }  { previous2874_we1 mem_we 1 1 } } }
	previous2875 { ap_memory {  { previous2875_address0 mem_address 1 6 }  { previous2875_ce0 mem_ce 1 1 }  { previous2875_d0 mem_din 1 48 }  { previous2875_q0 mem_dout 0 48 }  { previous2875_we0 mem_we 1 1 }  { previous2875_address1 mem_address 1 6 }  { previous2875_ce1 mem_ce 1 1 }  { previous2875_d1 mem_din 1 48 }  { previous2875_q1 mem_dout 0 48 }  { previous2875_we1 mem_we 1 1 } } }
	p_anonymous_namespace_profile_ticks { ap_ovld {  { p_anonymous_namespace_profile_ticks_i in_data 0 64 }  { p_anonymous_namespace_profile_ticks_o out_data 1 64 }  { p_anonymous_namespace_profile_ticks_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_profile_ticks_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_mac { ap_ovld {  { p_anonymous_namespace_profile_mac_i in_data 0 64 }  { p_anonymous_namespace_profile_mac_o out_data 1 64 }  { p_anonymous_namespace_profile_mac_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_profile_mac_o_ap_vld out_vld 1 1 } } }
	p_anonymous_namespace_profile_wait { ap_ovld {  { p_anonymous_namespace_profile_wait_i in_data 0 64 }  { p_anonymous_namespace_profile_wait_o out_data 1 64 }  { p_anonymous_namespace_profile_wait_i_ap_vld in_vld 0 1 }  { p_anonymous_namespace_profile_wait_o_ap_vld out_vld 1 1 } } }
}
