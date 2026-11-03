#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_weights_mem "../tv/cdatafile/c.mri_full.autotvin_weights_mem.dat"
#define AUTOTB_TVOUT_weights_mem "../tv/cdatafile/c.mri_full.autotvout_weights_mem.dat"
// wrapc file define:
#define AUTOTB_TVIN_feature_mem "../tv/cdatafile/c.mri_full.autotvin_feature_mem.dat"
#define AUTOTB_TVOUT_feature_mem "../tv/cdatafile/c.mri_full.autotvout_feature_mem.dat"
// wrapc file define:
#define AUTOTB_TVIN_feature_read "../tv/cdatafile/c.mri_full.autotvin_feature_read.dat"
#define AUTOTB_TVOUT_feature_read "../tv/cdatafile/c.mri_full.autotvout_feature_read.dat"
// wrapc file define:
#define AUTOTB_TVIN_weights "../tv/cdatafile/c.mri_full.autotvin_weights.dat"
#define AUTOTB_TVOUT_weights "../tv/cdatafile/c.mri_full.autotvout_weights.dat"
// wrapc file define:
#define AUTOTB_TVIN_biases "../tv/cdatafile/c.mri_full.autotvin_biases.dat"
#define AUTOTB_TVOUT_biases "../tv/cdatafile/c.mri_full.autotvout_biases.dat"
// wrapc file define:
#define AUTOTB_TVIN_shifts "../tv/cdatafile/c.mri_full.autotvin_shifts.dat"
#define AUTOTB_TVOUT_shifts "../tv/cdatafile/c.mri_full.autotvout_shifts.dat"
// wrapc file define:
#define AUTOTB_TVIN_layers "../tv/cdatafile/c.mri_full.autotvin_layers.dat"
#define AUTOTB_TVOUT_layers "../tv/cdatafile/c.mri_full.autotvout_layers.dat"
// wrapc file define:
#define AUTOTB_TVIN_features "../tv/cdatafile/c.mri_full.autotvin_features.dat"
#define AUTOTB_TVOUT_features "../tv/cdatafile/c.mri_full.autotvout_features.dat"
// wrapc file define:
#define AUTOTB_TVIN_wide "../tv/cdatafile/c.mri_full.autotvin_wide.dat"
#define AUTOTB_TVOUT_wide "../tv/cdatafile/c.mri_full.autotvout_wide.dat"
// wrapc file define:
#define AUTOTB_TVIN_output "../tv/cdatafile/c.mri_full.autotvin_output_r.dat"
#define AUTOTB_TVOUT_output "../tv/cdatafile/c.mri_full.autotvout_output_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_mode "../tv/cdatafile/c.mri_full.autotvin_mode.dat"
#define AUTOTB_TVOUT_mode "../tv/cdatafile/c.mri_full.autotvout_mode.dat"
// wrapc file define:
#define AUTOTB_TVIN_batch_count "../tv/cdatafile/c.mri_full.autotvin_batch_count.dat"
#define AUTOTB_TVOUT_batch_count "../tv/cdatafile/c.mri_full.autotvout_batch_count.dat"
// wrapc file define:
#define AUTOTB_TVIN_feature_input "../tv/cdatafile/c.mri_full.autotvin_feature_input.dat"
#define AUTOTB_TVOUT_feature_input "../tv/cdatafile/c.mri_full.autotvout_feature_input.dat"
// wrapc file define:
#define AUTOTB_TVOUT_return "../tv/cdatafile/c.mri_full.autotvout_ap_return.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_weights_mem "../tv/rtldatafile/rtl.mri_full.autotvout_weights_mem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_feature_mem "../tv/rtldatafile/rtl.mri_full.autotvout_feature_mem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_feature_read "../tv/rtldatafile/rtl.mri_full.autotvout_feature_read.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_weights "../tv/rtldatafile/rtl.mri_full.autotvout_weights.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_biases "../tv/rtldatafile/rtl.mri_full.autotvout_biases.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_shifts "../tv/rtldatafile/rtl.mri_full.autotvout_shifts.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_layers "../tv/rtldatafile/rtl.mri_full.autotvout_layers.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_features "../tv/rtldatafile/rtl.mri_full.autotvout_features.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wide "../tv/rtldatafile/rtl.mri_full.autotvout_wide.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output "../tv/rtldatafile/rtl.mri_full.autotvout_output_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_mode "../tv/rtldatafile/rtl.mri_full.autotvout_mode.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_batch_count "../tv/rtldatafile/rtl.mri_full.autotvout_batch_count.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_feature_input "../tv/rtldatafile/rtl.mri_full.autotvout_feature_input.dat"
#define AUTOTB_TVOUT_PC_return "../tv/rtldatafile/rtl.mri_full.autotvout_ap_return.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  weights_mem_depth = 0;
  feature_mem_depth = 0;
  feature_read_depth = 0;
  weights_depth = 0;
  biases_depth = 0;
  shifts_depth = 0;
  layers_depth = 0;
  features_depth = 0;
  wide_depth = 0;
  output_depth = 0;
  mode_depth = 0;
  batch_count_depth = 0;
  feature_input_depth = 0;
  return_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{weights_mem " << weights_mem_depth << "}\n";
  total_list << "{feature_mem " << feature_mem_depth << "}\n";
  total_list << "{feature_read " << feature_read_depth << "}\n";
  total_list << "{weights " << weights_depth << "}\n";
  total_list << "{biases " << biases_depth << "}\n";
  total_list << "{shifts " << shifts_depth << "}\n";
  total_list << "{layers " << layers_depth << "}\n";
  total_list << "{features " << features_depth << "}\n";
  total_list << "{wide " << wide_depth << "}\n";
  total_list << "{output_r " << output_depth << "}\n";
  total_list << "{mode " << mode_depth << "}\n";
  total_list << "{batch_count " << batch_count_depth << "}\n";
  total_list << "{feature_input " << feature_input_depth << "}\n";
  total_list << "{ap_return " << return_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int weights_mem_depth;
    int feature_mem_depth;
    int feature_read_depth;
    int weights_depth;
    int biases_depth;
    int shifts_depth;
    int layers_depth;
    int features_depth;
    int wide_depth;
    int output_depth;
    int mode_depth;
    int batch_count_depth;
    int feature_input_depth;
    int return_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" int mri_full_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, volatile void *);

