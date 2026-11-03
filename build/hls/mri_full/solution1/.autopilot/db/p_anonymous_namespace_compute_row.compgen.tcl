# This script segment is generated automatically by AutoPilot

set id 428
set name mri_full_mul_mul_15ns_6ns_20_4_1
set corename simcore_mul
set op mul
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 15
set in0_signed 0
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 20
set exp i0*i1
set arg_lists {i0 {15 0 +} i1 {6 0 +} p {20 0 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
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


set id 429
set name mri_full_mul_mul_16s_16s_32_4_1
set corename simcore_mul
set op mul
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set exp i0*i1
set arg_lists {i0 {16 1 +} i1 {16 1 +} p {32 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
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


set id 461
set name mri_full_mac_muladd_16s_16s_32s_33_4_1
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
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 32
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 33
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {32 1 +} i2 {32 1 +} p {33 1 +} c_reg {1} rnd {0} acc {0} }
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


set id 493
set name mri_full_mac_muladd_16s_16s_33s_33_4_1
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
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 33
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 33
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {32 1 +} i2 {33 1 +} p {33 1 +} c_reg {1} rnd {0} acc {0} }
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


set id 525
set name mri_full_mac_muladd_16s_16s_33s_34_4_1
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
set in0_signed 1
set in1_width 16
set in1_signed 1
set in2_width 33
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 34
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {16 1 +} m {32 1 +} i2 {33 1 +} p {34 1 +} c_reg {1} rnd {0} acc {0} }
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
    id 563 \
    name weights \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights \
    op interface \
    ports { weights_address0 { O 11 vector } weights_ce0 { O 1 bit } weights_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 564 \
    name weights1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights1 \
    op interface \
    ports { weights1_address0 { O 11 vector } weights1_ce0 { O 1 bit } weights1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 565 \
    name weights2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights2 \
    op interface \
    ports { weights2_address0 { O 11 vector } weights2_ce0 { O 1 bit } weights2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 566 \
    name weights3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights3 \
    op interface \
    ports { weights3_address0 { O 11 vector } weights3_ce0 { O 1 bit } weights3_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 567 \
    name weights14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights14 \
    op interface \
    ports { weights14_address0 { O 11 vector } weights14_ce0 { O 1 bit } weights14_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 568 \
    name weights15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights15 \
    op interface \
    ports { weights15_address0 { O 11 vector } weights15_ce0 { O 1 bit } weights15_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 569 \
    name weights16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights16 \
    op interface \
    ports { weights16_address0 { O 11 vector } weights16_ce0 { O 1 bit } weights16_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 570 \
    name weights17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights17 \
    op interface \
    ports { weights17_address0 { O 11 vector } weights17_ce0 { O 1 bit } weights17_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 571 \
    name weights28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights28 \
    op interface \
    ports { weights28_address0 { O 11 vector } weights28_ce0 { O 1 bit } weights28_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 572 \
    name weights29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights29 \
    op interface \
    ports { weights29_address0 { O 11 vector } weights29_ce0 { O 1 bit } weights29_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 573 \
    name weights210 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights210 \
    op interface \
    ports { weights210_address0 { O 11 vector } weights210_ce0 { O 1 bit } weights210_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights210'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 574 \
    name weights211 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights211 \
    op interface \
    ports { weights211_address0 { O 11 vector } weights211_ce0 { O 1 bit } weights211_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights211'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 575 \
    name weights312 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights312 \
    op interface \
    ports { weights312_address0 { O 11 vector } weights312_ce0 { O 1 bit } weights312_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights312'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 576 \
    name weights313 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights313 \
    op interface \
    ports { weights313_address0 { O 11 vector } weights313_ce0 { O 1 bit } weights313_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights313'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 577 \
    name weights314 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights314 \
    op interface \
    ports { weights314_address0 { O 11 vector } weights314_ce0 { O 1 bit } weights314_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights314'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 578 \
    name weights315 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights315 \
    op interface \
    ports { weights315_address0 { O 11 vector } weights315_ce0 { O 1 bit } weights315_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights315'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 579 \
    name weights4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights4 \
    op interface \
    ports { weights4_address0 { O 11 vector } weights4_ce0 { O 1 bit } weights4_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 580 \
    name weights416 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights416 \
    op interface \
    ports { weights416_address0 { O 11 vector } weights416_ce0 { O 1 bit } weights416_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights416'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 581 \
    name weights417 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights417 \
    op interface \
    ports { weights417_address0 { O 11 vector } weights417_ce0 { O 1 bit } weights417_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights417'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 582 \
    name weights418 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights418 \
    op interface \
    ports { weights418_address0 { O 11 vector } weights418_ce0 { O 1 bit } weights418_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights418'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 583 \
    name weights5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights5 \
    op interface \
    ports { weights5_address0 { O 11 vector } weights5_ce0 { O 1 bit } weights5_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 584 \
    name weights519 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights519 \
    op interface \
    ports { weights519_address0 { O 11 vector } weights519_ce0 { O 1 bit } weights519_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights519'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 585 \
    name weights520 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights520 \
    op interface \
    ports { weights520_address0 { O 11 vector } weights520_ce0 { O 1 bit } weights520_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights520'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 586 \
    name weights521 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights521 \
    op interface \
    ports { weights521_address0 { O 11 vector } weights521_ce0 { O 1 bit } weights521_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights521'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 587 \
    name weights6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights6 \
    op interface \
    ports { weights6_address0 { O 11 vector } weights6_ce0 { O 1 bit } weights6_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 588 \
    name weights622 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights622 \
    op interface \
    ports { weights622_address0 { O 11 vector } weights622_ce0 { O 1 bit } weights622_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights622'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 589 \
    name weights623 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights623 \
    op interface \
    ports { weights623_address0 { O 11 vector } weights623_ce0 { O 1 bit } weights623_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights623'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 590 \
    name weights624 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights624 \
    op interface \
    ports { weights624_address0 { O 11 vector } weights624_ce0 { O 1 bit } weights624_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights624'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 591 \
    name weights7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights7 \
    op interface \
    ports { weights7_address0 { O 11 vector } weights7_ce0 { O 1 bit } weights7_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 592 \
    name weights725 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights725 \
    op interface \
    ports { weights725_address0 { O 11 vector } weights725_ce0 { O 1 bit } weights725_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights725'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 593 \
    name weights726 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights726 \
    op interface \
    ports { weights726_address0 { O 11 vector } weights726_ce0 { O 1 bit } weights726_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights726'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 594 \
    name weights727 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights727 \
    op interface \
    ports { weights727_address0 { O 11 vector } weights727_ce0 { O 1 bit } weights727_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights727'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 610 \
    name acc \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc \
    op interface \
    ports { acc_address0 { O 6 vector } acc_ce0 { O 1 bit } acc_q0 { I 48 vector } acc_address1 { O 6 vector } acc_ce1 { O 1 bit } acc_we1 { O 1 bit } acc_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 611 \
    name acc28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc28 \
    op interface \
    ports { acc28_address0 { O 6 vector } acc28_ce0 { O 1 bit } acc28_q0 { I 48 vector } acc28_address1 { O 6 vector } acc28_ce1 { O 1 bit } acc28_we1 { O 1 bit } acc28_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 612 \
    name acc29 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc29 \
    op interface \
    ports { acc29_address0 { O 6 vector } acc29_ce0 { O 1 bit } acc29_q0 { I 48 vector } acc29_address1 { O 6 vector } acc29_ce1 { O 1 bit } acc29_we1 { O 1 bit } acc29_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 613 \
    name acc30 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc30 \
    op interface \
    ports { acc30_address0 { O 6 vector } acc30_ce0 { O 1 bit } acc30_q0 { I 48 vector } acc30_address1 { O 6 vector } acc30_ce1 { O 1 bit } acc30_we1 { O 1 bit } acc30_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 614 \
    name acc15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc15 \
    op interface \
    ports { acc15_address0 { O 6 vector } acc15_ce0 { O 1 bit } acc15_q0 { I 48 vector } acc15_address1 { O 6 vector } acc15_ce1 { O 1 bit } acc15_we1 { O 1 bit } acc15_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 615 \
    name acc1531 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1531 \
    op interface \
    ports { acc1531_address0 { O 6 vector } acc1531_ce0 { O 1 bit } acc1531_q0 { I 48 vector } acc1531_address1 { O 6 vector } acc1531_ce1 { O 1 bit } acc1531_we1 { O 1 bit } acc1531_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1531'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 616 \
    name acc1532 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1532 \
    op interface \
    ports { acc1532_address0 { O 6 vector } acc1532_ce0 { O 1 bit } acc1532_q0 { I 48 vector } acc1532_address1 { O 6 vector } acc1532_ce1 { O 1 bit } acc1532_we1 { O 1 bit } acc1532_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1532'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 617 \
    name acc1533 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1533 \
    op interface \
    ports { acc1533_address0 { O 6 vector } acc1533_ce0 { O 1 bit } acc1533_q0 { I 48 vector } acc1533_address1 { O 6 vector } acc1533_ce1 { O 1 bit } acc1533_we1 { O 1 bit } acc1533_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1533'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 618 \
    name acc16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc16 \
    op interface \
    ports { acc16_address0 { O 6 vector } acc16_ce0 { O 1 bit } acc16_q0 { I 48 vector } acc16_address1 { O 6 vector } acc16_ce1 { O 1 bit } acc16_we1 { O 1 bit } acc16_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 619 \
    name acc1634 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1634 \
    op interface \
    ports { acc1634_address0 { O 6 vector } acc1634_ce0 { O 1 bit } acc1634_q0 { I 48 vector } acc1634_address1 { O 6 vector } acc1634_ce1 { O 1 bit } acc1634_we1 { O 1 bit } acc1634_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1634'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 620 \
    name acc1635 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1635 \
    op interface \
    ports { acc1635_address0 { O 6 vector } acc1635_ce0 { O 1 bit } acc1635_q0 { I 48 vector } acc1635_address1 { O 6 vector } acc1635_ce1 { O 1 bit } acc1635_we1 { O 1 bit } acc1635_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1635'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 621 \
    name acc1636 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1636 \
    op interface \
    ports { acc1636_address0 { O 6 vector } acc1636_ce0 { O 1 bit } acc1636_q0 { I 48 vector } acc1636_address1 { O 6 vector } acc1636_ce1 { O 1 bit } acc1636_we1 { O 1 bit } acc1636_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1636'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 622 \
    name acc17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc17 \
    op interface \
    ports { acc17_address0 { O 6 vector } acc17_ce0 { O 1 bit } acc17_q0 { I 48 vector } acc17_address1 { O 6 vector } acc17_ce1 { O 1 bit } acc17_we1 { O 1 bit } acc17_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 623 \
    name acc1737 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1737 \
    op interface \
    ports { acc1737_address0 { O 6 vector } acc1737_ce0 { O 1 bit } acc1737_q0 { I 48 vector } acc1737_address1 { O 6 vector } acc1737_ce1 { O 1 bit } acc1737_we1 { O 1 bit } acc1737_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1737'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 624 \
    name acc1738 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1738 \
    op interface \
    ports { acc1738_address0 { O 6 vector } acc1738_ce0 { O 1 bit } acc1738_q0 { I 48 vector } acc1738_address1 { O 6 vector } acc1738_ce1 { O 1 bit } acc1738_we1 { O 1 bit } acc1738_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1738'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 625 \
    name acc1739 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1739 \
    op interface \
    ports { acc1739_address0 { O 6 vector } acc1739_ce0 { O 1 bit } acc1739_q0 { I 48 vector } acc1739_address1 { O 6 vector } acc1739_ce1 { O 1 bit } acc1739_we1 { O 1 bit } acc1739_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1739'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 626 \
    name acc18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc18 \
    op interface \
    ports { acc18_address0 { O 6 vector } acc18_ce0 { O 1 bit } acc18_q0 { I 48 vector } acc18_address1 { O 6 vector } acc18_ce1 { O 1 bit } acc18_we1 { O 1 bit } acc18_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 627 \
    name acc1840 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1840 \
    op interface \
    ports { acc1840_address0 { O 6 vector } acc1840_ce0 { O 1 bit } acc1840_q0 { I 48 vector } acc1840_address1 { O 6 vector } acc1840_ce1 { O 1 bit } acc1840_we1 { O 1 bit } acc1840_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1840'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 628 \
    name acc1841 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1841 \
    op interface \
    ports { acc1841_address0 { O 6 vector } acc1841_ce0 { O 1 bit } acc1841_q0 { I 48 vector } acc1841_address1 { O 6 vector } acc1841_ce1 { O 1 bit } acc1841_we1 { O 1 bit } acc1841_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1841'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 629 \
    name acc1842 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1842 \
    op interface \
    ports { acc1842_address0 { O 6 vector } acc1842_ce0 { O 1 bit } acc1842_q0 { I 48 vector } acc1842_address1 { O 6 vector } acc1842_ce1 { O 1 bit } acc1842_we1 { O 1 bit } acc1842_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1842'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 630 \
    name acc19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc19 \
    op interface \
    ports { acc19_address0 { O 6 vector } acc19_ce0 { O 1 bit } acc19_q0 { I 48 vector } acc19_address1 { O 6 vector } acc19_ce1 { O 1 bit } acc19_we1 { O 1 bit } acc19_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 631 \
    name acc1943 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1943 \
    op interface \
    ports { acc1943_address0 { O 6 vector } acc1943_ce0 { O 1 bit } acc1943_q0 { I 48 vector } acc1943_address1 { O 6 vector } acc1943_ce1 { O 1 bit } acc1943_we1 { O 1 bit } acc1943_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1943'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 632 \
    name acc1944 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1944 \
    op interface \
    ports { acc1944_address0 { O 6 vector } acc1944_ce0 { O 1 bit } acc1944_q0 { I 48 vector } acc1944_address1 { O 6 vector } acc1944_ce1 { O 1 bit } acc1944_we1 { O 1 bit } acc1944_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1944'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 633 \
    name acc1945 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc1945 \
    op interface \
    ports { acc1945_address0 { O 6 vector } acc1945_ce0 { O 1 bit } acc1945_q0 { I 48 vector } acc1945_address1 { O 6 vector } acc1945_ce1 { O 1 bit } acc1945_we1 { O 1 bit } acc1945_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc1945'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 634 \
    name acc20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc20 \
    op interface \
    ports { acc20_address0 { O 6 vector } acc20_ce0 { O 1 bit } acc20_q0 { I 48 vector } acc20_address1 { O 6 vector } acc20_ce1 { O 1 bit } acc20_we1 { O 1 bit } acc20_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 635 \
    name acc2046 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc2046 \
    op interface \
    ports { acc2046_address0 { O 6 vector } acc2046_ce0 { O 1 bit } acc2046_q0 { I 48 vector } acc2046_address1 { O 6 vector } acc2046_ce1 { O 1 bit } acc2046_we1 { O 1 bit } acc2046_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc2046'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 636 \
    name acc2047 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc2047 \
    op interface \
    ports { acc2047_address0 { O 6 vector } acc2047_ce0 { O 1 bit } acc2047_q0 { I 48 vector } acc2047_address1 { O 6 vector } acc2047_ce1 { O 1 bit } acc2047_we1 { O 1 bit } acc2047_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc2047'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 637 \
    name acc2048 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc2048 \
    op interface \
    ports { acc2048_address0 { O 6 vector } acc2048_ce0 { O 1 bit } acc2048_q0 { I 48 vector } acc2048_address1 { O 6 vector } acc2048_ce1 { O 1 bit } acc2048_we1 { O 1 bit } acc2048_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc2048'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 638 \
    name acc21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc21 \
    op interface \
    ports { acc21_address0 { O 6 vector } acc21_ce0 { O 1 bit } acc21_q0 { I 48 vector } acc21_address1 { O 6 vector } acc21_ce1 { O 1 bit } acc21_we1 { O 1 bit } acc21_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 639 \
    name acc2149 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc2149 \
    op interface \
    ports { acc2149_address0 { O 6 vector } acc2149_ce0 { O 1 bit } acc2149_q0 { I 48 vector } acc2149_address1 { O 6 vector } acc2149_ce1 { O 1 bit } acc2149_we1 { O 1 bit } acc2149_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc2149'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 640 \
    name acc2150 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc2150 \
    op interface \
    ports { acc2150_address0 { O 6 vector } acc2150_ce0 { O 1 bit } acc2150_q0 { I 48 vector } acc2150_address1 { O 6 vector } acc2150_ce1 { O 1 bit } acc2150_we1 { O 1 bit } acc2150_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc2150'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 641 \
    name acc2151 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename acc2151 \
    op interface \
    ports { acc2151_address0 { O 6 vector } acc2151_ce0 { O 1 bit } acc2151_q0 { I 48 vector } acc2151_address1 { O 6 vector } acc2151_ce1 { O 1 bit } acc2151_we1 { O 1 bit } acc2151_d1 { O 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'acc2151'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name pixels2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixels2 \
    op interface \
    ports { pixels2_dout { I 64 vector } pixels2_empty_n { I 1 bit } pixels2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name bias \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias \
    op interface \
    ports { bias_dout { I 48 vector } bias_empty_n { I 1 bit } bias_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name bias8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias8 \
    op interface \
    ports { bias8_dout { I 48 vector } bias8_empty_n { I 1 bit } bias8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name bias9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias9 \
    op interface \
    ports { bias9_dout { I 48 vector } bias9_empty_n { I 1 bit } bias9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name bias10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias10 \
    op interface \
    ports { bias10_dout { I 48 vector } bias10_empty_n { I 1 bit } bias10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name bias11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias11 \
    op interface \
    ports { bias11_dout { I 48 vector } bias11_empty_n { I 1 bit } bias11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name bias12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias12 \
    op interface \
    ports { bias12_dout { I 48 vector } bias12_empty_n { I 1 bit } bias12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name bias13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias13 \
    op interface \
    ports { bias13_dout { I 48 vector } bias13_empty_n { I 1 bit } bias13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name bias14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias14 \
    op interface \
    ports { bias14_dout { I 48 vector } bias14_empty_n { I 1 bit } bias14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
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
    id 604 \
    name wi \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wi \
    op interface \
    ports { wi_dout { I 16 vector } wi_empty_n { I 1 bit } wi_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
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
    id 606 \
    name stride \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stride \
    op interface \
    ports { stride_dout { I 2 vector } stride_empty_n { I 1 bit } stride_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
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
    id 608 \
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
    id 609 \
    name enabled \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enabled \
    op interface \
    ports { enabled_dout { I 1 vector } enabled_empty_n { I 1 bit } enabled_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 642 \
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
    id 643 \
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
    id 644 \
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


