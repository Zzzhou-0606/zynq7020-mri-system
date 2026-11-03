// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmri_full.h"

extern XMri_full_Config XMri_full_ConfigTable[];

XMri_full_Config *XMri_full_LookupConfig(u16 DeviceId) {
	XMri_full_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMRI_FULL_NUM_INSTANCES; Index++) {
		if (XMri_full_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMri_full_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMri_full_Initialize(XMri_full *InstancePtr, u16 DeviceId) {
	XMri_full_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMri_full_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMri_full_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

