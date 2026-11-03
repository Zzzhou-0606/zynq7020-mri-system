# This script segment is generated automatically by AutoPilot

set id 131
set name mri_full_mac_muladd_16ns_16ns_32ns_32_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 0
set in1_width 16
set in1_signed 0
set in2_width 32
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set exp i0*i1+i2
set arg_lists {i0 {16 0 +} i1 {16 0 +} m {32 0 +} i2 {32 0 +} p {32 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
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
    id 142 \
    name next_0_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_0_0 \
    op interface \
    ports { next_0_0_address0 { O 11 vector } next_0_0_ce0 { O 1 bit } next_0_0_we0 { O 1 bit } next_0_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name next_0_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_0_1 \
    op interface \
    ports { next_0_1_address0 { O 11 vector } next_0_1_ce0 { O 1 bit } next_0_1_we0 { O 1 bit } next_0_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name next_0_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_0_2 \
    op interface \
    ports { next_0_2_address0 { O 11 vector } next_0_2_ce0 { O 1 bit } next_0_2_we0 { O 1 bit } next_0_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name next_0_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_0_3 \
    op interface \
    ports { next_0_3_address0 { O 11 vector } next_0_3_ce0 { O 1 bit } next_0_3_we0 { O 1 bit } next_0_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name next_1_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_1_0 \
    op interface \
    ports { next_1_0_address0 { O 11 vector } next_1_0_ce0 { O 1 bit } next_1_0_we0 { O 1 bit } next_1_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name next_1_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_1_1 \
    op interface \
    ports { next_1_1_address0 { O 11 vector } next_1_1_ce0 { O 1 bit } next_1_1_we0 { O 1 bit } next_1_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name next_1_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_1_2 \
    op interface \
    ports { next_1_2_address0 { O 11 vector } next_1_2_ce0 { O 1 bit } next_1_2_we0 { O 1 bit } next_1_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name next_1_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_1_3 \
    op interface \
    ports { next_1_3_address0 { O 11 vector } next_1_3_ce0 { O 1 bit } next_1_3_we0 { O 1 bit } next_1_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name next_2_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_2_0 \
    op interface \
    ports { next_2_0_address0 { O 11 vector } next_2_0_ce0 { O 1 bit } next_2_0_we0 { O 1 bit } next_2_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name next_2_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_2_1 \
    op interface \
    ports { next_2_1_address0 { O 11 vector } next_2_1_ce0 { O 1 bit } next_2_1_we0 { O 1 bit } next_2_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name next_2_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_2_2 \
    op interface \
    ports { next_2_2_address0 { O 11 vector } next_2_2_ce0 { O 1 bit } next_2_2_we0 { O 1 bit } next_2_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name next_2_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_2_3 \
    op interface \
    ports { next_2_3_address0 { O 11 vector } next_2_3_ce0 { O 1 bit } next_2_3_we0 { O 1 bit } next_2_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name next_3_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_3_0 \
    op interface \
    ports { next_3_0_address0 { O 11 vector } next_3_0_ce0 { O 1 bit } next_3_0_we0 { O 1 bit } next_3_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name next_3_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_3_1 \
    op interface \
    ports { next_3_1_address0 { O 11 vector } next_3_1_ce0 { O 1 bit } next_3_1_we0 { O 1 bit } next_3_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name next_3_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_3_2 \
    op interface \
    ports { next_3_2_address0 { O 11 vector } next_3_2_ce0 { O 1 bit } next_3_2_we0 { O 1 bit } next_3_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name next_3_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_3_3 \
    op interface \
    ports { next_3_3_address0 { O 11 vector } next_3_3_ce0 { O 1 bit } next_3_3_we0 { O 1 bit } next_3_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name next_4_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_4_0 \
    op interface \
    ports { next_4_0_address0 { O 11 vector } next_4_0_ce0 { O 1 bit } next_4_0_we0 { O 1 bit } next_4_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name next_4_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_4_1 \
    op interface \
    ports { next_4_1_address0 { O 11 vector } next_4_1_ce0 { O 1 bit } next_4_1_we0 { O 1 bit } next_4_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name next_4_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_4_2 \
    op interface \
    ports { next_4_2_address0 { O 11 vector } next_4_2_ce0 { O 1 bit } next_4_2_we0 { O 1 bit } next_4_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_4_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name next_4_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_4_3 \
    op interface \
    ports { next_4_3_address0 { O 11 vector } next_4_3_ce0 { O 1 bit } next_4_3_we0 { O 1 bit } next_4_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_4_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name next_5_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_5_0 \
    op interface \
    ports { next_5_0_address0 { O 11 vector } next_5_0_ce0 { O 1 bit } next_5_0_we0 { O 1 bit } next_5_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name next_5_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_5_1 \
    op interface \
    ports { next_5_1_address0 { O 11 vector } next_5_1_ce0 { O 1 bit } next_5_1_we0 { O 1 bit } next_5_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name next_5_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_5_2 \
    op interface \
    ports { next_5_2_address0 { O 11 vector } next_5_2_ce0 { O 1 bit } next_5_2_we0 { O 1 bit } next_5_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_5_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name next_5_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_5_3 \
    op interface \
    ports { next_5_3_address0 { O 11 vector } next_5_3_ce0 { O 1 bit } next_5_3_we0 { O 1 bit } next_5_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_5_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name next_6_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_6_0 \
    op interface \
    ports { next_6_0_address0 { O 11 vector } next_6_0_ce0 { O 1 bit } next_6_0_we0 { O 1 bit } next_6_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name next_6_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_6_1 \
    op interface \
    ports { next_6_1_address0 { O 11 vector } next_6_1_ce0 { O 1 bit } next_6_1_we0 { O 1 bit } next_6_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name next_6_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_6_2 \
    op interface \
    ports { next_6_2_address0 { O 11 vector } next_6_2_ce0 { O 1 bit } next_6_2_we0 { O 1 bit } next_6_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_6_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name next_6_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_6_3 \
    op interface \
    ports { next_6_3_address0 { O 11 vector } next_6_3_ce0 { O 1 bit } next_6_3_we0 { O 1 bit } next_6_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_6_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name next_7_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_7_0 \
    op interface \
    ports { next_7_0_address0 { O 11 vector } next_7_0_ce0 { O 1 bit } next_7_0_we0 { O 1 bit } next_7_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name next_7_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_7_1 \
    op interface \
    ports { next_7_1_address0 { O 11 vector } next_7_1_ce0 { O 1 bit } next_7_1_we0 { O 1 bit } next_7_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name next_7_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_7_2 \
    op interface \
    ports { next_7_2_address0 { O 11 vector } next_7_2_ce0 { O 1 bit } next_7_2_we0 { O 1 bit } next_7_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_7_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name next_7_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename next_7_3 \
    op interface \
    ports { next_7_3_address0 { O 11 vector } next_7_3_ce0 { O 1 bit } next_7_3_we0 { O 1 bit } next_7_3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'next_7_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
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
    id 136 \
    name w \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w \
    op interface \
    ports { w_dout { I 64 vector } w_empty_n { I 1 bit } w_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name wbase \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wbase \
    op interface \
    ports { wbase_dout { I 32 vector } wbase_empty_n { I 1 bit } wbase_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
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
    id 140 \
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
    id 141 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 1 vector } } \
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


