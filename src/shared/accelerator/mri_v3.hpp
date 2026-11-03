#ifndef MRI_ACCELERATOR_V3_HPP
#define MRI_ACCELERATOR_V3_HPP
#include <stdint.h>
#include "mri_v2.hpp"
namespace mri_v3 {
using mri_v2::LayerQuant;
static const uint32_t ABI_VERSION=3,HARDWARE_ID=0x4d524933;
static const uint32_t CONTROL_BASE=0x43c50000,IDENTITY_BASE=0x43c60000;
static const uint32_t REG_RETURN=0x10,REG_WEIGHTS=0x20,REG_BIASES=0x2c,REG_SHIFTS=0x38,REG_LAYERS=0x44,REG_FEATURES=0x50,REG_WIDE=0x5c,REG_OUTPUT=0x68,REG_MODE=0x74;
static const uint32_t MODE_AXIAL=0,MODE_RESNET=1,LAYER_COUNT=24,RESNET_FIRST=4;
static const uint32_t FEATURE_SLOT=802816,FEATURE_SLOTS=4,FEATURE_ELEMENTS=FEATURE_SLOT*FEATURE_SLOTS;
static const uint32_t FEATURE_WORDS=FEATURE_ELEMENTS/4,WIDE_ELEMENTS=100352,OUTPUT_ELEMENTS=512;
static const uint32_t AXIAL_INPUT_ELEMENTS=16384,RESNET_INPUT_ELEMENTS=150528;
static const uint32_t AXIAL_OUTPUT_ELEMENTS=256,RESNET_OUTPUT_ELEMENTS=512;
// Model container is unchanged MRIMQV2. weights and features are little-endian
// uint64 transfers containing four consecutive int16 in bits15:0,31:16,47:32,63:48.
// LayerQuant remains32B, exposed as four uint64 words to keep master width64.
// Descriptor offsets remain int16/int64/int32 ELEMENT offsets, not uint64 words.
// Internal features use CHW with each ROW padded to a multiple of4 int16.
// PS inputs128/224 already satisfy this: upload unchanged signed16 CHW bytes.
// Each slot starts at FEATURE_SLOT int16 elements. Internal padding is PL-owned.
// Outputs are identical signed32 sums: A256 /16, ResNet512 /49, scale2^-eout.
// No INT8 support, no topology change, same rounding and wide residual as ABI2.
}
extern "C" int mri_slice_v3(const uint64_t*,const int64_t*,const int32_t*,const uint64_t*,uint64_t*,int64_t*,int32_t*,int);
#endif
