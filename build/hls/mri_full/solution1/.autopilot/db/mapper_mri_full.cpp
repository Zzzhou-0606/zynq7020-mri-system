#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" int mri_full(long long*, long long*, long long*, int, int, int, int, int, int, int, int, int, int);
extern "C" int apatb_mri_full_hw(volatile void * __xlx_apatb_param_weights, volatile void * __xlx_apatb_param_biases, volatile void * __xlx_apatb_param_shifts, volatile void * __xlx_apatb_param_layers, volatile void * __xlx_apatb_param_features, volatile void * __xlx_apatb_param_wide, volatile void * __xlx_apatb_param_output, int __xlx_apatb_param_mode, int __xlx_apatb_param_batch_count, volatile void * __xlx_apatb_param_feature_input) {
  // Collect __xlx_weights_biases_shifts_layers__tmp_vec
  vector<sc_bv<64> >__xlx_weights_biases_shifts_layers__tmp_vec;
  for (int j = 0, e = 3000000; j != e; ++j) {
    __xlx_weights_biases_shifts_layers__tmp_vec.push_back(((long long*)__xlx_apatb_param_weights)[j]);
  }
  int __xlx_size_param_weights = 3000000;
  int __xlx_offset_param_weights = 0;
  int __xlx_offset_byte_param_weights = 0*8;
  for (int j = 0, e = 12288; j != e; ++j) {
    __xlx_weights_biases_shifts_layers__tmp_vec.push_back(((long long*)__xlx_apatb_param_biases)[j]);
  }
  int __xlx_size_param_biases = 12288;
  int __xlx_offset_param_biases = 3000000;
  int __xlx_offset_byte_param_biases = 3000000*8;
  for (int j = 0, e = 6144; j != e; ++j) {
    __xlx_weights_biases_shifts_layers__tmp_vec.push_back(((long long*)__xlx_apatb_param_shifts)[j]);
  }
  int __xlx_size_param_shifts = 6144;
  int __xlx_offset_param_shifts = 3012288;
  int __xlx_offset_byte_param_shifts = 3012288*8;
  for (int j = 0, e = 96; j != e; ++j) {
    __xlx_weights_biases_shifts_layers__tmp_vec.push_back(((long long*)__xlx_apatb_param_layers)[j]);
  }
  int __xlx_size_param_layers = 96;
  int __xlx_offset_param_layers = 3018432;
  int __xlx_offset_byte_param_layers = 3018432*8;
  long long* __xlx_weights_biases_shifts_layers__input_buffer= new long long[__xlx_weights_biases_shifts_layers__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_biases_shifts_layers__tmp_vec.size(); ++i) {
    __xlx_weights_biases_shifts_layers__input_buffer[i] = __xlx_weights_biases_shifts_layers__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_features_wide_output__tmp_vec
  vector<sc_bv<64> >__xlx_features_wide_output__tmp_vec;
  for (int j = 0, e = 3211264; j != e; ++j) {
    __xlx_features_wide_output__tmp_vec.push_back(((long long*)__xlx_apatb_param_features)[j]);
  }
  int __xlx_size_param_features = 3211264;
  int __xlx_offset_param_features = 0;
  int __xlx_offset_byte_param_features = 0*8;
  for (int j = 0, e = 401408; j != e; ++j) {
    __xlx_features_wide_output__tmp_vec.push_back(((long long*)__xlx_apatb_param_wide)[j]);
  }
  int __xlx_size_param_wide = 401408;
  int __xlx_offset_param_wide = 3211264;
  int __xlx_offset_byte_param_wide = 3211264*8;
  for (int j = 0, e = 1032; j != e; ++j) {
    __xlx_features_wide_output__tmp_vec.push_back(((long long*)__xlx_apatb_param_output)[j]);
  }
  int __xlx_size_param_output = 1032;
  int __xlx_offset_param_output = 3612672;
  int __xlx_offset_byte_param_output = 3612672*8;
  long long* __xlx_features_wide_output__input_buffer= new long long[__xlx_features_wide_output__tmp_vec.size()];
  for (int i = 0; i < __xlx_features_wide_output__tmp_vec.size(); ++i) {
    __xlx_features_wide_output__input_buffer[i] = __xlx_features_wide_output__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_feature_input__tmp_vec
  vector<sc_bv<64> >__xlx_feature_input__tmp_vec;
  for (int j = 0, e = 3211264; j != e; ++j) {
    __xlx_feature_input__tmp_vec.push_back(((long long*)__xlx_apatb_param_feature_input)[j]);
  }
  int __xlx_size_param_feature_input = 3211264;
  int __xlx_offset_param_feature_input = 0;
  int __xlx_offset_byte_param_feature_input = 0*8;
  long long* __xlx_feature_input__input_buffer= new long long[__xlx_feature_input__tmp_vec.size()];
  for (int i = 0; i < __xlx_feature_input__tmp_vec.size(); ++i) {
    __xlx_feature_input__input_buffer[i] = __xlx_feature_input__tmp_vec[i].range(63, 0).to_uint64();
  }
  // DUT call
  int ap_return = mri_full(__xlx_weights_biases_shifts_layers__input_buffer, __xlx_features_wide_output__input_buffer, __xlx_feature_input__input_buffer, __xlx_offset_byte_param_weights, __xlx_offset_byte_param_biases, __xlx_offset_byte_param_shifts, __xlx_offset_byte_param_layers, __xlx_offset_byte_param_features, __xlx_offset_byte_param_wide, __xlx_offset_byte_param_output, __xlx_apatb_param_mode, __xlx_apatb_param_batch_count, __xlx_offset_byte_param_feature_input);
// print __xlx_apatb_param_weights
  sc_bv<64>*__xlx_weights_output_buffer = new sc_bv<64>[__xlx_size_param_weights];
  for (int i = 0; i < __xlx_size_param_weights; ++i) {
    __xlx_weights_output_buffer[i] = __xlx_weights_biases_shifts_layers__input_buffer[i+__xlx_offset_param_weights];
  }
  for (int i = 0; i < __xlx_size_param_weights; ++i) {
    ((long long*)__xlx_apatb_param_weights)[i] = __xlx_weights_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_biases
  sc_bv<64>*__xlx_biases_output_buffer = new sc_bv<64>[__xlx_size_param_biases];
  for (int i = 0; i < __xlx_size_param_biases; ++i) {
    __xlx_biases_output_buffer[i] = __xlx_weights_biases_shifts_layers__input_buffer[i+__xlx_offset_param_biases];
  }
  for (int i = 0; i < __xlx_size_param_biases; ++i) {
    ((long long*)__xlx_apatb_param_biases)[i] = __xlx_biases_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_shifts
  sc_bv<64>*__xlx_shifts_output_buffer = new sc_bv<64>[__xlx_size_param_shifts];
  for (int i = 0; i < __xlx_size_param_shifts; ++i) {
    __xlx_shifts_output_buffer[i] = __xlx_weights_biases_shifts_layers__input_buffer[i+__xlx_offset_param_shifts];
  }
  for (int i = 0; i < __xlx_size_param_shifts; ++i) {
    ((long long*)__xlx_apatb_param_shifts)[i] = __xlx_shifts_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_layers
  sc_bv<64>*__xlx_layers_output_buffer = new sc_bv<64>[__xlx_size_param_layers];
  for (int i = 0; i < __xlx_size_param_layers; ++i) {
    __xlx_layers_output_buffer[i] = __xlx_weights_biases_shifts_layers__input_buffer[i+__xlx_offset_param_layers];
  }
  for (int i = 0; i < __xlx_size_param_layers; ++i) {
    ((long long*)__xlx_apatb_param_layers)[i] = __xlx_layers_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_features
  sc_bv<64>*__xlx_features_output_buffer = new sc_bv<64>[__xlx_size_param_features];
  for (int i = 0; i < __xlx_size_param_features; ++i) {
    __xlx_features_output_buffer[i] = __xlx_features_wide_output__input_buffer[i+__xlx_offset_param_features];
  }
  for (int i = 0; i < __xlx_size_param_features; ++i) {
    ((long long*)__xlx_apatb_param_features)[i] = __xlx_features_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_wide
  sc_bv<64>*__xlx_wide_output_buffer = new sc_bv<64>[__xlx_size_param_wide];
  for (int i = 0; i < __xlx_size_param_wide; ++i) {
    __xlx_wide_output_buffer[i] = __xlx_features_wide_output__input_buffer[i+__xlx_offset_param_wide];
  }
  for (int i = 0; i < __xlx_size_param_wide; ++i) {
    ((long long*)__xlx_apatb_param_wide)[i] = __xlx_wide_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_output
  sc_bv<64>*__xlx_output_output_buffer = new sc_bv<64>[__xlx_size_param_output];
  for (int i = 0; i < __xlx_size_param_output; ++i) {
    __xlx_output_output_buffer[i] = __xlx_features_wide_output__input_buffer[i+__xlx_offset_param_output];
  }
  for (int i = 0; i < __xlx_size_param_output; ++i) {
    ((long long*)__xlx_apatb_param_output)[i] = __xlx_output_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_feature_input
  sc_bv<64>*__xlx_feature_input_output_buffer = new sc_bv<64>[__xlx_size_param_feature_input];
  for (int i = 0; i < __xlx_size_param_feature_input; ++i) {
    __xlx_feature_input_output_buffer[i] = __xlx_feature_input__input_buffer[i+__xlx_offset_param_feature_input];
  }
  for (int i = 0; i < __xlx_size_param_feature_input; ++i) {
    ((long long*)__xlx_apatb_param_feature_input)[i] = __xlx_feature_input_output_buffer[i].to_uint64();
  }
return ap_return;
}
