// One producer publishes whole normalized views in order. Consumers wait only
// for the requested view; later normalization overlaps model upload and PL work.
#include <chrono>
#include <condition_variable>
#include <exception>
#include <mutex>
#include <thread>

struct Input {
 Vec views[3];int counts[3]={34,38,59};double view_ms[3]={0,0,0};
 std::mutex mutex;std::condition_variable changed;bool ready[3]={false,false,false};
 std::exception_ptr failure;std::thread producer;
 explicit Input(const std::string& path){
  std::ifstream input(path,std::ios::binary|std::ios::ate);
  need(bool(input)&&input.tellg()==std::streamoff(32+131*128*128*5),"Invalid MRI input length");input.seekg(0);
  char magic[8];read(input,magic,8);need(!std::memcmp(magic,"MRIRAW1\0",8)&&u32(input)==1,"Invalid input header");
  for(int i=0;i<3;i++)need(u32(input)==uint32_t(counts[i]),"Wrong slice count");
  need(u32(input)==128&&u32(input)==128,"Wrong input shape");
  producer=std::thread([this,path]{try{
   std::ifstream stream(path,std::ios::binary);need(bool(stream),"Cannot open input producer");stream.seekg(32);
   for(int view=0;view<3;view++){
    auto start=std::chrono::steady_clock::now();size_t n=size_t(counts[view])*16384;
    Vec raw(n),valid;std::vector<unsigned char> mask(n);read(stream,raw.data(),n*4);read(stream,mask.data(),n);
    for(size_t i=0;i<n;i++){need(std::isfinite(raw[i])&&mask[i]<2,"Invalid raw/mask");if(mask[i])valid.push_back(raw[i]);}
    need(!valid.empty(),"Empty mask");
    for(int slice=0;slice<counts[view];slice++){
     bool present=false;for(int x=0;x<16384;x++)present=present||mask[size_t(slice)*16384+x];need(present,"Empty slice mask");
    }
    auto percentile=[&](double q){double index=(valid.size()-1)*q;size_t lo=size_t(index),hi=std::min(lo+1,valid.size()-1);
     std::nth_element(valid.begin(),valid.begin()+lo,valid.end());double lower=valid[lo];
     if(hi!=lo)std::nth_element(valid.begin(),valid.begin()+hi,valid.end());
     return lower+(double(valid[hi])-lower)*(index-lo);};
    double scale=view==0?.125:.25,dl=std::nearbyint(percentile(.01)/scale),dh=std::nearbyint(percentile(.99)/scale);
    need(dl>=-32768&&dh<=32767&&dh>dl,"Invalid percentile bounds");int low=int(dl),high=int(dh);
    need(low>=-32768&&high<=32767&&high>low,"Invalid percentile bounds");
    int64_t mult=int64_t(std::nearbyint(255.*65536/(high-low)));views[view].resize(n);
    for(size_t i=0;i<n;i++){
     double encoded=mask[i]?std::nearbyint(double(raw[i])/scale):low;need(encoded>=-32768&&encoded<=32767,"Input encoding overflow");
     int difference=std::max(0,std::min(high-low,int(encoded)-low));
     views[view][i]=float(std::min<int64_t>(255,(difference*mult+32768)>>16))/256.f;
    }
    if(view==2)need(stream.peek()==EOF,"Trailing input bytes");
    double elapsed=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-start).count();
    {std::lock_guard<std::mutex> guard(mutex);view_ms[view]=elapsed;ready[view]=true;}
    changed.notify_all();
   }
  }catch(...){
   {std::lock_guard<std::mutex> guard(mutex);failure=std::current_exception();}changed.notify_all();
  }});
 }
 void wait(int view){std::unique_lock<std::mutex> guard(mutex);changed.wait(guard,[&]{return ready[view]||failure;});if(failure)std::rethrow_exception(failure);}
 ~Input(){if(producer.joinable())producer.join();}
};
