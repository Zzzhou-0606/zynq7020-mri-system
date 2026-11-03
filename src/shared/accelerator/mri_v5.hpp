#pragma once
#include "mri_v3.hpp"
namespace mri_v5 {
using namespace mri_v3;
static const uint32_t ABI_VERSION=5,HARDWARE_ID=0x4d524935;
static const uint32_t WEIGHT_LAYOUT=0x35434934;
}
extern "C" int mri_slice_v5(const uint64_t*,const int64_t*,const int32_t*,const uint64_t*,uint64_t*,int64_t*,int32_t*,int);
