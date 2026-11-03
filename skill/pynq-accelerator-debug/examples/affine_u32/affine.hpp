#pragma once
#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
typedef ap_axiu<32, 0, 0, 0> axis_word;
void affine_u32_stream(hls::stream<axis_word>& x, hls::stream<axis_word>& y);
void affine_u32_master(const ap_uint<32>* x, ap_uint<32>* y, unsigned n);
