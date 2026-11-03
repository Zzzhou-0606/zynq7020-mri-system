# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
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
    id 50 \
    name fr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fr \
    op interface \
    ports { fr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name fw \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fw \
    op interface \
    ports { fw { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
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
    id 53 \
    name wbase \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wbase \
    op interface \
    ports { wbase { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name ob \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ob \
    op interface \
    ports { ob { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
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
    id 56 \
    name h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h \
    op interface \
    ports { h { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
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
    id 58 \
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
    id 59 \
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
    id 60 \
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
    id 61 \
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
    id 62 \
    name oh \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oh \
    op interface \
    ports { oh { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name ow \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ow \
    op interface \
    ports { ow { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
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
    id 65 \
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
    id 66 \
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
    id 67 \
    name skipshift \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_skipshift \
    op interface \
    ports { skipshift { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
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
    id 69 \
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
    id 70 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name p_read10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read10 \
    op interface \
    ports { p_read10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name p_read11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read11 \
    op interface \
    ports { p_read11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name p_read12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read12 \
    op interface \
    ports { p_read12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name p_read13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read13 \
    op interface \
    ports { p_read13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name p_read14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read14 \
    op interface \
    ports { p_read14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name p_read15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read15 \
    op interface \
    ports { p_read15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name w_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w_out \
    op interface \
    ports { w_out_din { O 64 vector } w_out_full_n { I 1 bit } w_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name fr_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fr_out \
    op interface \
    ports { fr_out_din { O 64 vector } fr_out_full_n { I 1 bit } fr_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name fw_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fw_out \
    op interface \
    ports { fw_out_din { O 64 vector } fw_out_full_n { I 1 bit } fw_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name wide_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_wide_out \
    op interface \
    ports { wide_out_din { O 64 vector } wide_out_full_n { I 1 bit } wide_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name wbase_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_wbase_out \
    op interface \
    ports { wbase_out_din { O 32 vector } wbase_out_full_n { I 1 bit } wbase_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name ob_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ob_out \
    op interface \
    ports { ob_out_din { O 16 vector } ob_out_full_n { I 1 bit } ob_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name ob_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ob_out1 \
    op interface \
    ports { ob_out1_din { O 16 vector } ob_out1_full_n { I 1 bit } ob_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name ci_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ci_out \
    op interface \
    ports { ci_out_din { O 10 vector } ci_out_full_n { I 1 bit } ci_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name ci_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ci_out2 \
    op interface \
    ports { ci_out2_din { O 10 vector } ci_out2_full_n { I 1 bit } ci_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name h_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_h_out \
    op interface \
    ports { h_out_din { O 16 vector } h_out_full_n { I 1 bit } h_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name wi_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_wi_out \
    op interface \
    ports { wi_out_din { O 16 vector } wi_out_full_n { I 1 bit } wi_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name co_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_co_out \
    op interface \
    ports { co_out_din { O 10 vector } co_out_full_n { I 1 bit } co_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name k_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_k_out \
    op interface \
    ports { k_out_din { O 3 vector } k_out_full_n { I 1 bit } k_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name k_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_k_out3 \
    op interface \
    ports { k_out3_din { O 3 vector } k_out3_full_n { I 1 bit } k_out3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name stride_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stride_out \
    op interface \
    ports { stride_out_din { O 2 vector } stride_out_full_n { I 1 bit } stride_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name pad_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pad_out \
    op interface \
    ports { pad_out_din { O 2 vector } pad_out_full_n { I 1 bit } pad_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
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
    id 103 \
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
    id 104 \
    name input_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_out \
    op interface \
    ports { input_out_din { O 32 vector } input_out_full_n { I 1 bit } input_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name output_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_out \
    op interface \
    ports { output_out_din { O 32 vector } output_out_full_n { I 1 bit } output_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name skip_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skip_out \
    op interface \
    ports { skip_out_din { O 32 vector } skip_out_full_n { I 1 bit } skip_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name skipshift_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_skipshift_out \
    op interface \
    ports { skipshift_out_din { O 32 vector } skipshift_out_full_n { I 1 bit } skipshift_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name kind_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kind_out \
    op interface \
    ports { kind_out_din { O 3 vector } kind_out_full_n { I 1 bit } kind_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name batch_count_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_batch_count_out \
    op interface \
    ports { batch_count_out_din { O 32 vector } batch_count_out_full_n { I 1 bit } batch_count_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name bias_0_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_0_out \
    op interface \
    ports { bias_0_out_din { O 48 vector } bias_0_out_full_n { I 1 bit } bias_0_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name bias_1_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_out \
    op interface \
    ports { bias_1_out_din { O 48 vector } bias_1_out_full_n { I 1 bit } bias_1_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name bias_2_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_out \
    op interface \
    ports { bias_2_out_din { O 48 vector } bias_2_out_full_n { I 1 bit } bias_2_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name bias_3_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_3_out \
    op interface \
    ports { bias_3_out_din { O 48 vector } bias_3_out_full_n { I 1 bit } bias_3_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name bias_4_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_4_out \
    op interface \
    ports { bias_4_out_din { O 48 vector } bias_4_out_full_n { I 1 bit } bias_4_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name bias_5_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_5_out \
    op interface \
    ports { bias_5_out_din { O 48 vector } bias_5_out_full_n { I 1 bit } bias_5_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name bias_6_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_6_out \
    op interface \
    ports { bias_6_out_din { O 48 vector } bias_6_out_full_n { I 1 bit } bias_6_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name bias_7_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_7_out \
    op interface \
    ports { bias_7_out_din { O 48 vector } bias_7_out_full_n { I 1 bit } bias_7_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name shifts_0_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_0_out \
    op interface \
    ports { shifts_0_out_din { O 32 vector } shifts_0_out_full_n { I 1 bit } shifts_0_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name shifts_1_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_1_out \
    op interface \
    ports { shifts_1_out_din { O 32 vector } shifts_1_out_full_n { I 1 bit } shifts_1_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name shifts_2_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_2_out \
    op interface \
    ports { shifts_2_out_din { O 32 vector } shifts_2_out_full_n { I 1 bit } shifts_2_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name shifts_3_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_3_out \
    op interface \
    ports { shifts_3_out_din { O 32 vector } shifts_3_out_full_n { I 1 bit } shifts_3_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name shifts_4_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_4_out \
    op interface \
    ports { shifts_4_out_din { O 32 vector } shifts_4_out_full_n { I 1 bit } shifts_4_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name shifts_5_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_5_out \
    op interface \
    ports { shifts_5_out_din { O 32 vector } shifts_5_out_full_n { I 1 bit } shifts_5_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name shifts_6_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_6_out \
    op interface \
    ports { shifts_6_out_din { O 32 vector } shifts_6_out_full_n { I 1 bit } shifts_6_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name shifts_7_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shifts_7_out \
    op interface \
    ports { shifts_7_out_din { O 32 vector } shifts_7_out_full_n { I 1 bit } shifts_7_out_write { O 1 bit } } \
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
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


