# This script segment is generated automatically by AutoPilot

set id 1320
set name mri_full_mux_42_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 32
set din0_signed 1
set din1_width 32
set din1_signed 1
set din2_width 32
set din2_signed 1
set din3_width 32
set din3_signed 1
set din4_width 2
set din4_signed 0
set dout_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1323 \
    name feature_mem \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_feature_mem \
    op interface \
    ports { m_axi_feature_mem_AWVALID { O 1 bit } m_axi_feature_mem_AWREADY { I 1 bit } m_axi_feature_mem_AWADDR { O 64 vector } m_axi_feature_mem_AWID { O 1 vector } m_axi_feature_mem_AWLEN { O 32 vector } m_axi_feature_mem_AWSIZE { O 3 vector } m_axi_feature_mem_AWBURST { O 2 vector } m_axi_feature_mem_AWLOCK { O 2 vector } m_axi_feature_mem_AWCACHE { O 4 vector } m_axi_feature_mem_AWPROT { O 3 vector } m_axi_feature_mem_AWQOS { O 4 vector } m_axi_feature_mem_AWREGION { O 4 vector } m_axi_feature_mem_AWUSER { O 1 vector } m_axi_feature_mem_WVALID { O 1 bit } m_axi_feature_mem_WREADY { I 1 bit } m_axi_feature_mem_WDATA { O 64 vector } m_axi_feature_mem_WSTRB { O 8 vector } m_axi_feature_mem_WLAST { O 1 bit } m_axi_feature_mem_WID { O 1 vector } m_axi_feature_mem_WUSER { O 1 vector } m_axi_feature_mem_ARVALID { O 1 bit } m_axi_feature_mem_ARREADY { I 1 bit } m_axi_feature_mem_ARADDR { O 64 vector } m_axi_feature_mem_ARID { O 1 vector } m_axi_feature_mem_ARLEN { O 32 vector } m_axi_feature_mem_ARSIZE { O 3 vector } m_axi_feature_mem_ARBURST { O 2 vector } m_axi_feature_mem_ARLOCK { O 2 vector } m_axi_feature_mem_ARCACHE { O 4 vector } m_axi_feature_mem_ARPROT { O 3 vector } m_axi_feature_mem_ARQOS { O 4 vector } m_axi_feature_mem_ARREGION { O 4 vector } m_axi_feature_mem_ARUSER { O 1 vector } m_axi_feature_mem_RVALID { I 1 bit } m_axi_feature_mem_RREADY { O 1 bit } m_axi_feature_mem_RDATA { I 64 vector } m_axi_feature_mem_RLAST { I 1 bit } m_axi_feature_mem_RID { I 1 vector } m_axi_feature_mem_RUSER { I 1 vector } m_axi_feature_mem_RRESP { I 2 vector } m_axi_feature_mem_BVALID { I 1 bit } m_axi_feature_mem_BREADY { O 1 bit } m_axi_feature_mem_BRESP { I 2 vector } m_axi_feature_mem_BID { I 1 vector } m_axi_feature_mem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1324 \
    name f \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f \
    op interface \
    ports { f { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1325 \
    name base_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_r \
    op interface \
    ports { base_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1326 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1327 \
    name mode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mode \
    op interface \
    ports { mode { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


