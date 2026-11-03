
    wire reset;
    wire clock;
    assign reset = ap_rst_n;
    assign clock = ap_clk;
    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [41:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [13:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [13:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [13:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_3_0;
    wire [13:0] dep_chan_data_3_0;
    wire token_3_0;
    wire [0:0] proc_1_data_FIFO_blk;
    wire [0:0] proc_1_data_PIPO_blk;
    wire [0:0] proc_1_start_FIFO_blk;
    wire [0:0] proc_1_TLF_FIFO_blk;
    wire [0:0] proc_1_input_sync_blk;
    wire [0:0] proc_1_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_1;
    reg [0:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [27:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [0:0] out_chan_dep_vld_vec_1;
    wire [13:0] out_chan_dep_data_1;
    wire [0:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [13:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [13:0] dep_chan_data_2_1;
    wire token_2_1;
    wire [2:0] proc_2_data_FIFO_blk;
    wire [2:0] proc_2_data_PIPO_blk;
    wire [2:0] proc_2_start_FIFO_blk;
    wire [2:0] proc_2_TLF_FIFO_blk;
    wire [2:0] proc_2_input_sync_blk;
    wire [2:0] proc_2_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_2;
    reg [2:0] proc_dep_vld_vec_2_reg;
    wire [1:0] in_chan_dep_vld_vec_2;
    wire [27:0] in_chan_dep_data_vec_2;
    wire [1:0] token_in_vec_2;
    wire [2:0] out_chan_dep_vld_vec_2;
    wire [13:0] out_chan_dep_data_2;
    wire [2:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [13:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_3_2;
    wire [13:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [27:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [13:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_0_3;
    wire [13:0] dep_chan_data_0_3;
    wire token_0_3;
    wire dep_chan_vld_2_3;
    wire [13:0] dep_chan_data_2_3;
    wire token_2_3;
    wire [3:0] proc_4_data_FIFO_blk;
    wire [3:0] proc_4_data_PIPO_blk;
    wire [3:0] proc_4_start_FIFO_blk;
    wire [3:0] proc_4_TLF_FIFO_blk;
    wire [3:0] proc_4_input_sync_blk;
    wire [3:0] proc_4_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_4;
    reg [3:0] proc_dep_vld_vec_4_reg;
    wire [3:0] in_chan_dep_vld_vec_4;
    wire [55:0] in_chan_dep_data_vec_4;
    wire [3:0] token_in_vec_4;
    wire [3:0] out_chan_dep_vld_vec_4;
    wire [13:0] out_chan_dep_data_4;
    wire [3:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_5_4;
    wire [13:0] dep_chan_data_5_4;
    wire token_5_4;
    wire dep_chan_vld_8_4;
    wire [13:0] dep_chan_data_8_4;
    wire token_8_4;
    wire dep_chan_vld_9_4;
    wire [13:0] dep_chan_data_9_4;
    wire token_9_4;
    wire dep_chan_vld_13_4;
    wire [13:0] dep_chan_data_13_4;
    wire token_13_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [2:0] in_chan_dep_vld_vec_5;
    wire [41:0] in_chan_dep_data_vec_5;
    wire [2:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [13:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_4_5;
    wire [13:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_9_5;
    wire [13:0] dep_chan_data_9_5;
    wire token_9_5;
    wire dep_chan_vld_13_5;
    wire [13:0] dep_chan_data_13_5;
    wire token_13_5;
    wire [0:0] proc_6_data_FIFO_blk;
    wire [0:0] proc_6_data_PIPO_blk;
    wire [0:0] proc_6_start_FIFO_blk;
    wire [0:0] proc_6_TLF_FIFO_blk;
    wire [0:0] proc_6_input_sync_blk;
    wire [0:0] proc_6_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_6;
    reg [0:0] proc_dep_vld_vec_6_reg;
    wire [0:0] in_chan_dep_vld_vec_6;
    wire [13:0] in_chan_dep_data_vec_6;
    wire [0:0] token_in_vec_6;
    wire [0:0] out_chan_dep_vld_vec_6;
    wire [13:0] out_chan_dep_data_6;
    wire [0:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_7_6;
    wire [13:0] dep_chan_data_7_6;
    wire token_7_6;
    wire [0:0] proc_7_data_FIFO_blk;
    wire [0:0] proc_7_data_PIPO_blk;
    wire [0:0] proc_7_start_FIFO_blk;
    wire [0:0] proc_7_TLF_FIFO_blk;
    wire [0:0] proc_7_input_sync_blk;
    wire [0:0] proc_7_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_7;
    reg [0:0] proc_dep_vld_vec_7_reg;
    wire [0:0] in_chan_dep_vld_vec_7;
    wire [13:0] in_chan_dep_data_vec_7;
    wire [0:0] token_in_vec_7;
    wire [0:0] out_chan_dep_vld_vec_7;
    wire [13:0] out_chan_dep_data_7;
    wire [0:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_6_7;
    wire [13:0] dep_chan_data_6_7;
    wire token_6_7;
    wire [0:0] proc_8_data_FIFO_blk;
    wire [0:0] proc_8_data_PIPO_blk;
    wire [0:0] proc_8_start_FIFO_blk;
    wire [0:0] proc_8_TLF_FIFO_blk;
    wire [0:0] proc_8_input_sync_blk;
    wire [0:0] proc_8_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_8;
    reg [0:0] proc_dep_vld_vec_8_reg;
    wire [1:0] in_chan_dep_vld_vec_8;
    wire [27:0] in_chan_dep_data_vec_8;
    wire [1:0] token_in_vec_8;
    wire [0:0] out_chan_dep_vld_vec_8;
    wire [13:0] out_chan_dep_data_8;
    wire [0:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_4_8;
    wire [13:0] dep_chan_data_4_8;
    wire token_4_8;
    wire dep_chan_vld_9_8;
    wire [13:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [3:0] proc_9_data_FIFO_blk;
    wire [3:0] proc_9_data_PIPO_blk;
    wire [3:0] proc_9_start_FIFO_blk;
    wire [3:0] proc_9_TLF_FIFO_blk;
    wire [3:0] proc_9_input_sync_blk;
    wire [3:0] proc_9_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_9;
    reg [3:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [41:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [3:0] out_chan_dep_vld_vec_9;
    wire [13:0] out_chan_dep_data_9;
    wire [3:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_4_9;
    wire [13:0] dep_chan_data_4_9;
    wire token_4_9;
    wire dep_chan_vld_5_9;
    wire [13:0] dep_chan_data_5_9;
    wire token_5_9;
    wire dep_chan_vld_13_9;
    wire [13:0] dep_chan_data_13_9;
    wire token_13_9;
    wire [1:0] proc_10_data_FIFO_blk;
    wire [1:0] proc_10_data_PIPO_blk;
    wire [1:0] proc_10_start_FIFO_blk;
    wire [1:0] proc_10_TLF_FIFO_blk;
    wire [1:0] proc_10_input_sync_blk;
    wire [1:0] proc_10_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_10;
    reg [1:0] proc_dep_vld_vec_10_reg;
    wire [1:0] in_chan_dep_vld_vec_10;
    wire [27:0] in_chan_dep_data_vec_10;
    wire [1:0] token_in_vec_10;
    wire [1:0] out_chan_dep_vld_vec_10;
    wire [13:0] out_chan_dep_data_10;
    wire [1:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_11_10;
    wire [13:0] dep_chan_data_11_10;
    wire token_11_10;
    wire dep_chan_vld_12_10;
    wire [13:0] dep_chan_data_12_10;
    wire token_12_10;
    wire [1:0] proc_11_data_FIFO_blk;
    wire [1:0] proc_11_data_PIPO_blk;
    wire [1:0] proc_11_start_FIFO_blk;
    wire [1:0] proc_11_TLF_FIFO_blk;
    wire [1:0] proc_11_input_sync_blk;
    wire [1:0] proc_11_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_11;
    reg [1:0] proc_dep_vld_vec_11_reg;
    wire [1:0] in_chan_dep_vld_vec_11;
    wire [27:0] in_chan_dep_data_vec_11;
    wire [1:0] token_in_vec_11;
    wire [1:0] out_chan_dep_vld_vec_11;
    wire [13:0] out_chan_dep_data_11;
    wire [1:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_10_11;
    wire [13:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_12_11;
    wire [13:0] dep_chan_data_12_11;
    wire token_12_11;
    wire [1:0] proc_12_data_FIFO_blk;
    wire [1:0] proc_12_data_PIPO_blk;
    wire [1:0] proc_12_start_FIFO_blk;
    wire [1:0] proc_12_TLF_FIFO_blk;
    wire [1:0] proc_12_input_sync_blk;
    wire [1:0] proc_12_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_12;
    reg [1:0] proc_dep_vld_vec_12_reg;
    wire [1:0] in_chan_dep_vld_vec_12;
    wire [27:0] in_chan_dep_data_vec_12;
    wire [1:0] token_in_vec_12;
    wire [1:0] out_chan_dep_vld_vec_12;
    wire [13:0] out_chan_dep_data_12;
    wire [1:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_10_12;
    wire [13:0] dep_chan_data_10_12;
    wire token_10_12;
    wire dep_chan_vld_11_12;
    wire [13:0] dep_chan_data_11_12;
    wire token_11_12;
    wire [2:0] proc_13_data_FIFO_blk;
    wire [2:0] proc_13_data_PIPO_blk;
    wire [2:0] proc_13_start_FIFO_blk;
    wire [2:0] proc_13_TLF_FIFO_blk;
    wire [2:0] proc_13_input_sync_blk;
    wire [2:0] proc_13_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_13;
    reg [2:0] proc_dep_vld_vec_13_reg;
    wire [2:0] in_chan_dep_vld_vec_13;
    wire [41:0] in_chan_dep_data_vec_13;
    wire [2:0] token_in_vec_13;
    wire [2:0] out_chan_dep_vld_vec_13;
    wire [13:0] out_chan_dep_data_13;
    wire [2:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_4_13;
    wire [13:0] dep_chan_data_4_13;
    wire token_4_13;
    wire dep_chan_vld_5_13;
    wire [13:0] dep_chan_data_5_13;
    wire token_5_13;
    wire dep_chan_vld_9_13;
    wire [13:0] dep_chan_data_9_13;
    wire token_9_13;
    wire [13:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [13:0] origin;

    reg ap_done_reg_0;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ap_done == 1'b1 && grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.ap_done == 1'b1 && grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0
    mri_full_hls_deadlock_detect_unit #(14, 0, 3, 3) mri_full_hls_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.w_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.wbase_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ci_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.k_out_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_entry68_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_load_weights52_U0_ap_ready);
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.fr_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.fw_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.wide_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ob_out1_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ci_out2_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.h_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.wi_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.k_out3_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.stride_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.pad_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.oh_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ow_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.input_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.output_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.skip_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.skipshift_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.kind_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.batch_count_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_0_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_1_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_2_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_3_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_4_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_5_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_6_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.bias_7_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_0_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_1_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_2_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_3_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_4_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_5_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_6_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.shifts_7_out_blk_n);
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_entry68_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ob_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.co_out_blk_n);
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.start_for_p_anonymous_namespace_output_pair_Block_split5_proc_U0_U.if_full_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.ap_start & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_entry68_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.start_for_p_anonymous_namespace_output_pair_Block_split5_proc_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0;
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[13 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[27 : 14] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[41 : 28] = dep_chan_data_3_0;
    assign token_in_vec_0[2] = token_3_0;
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[0];
    assign dep_chan_vld_0_3 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_3 = out_chan_dep_data_0;
    assign token_0_3 = token_out_vec_0[1];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[2];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Block_split5_proc_U0
    mri_full_hls_deadlock_detect_unit #(14, 1, 2, 1) mri_full_hls_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Block_split5_proc_U0.ob_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Block_split5_proc_U0.co_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.start_for_p_anonymous_namespace_output_pair_Block_split5_proc_U0_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Block_split5_proc_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.start_for_p_anonymous_namespace_output_pair_Block_split5_proc_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[13 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[27 : 14] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0
    mri_full_hls_deadlock_detect_unit #(14, 2, 2, 3) mri_full_hls_deadlock_detect_unit_2 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.w_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.wbase_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ci_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.k_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_load_weights52_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_entry68_U0_ap_ready);
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.add_ln419_1_loc_channel_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.add_ln419_1_loc_channel_U.if_write) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.icmp_ln419_loc_channel_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.icmp_ln419_loc_channel_U.if_write);
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_load_weights52_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0_ap_ready);
    assign proc_2_output_sync_blk[2] = 1'b0 | (ap_done_reg_0 & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ap_done);
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[13 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[27 : 14] = dep_chan_data_3_2;
    assign token_in_vec_2[1] = token_3_2;
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[0];
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[1];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[2];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0
    mri_full_hls_deadlock_detect_unit #(14, 3, 2, 2) mri_full_hls_deadlock_detect_unit_3 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.batch_count_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.wide_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.input_r_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.output_r_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.skip_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.fr_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.fw_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_0_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_1_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_2_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_3_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_4_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_5_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_6_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.bias_7_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_0_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_1_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_2_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_3_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_4_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_5_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_6_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.shifts_7_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.skipshift_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ob_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ci_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.h_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.wi_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.k_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.stride_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.pad_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.oh_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ow_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.kind_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_entry68_U0_ap_ready);
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0;
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.ap_sync_p_anonymous_namespace_load_weights52_U0_ap_ready);
    assign proc_3_output_sync_blk[1] = 1'b0 | (ap_done_reg_4 & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_load_weights52_U0.ap_done);
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_0_3;
    assign in_chan_dep_data_vec_3[13 : 0] = dep_chan_data_0_3;
    assign token_in_vec_3[0] = token_0_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[27 : 14] = dep_chan_data_2_3;
    assign token_in_vec_3[1] = token_2_3;
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[0];
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[1];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0
    mri_full_hls_deadlock_detect_unit #(14, 4, 4, 4) mri_full_hls_deadlock_detect_unit_4 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.k_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.stride_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.pad_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.h_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.wi_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.ci_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.fr_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.input_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.oh_out_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_block_Block_split1_proc62_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_load_tiles_U0_ap_ready);
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.stride_out1_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.wi_out2_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.ow_out_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.ob_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.fw_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.wide_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_0_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_1_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_2_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_3_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_4_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_5_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_6_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.shifts_7_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.output_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.skip_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.skipshift_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.kind_out_blk_n);
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_block_Block_split1_proc62_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_store_tiles_U0_ap_ready);
    assign proc_4_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    assign proc_4_data_FIFO_blk[3] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_0_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_1_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_2_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_3_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_4_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_5_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_6_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.bias_7_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.ow_out3_blk_n);
    assign proc_4_data_PIPO_blk[3] = 1'b0;
    assign proc_4_start_FIFO_blk[3] = 1'b0;
    assign proc_4_TLF_FIFO_blk[3] = 1'b0;
    assign proc_4_input_sync_blk[3] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_block_Block_split1_proc62_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split1_proc62_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_compute_tiles_U0_ap_ready);
    assign proc_4_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_4[3] = dl_detect_out ? proc_dep_vld_vec_4_reg[3] : (proc_4_data_FIFO_blk[3] | proc_4_data_PIPO_blk[3] | proc_4_start_FIFO_blk[3] | proc_4_TLF_FIFO_blk[3] | proc_4_input_sync_blk[3] | proc_4_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[13 : 0] = dep_chan_data_5_4;
    assign token_in_vec_4[0] = token_5_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_8_4;
    assign in_chan_dep_data_vec_4[27 : 14] = dep_chan_data_8_4;
    assign token_in_vec_4[1] = token_8_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_9_4;
    assign in_chan_dep_data_vec_4[41 : 28] = dep_chan_data_9_4;
    assign token_in_vec_4[2] = token_9_4;
    assign in_chan_dep_vld_vec_4[3] = dep_chan_vld_13_4;
    assign in_chan_dep_data_vec_4[55 : 42] = dep_chan_data_13_4;
    assign token_in_vec_4[3] = token_13_4;
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[0];
    assign dep_chan_vld_4_8 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_8 = out_chan_dep_data_4;
    assign token_4_8 = token_out_vec_4[1];
    assign dep_chan_vld_4_13 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_13 = out_chan_dep_data_4;
    assign token_4_13 = token_out_vec_4[2];
    assign dep_chan_vld_4_9 = out_chan_dep_vld_vec_4[3];
    assign dep_chan_data_4_9 = out_chan_dep_data_4;
    assign token_4_9 = token_out_vec_4[3];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0
    mri_full_hls_deadlock_detect_unit #(14, 5, 3, 3) mri_full_hls_deadlock_detect_unit_5 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.pixels_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ci_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.k_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.pad_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.oh_out_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_load_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_compute_tiles_U0_ap_ready);
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.fr_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.input_r_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ci_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.h_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.wi_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.k_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.stride_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.pad_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.oh_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_loc_channel_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_loc_channel_U.if_write) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.icmp_ln412_6_loc_channel_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.icmp_ln412_6_loc_channel_U.if_write);
    assign proc_5_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_load_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_block_Block_split1_proc62_U0_ap_ready);
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0;
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_load_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_store_tiles_U0_ap_ready);
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[13 : 0] = dep_chan_data_4_5;
    assign token_in_vec_5[0] = token_4_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_9_5;
    assign in_chan_dep_data_vec_5[27 : 14] = dep_chan_data_9_5;
    assign token_in_vec_5[1] = token_9_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_13_5;
    assign in_chan_dep_data_vec_5[41 : 28] = dep_chan_data_13_5;
    assign token_in_vec_5[2] = token_13_5;
    assign dep_chan_vld_5_9 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_9 = out_chan_dep_data_5;
    assign token_5_9 = token_out_vec_5[0];
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[1];
    assign dep_chan_vld_5_13 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_13 = out_chan_dep_data_5;
    assign token_5_13 = token_out_vec_5[2];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0
    mri_full_hls_deadlock_detect_unit #(14, 6, 1, 1) mri_full_hls_deadlock_detect_unit_6 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.fresh_words_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.ci_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.h_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.rw_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.ph_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.keep_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.stride_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.pad_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.oh_out_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.start_for_p_anonymous_namespace_assemble_rows_U0_U.if_full_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.ap_start & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_read_fresh_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.start_for_p_anonymous_namespace_assemble_rows_U0_U.if_read);
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[13 : 0] = dep_chan_data_7_6;
    assign token_in_vec_6[0] = token_7_6;
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[0];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0
    mri_full_hls_deadlock_detect_unit #(14, 7, 1, 1) mri_full_hls_deadlock_detect_unit_7 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.fresh_words_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.ci_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.h_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.rw_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.ph_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.keep_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.stride_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.pad_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.oh_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.start_for_p_anonymous_namespace_assemble_rows_U0_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.p_anonymous_namespace_assemble_rows_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_load_tiles_U0.grp_p_anonymous_namespace_load_uncached_fu_569.start_for_p_anonymous_namespace_assemble_rows_U0_U.if_write);
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[13 : 0] = dep_chan_data_6_7;
    assign token_in_vec_7[0] = token_6_7;
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[0];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0
    mri_full_hls_deadlock_detect_unit #(14, 8, 2, 1) mri_full_hls_deadlock_detect_unit_8 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0.ow_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0.wi_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0.stride_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.compact_loc_channel_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_block_Block_split93_proc_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.compact_loc_channel_U.if_write);
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_4_8;
    assign in_chan_dep_data_vec_8[13 : 0] = dep_chan_data_4_8;
    assign token_in_vec_8[0] = token_4_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[27 : 14] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign dep_chan_vld_8_4 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_4 = out_chan_dep_data_8;
    assign token_8_4 = token_out_vec_8[0];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0
    mri_full_hls_deadlock_detect_unit #(14, 9, 3, 4) mri_full_hls_deadlock_detect_unit_9 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.pixels2_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ci_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.k_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.pad_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.oh_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_compute_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_load_tiles_U0_ap_ready);
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.results_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.oh_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ow_out_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_compute_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_store_tiles_U0_ap_ready);
    assign proc_9_output_sync_blk[1] = 1'b0 | (ap_done_reg_3 & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ap_done);
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_0_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_1_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_2_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_3_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_4_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_5_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_6_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.bias_7_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ow_blk_n);
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_compute_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_block_Block_split1_proc62_U0_ap_ready);
    assign proc_9_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    assign proc_9_data_FIFO_blk[3] = 1'b0;
    assign proc_9_data_PIPO_blk[3] = 1'b0;
    assign proc_9_start_FIFO_blk[3] = 1'b0;
    assign proc_9_TLF_FIFO_blk[3] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.select_ln413_loc_channel_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.select_ln413_loc_channel_U.if_write) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.select_ln413_1_loc_channel_U.if_empty_n & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.select_ln413_1_loc_channel_U.if_write);
    assign proc_9_input_sync_blk[3] = 1'b0;
    assign proc_9_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_9[3] = dl_detect_out ? proc_dep_vld_vec_9_reg[3] : (proc_9_data_FIFO_blk[3] | proc_9_data_PIPO_blk[3] | proc_9_start_FIFO_blk[3] | proc_9_TLF_FIFO_blk[3] | proc_9_input_sync_blk[3] | proc_9_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_4_9;
    assign in_chan_dep_data_vec_9[13 : 0] = dep_chan_data_4_9;
    assign token_in_vec_9[0] = token_4_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_5_9;
    assign in_chan_dep_data_vec_9[27 : 14] = dep_chan_data_5_9;
    assign token_in_vec_9[1] = token_5_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_13_9;
    assign in_chan_dep_data_vec_9[41 : 28] = dep_chan_data_13_9;
    assign token_in_vec_9[2] = token_13_9;
    assign dep_chan_vld_9_5 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_5 = out_chan_dep_data_9;
    assign token_9_5 = token_out_vec_9[0];
    assign dep_chan_vld_9_13 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_13 = out_chan_dep_data_9;
    assign token_9_13 = token_out_vec_9[1];
    assign dep_chan_vld_9_4 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_4 = out_chan_dep_data_9;
    assign token_9_4 = token_out_vec_9[2];
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[3];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[3];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0
    mri_full_hls_deadlock_detect_unit #(14, 10, 2, 2) mri_full_hls_deadlock_detect_unit_10 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias8_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias9_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias10_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias11_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias12_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias13_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.bias14_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.ci_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.wi_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.k_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.stride_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.pad_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.ow_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.computing_out_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_row_pair_entry58_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_compute_row_U0_ap_ready);
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.ow_out1_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.emitting_offset_out_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.previous_rows_out_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_row_pair_entry58_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_row_pair_entry58_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_emit_row_U0_ap_ready);
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[13 : 0] = dep_chan_data_11_10;
    assign token_in_vec_10[0] = token_11_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_12_10;
    assign in_chan_dep_data_vec_10[27 : 14] = dep_chan_data_12_10;
    assign token_in_vec_10[1] = token_12_10;
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[0];
    assign dep_chan_vld_10_12 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_12 = out_chan_dep_data_10;
    assign token_10_12 = token_out_vec_10[1];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0
    mri_full_hls_deadlock_detect_unit #(14, 11, 2, 2) mri_full_hls_deadlock_detect_unit_11 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias8_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias9_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias10_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias11_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias12_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias13_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.bias14_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ci_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.wi_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.k_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.stride_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.pad_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ow_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.enabled_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_compute_row_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_row_pair_entry58_U0_ap_ready);
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0;
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_compute_row_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_emit_row_U0_ap_ready);
    assign proc_11_output_sync_blk[1] = 1'b0 | (ap_done_reg_6 & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.ap_done);
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[13 : 0] = dep_chan_data_10_11;
    assign token_in_vec_11[0] = token_10_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[27 : 14] = dep_chan_data_12_11;
    assign token_in_vec_11[1] = token_12_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[1];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0
    mri_full_hls_deadlock_detect_unit #(14, 12, 2, 2) mri_full_hls_deadlock_detect_unit_12 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.rows_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.ow_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.enabled_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_emit_row_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_row_pair_entry58_U0_ap_ready);
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0;
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_emit_row_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.ap_sync_p_anonymous_namespace_compute_row_U0_ap_ready);
    assign proc_12_output_sync_blk[1] = 1'b0 | (ap_done_reg_7 & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_emit_row_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.grp_p_anonymous_namespace_row_pair_fu_591.p_anonymous_namespace_compute_row_U0.ap_done);
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_10_12;
    assign in_chan_dep_data_vec_12[13 : 0] = dep_chan_data_10_12;
    assign token_in_vec_12[0] = token_10_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[27 : 14] = dep_chan_data_11_12;
    assign token_in_vec_12[1] = token_11_12;
    assign dep_chan_vld_12_10 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_10 = out_chan_dep_data_12;
    assign token_12_10 = token_out_vec_12[0];
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[1];

    // Process: grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0
    mri_full_hls_deadlock_detect_unit #(14, 13, 3, 3) mri_full_hls_deadlock_detect_unit_13 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.results_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.oh_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ow_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_store_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_compute_tiles_U0_ap_ready);
    assign proc_13_output_sync_blk[0] = 1'b0 | (ap_done_reg_5 & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ap_done & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_compute_tiles_U0.ap_done);
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.fr_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.wide_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_0_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_1_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_2_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_3_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_4_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_5_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_6_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.shifts_7_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.output_r_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.skip_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.skipshift_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ob_blk_n) | (~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.kind_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_store_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_block_Block_split1_proc62_U0_ap_ready);
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0;
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0;
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0 | (grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_store_tiles_U0_ap_ready & grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.p_anonymous_namespace_store_tiles_U0.ap_idle & ~grp_p_anonymous_namespace_conv_fu_1218.grp_p_anonymous_namespace_output_pair_fu_765.p_anonymous_namespace_output_pair_Loop_VITIS_LOOP_420_1_proc_U0.grp_p_anonymous_namespace_block_fu_473.ap_sync_p_anonymous_namespace_load_tiles_U0_ap_ready);
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_4_13;
    assign in_chan_dep_data_vec_13[13 : 0] = dep_chan_data_4_13;
    assign token_in_vec_13[0] = token_4_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_5_13;
    assign in_chan_dep_data_vec_13[27 : 14] = dep_chan_data_5_13;
    assign token_in_vec_13[1] = token_5_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_9_13;
    assign in_chan_dep_data_vec_13[41 : 28] = dep_chan_data_9_13;
    assign token_in_vec_13[2] = token_9_13;
    assign dep_chan_vld_13_9 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_9 = out_chan_dep_data_13;
    assign token_13_9 = token_out_vec_13[0];
    assign dep_chan_vld_13_4 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_4 = out_chan_dep_data_13;
    assign token_13_4 = token_out_vec_13[1];
    assign dep_chan_vld_13_5 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_5 = out_chan_dep_data_13;
    assign token_13_5 = token_out_vec_13[2];


`include "mri_full_hls_deadlock_report_unit.vh"
