// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMRI_SLICE_V5_H
#define XMRI_SLICE_V5_H

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
#include "xmri_slice_v5_hw.h"

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
} XMri_slice_v5_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMri_slice_v5;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMri_slice_v5_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMri_slice_v5_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMri_slice_v5_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMri_slice_v5_ReadReg(BaseAddress, RegOffset) \
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
int XMri_slice_v5_Initialize(XMri_slice_v5 *InstancePtr, u16 DeviceId);
XMri_slice_v5_Config* XMri_slice_v5_LookupConfig(u16 DeviceId);
int XMri_slice_v5_CfgInitialize(XMri_slice_v5 *InstancePtr, XMri_slice_v5_Config *ConfigPtr);
#else
int XMri_slice_v5_Initialize(XMri_slice_v5 *InstancePtr, const char* InstanceName);
int XMri_slice_v5_Release(XMri_slice_v5 *InstancePtr);
#endif

void XMri_slice_v5_Start(XMri_slice_v5 *InstancePtr);
u32 XMri_slice_v5_IsDone(XMri_slice_v5 *InstancePtr);
u32 XMri_slice_v5_IsIdle(XMri_slice_v5 *InstancePtr);
u32 XMri_slice_v5_IsReady(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_EnableAutoRestart(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_DisableAutoRestart(XMri_slice_v5 *InstancePtr);
u32 XMri_slice_v5_Get_return(XMri_slice_v5 *InstancePtr);

void XMri_slice_v5_Set_weights(XMri_slice_v5 *InstancePtr, u64 Data);
u64 XMri_slice_v5_Get_weights(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_Set_biases(XMri_slice_v5 *InstancePtr, u64 Data);
u64 XMri_slice_v5_Get_biases(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_Set_shifts(XMri_slice_v5 *InstancePtr, u64 Data);
u64 XMri_slice_v5_Get_shifts(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_Set_layers(XMri_slice_v5 *InstancePtr, u64 Data);
u64 XMri_slice_v5_Get_layers(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_Set_features(XMri_slice_v5 *InstancePtr, u64 Data);
u64 XMri_slice_v5_Get_features(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_Set_wide(XMri_slice_v5 *InstancePtr, u64 Data);
u64 XMri_slice_v5_Get_wide(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_Set_output_r(XMri_slice_v5 *InstancePtr, u64 Data);
u64 XMri_slice_v5_Get_output_r(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_Set_mode(XMri_slice_v5 *InstancePtr, u32 Data);
u32 XMri_slice_v5_Get_mode(XMri_slice_v5 *InstancePtr);

void XMri_slice_v5_InterruptGlobalEnable(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_InterruptGlobalDisable(XMri_slice_v5 *InstancePtr);
void XMri_slice_v5_InterruptEnable(XMri_slice_v5 *InstancePtr, u32 Mask);
void XMri_slice_v5_InterruptDisable(XMri_slice_v5 *InstancePtr, u32 Mask);
void XMri_slice_v5_InterruptClear(XMri_slice_v5 *InstancePtr, u32 Mask);
u32 XMri_slice_v5_InterruptGetEnabled(XMri_slice_v5 *InstancePtr);
u32 XMri_slice_v5_InterruptGetStatus(XMri_slice_v5 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
