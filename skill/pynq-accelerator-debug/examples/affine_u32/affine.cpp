#include "affine.hpp"

void affine_u32_stream(hls::stream<axis_word>& x, hls::stream<axis_word>& y) {
#pragma HLS INTERFACE axis port=x
#pragma HLS INTERFACE axis port=y
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE II=1
    axis_word word = x.read();
    word.data = ap_uint<32>(word.data * 3 + 7);
    // Each beat is one complete uint32. Preserve frame boundary and byte enables.
    y.write(word);
}

void affine_u32_master(const ap_uint<32>* x, ap_uint<32>* y, unsigned n) {
#pragma HLS INTERFACE m_axi port=x offset=slave bundle=memory depth=4095
#pragma HLS INTERFACE m_axi port=y offset=slave bundle=memory depth=4095
#pragma HLS INTERFACE s_axilite port=x bundle=control
#pragma HLS INTERFACE s_axilite port=y bundle=control
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    // Software must enforce 1 <= n <= allocated element count (at most 4095 here).
    for (unsigned i = 0; i < n; ++i) {
#pragma HLS PIPELINE II=1
        y[i] = ap_uint<32>(x[i] * 3 + 7);
    }
}
