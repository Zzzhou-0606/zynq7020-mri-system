# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 32
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 32
	offset_end 43
}
biases { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 44
	offset_end 55
}
shifts { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
layers { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
features { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 80
	offset_end 91
}
wide { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 92
	offset_end 103
}
output_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 104
	offset_end 115
}
mode { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 116
	offset_end 123
}
batch_count { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 124
	offset_end 131
}
feature_input { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
}
dict set axilite_register_dict control $port_control


