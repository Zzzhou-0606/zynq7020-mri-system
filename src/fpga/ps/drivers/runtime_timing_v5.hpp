#pragma once
#include <chrono>
#include <iomanip>
#include <sstream>
#include <vector>

namespace mri_runtime_v5 {
typedef std::chrono::steady_clock Clock;
inline double milliseconds(Clock::time_point start) {
    return std::chrono::duration<double, std::milli>(Clock::now() - start).count();
}
struct SliceTiming {
    int view, index;
    double preprocessing_ms, input_transfer_ms, engine_ms, output_transfer_ms, small_head_ms, preprocessing_wait_ms;
};
struct Timings {
    double model_read_ms = 0, input_preprocessing_ms = 0, engine_init_ms = 0;
    double model_upload_ms = 0, heads_ms = 0, total_ms = 0;
    unsigned model_upload_count = 0;
    bool preprocessing_overlapped = false;
    std::vector<SliceTiming> slices;
    std::string json() const {
        std::ostringstream out;
        out << std::setprecision(10)
            << "{\"clock\":\"steady_clock\",\"unit\":\"ms\",\"model_read_ms\":" << model_read_ms
            << ",\"input_preprocessing_ms\":" << input_preprocessing_ms
            << ",\"engine_init_ms\":" << engine_init_ms
            << ",\"model_upload_ms\":" << model_upload_ms
            << ",\"model_upload_count\":" << model_upload_count
            << ",\"heads_ms\":" << heads_ms << ",\"total_ms\":" << total_ms << ",\"preprocessing_overlapped\":" << (preprocessing_overlapped?"true":"false") << ",\"slices\":[";
        for (size_t i = 0; i < slices.size(); ++i) {
            const SliceTiming& value = slices[i];
            if (i) out << ',';
            out << "{\"view\":\"" << char('a' + value.view) << "\",\"index\":" << value.index
                << ",\"preprocessing_wait_ms\":" << value.preprocessing_wait_ms
                << ",\"preprocessing_ms\":" << value.preprocessing_ms
                << ",\"input_transfer_ms\":" << value.input_transfer_ms
                << ",\"engine_ms\":" << value.engine_ms
                << ",\"output_transfer_ms\":" << value.output_transfer_ms
                << ",\"small_head_ms\":" << value.small_head_ms << '}';
        }
        out << "]}";
        return out.str();
    }
};
}
