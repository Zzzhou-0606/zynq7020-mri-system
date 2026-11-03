#ifndef MRI_ACCELERATOR_V2_HPP
#define MRI_ACCELERATOR_V2_HPP
#include <stdint.h>
namespace mri_v2 {
// Wire ABI: little endian; all arrays naturally aligned (bias/wide require8B).
static const uint32_t ABI_VERSION=2, HARDWARE_ID=0x4d524932;
static const uint32_t CONTROL_BASE=0x43c50000, IDENTITY_BASE=0x43c60000;
// Identity is a separate read-only AXI GPIO input tied to HARDWARE_ID in BD.
// Never start an unidentified accelerator to discover its identity.
static const uint32_t REG_RETURN=0x10, REG_WEIGHTS=0x20, REG_BIASES=0x2c;
static const uint32_t REG_SHIFTS=0x38, REG_LAYERS=0x44, REG_FEATURES=0x50;
static const uint32_t REG_WIDE=0x5c, REG_OUTPUT=0x68, REG_MODE=0x74;
static const uint32_t MODE_AXIAL=0, MODE_RESNET=1;
static const uint32_t LAYER_COUNT=24, RESNET_FIRST=4;
static const uint32_t FEATURE_SLOT=802816, FEATURE_SLOTS=4;
static const uint32_t FEATURE_ELEMENTS=FEATURE_SLOT*FEATURE_SLOTS;
static const uint32_t WIDE_ELEMENTS=100352, OUTPUT_ELEMENTS=512;
static const uint32_t AXIAL_INPUT_ELEMENTS=16384, RESNET_INPUT_ELEMENTS=150528;
static const uint32_t AXIAL_OUTPUT_ELEMENTS=256, RESNET_OUTPUT_ELEMENTS=512;
// Load CHW signed16 input into feature slot0. Hardware owns all other slots.
// Output is signed32 SUM, not rounded mean: A HWC2x2x64 sums16 pixels;
// ResNet CHW512 sums49 pixels. PS divides by16/49 and2^last_output_exp.
struct LayerQuant {
 uint32_t weight_offset; // element offsets in int16 weights OIHW
 uint32_t bias_offset;   // element offsets in int64 biases, one per OC
 uint32_t shift_offset;  // element offsets in int32 shifts, one per OC
 int32_t residual_shift;// e_skip-e_out; positive right shift, negative left
 int32_t input_exp;
 int32_t output_exp;
 uint32_t reserved0;
 uint32_t reserved1;
};
// Records0..3: a.features.{0,3,6,9}; records4..23 ordered below.
// r.conv1, layer1.0.conv1,conv2, layer1.1.conv1,conv2,
// layer2.0.conv1,conv2,downsample.0, layer2.1.conv1,conv2,
// layer3.0.conv1,conv2,downsample.0, layer3.1.conv1,conv2,
// layer4.0.conv1,conv2,downsample.0, layer4.1.conv1,conv2.
// BN folded into weights+bias. q=round_away(x*2^e), clamp[-32768,32767].
// bias=round_away(b*2^(ein+ew)); shift=ein+ew-eout.
// Requant right shifts use symmetric nearest/ties-away, left shifts exact;
// shift bounds[-31,62]. Calibrator must bound accum+bias within signed63.
// Main branch conv2 and projection are held wide through residual addition;
// only after addition does ReLU+saturate16 occur. Projection exp MUST equal
// block conv2 exp, and its residual_shift must be0 (unused).
// Status return0 success; negative = invalid mode/metadata. No silent fallback.
}
static_assert(sizeof(mri_v2::LayerQuant)==32,"MRI v2 layer wire ABI");
extern "C" int mri_slice_v2(const int16_t*,const int64_t*,const int32_t*,
 const mri_v2::LayerQuant*,int16_t*,int64_t*,int32_t*,int);
#endif
