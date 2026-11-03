// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x20 : Data signal of weights
//        bit 31~0 - weights[31:0] (Read/Write)
// 0x24 : Data signal of weights
//        bit 31~0 - weights[63:32] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of biases
//        bit 31~0 - biases[31:0] (Read/Write)
// 0x30 : Data signal of biases
//        bit 31~0 - biases[63:32] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of shifts
//        bit 31~0 - shifts[31:0] (Read/Write)
// 0x3c : Data signal of shifts
//        bit 31~0 - shifts[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of layers
//        bit 31~0 - layers[31:0] (Read/Write)
// 0x48 : Data signal of layers
//        bit 31~0 - layers[63:32] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of features
//        bit 31~0 - features[31:0] (Read/Write)
// 0x54 : Data signal of features
//        bit 31~0 - features[63:32] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of wide
//        bit 31~0 - wide[31:0] (Read/Write)
// 0x60 : Data signal of wide
//        bit 31~0 - wide[63:32] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of output_r
//        bit 31~0 - output_r[31:0] (Read/Write)
// 0x6c : Data signal of output_r
//        bit 31~0 - output_r[63:32] (Read/Write)
// 0x70 : reserved
// 0x74 : Data signal of mode
//        bit 31~0 - mode[31:0] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMRI_SLICE_V3_CONTROL_ADDR_AP_CTRL       0x00
#define XMRI_SLICE_V3_CONTROL_ADDR_GIE           0x04
#define XMRI_SLICE_V3_CONTROL_ADDR_IER           0x08
#define XMRI_SLICE_V3_CONTROL_ADDR_ISR           0x0c
#define XMRI_SLICE_V3_CONTROL_ADDR_AP_RETURN     0x10
#define XMRI_SLICE_V3_CONTROL_BITS_AP_RETURN     32
#define XMRI_SLICE_V3_CONTROL_ADDR_WEIGHTS_DATA  0x20
#define XMRI_SLICE_V3_CONTROL_BITS_WEIGHTS_DATA  64
#define XMRI_SLICE_V3_CONTROL_ADDR_BIASES_DATA   0x2c
#define XMRI_SLICE_V3_CONTROL_BITS_BIASES_DATA   64
#define XMRI_SLICE_V3_CONTROL_ADDR_SHIFTS_DATA   0x38
#define XMRI_SLICE_V3_CONTROL_BITS_SHIFTS_DATA   64
#define XMRI_SLICE_V3_CONTROL_ADDR_LAYERS_DATA   0x44
#define XMRI_SLICE_V3_CONTROL_BITS_LAYERS_DATA   64
#define XMRI_SLICE_V3_CONTROL_ADDR_FEATURES_DATA 0x50
#define XMRI_SLICE_V3_CONTROL_BITS_FEATURES_DATA 64
#define XMRI_SLICE_V3_CONTROL_ADDR_WIDE_DATA     0x5c
#define XMRI_SLICE_V3_CONTROL_BITS_WIDE_DATA     64
#define XMRI_SLICE_V3_CONTROL_ADDR_OUTPUT_R_DATA 0x68
#define XMRI_SLICE_V3_CONTROL_BITS_OUTPUT_R_DATA 64
#define XMRI_SLICE_V3_CONTROL_ADDR_MODE_DATA     0x74
#define XMRI_SLICE_V3_CONTROL_BITS_MODE_DATA     32

