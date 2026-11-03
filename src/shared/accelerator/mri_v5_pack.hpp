#pragma once
#include "mri_v5.hpp"
#include <vector>
#include <stdexcept>
// Reorder only the resident DDR copy. Frozen MRIMQV2 file stays unchanged.
inline void mri_v5_pack_weights(std::vector<int16_t>& weights,mri_v5::LayerQuant* q) {
 const int ci[]={1,16,32,64,3,64,64,64,64,64,128,64,128,128,128,256,128,256,256,256,512,256,512,512};
 const int co[]={16,32,64,64,64,64,64,64,64,128,128,128,128,128,256,256,256,256,256,512,512,512,512,512};
 std::vector<int16_t> packed(weights.size());
 for(int i=0;i<24;i++) {
  if(q[i].reserved0||q[i].reserved1)throw std::runtime_error("Expected original frozen weight layout");
  int k=i==4?7:((i==11||i==16||i==21)?1:3),kk=k*k;
  size_t base=q[i].weight_offset,n=size_t(ci[i])*co[i]*kk;
  if(base+n>weights.size())throw std::runtime_error("Weight range exceeds model");
  for(int o=0;o<co[i];o++)for(int c=0;c<ci[i];c++)for(int t=0;t<kk;t++) {
   size_t old=base+(size_t(o)*ci[i]+c)*kk+t;
   size_t dest=ci[i]<4?old:base+size_t(o)*ci[i]*kk+(size_t(c/4)*kk+t)*4+c%4;
   packed[dest]=weights[old];
  }
  q[i].reserved0=mri_v5::WEIGHT_LAYOUT;
 }
 weights.swap(packed);
}
