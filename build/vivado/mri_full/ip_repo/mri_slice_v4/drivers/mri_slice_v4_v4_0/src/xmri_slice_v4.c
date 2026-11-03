// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmri_slice_v4.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMri_slice_v4_CfgInitialize(XMri_slice_v4 *InstancePtr, XMri_slice_v4_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMri_slice_v4_Start(XMri_slice_v4 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMri_slice_v4_IsDone(XMri_slice_v4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMri_slice_v4_IsIdle(XMri_slice_v4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMri_slice_v4_IsReady(XMri_slice_v4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMri_slice_v4_EnableAutoRestart(XMri_slice_v4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMri_slice_v4_DisableAutoRestart(XMri_slice_v4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XMri_slice_v4_Get_return(XMri_slice_v4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XMri_slice_v4_Set_weights(XMri_slice_v4 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WEIGHTS_DATA, (u32)(Data));
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_slice_v4_Get_weights(XMri_slice_v4 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WEIGHTS_DATA);
    Data += (u64)XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XMri_slice_v4_Set_biases(XMri_slice_v4 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_BIASES_DATA, (u32)(Data));
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_slice_v4_Get_biases(XMri_slice_v4 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_BIASES_DATA);
    Data += (u64)XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_BIASES_DATA + 4) << 32;
    return Data;
}

void XMri_slice_v4_Set_shifts(XMri_slice_v4 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_SHIFTS_DATA, (u32)(Data));
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_SHIFTS_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_slice_v4_Get_shifts(XMri_slice_v4 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_SHIFTS_DATA);
    Data += (u64)XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_SHIFTS_DATA + 4) << 32;
    return Data;
}

void XMri_slice_v4_Set_layers(XMri_slice_v4 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_LAYERS_DATA, (u32)(Data));
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_LAYERS_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_slice_v4_Get_layers(XMri_slice_v4 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_LAYERS_DATA);
    Data += (u64)XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_LAYERS_DATA + 4) << 32;
    return Data;
}

void XMri_slice_v4_Set_features(XMri_slice_v4 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_FEATURES_DATA, (u32)(Data));
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_FEATURES_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_slice_v4_Get_features(XMri_slice_v4 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_FEATURES_DATA);
    Data += (u64)XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_FEATURES_DATA + 4) << 32;
    return Data;
}

void XMri_slice_v4_Set_wide(XMri_slice_v4 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WIDE_DATA, (u32)(Data));
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WIDE_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_slice_v4_Get_wide(XMri_slice_v4 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WIDE_DATA);
    Data += (u64)XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_WIDE_DATA + 4) << 32;
    return Data;
}

void XMri_slice_v4_Set_output_r(XMri_slice_v4 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_slice_v4_Get_output_r(XMri_slice_v4 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XMri_slice_v4_Set_mode(XMri_slice_v4 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XMri_slice_v4_Get_mode(XMri_slice_v4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XMri_slice_v4_InterruptGlobalEnable(XMri_slice_v4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_GIE, 1);
}

void XMri_slice_v4_InterruptGlobalDisable(XMri_slice_v4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_GIE, 0);
}

void XMri_slice_v4_InterruptEnable(XMri_slice_v4 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_IER);
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_IER, Register | Mask);
}

void XMri_slice_v4_InterruptDisable(XMri_slice_v4 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_IER);
    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMri_slice_v4_InterruptClear(XMri_slice_v4 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_slice_v4_WriteReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_ISR, Mask);
}

u32 XMri_slice_v4_InterruptGetEnabled(XMri_slice_v4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_IER);
}

u32 XMri_slice_v4_InterruptGetStatus(XMri_slice_v4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMri_slice_v4_ReadReg(InstancePtr->Control_BaseAddress, XMRI_SLICE_V4_CONTROL_ADDR_ISR);
}

