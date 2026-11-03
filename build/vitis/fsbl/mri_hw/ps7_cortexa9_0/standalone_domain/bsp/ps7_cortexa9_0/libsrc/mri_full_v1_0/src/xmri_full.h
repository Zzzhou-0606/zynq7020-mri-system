// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMRI_FULL_H
#define XMRI_FULL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmri_full_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XMri_full_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMri_full;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMri_full_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMri_full_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMri_full_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMri_full_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMri_full_Initialize(XMri_full *InstancePtr, u16 DeviceId);
XMri_full_Config* XMri_full_LookupConfig(u16 DeviceId);
int XMri_full_CfgInitialize(XMri_full *InstancePtr, XMri_full_Config *ConfigPtr);
#else
int XMri_full_Initialize(XMri_full *InstancePtr, const char* InstanceName);
int XMri_full_Release(XMri_full *InstancePtr);
#endif

void XMri_full_Start(XMri_full *InstancePtr);
u32 XMri_full_IsDone(XMri_full *InstancePtr);
u32 XMri_full_IsIdle(XMri_full *InstancePtr);
u32 XMri_full_IsReady(XMri_full *InstancePtr);
void XMri_full_EnableAutoRestart(XMri_full *InstancePtr);
void XMri_full_DisableAutoRestart(XMri_full *InstancePtr);
u32 XMri_full_Get_return(XMri_full *InstancePtr);

void XMri_full_Set_weights(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_weights(XMri_full *InstancePtr);
void XMri_full_Set_biases(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_biases(XMri_full *InstancePtr);
void XMri_full_Set_shifts(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_shifts(XMri_full *InstancePtr);
void XMri_full_Set_layers(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_layers(XMri_full *InstancePtr);
void XMri_full_Set_features(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_features(XMri_full *InstancePtr);
void XMri_full_Set_wide(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_wide(XMri_full *InstancePtr);
void XMri_full_Set_output_r(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_output_r(XMri_full *InstancePtr);
void XMri_full_Set_mode(XMri_full *InstancePtr, u32 Data);
u32 XMri_full_Get_mode(XMri_full *InstancePtr);
void XMri_full_Set_batch_count(XMri_full *InstancePtr, u32 Data);
u32 XMri_full_Get_batch_count(XMri_full *InstancePtr);
void XMri_full_Set_feature_input(XMri_full *InstancePtr, u64 Data);
u64 XMri_full_Get_feature_input(XMri_full *InstancePtr);

void XMri_full_InterruptGlobalEnable(XMri_full *InstancePtr);
void XMri_full_InterruptGlobalDisable(XMri_full *InstancePtr);
void XMri_full_InterruptEnable(XMri_full *InstancePtr, u32 Mask);
void XMri_full_InterruptDisable(XMri_full *InstancePtr, u32 Mask);
void XMri_full_InterruptClear(XMri_full *InstancePtr, u32 Mask);
u32 XMri_full_InterruptGetEnabled(XMri_full *InstancePtr);
u32 XMri_full_InterruptGetStatus(XMri_full *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