extern "C" int apatb_mri_full_hw(volatile void * __xlx_apatb_param_weights, volatile void * __xlx_apatb_param_biases, volatile void * __xlx_apatb_param_shifts, volatile void * __xlx_apatb_param_layers, volatile void * __xlx_apatb_param_features, volatile void * __xlx_apatb_param_wide, volatile void * __xlx_apatb_param_output, int __xlx_apatb_param_mode, int __xlx_apatb_param_batch_count, volatile void * __xlx_apatb_param_feature_input) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
    int AESL_return;
    {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_return);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > return_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "return");
  
            // push token into output port buffer
            if (AESL_token != "") {
              return_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)&AESL_return)[0] = return_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_feature_mem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > feature_mem_pc_buffer(3613704);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "feature_mem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              feature_mem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 3211264; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_features)[j] = feature_mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 401408; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_wide)[j] = feature_mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 1032; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_output)[j] = feature_mem_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return  AESL_return;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//weights_mem
aesl_fh.touch(AUTOTB_TVIN_weights_mem);
aesl_fh.touch(AUTOTB_TVOUT_weights_mem);
//feature_mem
aesl_fh.touch(AUTOTB_TVIN_feature_mem);
aesl_fh.touch(AUTOTB_TVOUT_feature_mem);
//feature_read
aesl_fh.touch(AUTOTB_TVIN_feature_read);
aesl_fh.touch(AUTOTB_TVOUT_feature_read);
//weights
aesl_fh.touch(AUTOTB_TVIN_weights);
aesl_fh.touch(AUTOTB_TVOUT_weights);
//biases
aesl_fh.touch(AUTOTB_TVIN_biases);
aesl_fh.touch(AUTOTB_TVOUT_biases);
//shifts
aesl_fh.touch(AUTOTB_TVIN_shifts);
aesl_fh.touch(AUTOTB_TVOUT_shifts);
//layers
aesl_fh.touch(AUTOTB_TVIN_layers);
aesl_fh.touch(AUTOTB_TVOUT_layers);
//features
aesl_fh.touch(AUTOTB_TVIN_features);
aesl_fh.touch(AUTOTB_TVOUT_features);
//wide
aesl_fh.touch(AUTOTB_TVIN_wide);
aesl_fh.touch(AUTOTB_TVOUT_wide);
//output
aesl_fh.touch(AUTOTB_TVIN_output);
aesl_fh.touch(AUTOTB_TVOUT_output);
//mode
aesl_fh.touch(AUTOTB_TVIN_mode);
aesl_fh.touch(AUTOTB_TVOUT_mode);
//batch_count
aesl_fh.touch(AUTOTB_TVIN_batch_count);
aesl_fh.touch(AUTOTB_TVOUT_batch_count);
//feature_input
aesl_fh.touch(AUTOTB_TVIN_feature_input);
aesl_fh.touch(AUTOTB_TVOUT_feature_input);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_weights = 0;
unsigned __xlx_offset_byte_param_biases = 0;
unsigned __xlx_offset_byte_param_shifts = 0;
unsigned __xlx_offset_byte_param_layers = 0;
// print weights_mem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_weights_mem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_weights = 0*8;
  if (__xlx_apatb_param_weights) {
    for (int j = 0  - 0, e = 3000000 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_weights)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_weights_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_biases = 3000000*8;
  if (__xlx_apatb_param_biases) {
    for (int j = 0  - 0, e = 12288 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_biases)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_weights_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_shifts = 3012288*8;
  if (__xlx_apatb_param_shifts) {
    for (int j = 0  - 0, e = 6144 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_shifts)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_weights_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_layers = 3018432*8;
  if (__xlx_apatb_param_layers) {
    for (int j = 0  - 0, e = 96 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_layers)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_weights_mem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(3018528, &tcl_file.weights_mem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_weights_mem, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_features = 0;
unsigned __xlx_offset_byte_param_wide = 0;
unsigned __xlx_offset_byte_param_output = 0;
// print feature_mem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_mem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_features = 0*8;
  if (__xlx_apatb_param_features) {
    for (int j = 0  - 0, e = 3211264 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_features)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_feature_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_wide = 3211264*8;
  if (__xlx_apatb_param_wide) {
    for (int j = 0  - 0, e = 401408 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_wide)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_feature_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_output = 3612672*8;
  if (__xlx_apatb_param_output) {
    for (int j = 0  - 0, e = 1032 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_feature_mem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(3613704, &tcl_file.feature_mem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_mem, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_feature_input = 0;
// print feature_read Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_read, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_feature_input = 0*8;
  if (__xlx_apatb_param_feature_input) {
    for (int j = 0  - 0, e = 3211264 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_feature_input)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_feature_read, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(3211264, &tcl_file.feature_read_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_read, __xlx_sprintf_buffer.data());
}
// print weights Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_weights, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_weights;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_weights, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.weights_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_weights, __xlx_sprintf_buffer.data());
}
// print biases Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_biases, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_biases;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_biases, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.biases_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_biases, __xlx_sprintf_buffer.data());
}
// print shifts Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_shifts, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_shifts;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_shifts, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.shifts_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_shifts, __xlx_sprintf_buffer.data());
}
// print layers Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_layers, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_layers;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_layers, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.layers_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_layers, __xlx_sprintf_buffer.data());
}
// print features Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_features, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_features;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_features, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.features_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_features, __xlx_sprintf_buffer.data());
}
// print wide Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_wide, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_wide;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_wide, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.wide_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_wide, __xlx_sprintf_buffer.data());
}
// print output Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_output;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.output_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output, __xlx_sprintf_buffer.data());
}
// print mode Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mode, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_mode);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mode, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.mode_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mode, __xlx_sprintf_buffer.data());
}
// print batch_count Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_batch_count, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_batch_count);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_batch_count, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.batch_count_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_batch_count, __xlx_sprintf_buffer.data());
}
// print feature_input Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_input, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_feature_input;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_feature_input, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.feature_input_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_input, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
int ap_return = mri_full_hw_stub_wrapper(__xlx_apatb_param_weights, __xlx_apatb_param_biases, __xlx_apatb_param_shifts, __xlx_apatb_param_layers, __xlx_apatb_param_features, __xlx_apatb_param_wide, __xlx_apatb_param_output, __xlx_apatb_param_mode, __xlx_apatb_param_batch_count, __xlx_apatb_param_feature_input);
CodeState = DUMP_OUTPUTS;
// print feature_mem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_feature_mem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_features = 0*8;
  if (__xlx_apatb_param_features) {
    for (int j = 0  - 0, e = 3211264 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_features)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_feature_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_wide = 3211264*8;
  if (__xlx_apatb_param_wide) {
    for (int j = 0  - 0, e = 401408 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_wide)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_feature_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_output = 3612672*8;
  if (__xlx_apatb_param_output) {
    for (int j = 0  - 0, e = 1032 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_feature_mem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(3613704, &tcl_file.feature_mem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_feature_mem, __xlx_sprintf_buffer.data());
}
// print return Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data());
  sc_bv<32> __xlx_tmp_lv = ((int*)&ap_return)[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data()); 
  
  tcl_file.set_num(1, &tcl_file.return_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
return ap_return;
}
