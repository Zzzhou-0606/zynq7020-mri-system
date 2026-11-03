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
    id 358 \
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
    id 359 \
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
    id 360 \
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
    id 361 \
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
    id 362 \
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
    id 363 \
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
    id 364 \
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
    id 365 \
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
    id 366 \
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
    id 367 \
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
    id 368 \
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
    id 369 \
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
    id 370 \
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
    id 371 \
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
    id 372 \
    name computing \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_computing \
    op interface \
    ports { computing { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name emitting_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_emitting_offset \
    op interface \
    ports { emitting_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name previous_rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_previous_rows \
    op interface \
    ports { previous_rows { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name bias_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_out \
    op interface \
    ports { bias_out_din { O 48 vector } bias_out_full_n { I 1 bit } bias_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name bias8_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias8_out \
    op interface \
    ports { bias8_out_din { O 48 vector } bias8_out_full_n { I 1 bit } bias8_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name bias9_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias9_out \
    op interface \
    ports { bias9_out_din { O 48 vector } bias9_out_full_n { I 1 bit } bias9_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name bias10_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias10_out \
    op interface \
    ports { bias10_out_din { O 48 vector } bias10_out_full_n { I 1 bit } bias10_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name bias11_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias11_out \
    op interface \
    ports { bias11_out_din { O 48 vector } bias11_out_full_n { I 1 bit } bias11_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name bias12_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias12_out \
    op interface \
    ports { bias12_out_din { O 48 vector } bias12_out_full_n { I 1 bit } bias12_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name bias13_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias13_out \
    op interface \
    ports { bias13_out_din { O 48 vector } bias13_out_full_n { I 1 bit } bias13_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name bias14_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias14_out \
    op interface \
    ports { bias14_out_din { O 48 vector } bias14_out_full_n { I 1 bit } bias14_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
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
    id 384 \
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
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
    name ow_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ow_out1 \
    op interface \
    ports { ow_out1_din { O 16 vector } ow_out1_full_n { I 1 bit } ow_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name computing_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_computing_out \
    op interface \
    ports { computing_out_din { O 1 vector } computing_out_full_n { I 1 bit } computing_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name emitting_offset_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_emitting_offset_out \
    op interface \
    ports { emitting_offset_out_din { O 1 vector } emitting_offset_out_full_n { I 1 bit } emitting_offset_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name previous_rows_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_previous_rows_out \
    op interface \
    ports { previous_rows_out_din { O 16 vector } previous_rows_out_full_n { I 1 bit } previous_rows_out_write { O 1 bit } } \
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


