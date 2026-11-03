#include <cstdint>
#include <cstring>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <vector>

static void require(bool ok,const char* message){if(!ok)throw std::runtime_error(message);}
static void read_bytes(std::ifstream& input,void* data,size_t bytes){input.read(static_cast<char*>(data),bytes);require(bool(input),"Truncated MRI input");}
int main(int argc,char**argv){try{
 require(argc==2,"Usage: mri_validate_input PATH");
 std::ifstream input(argv[1],std::ios::binary|std::ios::ate);require(bool(input),"Cannot open MRI input");
 const uint64_t expected=32+uint64_t(131)*128*128*5;
 require(uint64_t(input.tellg())==expected,"Invalid MRI input length");input.seekg(0);
 char magic[8];uint32_t header[6];read_bytes(input,magic,8);read_bytes(input,header,sizeof(header));
 const uint32_t required[6]={1,34,38,59,128,128};
 require(std::memcmp(magic,"MRIRAW1\0",8)==0&&std::memcmp(header,required,sizeof(header))==0,"Unsupported MRI input header");
 std::vector<uint32_t> values(16384);std::vector<unsigned char> mask(16384);
 for(int view=0;view<3;view++){
  const uint32_t count=required[view+1];
  for(uint32_t slice=0;slice<count;slice++){
   read_bytes(input,values.data(),values.size()*4);
   // IEEE-754 exponent 255 covers both infinities and every NaN encoding.
   for(uint32_t value:values)require((value&0x7f800000u)!=0x7f800000u,"Nonfinite MRI input");
  }
  for(uint32_t slice=0;slice<count;slice++){
   read_bytes(input,mask.data(),mask.size());unsigned any=0,invalid=0;
   for(unsigned char value:mask){any|=value;invalid|=unsigned(value>1);}
   require(invalid==0&&any!=0,"Nonbinary or empty slice mask");
  }
 }
 require(input.peek()==EOF,"Trailing MRI input bytes");
 std::cout<<"{\"valid\":true,\"bytes\":"<<expected<<"}\n";return 0;
}catch(const std::exception& error){std::cerr<<error.what()<<'\n';return 2;}}
