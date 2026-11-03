// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmri_full.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMri_full_CfgInitialize(XMri_full *InstancePtr, XMri_full_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMri_full_Start(XMri_full *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMri_full_IsDone(XMri_full *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMri_full_IsIdle(XMri_full *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMri_full_IsReady(XMri_full *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMri_full_EnableAutoRestart(XMri_full *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMri_full_DisableAutoRestart(XMri_full *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XMri_full_Get_return(XMri_full *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XMri_full_Set_weights(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WEIGHTS_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_weights(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WEIGHTS_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XMri_full_Set_biases(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_BIASES_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_BIASES_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_biases(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_BIASES_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_BIASES_DATA + 4) << 32;
    return Data;
}

void XMri_full_Set_shifts(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_SHIFTS_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_SHIFTS_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_shifts(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_SHIFTS_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_SHIFTS_DATA + 4) << 32;
    return Data;
}

void XMri_full_Set_layers(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_LAYERS_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_LAYERS_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_layers(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_LAYERS_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_LAYERS_DATA + 4) << 32;
    return Data;
}

void XMri_full_Set_features(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURES_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURES_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_features(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURES_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURES_DATA + 4) << 32;
    return Data;
}

void XMri_full_Set_wide(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WIDE_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WIDE_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_wide(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WIDE_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_WIDE_DATA + 4) << 32;
    return Data;
}

void XMri_full_Set_output_r(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_output_r(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XMri_full_Set_mode(XMri_full *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XMri_full_Get_mode(XMri_full *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XMri_full_Set_batch_count(XMri_full *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_BATCH_COUNT_DATA, Data);
}

u32 XMri_full_Get_batch_count(XMri_full *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_BATCH_COUNT_DATA);
    return Data;
}

void XMri_full_Set_feature_input(XMri_full *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURE_INPUT_DATA, (u32)(Data));
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURE_INPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XMri_full_Get_feature_input(XMri_full *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURE_INPUT_DATA);
    Data += (u64)XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_FEATURE_INPUT_DATA + 4) << 32;
    return Data;
}

void XMri_full_InterruptGlobalEnable(XMri_full *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_GIE, 1);
}

void XMri_full_InterruptGlobalDisable(XMri_full *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_GIE, 0);
}

void XMri_full_InterruptEnable(XMri_full *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_IER);
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_IER, Register | Mask);
}

void XMri_full_InterruptDisable(XMri_full *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_IER);
    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMri_full_InterruptClear(XMri_full *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMri_full_WriteReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_ISR, Mask);
}

u32 XMri_full_InterruptGetEnabled(XMri_full *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_IER);
}

u32 XMri_full_InterruptGetStatus(XMri_full *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMri_full_ReadReg(InstancePtr->Control_BaseAddress, XMRI_FULL_CONTROL_ADDR_ISR);
}

