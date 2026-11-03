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
    id 174 \
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
    id 175 \
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
    id 176 \
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
    id 177 \
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
    id 178 \
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
    id 179 \
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
    id 180 \
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
    id 181 \
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
    id 182 \
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
    id 183 \
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
    id 184 \
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
    id 185 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_read10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read10 \
    op interface \
    ports { p_read10 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_read11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read11 \
    op interface \
    ports { p_read11 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_read12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read12 \
    op interface \
    ports { p_read12 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_read13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read13 \
    op interface \
    ports { p_read13 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_read14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read14 \
    op interface \
    ports { p_read14 { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
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
    id 193 \
    name p_read16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read16 \
    op interface \
    ports { p_read16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_read17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read17 \
    op interface \
    ports { p_read17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_read18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read18 \
    op interface \
    ports { p_read18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_read19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read19 \
    op interface \
    ports { p_read19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_read20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read20 \
    op interface \
    ports { p_read20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_read21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read21 \
    op interface \
    ports { p_read21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name p_read22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read22 \
    op interface \
    ports { p_read22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
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
    id 201 \
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
    id 202 \
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
    id 203 \
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
    id 204 \
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
    id 205 \
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
    id 206 \
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
    id 207 \
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
    id 208 \
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
    id 209 \
    name stride_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stride_out1 \
    op interface \
    ports { stride_out1_din { O 2 vector } stride_out1_full_n { I 1 bit } stride_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
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
    id 211 \
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
    id 212 \
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
    id 213 \
    name wi_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_wi_out2 \
    op interface \
    ports { wi_out2_din { O 16 vector } wi_out2_full_n { I 1 bit } wi_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
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
    id 215 \
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
    id 216 \
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
    id 217 \
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
    id 218 \
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
    id 219 \
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
    id 220 \
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
    id 221 \
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
    id 222 \
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
    id 223 \
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
    id 224 \
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
    id 225 \
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
    id 226 \
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
    id 227 \
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
    id 228 \
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
    id 229 \
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
    id 230 \
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
    id 231 \
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
    id 232 \
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
    id 233 \
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
    id 234 \
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
    id 235 \
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
    id 236 \
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
    id 237 \
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
    id 238 \
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
    id 239 \
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
    id 240 \
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
    id 241 \
    name ow_out3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ow_out3 \
    op interface \
    ports { ow_out3_din { O 16 vector } ow_out3_full_n { I 1 bit } ow_out3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


