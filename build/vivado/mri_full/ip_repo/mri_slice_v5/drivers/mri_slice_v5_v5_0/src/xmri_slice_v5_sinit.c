// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmri_slice_v5.h"

extern XMri_slice_v5_Config XMri_slice_v5_ConfigTable[];

XMri_slice_v5_Config *XMri_slice_v5_LookupConfig(u16 DeviceId) {
	XMri_slice_v5_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMRI_SLICE_V5_NUM_INSTANCES; Index++) {
		if (XMri_slice_v5_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMri_slice_v5_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMri_slice_v5_Initialize(XMri_slice_v5 *InstancePtr, u16 DeviceId) {
	XMri_slice_v5_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMri_slice_v5_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMri_slice_v5_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

