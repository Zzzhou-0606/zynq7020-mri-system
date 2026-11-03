#include "affine.hpp"
#include <cstdint>
#include <iostream>

int main() {
    ap_uint<32> input[4095], output[4095];
    uint32_t random = 20261025u;
    const uint32_t edges[] = {0u, 1u, 0xffffffffu, 0x80000000u, 0x55555555u};
    const unsigned lengths[] = {1u, 16u, 100u, 1024u, 4095u};
    unsigned checked = 0;
    for (unsigned n : lengths) {
        hls::stream<axis_word> in, out;
        for (unsigned i = 0; i < n; ++i) {
            random = random * 1664525u + 1013904223u;
            input[i] = i < 5 ? edges[i] : random;
            axis_word word;
            word.data = input[i]; word.keep = 15; word.strb = 15;
            word.last = (i + 1 == n);
            in.write(word);
            affine_u32_stream(in, out);
            axis_word result = out.read();
            uint32_t expected = uint32_t(uint64_t(input[i].to_uint()) * 3u + 7u);
            if (result.data != expected || result.keep != 15 || result.strb != 15 ||
                    result.last != (i + 1 == n)) return 1;
        }
        affine_u32_master(input, output, n);
        for (unsigned i = 0; i < n; ++i) {
            uint32_t expected = uint32_t(uint64_t(input[i].to_uint()) * 3u + 7u);
            if (output[i] != expected) return 2;
        }
        checked += n;
    }
    std::cout << "PASS: both interfaces, 5 lengths, " << checked << " values each\n";
    return 0;
}
