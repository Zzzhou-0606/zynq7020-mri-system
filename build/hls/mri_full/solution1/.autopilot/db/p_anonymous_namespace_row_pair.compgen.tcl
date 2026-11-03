# This script segment is generated automatically by AutoPilot

# FIFO definition:
set ID 692
set FifoName mri_full_fifo_w48_d2_S
set InstName bias_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 693
set FifoName mri_full_fifo_w48_d2_S
set InstName bias8_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 694
set FifoName mri_full_fifo_w48_d2_S
set InstName bias9_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 695
set FifoName mri_full_fifo_w48_d2_S
set InstName bias10_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 696
set FifoName mri_full_fifo_w48_d2_S
set InstName bias11_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 697
set FifoName mri_full_fifo_w48_d2_S
set InstName bias12_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 698
set FifoName mri_full_fifo_w48_d2_S
set InstName bias13_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 699
set FifoName mri_full_fifo_w48_d2_S
set InstName bias14_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 48
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 700
set FifoName mri_full_fifo_w10_d2_S_x
set InstName ci_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 10
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 701
set FifoName mri_full_fifo_w16_d2_S_x
set InstName wi_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 16
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 702
set FifoName mri_full_fifo_w3_d2_S
set InstName k_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 3
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 703
set FifoName mri_full_fifo_w2_d2_S_x
set InstName stride_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 2
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 704
set FifoName mri_full_fifo_w2_d2_S_x
set InstName pad_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 2
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 705
set FifoName mri_full_fifo_w16_d2_S_x
set InstName ow_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 16
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 706
set FifoName mri_full_fifo_w16_d2_S_x
set InstName ow_c1_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 16
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 707
set FifoName mri_full_fifo_w1_d2_S
set InstName computing_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 1
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 708
set FifoName mri_full_fifo_w1_d2_S
set InstName emitting_offset_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 1
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 709
set FifoName mri_full_fifo_w16_d2_S_x
set InstName previous_rows_c_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 16
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
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
    id 712 \
    name weights \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights \
    op interface \
    ports { weights_address0 { O 11 vector } weights_ce0 { O 1 bit } weights_d0 { O 16 vector } weights_q0 { I 16 vector } weights_we0 { O 1 bit } weights_address1 { O 11 vector } weights_ce1 { O 1 bit } weights_d1 { O 16 vector } weights_q1 { I 16 vector } weights_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 713 \
    name weights1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights1 \
    op interface \
    ports { weights1_address0 { O 11 vector } weights1_ce0 { O 1 bit } weights1_d0 { O 16 vector } weights1_q0 { I 16 vector } weights1_we0 { O 1 bit } weights1_address1 { O 11 vector } weights1_ce1 { O 1 bit } weights1_d1 { O 16 vector } weights1_q1 { I 16 vector } weights1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 714 \
    name weights2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights2 \
    op interface \
    ports { weights2_address0 { O 11 vector } weights2_ce0 { O 1 bit } weights2_d0 { O 16 vector } weights2_q0 { I 16 vector } weights2_we0 { O 1 bit } weights2_address1 { O 11 vector } weights2_ce1 { O 1 bit } weights2_d1 { O 16 vector } weights2_q1 { I 16 vector } weights2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 715 \
    name weights3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights3 \
    op interface \
    ports { weights3_address0 { O 11 vector } weights3_ce0 { O 1 bit } weights3_d0 { O 16 vector } weights3_q0 { I 16 vector } weights3_we0 { O 1 bit } weights3_address1 { O 11 vector } weights3_ce1 { O 1 bit } weights3_d1 { O 16 vector } weights3_q1 { I 16 vector } weights3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 716 \
    name weights14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights14 \
    op interface \
    ports { weights14_address0 { O 11 vector } weights14_ce0 { O 1 bit } weights14_d0 { O 16 vector } weights14_q0 { I 16 vector } weights14_we0 { O 1 bit } weights14_address1 { O 11 vector } weights14_ce1 { O 1 bit } weights14_d1 { O 16 vector } weights14_q1 { I 16 vector } weights14_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 717 \
    name weights15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights15 \
    op interface \
    ports { weights15_address0 { O 11 vector } weights15_ce0 { O 1 bit } weights15_d0 { O 16 vector } weights15_q0 { I 16 vector } weights15_we0 { O 1 bit } weights15_address1 { O 11 vector } weights15_ce1 { O 1 bit } weights15_d1 { O 16 vector } weights15_q1 { I 16 vector } weights15_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 718 \
    name weights16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights16 \
    op interface \
    ports { weights16_address0 { O 11 vector } weights16_ce0 { O 1 bit } weights16_d0 { O 16 vector } weights16_q0 { I 16 vector } weights16_we0 { O 1 bit } weights16_address1 { O 11 vector } weights16_ce1 { O 1 bit } weights16_d1 { O 16 vector } weights16_q1 { I 16 vector } weights16_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 719 \
    name weights17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights17 \
    op interface \
    ports { weights17_address0 { O 11 vector } weights17_ce0 { O 1 bit } weights17_d0 { O 16 vector } weights17_q0 { I 16 vector } weights17_we0 { O 1 bit } weights17_address1 { O 11 vector } weights17_ce1 { O 1 bit } weights17_d1 { O 16 vector } weights17_q1 { I 16 vector } weights17_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 720 \
    name weights28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights28 \
    op interface \
    ports { weights28_address0 { O 11 vector } weights28_ce0 { O 1 bit } weights28_d0 { O 16 vector } weights28_q0 { I 16 vector } weights28_we0 { O 1 bit } weights28_address1 { O 11 vector } weights28_ce1 { O 1 bit } weights28_d1 { O 16 vector } weights28_q1 { I 16 vector } weights28_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 721 \
    name weights29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights29 \
    op interface \
    ports { weights29_address0 { O 11 vector } weights29_ce0 { O 1 bit } weights29_d0 { O 16 vector } weights29_q0 { I 16 vector } weights29_we0 { O 1 bit } weights29_address1 { O 11 vector } weights29_ce1 { O 1 bit } weights29_d1 { O 16 vector } weights29_q1 { I 16 vector } weights29_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 722 \
    name weights210 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights210 \
    op interface \
    ports { weights210_address0 { O 11 vector } weights210_ce0 { O 1 bit } weights210_d0 { O 16 vector } weights210_q0 { I 16 vector } weights210_we0 { O 1 bit } weights210_address1 { O 11 vector } weights210_ce1 { O 1 bit } weights210_d1 { O 16 vector } weights210_q1 { I 16 vector } weights210_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights210'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 723 \
    name weights211 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights211 \
    op interface \
    ports { weights211_address0 { O 11 vector } weights211_ce0 { O 1 bit } weights211_d0 { O 16 vector } weights211_q0 { I 16 vector } weights211_we0 { O 1 bit } weights211_address1 { O 11 vector } weights211_ce1 { O 1 bit } weights211_d1 { O 16 vector } weights211_q1 { I 16 vector } weights211_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights211'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 724 \
    name weights312 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights312 \
    op interface \
    ports { weights312_address0 { O 11 vector } weights312_ce0 { O 1 bit } weights312_d0 { O 16 vector } weights312_q0 { I 16 vector } weights312_we0 { O 1 bit } weights312_address1 { O 11 vector } weights312_ce1 { O 1 bit } weights312_d1 { O 16 vector } weights312_q1 { I 16 vector } weights312_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights312'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 725 \
    name weights313 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights313 \
    op interface \
    ports { weights313_address0 { O 11 vector } weights313_ce0 { O 1 bit } weights313_d0 { O 16 vector } weights313_q0 { I 16 vector } weights313_we0 { O 1 bit } weights313_address1 { O 11 vector } weights313_ce1 { O 1 bit } weights313_d1 { O 16 vector } weights313_q1 { I 16 vector } weights313_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights313'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 726 \
    name weights314 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights314 \
    op interface \
    ports { weights314_address0 { O 11 vector } weights314_ce0 { O 1 bit } weights314_d0 { O 16 vector } weights314_q0 { I 16 vector } weights314_we0 { O 1 bit } weights314_address1 { O 11 vector } weights314_ce1 { O 1 bit } weights314_d1 { O 16 vector } weights314_q1 { I 16 vector } weights314_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights314'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 727 \
    name weights315 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights315 \
    op interface \
    ports { weights315_address0 { O 11 vector } weights315_ce0 { O 1 bit } weights315_d0 { O 16 vector } weights315_q0 { I 16 vector } weights315_we0 { O 1 bit } weights315_address1 { O 11 vector } weights315_ce1 { O 1 bit } weights315_d1 { O 16 vector } weights315_q1 { I 16 vector } weights315_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights315'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 728 \
    name weights4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights4 \
    op interface \
    ports { weights4_address0 { O 11 vector } weights4_ce0 { O 1 bit } weights4_d0 { O 16 vector } weights4_q0 { I 16 vector } weights4_we0 { O 1 bit } weights4_address1 { O 11 vector } weights4_ce1 { O 1 bit } weights4_d1 { O 16 vector } weights4_q1 { I 16 vector } weights4_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 729 \
    name weights416 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights416 \
    op interface \
    ports { weights416_address0 { O 11 vector } weights416_ce0 { O 1 bit } weights416_d0 { O 16 vector } weights416_q0 { I 16 vector } weights416_we0 { O 1 bit } weights416_address1 { O 11 vector } weights416_ce1 { O 1 bit } weights416_d1 { O 16 vector } weights416_q1 { I 16 vector } weights416_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights416'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 730 \
    name weights417 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights417 \
    op interface \
    ports { weights417_address0 { O 11 vector } weights417_ce0 { O 1 bit } weights417_d0 { O 16 vector } weights417_q0 { I 16 vector } weights417_we0 { O 1 bit } weights417_address1 { O 11 vector } weights417_ce1 { O 1 bit } weights417_d1 { O 16 vector } weights417_q1 { I 16 vector } weights417_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights417'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 731 \
    name weights418 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights418 \
    op interface \
    ports { weights418_address0 { O 11 vector } weights418_ce0 { O 1 bit } weights418_d0 { O 16 vector } weights418_q0 { I 16 vector } weights418_we0 { O 1 bit } weights418_address1 { O 11 vector } weights418_ce1 { O 1 bit } weights418_d1 { O 16 vector } weights418_q1 { I 16 vector } weights418_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights418'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 732 \
    name weights5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights5 \
    op interface \
    ports { weights5_address0 { O 11 vector } weights5_ce0 { O 1 bit } weights5_d0 { O 16 vector } weights5_q0 { I 16 vector } weights5_we0 { O 1 bit } weights5_address1 { O 11 vector } weights5_ce1 { O 1 bit } weights5_d1 { O 16 vector } weights5_q1 { I 16 vector } weights5_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 733 \
    name weights519 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights519 \
    op interface \
    ports { weights519_address0 { O 11 vector } weights519_ce0 { O 1 bit } weights519_d0 { O 16 vector } weights519_q0 { I 16 vector } weights519_we0 { O 1 bit } weights519_address1 { O 11 vector } weights519_ce1 { O 1 bit } weights519_d1 { O 16 vector } weights519_q1 { I 16 vector } weights519_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights519'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 734 \
    name weights520 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights520 \
    op interface \
    ports { weights520_address0 { O 11 vector } weights520_ce0 { O 1 bit } weights520_d0 { O 16 vector } weights520_q0 { I 16 vector } weights520_we0 { O 1 bit } weights520_address1 { O 11 vector } weights520_ce1 { O 1 bit } weights520_d1 { O 16 vector } weights520_q1 { I 16 vector } weights520_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights520'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 735 \
    name weights521 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights521 \
    op interface \
    ports { weights521_address0 { O 11 vector } weights521_ce0 { O 1 bit } weights521_d0 { O 16 vector } weights521_q0 { I 16 vector } weights521_we0 { O 1 bit } weights521_address1 { O 11 vector } weights521_ce1 { O 1 bit } weights521_d1 { O 16 vector } weights521_q1 { I 16 vector } weights521_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights521'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 736 \
    name weights6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights6 \
    op interface \
    ports { weights6_address0 { O 11 vector } weights6_ce0 { O 1 bit } weights6_d0 { O 16 vector } weights6_q0 { I 16 vector } weights6_we0 { O 1 bit } weights6_address1 { O 11 vector } weights6_ce1 { O 1 bit } weights6_d1 { O 16 vector } weights6_q1 { I 16 vector } weights6_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 737 \
    name weights622 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights622 \
    op interface \
    ports { weights622_address0 { O 11 vector } weights622_ce0 { O 1 bit } weights622_d0 { O 16 vector } weights622_q0 { I 16 vector } weights622_we0 { O 1 bit } weights622_address1 { O 11 vector } weights622_ce1 { O 1 bit } weights622_d1 { O 16 vector } weights622_q1 { I 16 vector } weights622_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights622'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 738 \
    name weights623 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights623 \
    op interface \
    ports { weights623_address0 { O 11 vector } weights623_ce0 { O 1 bit } weights623_d0 { O 16 vector } weights623_q0 { I 16 vector } weights623_we0 { O 1 bit } weights623_address1 { O 11 vector } weights623_ce1 { O 1 bit } weights623_d1 { O 16 vector } weights623_q1 { I 16 vector } weights623_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights623'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 739 \
    name weights624 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights624 \
    op interface \
    ports { weights624_address0 { O 11 vector } weights624_ce0 { O 1 bit } weights624_d0 { O 16 vector } weights624_q0 { I 16 vector } weights624_we0 { O 1 bit } weights624_address1 { O 11 vector } weights624_ce1 { O 1 bit } weights624_d1 { O 16 vector } weights624_q1 { I 16 vector } weights624_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights624'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 740 \
    name weights7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights7 \
    op interface \
    ports { weights7_address0 { O 11 vector } weights7_ce0 { O 1 bit } weights7_d0 { O 16 vector } weights7_q0 { I 16 vector } weights7_we0 { O 1 bit } weights7_address1 { O 11 vector } weights7_ce1 { O 1 bit } weights7_d1 { O 16 vector } weights7_q1 { I 16 vector } weights7_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 741 \
    name weights725 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights725 \
    op interface \
    ports { weights725_address0 { O 11 vector } weights725_ce0 { O 1 bit } weights725_d0 { O 16 vector } weights725_q0 { I 16 vector } weights725_we0 { O 1 bit } weights725_address1 { O 11 vector } weights725_ce1 { O 1 bit } weights725_d1 { O 16 vector } weights725_q1 { I 16 vector } weights725_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights725'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 742 \
    name weights726 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights726 \
    op interface \
    ports { weights726_address0 { O 11 vector } weights726_ce0 { O 1 bit } weights726_d0 { O 16 vector } weights726_q0 { I 16 vector } weights726_we0 { O 1 bit } weights726_address1 { O 11 vector } weights726_ce1 { O 1 bit } weights726_d1 { O 16 vector } weights726_q1 { I 16 vector } weights726_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights726'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 743 \
    name weights727 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights727 \
    op interface \
    ports { weights727_address0 { O 11 vector } weights727_ce0 { O 1 bit } weights727_d0 { O 16 vector } weights727_q0 { I 16 vector } weights727_we0 { O 1 bit } weights727_address1 { O 11 vector } weights727_ce1 { O 1 bit } weights727_d1 { O 16 vector } weights727_q1 { I 16 vector } weights727_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights727'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 761 \
    name current \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current \
    op interface \
    ports { current_address0 { O 6 vector } current_ce0 { O 1 bit } current_d0 { O 48 vector } current_q0 { I 48 vector } current_we0 { O 1 bit } current_address1 { O 6 vector } current_ce1 { O 1 bit } current_d1 { O 48 vector } current_q1 { I 48 vector } current_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 762 \
    name current28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current28 \
    op interface \
    ports { current28_address0 { O 6 vector } current28_ce0 { O 1 bit } current28_d0 { O 48 vector } current28_q0 { I 48 vector } current28_we0 { O 1 bit } current28_address1 { O 6 vector } current28_ce1 { O 1 bit } current28_d1 { O 48 vector } current28_q1 { I 48 vector } current28_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 763 \
    name current29 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current29 \
    op interface \
    ports { current29_address0 { O 6 vector } current29_ce0 { O 1 bit } current29_d0 { O 48 vector } current29_q0 { I 48 vector } current29_we0 { O 1 bit } current29_address1 { O 6 vector } current29_ce1 { O 1 bit } current29_d1 { O 48 vector } current29_q1 { I 48 vector } current29_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 764 \
    name current30 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current30 \
    op interface \
    ports { current30_address0 { O 6 vector } current30_ce0 { O 1 bit } current30_d0 { O 48 vector } current30_q0 { I 48 vector } current30_we0 { O 1 bit } current30_address1 { O 6 vector } current30_ce1 { O 1 bit } current30_d1 { O 48 vector } current30_q1 { I 48 vector } current30_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 765 \
    name current15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current15 \
    op interface \
    ports { current15_address0 { O 6 vector } current15_ce0 { O 1 bit } current15_d0 { O 48 vector } current15_q0 { I 48 vector } current15_we0 { O 1 bit } current15_address1 { O 6 vector } current15_ce1 { O 1 bit } current15_d1 { O 48 vector } current15_q1 { I 48 vector } current15_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 766 \
    name current1531 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1531 \
    op interface \
    ports { current1531_address0 { O 6 vector } current1531_ce0 { O 1 bit } current1531_d0 { O 48 vector } current1531_q0 { I 48 vector } current1531_we0 { O 1 bit } current1531_address1 { O 6 vector } current1531_ce1 { O 1 bit } current1531_d1 { O 48 vector } current1531_q1 { I 48 vector } current1531_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1531'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 767 \
    name current1532 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1532 \
    op interface \
    ports { current1532_address0 { O 6 vector } current1532_ce0 { O 1 bit } current1532_d0 { O 48 vector } current1532_q0 { I 48 vector } current1532_we0 { O 1 bit } current1532_address1 { O 6 vector } current1532_ce1 { O 1 bit } current1532_d1 { O 48 vector } current1532_q1 { I 48 vector } current1532_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1532'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 768 \
    name current1533 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1533 \
    op interface \
    ports { current1533_address0 { O 6 vector } current1533_ce0 { O 1 bit } current1533_d0 { O 48 vector } current1533_q0 { I 48 vector } current1533_we0 { O 1 bit } current1533_address1 { O 6 vector } current1533_ce1 { O 1 bit } current1533_d1 { O 48 vector } current1533_q1 { I 48 vector } current1533_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1533'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 769 \
    name current16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current16 \
    op interface \
    ports { current16_address0 { O 6 vector } current16_ce0 { O 1 bit } current16_d0 { O 48 vector } current16_q0 { I 48 vector } current16_we0 { O 1 bit } current16_address1 { O 6 vector } current16_ce1 { O 1 bit } current16_d1 { O 48 vector } current16_q1 { I 48 vector } current16_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 770 \
    name current1634 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1634 \
    op interface \
    ports { current1634_address0 { O 6 vector } current1634_ce0 { O 1 bit } current1634_d0 { O 48 vector } current1634_q0 { I 48 vector } current1634_we0 { O 1 bit } current1634_address1 { O 6 vector } current1634_ce1 { O 1 bit } current1634_d1 { O 48 vector } current1634_q1 { I 48 vector } current1634_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1634'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 771 \
    name current1635 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1635 \
    op interface \
    ports { current1635_address0 { O 6 vector } current1635_ce0 { O 1 bit } current1635_d0 { O 48 vector } current1635_q0 { I 48 vector } current1635_we0 { O 1 bit } current1635_address1 { O 6 vector } current1635_ce1 { O 1 bit } current1635_d1 { O 48 vector } current1635_q1 { I 48 vector } current1635_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1635'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 772 \
    name current1636 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1636 \
    op interface \
    ports { current1636_address0 { O 6 vector } current1636_ce0 { O 1 bit } current1636_d0 { O 48 vector } current1636_q0 { I 48 vector } current1636_we0 { O 1 bit } current1636_address1 { O 6 vector } current1636_ce1 { O 1 bit } current1636_d1 { O 48 vector } current1636_q1 { I 48 vector } current1636_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1636'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 773 \
    name current17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current17 \
    op interface \
    ports { current17_address0 { O 6 vector } current17_ce0 { O 1 bit } current17_d0 { O 48 vector } current17_q0 { I 48 vector } current17_we0 { O 1 bit } current17_address1 { O 6 vector } current17_ce1 { O 1 bit } current17_d1 { O 48 vector } current17_q1 { I 48 vector } current17_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 774 \
    name current1737 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1737 \
    op interface \
    ports { current1737_address0 { O 6 vector } current1737_ce0 { O 1 bit } current1737_d0 { O 48 vector } current1737_q0 { I 48 vector } current1737_we0 { O 1 bit } current1737_address1 { O 6 vector } current1737_ce1 { O 1 bit } current1737_d1 { O 48 vector } current1737_q1 { I 48 vector } current1737_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1737'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 775 \
    name current1738 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1738 \
    op interface \
    ports { current1738_address0 { O 6 vector } current1738_ce0 { O 1 bit } current1738_d0 { O 48 vector } current1738_q0 { I 48 vector } current1738_we0 { O 1 bit } current1738_address1 { O 6 vector } current1738_ce1 { O 1 bit } current1738_d1 { O 48 vector } current1738_q1 { I 48 vector } current1738_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1738'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 776 \
    name current1739 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1739 \
    op interface \
    ports { current1739_address0 { O 6 vector } current1739_ce0 { O 1 bit } current1739_d0 { O 48 vector } current1739_q0 { I 48 vector } current1739_we0 { O 1 bit } current1739_address1 { O 6 vector } current1739_ce1 { O 1 bit } current1739_d1 { O 48 vector } current1739_q1 { I 48 vector } current1739_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1739'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 777 \
    name current18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current18 \
    op interface \
    ports { current18_address0 { O 6 vector } current18_ce0 { O 1 bit } current18_d0 { O 48 vector } current18_q0 { I 48 vector } current18_we0 { O 1 bit } current18_address1 { O 6 vector } current18_ce1 { O 1 bit } current18_d1 { O 48 vector } current18_q1 { I 48 vector } current18_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 778 \
    name current1840 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1840 \
    op interface \
    ports { current1840_address0 { O 6 vector } current1840_ce0 { O 1 bit } current1840_d0 { O 48 vector } current1840_q0 { I 48 vector } current1840_we0 { O 1 bit } current1840_address1 { O 6 vector } current1840_ce1 { O 1 bit } current1840_d1 { O 48 vector } current1840_q1 { I 48 vector } current1840_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1840'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 779 \
    name current1841 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1841 \
    op interface \
    ports { current1841_address0 { O 6 vector } current1841_ce0 { O 1 bit } current1841_d0 { O 48 vector } current1841_q0 { I 48 vector } current1841_we0 { O 1 bit } current1841_address1 { O 6 vector } current1841_ce1 { O 1 bit } current1841_d1 { O 48 vector } current1841_q1 { I 48 vector } current1841_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1841'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 780 \
    name current1842 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1842 \
    op interface \
    ports { current1842_address0 { O 6 vector } current1842_ce0 { O 1 bit } current1842_d0 { O 48 vector } current1842_q0 { I 48 vector } current1842_we0 { O 1 bit } current1842_address1 { O 6 vector } current1842_ce1 { O 1 bit } current1842_d1 { O 48 vector } current1842_q1 { I 48 vector } current1842_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1842'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 781 \
    name current19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current19 \
    op interface \
    ports { current19_address0 { O 6 vector } current19_ce0 { O 1 bit } current19_d0 { O 48 vector } current19_q0 { I 48 vector } current19_we0 { O 1 bit } current19_address1 { O 6 vector } current19_ce1 { O 1 bit } current19_d1 { O 48 vector } current19_q1 { I 48 vector } current19_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 782 \
    name current1943 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1943 \
    op interface \
    ports { current1943_address0 { O 6 vector } current1943_ce0 { O 1 bit } current1943_d0 { O 48 vector } current1943_q0 { I 48 vector } current1943_we0 { O 1 bit } current1943_address1 { O 6 vector } current1943_ce1 { O 1 bit } current1943_d1 { O 48 vector } current1943_q1 { I 48 vector } current1943_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1943'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 783 \
    name current1944 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1944 \
    op interface \
    ports { current1944_address0 { O 6 vector } current1944_ce0 { O 1 bit } current1944_d0 { O 48 vector } current1944_q0 { I 48 vector } current1944_we0 { O 1 bit } current1944_address1 { O 6 vector } current1944_ce1 { O 1 bit } current1944_d1 { O 48 vector } current1944_q1 { I 48 vector } current1944_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1944'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 784 \
    name current1945 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current1945 \
    op interface \
    ports { current1945_address0 { O 6 vector } current1945_ce0 { O 1 bit } current1945_d0 { O 48 vector } current1945_q0 { I 48 vector } current1945_we0 { O 1 bit } current1945_address1 { O 6 vector } current1945_ce1 { O 1 bit } current1945_d1 { O 48 vector } current1945_q1 { I 48 vector } current1945_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current1945'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 785 \
    name current20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current20 \
    op interface \
    ports { current20_address0 { O 6 vector } current20_ce0 { O 1 bit } current20_d0 { O 48 vector } current20_q0 { I 48 vector } current20_we0 { O 1 bit } current20_address1 { O 6 vector } current20_ce1 { O 1 bit } current20_d1 { O 48 vector } current20_q1 { I 48 vector } current20_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 786 \
    name current2046 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current2046 \
    op interface \
    ports { current2046_address0 { O 6 vector } current2046_ce0 { O 1 bit } current2046_d0 { O 48 vector } current2046_q0 { I 48 vector } current2046_we0 { O 1 bit } current2046_address1 { O 6 vector } current2046_ce1 { O 1 bit } current2046_d1 { O 48 vector } current2046_q1 { I 48 vector } current2046_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current2046'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 787 \
    name current2047 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current2047 \
    op interface \
    ports { current2047_address0 { O 6 vector } current2047_ce0 { O 1 bit } current2047_d0 { O 48 vector } current2047_q0 { I 48 vector } current2047_we0 { O 1 bit } current2047_address1 { O 6 vector } current2047_ce1 { O 1 bit } current2047_d1 { O 48 vector } current2047_q1 { I 48 vector } current2047_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current2047'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 788 \
    name current2048 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current2048 \
    op interface \
    ports { current2048_address0 { O 6 vector } current2048_ce0 { O 1 bit } current2048_d0 { O 48 vector } current2048_q0 { I 48 vector } current2048_we0 { O 1 bit } current2048_address1 { O 6 vector } current2048_ce1 { O 1 bit } current2048_d1 { O 48 vector } current2048_q1 { I 48 vector } current2048_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current2048'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 789 \
    name current21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current21 \
    op interface \
    ports { current21_address0 { O 6 vector } current21_ce0 { O 1 bit } current21_d0 { O 48 vector } current21_q0 { I 48 vector } current21_we0 { O 1 bit } current21_address1 { O 6 vector } current21_ce1 { O 1 bit } current21_d1 { O 48 vector } current21_q1 { I 48 vector } current21_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 790 \
    name current2149 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current2149 \
    op interface \
    ports { current2149_address0 { O 6 vector } current2149_ce0 { O 1 bit } current2149_d0 { O 48 vector } current2149_q0 { I 48 vector } current2149_we0 { O 1 bit } current2149_address1 { O 6 vector } current2149_ce1 { O 1 bit } current2149_d1 { O 48 vector } current2149_q1 { I 48 vector } current2149_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current2149'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 791 \
    name current2150 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current2150 \
    op interface \
    ports { current2150_address0 { O 6 vector } current2150_ce0 { O 1 bit } current2150_d0 { O 48 vector } current2150_q0 { I 48 vector } current2150_we0 { O 1 bit } current2150_address1 { O 6 vector } current2150_ce1 { O 1 bit } current2150_d1 { O 48 vector } current2150_q1 { I 48 vector } current2150_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current2150'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 792 \
    name current2151 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename current2151 \
    op interface \
    ports { current2151_address0 { O 6 vector } current2151_ce0 { O 1 bit } current2151_d0 { O 48 vector } current2151_q0 { I 48 vector } current2151_we0 { O 1 bit } current2151_address1 { O 6 vector } current2151_ce1 { O 1 bit } current2151_d1 { O 48 vector } current2151_q1 { I 48 vector } current2151_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'current2151'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 793 \
    name previous \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous \
    op interface \
    ports { previous_address0 { O 6 vector } previous_ce0 { O 1 bit } previous_d0 { O 48 vector } previous_q0 { I 48 vector } previous_we0 { O 1 bit } previous_address1 { O 6 vector } previous_ce1 { O 1 bit } previous_d1 { O 48 vector } previous_q1 { I 48 vector } previous_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 794 \
    name previous52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous52 \
    op interface \
    ports { previous52_address0 { O 6 vector } previous52_ce0 { O 1 bit } previous52_d0 { O 48 vector } previous52_q0 { I 48 vector } previous52_we0 { O 1 bit } previous52_address1 { O 6 vector } previous52_ce1 { O 1 bit } previous52_d1 { O 48 vector } previous52_q1 { I 48 vector } previous52_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 795 \
    name previous53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous53 \
    op interface \
    ports { previous53_address0 { O 6 vector } previous53_ce0 { O 1 bit } previous53_d0 { O 48 vector } previous53_q0 { I 48 vector } previous53_we0 { O 1 bit } previous53_address1 { O 6 vector } previous53_ce1 { O 1 bit } previous53_d1 { O 48 vector } previous53_q1 { I 48 vector } previous53_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 796 \
    name previous54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous54 \
    op interface \
    ports { previous54_address0 { O 6 vector } previous54_ce0 { O 1 bit } previous54_d0 { O 48 vector } previous54_q0 { I 48 vector } previous54_we0 { O 1 bit } previous54_address1 { O 6 vector } previous54_ce1 { O 1 bit } previous54_d1 { O 48 vector } previous54_q1 { I 48 vector } previous54_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 797 \
    name previous22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous22 \
    op interface \
    ports { previous22_address0 { O 6 vector } previous22_ce0 { O 1 bit } previous22_d0 { O 48 vector } previous22_q0 { I 48 vector } previous22_we0 { O 1 bit } previous22_address1 { O 6 vector } previous22_ce1 { O 1 bit } previous22_d1 { O 48 vector } previous22_q1 { I 48 vector } previous22_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 798 \
    name previous2255 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2255 \
    op interface \
    ports { previous2255_address0 { O 6 vector } previous2255_ce0 { O 1 bit } previous2255_d0 { O 48 vector } previous2255_q0 { I 48 vector } previous2255_we0 { O 1 bit } previous2255_address1 { O 6 vector } previous2255_ce1 { O 1 bit } previous2255_d1 { O 48 vector } previous2255_q1 { I 48 vector } previous2255_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2255'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 799 \
    name previous2256 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2256 \
    op interface \
    ports { previous2256_address0 { O 6 vector } previous2256_ce0 { O 1 bit } previous2256_d0 { O 48 vector } previous2256_q0 { I 48 vector } previous2256_we0 { O 1 bit } previous2256_address1 { O 6 vector } previous2256_ce1 { O 1 bit } previous2256_d1 { O 48 vector } previous2256_q1 { I 48 vector } previous2256_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2256'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 800 \
    name previous2257 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2257 \
    op interface \
    ports { previous2257_address0 { O 6 vector } previous2257_ce0 { O 1 bit } previous2257_d0 { O 48 vector } previous2257_q0 { I 48 vector } previous2257_we0 { O 1 bit } previous2257_address1 { O 6 vector } previous2257_ce1 { O 1 bit } previous2257_d1 { O 48 vector } previous2257_q1 { I 48 vector } previous2257_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2257'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 801 \
    name previous23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous23 \
    op interface \
    ports { previous23_address0 { O 6 vector } previous23_ce0 { O 1 bit } previous23_d0 { O 48 vector } previous23_q0 { I 48 vector } previous23_we0 { O 1 bit } previous23_address1 { O 6 vector } previous23_ce1 { O 1 bit } previous23_d1 { O 48 vector } previous23_q1 { I 48 vector } previous23_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 802 \
    name previous2358 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2358 \
    op interface \
    ports { previous2358_address0 { O 6 vector } previous2358_ce0 { O 1 bit } previous2358_d0 { O 48 vector } previous2358_q0 { I 48 vector } previous2358_we0 { O 1 bit } previous2358_address1 { O 6 vector } previous2358_ce1 { O 1 bit } previous2358_d1 { O 48 vector } previous2358_q1 { I 48 vector } previous2358_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2358'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 803 \
    name previous2359 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2359 \
    op interface \
    ports { previous2359_address0 { O 6 vector } previous2359_ce0 { O 1 bit } previous2359_d0 { O 48 vector } previous2359_q0 { I 48 vector } previous2359_we0 { O 1 bit } previous2359_address1 { O 6 vector } previous2359_ce1 { O 1 bit } previous2359_d1 { O 48 vector } previous2359_q1 { I 48 vector } previous2359_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2359'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 804 \
    name previous2360 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2360 \
    op interface \
    ports { previous2360_address0 { O 6 vector } previous2360_ce0 { O 1 bit } previous2360_d0 { O 48 vector } previous2360_q0 { I 48 vector } previous2360_we0 { O 1 bit } previous2360_address1 { O 6 vector } previous2360_ce1 { O 1 bit } previous2360_d1 { O 48 vector } previous2360_q1 { I 48 vector } previous2360_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2360'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 805 \
    name previous24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous24 \
    op interface \
    ports { previous24_address0 { O 6 vector } previous24_ce0 { O 1 bit } previous24_d0 { O 48 vector } previous24_q0 { I 48 vector } previous24_we0 { O 1 bit } previous24_address1 { O 6 vector } previous24_ce1 { O 1 bit } previous24_d1 { O 48 vector } previous24_q1 { I 48 vector } previous24_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 806 \
    name previous2461 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2461 \
    op interface \
    ports { previous2461_address0 { O 6 vector } previous2461_ce0 { O 1 bit } previous2461_d0 { O 48 vector } previous2461_q0 { I 48 vector } previous2461_we0 { O 1 bit } previous2461_address1 { O 6 vector } previous2461_ce1 { O 1 bit } previous2461_d1 { O 48 vector } previous2461_q1 { I 48 vector } previous2461_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2461'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 807 \
    name previous2462 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2462 \
    op interface \
    ports { previous2462_address0 { O 6 vector } previous2462_ce0 { O 1 bit } previous2462_d0 { O 48 vector } previous2462_q0 { I 48 vector } previous2462_we0 { O 1 bit } previous2462_address1 { O 6 vector } previous2462_ce1 { O 1 bit } previous2462_d1 { O 48 vector } previous2462_q1 { I 48 vector } previous2462_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2462'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 808 \
    name previous2463 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2463 \
    op interface \
    ports { previous2463_address0 { O 6 vector } previous2463_ce0 { O 1 bit } previous2463_d0 { O 48 vector } previous2463_q0 { I 48 vector } previous2463_we0 { O 1 bit } previous2463_address1 { O 6 vector } previous2463_ce1 { O 1 bit } previous2463_d1 { O 48 vector } previous2463_q1 { I 48 vector } previous2463_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2463'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 809 \
    name previous25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous25 \
    op interface \
    ports { previous25_address0 { O 6 vector } previous25_ce0 { O 1 bit } previous25_d0 { O 48 vector } previous25_q0 { I 48 vector } previous25_we0 { O 1 bit } previous25_address1 { O 6 vector } previous25_ce1 { O 1 bit } previous25_d1 { O 48 vector } previous25_q1 { I 48 vector } previous25_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 810 \
    name previous2564 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2564 \
    op interface \
    ports { previous2564_address0 { O 6 vector } previous2564_ce0 { O 1 bit } previous2564_d0 { O 48 vector } previous2564_q0 { I 48 vector } previous2564_we0 { O 1 bit } previous2564_address1 { O 6 vector } previous2564_ce1 { O 1 bit } previous2564_d1 { O 48 vector } previous2564_q1 { I 48 vector } previous2564_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2564'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 811 \
    name previous2565 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2565 \
    op interface \
    ports { previous2565_address0 { O 6 vector } previous2565_ce0 { O 1 bit } previous2565_d0 { O 48 vector } previous2565_q0 { I 48 vector } previous2565_we0 { O 1 bit } previous2565_address1 { O 6 vector } previous2565_ce1 { O 1 bit } previous2565_d1 { O 48 vector } previous2565_q1 { I 48 vector } previous2565_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2565'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 812 \
    name previous2566 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2566 \
    op interface \
    ports { previous2566_address0 { O 6 vector } previous2566_ce0 { O 1 bit } previous2566_d0 { O 48 vector } previous2566_q0 { I 48 vector } previous2566_we0 { O 1 bit } previous2566_address1 { O 6 vector } previous2566_ce1 { O 1 bit } previous2566_d1 { O 48 vector } previous2566_q1 { I 48 vector } previous2566_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2566'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 813 \
    name previous26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous26 \
    op interface \
    ports { previous26_address0 { O 6 vector } previous26_ce0 { O 1 bit } previous26_d0 { O 48 vector } previous26_q0 { I 48 vector } previous26_we0 { O 1 bit } previous26_address1 { O 6 vector } previous26_ce1 { O 1 bit } previous26_d1 { O 48 vector } previous26_q1 { I 48 vector } previous26_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 814 \
    name previous2667 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2667 \
    op interface \
    ports { previous2667_address0 { O 6 vector } previous2667_ce0 { O 1 bit } previous2667_d0 { O 48 vector } previous2667_q0 { I 48 vector } previous2667_we0 { O 1 bit } previous2667_address1 { O 6 vector } previous2667_ce1 { O 1 bit } previous2667_d1 { O 48 vector } previous2667_q1 { I 48 vector } previous2667_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2667'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 815 \
    name previous2668 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2668 \
    op interface \
    ports { previous2668_address0 { O 6 vector } previous2668_ce0 { O 1 bit } previous2668_d0 { O 48 vector } previous2668_q0 { I 48 vector } previous2668_we0 { O 1 bit } previous2668_address1 { O 6 vector } previous2668_ce1 { O 1 bit } previous2668_d1 { O 48 vector } previous2668_q1 { I 48 vector } previous2668_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2668'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 816 \
    name previous2669 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2669 \
    op interface \
    ports { previous2669_address0 { O 6 vector } previous2669_ce0 { O 1 bit } previous2669_d0 { O 48 vector } previous2669_q0 { I 48 vector } previous2669_we0 { O 1 bit } previous2669_address1 { O 6 vector } previous2669_ce1 { O 1 bit } previous2669_d1 { O 48 vector } previous2669_q1 { I 48 vector } previous2669_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2669'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 817 \
    name previous27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous27 \
    op interface \
    ports { previous27_address0 { O 6 vector } previous27_ce0 { O 1 bit } previous27_d0 { O 48 vector } previous27_q0 { I 48 vector } previous27_we0 { O 1 bit } previous27_address1 { O 6 vector } previous27_ce1 { O 1 bit } previous27_d1 { O 48 vector } previous27_q1 { I 48 vector } previous27_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 818 \
    name previous2770 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2770 \
    op interface \
    ports { previous2770_address0 { O 6 vector } previous2770_ce0 { O 1 bit } previous2770_d0 { O 48 vector } previous2770_q0 { I 48 vector } previous2770_we0 { O 1 bit } previous2770_address1 { O 6 vector } previous2770_ce1 { O 1 bit } previous2770_d1 { O 48 vector } previous2770_q1 { I 48 vector } previous2770_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2770'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 819 \
    name previous2771 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2771 \
    op interface \
    ports { previous2771_address0 { O 6 vector } previous2771_ce0 { O 1 bit } previous2771_d0 { O 48 vector } previous2771_q0 { I 48 vector } previous2771_we0 { O 1 bit } previous2771_address1 { O 6 vector } previous2771_ce1 { O 1 bit } previous2771_d1 { O 48 vector } previous2771_q1 { I 48 vector } previous2771_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2771'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 820 \
    name previous2772 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2772 \
    op interface \
    ports { previous2772_address0 { O 6 vector } previous2772_ce0 { O 1 bit } previous2772_d0 { O 48 vector } previous2772_q0 { I 48 vector } previous2772_we0 { O 1 bit } previous2772_address1 { O 6 vector } previous2772_ce1 { O 1 bit } previous2772_d1 { O 48 vector } previous2772_q1 { I 48 vector } previous2772_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2772'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 821 \
    name previous28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous28 \
    op interface \
    ports { previous28_address0 { O 6 vector } previous28_ce0 { O 1 bit } previous28_d0 { O 48 vector } previous28_q0 { I 48 vector } previous28_we0 { O 1 bit } previous28_address1 { O 6 vector } previous28_ce1 { O 1 bit } previous28_d1 { O 48 vector } previous28_q1 { I 48 vector } previous28_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 822 \
    name previous2873 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2873 \
    op interface \
    ports { previous2873_address0 { O 6 vector } previous2873_ce0 { O 1 bit } previous2873_d0 { O 48 vector } previous2873_q0 { I 48 vector } previous2873_we0 { O 1 bit } previous2873_address1 { O 6 vector } previous2873_ce1 { O 1 bit } previous2873_d1 { O 48 vector } previous2873_q1 { I 48 vector } previous2873_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2873'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 823 \
    name previous2874 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2874 \
    op interface \
    ports { previous2874_address0 { O 6 vector } previous2874_ce0 { O 1 bit } previous2874_d0 { O 48 vector } previous2874_q0 { I 48 vector } previous2874_we0 { O 1 bit } previous2874_address1 { O 6 vector } previous2874_ce1 { O 1 bit } previous2874_d1 { O 48 vector } previous2874_q1 { I 48 vector } previous2874_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2874'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 824 \
    name previous2875 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename previous2875 \
    op interface \
    ports { previous2875_address0 { O 6 vector } previous2875_ce0 { O 1 bit } previous2875_d0 { O 48 vector } previous2875_q0 { I 48 vector } previous2875_we0 { O 1 bit } previous2875_address1 { O 6 vector } previous2875_ce1 { O 1 bit } previous2875_d1 { O 48 vector } previous2875_q1 { I 48 vector } previous2875_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'previous2875'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 710 \
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
    id 711 \
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
    id 744 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 48 vector } p_read_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 48 vector } p_read1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 48 vector } p_read2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 48 vector } p_read3_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 48 vector } p_read4_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 48 vector } p_read5_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 48 vector } p_read6_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 48 vector } p_read7_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name ci \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ci \
    op interface \
    ports { ci { I 10 vector } ci_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name wi \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wi \
    op interface \
    ports { wi { I 16 vector } wi_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name k \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k \
    op interface \
    ports { k { I 3 vector } k_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name stride \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stride \
    op interface \
    ports { stride { I 2 vector } stride_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name pad \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pad \
    op interface \
    ports { pad { I 2 vector } pad_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name ow \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ow \
    op interface \
    ports { ow { I 16 vector } ow_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name computing \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_computing \
    op interface \
    ports { computing { I 1 bit } computing_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name emitting_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_emitting_offset \
    op interface \
    ports { emitting_offset { I 1 bit } emitting_offset_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name previous_rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_previous_rows \
    op interface \
    ports { previous_rows { I 16 vector } previous_rows_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 825 \
    name p_anonymous_namespace_profile_ticks \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_profile_ticks \
    op interface \
    ports { p_anonymous_namespace_profile_ticks_i { I 64 vector } p_anonymous_namespace_profile_ticks_o { O 64 vector } p_anonymous_namespace_profile_ticks_i_ap_vld { I 1 bit } p_anonymous_namespace_profile_ticks_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 826 \
    name p_anonymous_namespace_profile_mac \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_profile_mac \
    op interface \
    ports { p_anonymous_namespace_profile_mac_i { I 64 vector } p_anonymous_namespace_profile_mac_o { O 64 vector } p_anonymous_namespace_profile_mac_i_ap_vld { I 1 bit } p_anonymous_namespace_profile_mac_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 827 \
    name p_anonymous_namespace_profile_wait \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_profile_wait \
    op interface \
    ports { p_anonymous_namespace_profile_wait_i { I 64 vector } p_anonymous_namespace_profile_wait_o { O 64 vector } p_anonymous_namespace_profile_wait_i_ap_vld { I 1 bit } p_anonymous_namespace_profile_wait_o_ap_vld { O 1 bit } } \
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


