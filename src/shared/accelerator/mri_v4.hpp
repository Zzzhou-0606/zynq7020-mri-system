#ifndef MRI_ACCELERATOR_V4_HPP
#define MRI_ACCELERATOR_V4_HPP
#include "mri_v3.hpp"
// V4 is a datapath candidate, not a new register/model ABI. Preserve MRI3
// identity and signed64 accumulation so the existing runtime remains valid.
namespace mri_v4 { using namespace mri_v3; }
extern "C" int mri_slice_v4(const uint64_t*,const int64_t*,const int32_t*,const uint64_t*,uint64_t*,int64_t*,int32_t*,int);
#endif
