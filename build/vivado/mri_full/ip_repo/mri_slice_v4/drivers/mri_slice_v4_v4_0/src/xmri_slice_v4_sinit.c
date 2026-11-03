// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmri_slice_v4.h"

extern XMri_slice_v4_Config XMri_slice_v4_ConfigTable[];

XMri_slice_v4_Config *XMri_slice_v4_LookupConfig(u16 DeviceId) {
	XMri_slice_v4_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMRI_SLICE_V4_NUM_INSTANCES; Index++) {
		if (XMri_slice_v4_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMri_slice_v4_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMri_slice_v4_Initialize(XMri_slice_v4 *InstancePtr, u16 DeviceId) {
	XMri_slice_v4_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMri_slice_v4_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMri_slice_v4_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

