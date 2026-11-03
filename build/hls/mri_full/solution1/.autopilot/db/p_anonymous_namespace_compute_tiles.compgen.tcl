# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 828
set hasByteEnable 0
set MemName mri_full_p_anonymous_namespace_compute_tiles_a0_V_0_0
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 48
set AddrRange 64
set AddrWd 6
set impl_style distributed
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.755
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


set CoreName RAM_S2P_LUTRAM
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

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 831 \
    name weights_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_0_0 \
    op interface \
    ports { weights_0_0_address0 { O 11 vector } weights_0_0_ce0 { O 1 bit } weights_0_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 832 \
    name weights_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_0_1 \
    op interface \
    ports { weights_0_1_address0 { O 11 vector } weights_0_1_ce0 { O 1 bit } weights_0_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 833 \
    name weights_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_0_2 \
    op interface \
    ports { weights_0_2_address0 { O 11 vector } weights_0_2_ce0 { O 1 bit } weights_0_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 834 \
    name weights_0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_0_3 \
    op interface \
    ports { weights_0_3_address0 { O 11 vector } weights_0_3_ce0 { O 1 bit } weights_0_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 835 \
    name weights_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_1_0 \
    op interface \
    ports { weights_1_0_address0 { O 11 vector } weights_1_0_ce0 { O 1 bit } weights_1_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 836 \
    name weights_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_1_1 \
    op interface \
    ports { weights_1_1_address0 { O 11 vector } weights_1_1_ce0 { O 1 bit } weights_1_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 837 \
    name weights_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_1_2 \
    op interface \
    ports { weights_1_2_address0 { O 11 vector } weights_1_2_ce0 { O 1 bit } weights_1_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 838 \
    name weights_1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_1_3 \
    op interface \
    ports { weights_1_3_address0 { O 11 vector } weights_1_3_ce0 { O 1 bit } weights_1_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 839 \
    name weights_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_2_0 \
    op interface \
    ports { weights_2_0_address0 { O 11 vector } weights_2_0_ce0 { O 1 bit } weights_2_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 840 \
    name weights_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_2_1 \
    op interface \
    ports { weights_2_1_address0 { O 11 vector } weights_2_1_ce0 { O 1 bit } weights_2_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 841 \
    name weights_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_2_2 \
    op interface \
    ports { weights_2_2_address0 { O 11 vector } weights_2_2_ce0 { O 1 bit } weights_2_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 842 \
    name weights_2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_2_3 \
    op interface \
    ports { weights_2_3_address0 { O 11 vector } weights_2_3_ce0 { O 1 bit } weights_2_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 843 \
    name weights_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_3_0 \
    op interface \
    ports { weights_3_0_address0 { O 11 vector } weights_3_0_ce0 { O 1 bit } weights_3_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 844 \
    name weights_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_3_1 \
    op interface \
    ports { weights_3_1_address0 { O 11 vector } weights_3_1_ce0 { O 1 bit } weights_3_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 845 \
    name weights_3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_3_2 \
    op interface \
    ports { weights_3_2_address0 { O 11 vector } weights_3_2_ce0 { O 1 bit } weights_3_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 846 \
    name weights_3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_3_3 \
    op interface \
    ports { weights_3_3_address0 { O 11 vector } weights_3_3_ce0 { O 1 bit } weights_3_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 847 \
    name weights_4_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_4_0 \
    op interface \
    ports { weights_4_0_address0 { O 11 vector } weights_4_0_ce0 { O 1 bit } weights_4_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 848 \
    name weights_4_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_4_1 \
    op interface \
    ports { weights_4_1_address0 { O 11 vector } weights_4_1_ce0 { O 1 bit } weights_4_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 849 \
    name weights_4_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_4_2 \
    op interface \
    ports { weights_4_2_address0 { O 11 vector } weights_4_2_ce0 { O 1 bit } weights_4_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_4_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 850 \
    name weights_4_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_4_3 \
    op interface \
    ports { weights_4_3_address0 { O 11 vector } weights_4_3_ce0 { O 1 bit } weights_4_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_4_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 851 \
    name weights_5_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_5_0 \
    op interface \
    ports { weights_5_0_address0 { O 11 vector } weights_5_0_ce0 { O 1 bit } weights_5_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 852 \
    name weights_5_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_5_1 \
    op interface \
    ports { weights_5_1_address0 { O 11 vector } weights_5_1_ce0 { O 1 bit } weights_5_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 853 \
    name weights_5_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_5_2 \
    op interface \
    ports { weights_5_2_address0 { O 11 vector } weights_5_2_ce0 { O 1 bit } weights_5_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_5_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 854 \
    name weights_5_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_5_3 \
    op interface \
    ports { weights_5_3_address0 { O 11 vector } weights_5_3_ce0 { O 1 bit } weights_5_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_5_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 855 \
    name weights_6_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_6_0 \
    op interface \
    ports { weights_6_0_address0 { O 11 vector } weights_6_0_ce0 { O 1 bit } weights_6_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 856 \
    name weights_6_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_6_1 \
    op interface \
    ports { weights_6_1_address0 { O 11 vector } weights_6_1_ce0 { O 1 bit } weights_6_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 857 \
    name weights_6_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_6_2 \
    op interface \
    ports { weights_6_2_address0 { O 11 vector } weights_6_2_ce0 { O 1 bit } weights_6_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_6_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 858 \
    name weights_6_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_6_3 \
    op interface \
    ports { weights_6_3_address0 { O 11 vector } weights_6_3_ce0 { O 1 bit } weights_6_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_6_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 859 \
    name weights_7_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_7_0 \
    op interface \
    ports { weights_7_0_address0 { O 11 vector } weights_7_0_ce0 { O 1 bit } weights_7_0_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 860 \
    name weights_7_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_7_1 \
    op interface \
    ports { weights_7_1_address0 { O 11 vector } weights_7_1_ce0 { O 1 bit } weights_7_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 861 \
    name weights_7_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_7_2 \
    op interface \
    ports { weights_7_2_address0 { O 11 vector } weights_7_2_ce0 { O 1 bit } weights_7_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_7_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 862 \
    name weights_7_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_7_3 \
    op interface \
    ports { weights_7_3_address0 { O 11 vector } weights_7_3_ce0 { O 1 bit } weights_7_3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_7_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 829 \
    name pixels \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixels \
    op interface \
    ports { pixels_dout { I 64 vector } pixels_empty_n { I 1 bit } pixels_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name results \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_results \
    op interface \
    ports { results_din { O 256 vector } results_full_n { I 1 bit } results_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 863 \
    name bias_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_0 \
    op interface \
    ports { bias_0_dout { I 48 vector } bias_0_empty_n { I 1 bit } bias_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 864 \
    name bias_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1 \
    op interface \
    ports { bias_1_dout { I 48 vector } bias_1_empty_n { I 1 bit } bias_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 865 \
    name bias_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2 \
    op interface \
    ports { bias_2_dout { I 48 vector } bias_2_empty_n { I 1 bit } bias_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 866 \
    name bias_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_3 \
    op interface \
    ports { bias_3_dout { I 48 vector } bias_3_empty_n { I 1 bit } bias_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 867 \
    name bias_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_4 \
    op interface \
    ports { bias_4_dout { I 48 vector } bias_4_empty_n { I 1 bit } bias_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 868 \
    name bias_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_5 \
    op interface \
    ports { bias_5_dout { I 48 vector } bias_5_empty_n { I 1 bit } bias_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 869 \
    name bias_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_6 \
    op interface \
    ports { bias_6_dout { I 48 vector } bias_6_empty_n { I 1 bit } bias_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 870 \
    name bias_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_7 \
    op interface \
    ports { bias_7_dout { I 48 vector } bias_7_empty_n { I 1 bit } bias_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 871 \
    name ci \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ci \
    op interface \
    ports { ci_dout { I 10 vector } ci_empty_n { I 1 bit } ci_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 872 \
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
    id 873 \
    name k \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k \
    op interface \
    ports { k_dout { I 3 vector } k_empty_n { I 1 bit } k_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 874 \
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
    id 875 \
    name pad \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pad \
    op interface \
    ports { pad_dout { I 2 vector } pad_empty_n { I 1 bit } pad_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 876 \
    name oh \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oh \
    op interface \
    ports { oh_dout { I 16 vector } oh_empty_n { I 1 bit } oh_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 877 \
    name ow \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ow \
    op interface \
    ports { ow_dout { I 16 vector } ow_empty_n { I 1 bit } ow_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 878 \
    name oh_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_oh_out \
    op interface \
    ports { oh_out_din { O 16 vector } oh_out_full_n { I 1 bit } oh_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 879 \
    name ow_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ow_out \
    op interface \
    ports { ow_out_din { O 16 vector } ow_out_full_n { I 1 bit } ow_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 880 \
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
    id 881 \
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
    id 882 \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


