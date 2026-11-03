# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 1266
set hasByteEnable 0
set MemName mri_full_p_anonymous_namespace_conv_w0_0_0
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 1152
set AddrWd 11
set impl_style auto
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.771
set ClkPeriod 6.667
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
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
    id 1267 \
    name weights_mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_mem \
    op interface \
    ports { m_axi_weights_mem_AWVALID { O 1 bit } m_axi_weights_mem_AWREADY { I 1 bit } m_axi_weights_mem_AWADDR { O 64 vector } m_axi_weights_mem_AWID { O 1 vector } m_axi_weights_mem_AWLEN { O 32 vector } m_axi_weights_mem_AWSIZE { O 3 vector } m_axi_weights_mem_AWBURST { O 2 vector } m_axi_weights_mem_AWLOCK { O 2 vector } m_axi_weights_mem_AWCACHE { O 4 vector } m_axi_weights_mem_AWPROT { O 3 vector } m_axi_weights_mem_AWQOS { O 4 vector } m_axi_weights_mem_AWREGION { O 4 vector } m_axi_weights_mem_AWUSER { O 1 vector } m_axi_weights_mem_WVALID { O 1 bit } m_axi_weights_mem_WREADY { I 1 bit } m_axi_weights_mem_WDATA { O 64 vector } m_axi_weights_mem_WSTRB { O 8 vector } m_axi_weights_mem_WLAST { O 1 bit } m_axi_weights_mem_WID { O 1 vector } m_axi_weights_mem_WUSER { O 1 vector } m_axi_weights_mem_ARVALID { O 1 bit } m_axi_weights_mem_ARREADY { I 1 bit } m_axi_weights_mem_ARADDR { O 64 vector } m_axi_weights_mem_ARID { O 1 vector } m_axi_weights_mem_ARLEN { O 32 vector } m_axi_weights_mem_ARSIZE { O 3 vector } m_axi_weights_mem_ARBURST { O 2 vector } m_axi_weights_mem_ARLOCK { O 2 vector } m_axi_weights_mem_ARCACHE { O 4 vector } m_axi_weights_mem_ARPROT { O 3 vector } m_axi_weights_mem_ARQOS { O 4 vector } m_axi_weights_mem_ARREGION { O 4 vector } m_axi_weights_mem_ARUSER { O 1 vector } m_axi_weights_mem_RVALID { I 1 bit } m_axi_weights_mem_RREADY { O 1 bit } m_axi_weights_mem_RDATA { I 64 vector } m_axi_weights_mem_RLAST { I 1 bit } m_axi_weights_mem_RID { I 1 vector } m_axi_weights_mem_RUSER { I 1 vector } m_axi_weights_mem_RRESP { I 2 vector } m_axi_weights_mem_BVALID { I 1 bit } m_axi_weights_mem_BREADY { O 1 bit } m_axi_weights_mem_BRESP { I 2 vector } m_axi_weights_mem_BID { I 1 vector } m_axi_weights_mem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1268 \
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
    id 1269 \
    name feature_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_feature_read \
    op interface \
    ports { m_axi_feature_read_AWVALID { O 1 bit } m_axi_feature_read_AWREADY { I 1 bit } m_axi_feature_read_AWADDR { O 64 vector } m_axi_feature_read_AWID { O 1 vector } m_axi_feature_read_AWLEN { O 32 vector } m_axi_feature_read_AWSIZE { O 3 vector } m_axi_feature_read_AWBURST { O 2 vector } m_axi_feature_read_AWLOCK { O 2 vector } m_axi_feature_read_AWCACHE { O 4 vector } m_axi_feature_read_AWPROT { O 3 vector } m_axi_feature_read_AWQOS { O 4 vector } m_axi_feature_read_AWREGION { O 4 vector } m_axi_feature_read_AWUSER { O 1 vector } m_axi_feature_read_WVALID { O 1 bit } m_axi_feature_read_WREADY { I 1 bit } m_axi_feature_read_WDATA { O 64 vector } m_axi_feature_read_WSTRB { O 8 vector } m_axi_feature_read_WLAST { O 1 bit } m_axi_feature_read_WID { O 1 vector } m_axi_feature_read_WUSER { O 1 vector } m_axi_feature_read_ARVALID { O 1 bit } m_axi_feature_read_ARREADY { I 1 bit } m_axi_feature_read_ARADDR { O 64 vector } m_axi_feature_read_ARID { O 1 vector } m_axi_feature_read_ARLEN { O 32 vector } m_axi_feature_read_ARSIZE { O 3 vector } m_axi_feature_read_ARBURST { O 2 vector } m_axi_feature_read_ARLOCK { O 2 vector } m_axi_feature_read_ARCACHE { O 4 vector } m_axi_feature_read_ARPROT { O 3 vector } m_axi_feature_read_ARQOS { O 4 vector } m_axi_feature_read_ARREGION { O 4 vector } m_axi_feature_read_ARUSER { O 1 vector } m_axi_feature_read_RVALID { I 1 bit } m_axi_feature_read_RREADY { O 1 bit } m_axi_feature_read_RDATA { I 64 vector } m_axi_feature_read_RLAST { I 1 bit } m_axi_feature_read_RID { I 1 vector } m_axi_feature_read_RUSER { I 1 vector } m_axi_feature_read_RRESP { I 2 vector } m_axi_feature_read_BVALID { I 1 bit } m_axi_feature_read_BREADY { O 1 bit } m_axi_feature_read_BRESP { I 2 vector } m_axi_feature_read_BID { I 1 vector } m_axi_feature_read_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1270 \
    name w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w \
    op interface \
    ports { w { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1271 \
    name b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b \
    op interface \
    ports { b { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1272 \
    name s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s \
    op interface \
    ports { s { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1273 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1274 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1275 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1276 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1277 \
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
    id 1278 \
    name feature_input \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_feature_input \
    op interface \
    ports { feature_input { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1279 \
    name wide \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wide \
    op interface \
    ports { wide { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1280 \
    name input_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_r \
    op interface \
    ports { input_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1281 \
    name output_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_r \
    op interface \
    ports { output_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1282 \
    name skip \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_skip \
    op interface \
    ports { skip { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1283 \
    name ci \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ci \
    op interface \
    ports { ci { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1284 \
    name hi \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hi \
    op interface \
    ports { hi { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1285 \
    name wi \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wi \
    op interface \
    ports { wi { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1286 \
    name co \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_co \
    op interface \
    ports { co { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1287 \
    name k \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k \
    op interface \
    ports { k { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1288 \
    name stride \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stride \
    op interface \
    ports { stride { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1289 \
    name pad \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pad \
    op interface \
    ports { pad { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1290 \
    name kind \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kind \
    op interface \
    ports { kind { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1291 \
    name batch_count \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_count \
    op interface \
    ports { batch_count { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1292 \
    name p_anonymous_namespace_profile_ticks \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_profile_ticks \
    op interface \
    ports { p_anonymous_namespace_profile_ticks_i { I 64 vector } p_anonymous_namespace_profile_ticks_o { O 64 vector } p_anonymous_namespace_profile_ticks_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1293 \
    name p_anonymous_namespace_profile_mac \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_profile_mac \
    op interface \
    ports { p_anonymous_namespace_profile_mac_i { I 64 vector } p_anonymous_namespace_profile_mac_o { O 64 vector } p_anonymous_namespace_profile_mac_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1294 \
    name p_anonymous_namespace_profile_wait \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_profile_wait \
    op interface \
    ports { p_anonymous_namespace_profile_wait_i { I 64 vector } p_anonymous_namespace_profile_wait_o { O 64 vector } p_anonymous_namespace_profile_wait_o_ap_vld { O 1 bit } } \
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


