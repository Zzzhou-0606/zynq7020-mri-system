// Packed64 ABI3 execution. Original FP32 and ABI2 runtimes remain independent.
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <map>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>
#include <future>
#include "../../../shared/accelerator/mri_v5_pack.hpp"
#include "../../../shared/accelerator/mri_v5.hpp"
#include "runtime_timing_v5.hpp"
#ifndef MRI_TARGET_CLOCK_MHZ
#define MRI_TARGET_CLOCK_MHZ 100
#endif
static_assert(MRI_TARGET_CLOCK_MHZ>=100&&MRI_TARGET_CLOCK_MHZ<=150,"Full accelerator clock outside tested build range");
#ifdef _WIN32
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#endif
#ifdef __linux__
#include <cerrno>
#include <fcntl.h>
#include <sys/file.h>
#include <sys/mman.h>
#include <unistd.h>
#endif

typedef std::vector<float> Vec;
using mri_runtime_v5::Clock;
using mri_runtime_v5::milliseconds;
static const char* CONTRACT="system-frozen-20261022-v1";
static const uint32_t ARENA_BASE=0x38000000, ARENA_BYTES=0x08000000;
static void need(bool condition,const std::string& message){if(!condition)throw std::runtime_error(message);}
static void read(std::istream& stream,void* value,size_t count){stream.read(static_cast<char*>(value),count);need(bool(stream),"Truncated input/model");}
static uint32_t u32(std::istream& stream){uint32_t value;read(stream,&value,4);return value;}
static void atomic(const std::string& path,const std::string& value){
    if(path.empty())return;
    std::ofstream stream(path+".tmp",std::ios::binary);stream<<value;stream.close();need(bool(stream),"Cannot write "+path);
#ifdef _WIN32
    need(MoveFileExA((path+".tmp").c_str(),path.c_str(),MOVEFILE_REPLACE_EXISTING|MOVEFILE_WRITE_THROUGH)!=0,"Cannot publish "+path);
#else
    need(std::rename((path+".tmp").c_str(),path.c_str())==0,"Cannot publish "+path);
#endif
}
struct Tensor{int c,h,w;Vec v;Tensor(int cc=0,int hh=0,int ww=0):c(cc),h(hh),w(ww),v(cc*hh*ww){}};
#include "../preprocessing/frozen_input.hpp"

struct QuantModel{
    uint32_t bits;
    std::vector<mri_v5::LayerQuant> layers;
    std::vector<int16_t> weights;
    std::vector<int64_t> biases;
    std::vector<int32_t> shifts;
    std::map<std::string,Vec> heads;
    std::map<std::string,std::vector<uint32_t> > shapes;
    explicit QuantModel(const std::string& path){
        std::ifstream stream(path,std::ios::binary);char magic[8];read(stream,magic,8);
        need(!std::memcmp(magic,"MRIMQV2\0",8),"Requires quantized MRIMQV2 model");
        need(u32(stream)==2&&u32(stream)==2,"Quantized model ABI mismatch");
        bits=u32(stream);need(bits==16,"Deployment requires signed16 quantization; INT8 candidates are evaluation only");
        const uint32_t count=u32(stream),nw=u32(stream),nb=u32(stream),ns=u32(stream),nh=u32(stream),length=u32(stream);
        need(count==mri_v5::LAYER_COUNT&&nw>0&&nw<12000000&&nb>0&&nb<20000&&ns==nb&&nh==16,"Invalid quantized model sizes");
        need(length>0&&length<256,"Invalid frozen contract length");
        const uint32_t epochs[]={169,12,6,2};for(int i=0;i<4;i++)need(u32(stream)==epochs[i],"Frozen checkpoint epoch mismatch");
        std::string contract(length,' ');read(stream,&contract[0],length);need(contract==CONTRACT,"Frozen model contract mismatch");
        layers.resize(count);weights.resize(nw);biases.resize(nb);shifts.resize(ns);
        read(stream,layers.data(),layers.size()*sizeof(layers[0]));
        read(stream,weights.data(),weights.size()*2);read(stream,biases.data(),biases.size()*8);read(stream,shifts.data(),shifts.size()*4);
        for(uint32_t i=0;i<nh;i++){
            uint32_t nl=u32(stream),nd=u32(stream),ne=u32(stream);
            need(nl>0&&nl<256&&nd>0&&nd<=2&&ne>0&&ne<=8192,"Invalid PS tensor header");
            std::string name(nl,' ');read(stream,&name[0],nl);uint64_t elements=1;
            std::vector<uint32_t> shape;for(uint32_t dimension=0;dimension<nd;dimension++){uint32_t size=u32(stream);need(size>0&&size<=8192,"Invalid PS tensor dimension");elements*=size;shape.push_back(size);}
            need(elements==ne,"PS tensor shape mismatch");Vec values(ne);read(stream,values.data(),ne*4);
            for(float x:values)need(std::isfinite(x),"Nonfinite PS weight");
            need(heads.emplace(name,std::move(values)).second,"Duplicate PS tensor");
            shapes.emplace(name,shape);
        }
        need(stream.peek()==EOF,"Trailing quantized model bytes");validate();mri_v5_pack_weights(weights,layers.data());
    }
    void shape(const std::string& name,std::vector<uint32_t> expected)const{
        auto item=shapes.find(name);need(item!=shapes.end()&&item->second==expected,"Wrong PS tensor dimensions "+name);
    }
    const Vec& get(const std::string& name,size_t size)const{
        auto item=heads.find(name);need(item!=heads.end()&&item->second.size()==size,"Missing/wrong PS tensor "+name);return item->second;
    }
    void validate()const{
        const int ci[]={1,16,32,64,3,64,64,64,64,64,128,64,128,128,128,256,128,256,256,256,512,256,512,512};
        const int co[]={16,32,64,64,64,64,64,64,64,128,128,128,128,128,256,256,256,256,256,512,512,512,512,512};
        const int previous[]={-1,0,1,2,-1,4,5,6,7,8,9,8,10,12,13,14,13,15,17,18,19,18,20,22};
        const int skip[]={-1,-1,-1,-1,-1,-1,4,-1,6,-1,-1,-1,-1,10,-1,-1,-1,-1,15,-1,-1,-1,-1,20};
        size_t wo=0,bo=0;
        for(size_t i=0;i<layers.size();i++){
            const mri_v5::LayerQuant& layer=layers[i];int kernel=i==4?7:((i==11||i==16||i==21)?1:3);
            size_t n=size_t(ci[i])*co[i]*kernel*kernel;
            need(layer.weight_offset==wo&&layer.bias_offset==bo&&layer.shift_offset==bo,"Noncanonical or overlapping model offsets");wo+=n;bo+=co[i];
            need(uint64_t(layer.weight_offset)+n<=weights.size()&&uint64_t(layer.bias_offset)+co[i]<=biases.size()&&uint64_t(layer.shift_offset)+co[i]<=shifts.size(),"Layer offset exceeds model arrays");
            need(layer.reserved0==0&&layer.reserved1==0,"Nonzero layer reserved words");
            need(layer.input_exp>=-31&&layer.input_exp<=31&&layer.output_exp>=-31&&layer.output_exp<=31,"Invalid activation exponent");
            need(layer.residual_shift>=-31&&layer.residual_shift<=62,"Invalid residual shift");
            if(previous[i]>=0)need(layer.input_exp==layers[previous[i]].output_exp,"Disconnected activation exponent chain");
            if(skip[i]>=0)need(layer.residual_shift==layers[skip[i]].output_exp-layer.output_exp,"Wrong identity residual exponent");
            else need(layer.residual_shift==0,"Unexpected residual exponent");
            if(i==11||i==16||i==21)need(layer.output_exp==layers[i-1].output_exp,"Projection/main output exponent mismatch");
            for(int channel=0;channel<co[i];channel++){
                int shift=shifts[layer.shift_offset+channel];need(shift>=-31&&shift<=62,"Invalid channel shift");
                uint64_t bound=0;
                for(size_t j=0;j<n/size_t(co[i]);j++)bound+=uint64_t(std::abs(int(weights[layer.weight_offset+channel*(n/co[i])+j])))*32768u;
                int64_t bias=biases[layer.bias_offset+channel];need(bias!=std::numeric_limits<int64_t>::min(),"Bias outside signed63 bound");
                uint64_t magnitude=uint64_t(bias<0?-bias:bias);
                need(bound<=(uint64_t(1)<<47)-1&&magnitude<=(uint64_t(1)<<47)-1-bound,"Accumulator exceeds signed63 calibration bound");
            }
        }
        need(wo==weights.size()&&bo==biases.size()&&bo==shifts.size(),"Unused model array elements");
        shape("a.embedding.0.weight",{32,256});shape("a.embedding.0.bias",{32});shape("a.classifier.weight",{2,32});shape("a.classifier.bias",{2});
        get("a.embedding.0.weight",32*256);get("a.embedding.0.bias",32);get("a.classifier.weight",64);get("a.classifier.bias",2);
        for(const std::string prefix:{"b","c","s"}){
            size_t size=prefix=="s"?1024:512;get(prefix+".mean",size);const Vec& sd=get(prefix+".std",size);
            shape(prefix+".mean",{uint32_t(size)});shape(prefix+".std",{uint32_t(size)});shape(prefix+".classifier.weight",{2,uint32_t(size)});shape(prefix+".classifier.bias",{2});
            for(float x:sd)need(x>0,"Nonpositive PS normalization std");
            get(prefix+".classifier.weight",size*2);get(prefix+".classifier.bias",2);
        }
    }
};

static size_t align8(size_t value){return (value+7)&~size_t(7);}
struct Layout{
    size_t layers,weights,biases,shifts,features,wide,output,bytes;
    explicit Layout(const QuantModel& model){
        layers=0;weights=align8(model.layers.size()*sizeof(mri_v5::LayerQuant));
        biases=align8(weights+model.weights.size()*2);shifts=align8(biases+model.biases.size()*8);
        features=align8(shifts+model.shifts.size()*4);wide=align8(features+mri_v5::FEATURE_ELEMENTS*2*4);
        output=align8(wide+mri_v5::WIDE_ELEMENTS*8*4);bytes=align8(output+mri_v5::OUTPUT_ELEMENTS*4*4+64);
        need(bytes<=ARENA_BYTES,"Quantized resident model/workspace exceeds reserved DDR");
    }
};
#ifdef MRI_V5_CPU_REFERENCE
extern "C" int mri_slice_v5(const uint64_t*,const int64_t*,const int32_t*,const uint64_t*,uint64_t*,int64_t*,int32_t*,int);
#endif

class SliceEngine{
    bool hardware;
    Layout layout;
    unsigned char* arena=nullptr;
    std::vector<uint64_t> software_arena;
#ifdef __linux__
    int lock=-1,fd=-1;
    volatile uint32_t* registers=nullptr;
    volatile uint32_t* identity=nullptr;
    static void clean_state(){
        int file=open("/run/mri-pl-state",O_RDONLY);if(file<0){need(errno==ENOENT,"Cannot read PL state");return;}
        char value[16]={};ssize_t count=::read(file,value,sizeof(value));close(file);
        need(count==5&&!std::memcmp(value,"idle\n",5),"Prior PL operation is not clean; hardware reset/reboot is required before reuse");
    }
    static void state(const char* value){
        int file=open("/run/mri-pl-state.writing",O_WRONLY|O_CREAT|O_TRUNC,0600);need(file>=0,"Cannot create PL state");
        size_t n=std::strlen(value),offset=0;bool ok=true;
        while(offset<n){ssize_t written=::write(file,value+offset,n-offset);if(written<0&&errno==EINTR)continue;if(written<=0){ok=false;break;}offset+=written;}
        if(ok)ok=fsync(file)==0;if(close(file)!=0)ok=false;need(ok,"Cannot persist PL state");
        need(std::rename("/run/mri-pl-state.writing","/run/mri-pl-state")==0,"Cannot publish PL state");
    }
    void pointer(uint32_t reg,size_t offset){registers[reg/4]=ARENA_BASE+uint32_t(offset);registers[reg/4+1]=0;}
#endif
public:
    uint64_t scheduler_counts[3]={0,0,0};
    SliceEngine(const QuantModel& model,bool use_hardware):hardware(use_hardware),layout(model){
        if(!hardware){
#ifdef MRI_V5_CPU_REFERENCE
            software_arena.resize((layout.bytes+7)/8);arena=reinterpret_cast<unsigned char*>(software_arena.data());return;
#else
            throw std::runtime_error("This ARM deployment binary does not contain the CPU reference kernel");
#endif
        }
#ifdef __linux__
        std::ifstream dt("/proc/device-tree/reserved-memory/mri-buffer@38000000/reg",std::ios::binary);
        unsigned char range[8]={};dt.read(reinterpret_cast<char*>(range),8);
        const unsigned char expected[]={0x38,0,0,0,8,0,0,0};need(dt.gcount()==8&&!std::memcmp(range,expected,8),"Requires exact 128MiB reserved DDR region");
        std::ifstream nomap("/proc/device-tree/reserved-memory/mri-buffer@38000000/no-map",std::ios::binary);need(nomap.good(),"Missing no-map reserved DDR property");
        lock=open("/run/mri-pl.lock",O_CREAT|O_RDWR,0600);need(lock>=0&&flock(lock,LOCK_EX|LOCK_NB)==0,"PL still owned by another task");clean_state();
        fd=open("/dev/mem",O_RDWR|O_SYNC);need(fd>=0,"Cannot map PL hardware");
        identity=static_cast<volatile uint32_t*>(mmap(nullptr,4096,PROT_READ,MAP_SHARED,fd,mri_v5::IDENTITY_BASE));
        need(identity!=MAP_FAILED&&identity[0]==0x46554c4c,"FULL read-only hardware identity mismatch; no computation started");
        registers=static_cast<volatile uint32_t*>(mmap(nullptr,4096,PROT_READ|PROT_WRITE,MAP_SHARED,fd,mri_v5::CONTROL_BASE));
        need(registers!=MAP_FAILED&&(registers[0]&4),"MRI5 accelerator is not idle");
        arena=static_cast<unsigned char*>(mmap(nullptr,ARENA_BYTES,PROT_READ|PROT_WRITE,MAP_SHARED,fd,ARENA_BASE));need(arena!=MAP_FAILED,"Cannot map reserved DDR");
#else
        throw std::runtime_error("PL backend requires Zynq Linux; no CPU fallback");
#endif
    }
    ~SliceEngine(){
#ifdef __linux__
        if(hardware){if(arena&&arena!=MAP_FAILED)munmap(arena,ARENA_BYTES);if(registers&&registers!=MAP_FAILED)munmap((void*)registers,4096);if(identity&&identity!=MAP_FAILED)munmap((void*)identity,4096);if(fd>=0)close(fd);if(lock>=0)close(lock);}
#endif
    }
    void upload(const QuantModel& model){
#ifdef __linux__
        if(hardware){need((registers[0]&4)!=0,"PL is not idle before model upload");state("busy\n");}
#endif
        std::memcpy(arena+layout.layers,model.layers.data(),model.layers.size()*sizeof(mri_v5::LayerQuant));
        std::memcpy(arena+layout.weights,model.weights.data(),model.weights.size()*2);
        std::memcpy(arena+layout.biases,model.biases.data(),model.biases.size()*8);
        std::memcpy(arena+layout.shifts,model.shifts.data(),model.shifts.size()*4);
#ifdef __linux__
        if(hardware){__sync_synchronize();pointer(mri_v5::REG_WEIGHTS,layout.weights);pointer(mri_v5::REG_BIASES,layout.biases);pointer(mri_v5::REG_SHIFTS,layout.shifts);pointer(mri_v5::REG_LAYERS,layout.layers);pointer(mri_v5::REG_FEATURES,layout.features);pointer(mri_v5::REG_WIDE,layout.wide);pointer(mri_v5::REG_OUTPUT,layout.output);__sync_synchronize();state("idle\n");}
#endif
    }
    std::vector<std::vector<int32_t> > run_batch(const std::vector<std::vector<int16_t> >& input,unsigned mode,mri_runtime_v5::SliceTiming& timing){
        need(hardware,"Integrated runtime requires PL backend");
        need(mode<=1&&!input.empty()&&input.size()<=4,"Invalid mode or batch size");
        const size_t expected=mode==0?128*128*4:224*224*4;
        auto start=Clock::now();
#ifdef __linux__
        need((registers[0]&4)!=0,"PL is not idle before batch");state("busy\n");
#endif
        for(size_t n=0;n<input.size();n++){
            need(input[n].size()==expected,"Invalid CHW4 input shape");
            std::memcpy(arena+layout.features+n*mri_v5::FEATURE_ELEMENTS*2,input[n].data(),expected*2);
        }
        timing.input_transfer_ms=milliseconds(start);start=Clock::now();int status=-1;
#ifdef __linux__
        pointer(0x88,layout.features);registers[0x7c/4]=input.size();
        __sync_synchronize();registers[mri_v5::REG_MODE/4]=mode;registers[0]=1;
        bool done=false;
        while(true){uint32_t control=registers[0];done=done||bool(control&2);if(done&&(control&4))break;
            need(milliseconds(start)<30000,"PL batch timeout; reset required");usleep(100);}
        __sync_synchronize();status=static_cast<int32_t>(registers[mri_v5::REG_RETURN/4]);
#endif
        timing.engine_ms=milliseconds(start);need(status==0,"Full accelerator rejected batch, status="+std::to_string(status));
        // Existing hardware counters count scheduler iterations, not wall cycles.
        uint32_t stats[6];std::memcpy(stats,arena+layout.output+2048*4,sizeof(stats));
        for(int j=0;j<3;j++)scheduler_counts[j]=uint64_t(stats[2*j])|(uint64_t(stats[2*j+1])<<32);
        start=Clock::now();std::vector<std::vector<int32_t> > output(input.size());
        for(size_t n=0;n<input.size();n++){
            output[n].resize(mode==0?mri_v5::AXIAL_OUTPUT_ELEMENTS:mri_v5::RESNET_OUTPUT_ELEMENTS);
            std::memcpy(output[n].data(),arena+layout.output+n*mri_v5::OUTPUT_ELEMENTS*4,output[n].size()*4);
        }
#ifdef __linux__
        state("idle\n");
#endif
        timing.output_transfer_ms=milliseconds(start);return output;
    }
    size_t resident_bytes()const{return layout.bytes;}
};

static Vec linear(const Vec& input,const Vec& weights,const Vec& bias){need(weights.size()==input.size()*bias.size(),"PS linear dimensions");Vec result=bias;for(size_t o=0;o<result.size();o++)for(size_t i=0;i<input.size();i++)result[o]+=weights[o*input.size()+i]*input[i];return result;}
static float probability(const Vec& logits){need(logits.size()==2&&std::isfinite(logits[0])&&std::isfinite(logits[1]),"Invalid PS logits");return 1.f/(1.f+std::exp(logits[0]-logits[1]));}
static float head(const QuantModel& model,const std::string& name,Vec input){const Vec& mean=model.get(name+".mean",input.size()),&sd=model.get(name+".std",input.size());for(size_t i=0;i<input.size();i++)input[i]=(input[i]-mean[i])/sd[i];return probability(linear(input,model.get(name+".classifier.weight",input.size()*2),model.get(name+".classifier.bias",2)));}
static std::vector<int16_t> quantize(const Vec& input,int exponent,uint64_t& saturations){std::vector<int16_t> result(input.size());for(size_t i=0;i<input.size();i++){double value=std::round(std::ldexp(double(input[i]),exponent));need(std::isfinite(value),"Nonfinite quantized input");if(value<-32768||value>32767)++saturations;result[i]=int16_t(std::max(-32768.,std::min(32767.,value)));}return result;}
template<class T> static void dump(const std::string& path,const std::vector<T>& data){std::ofstream f(path,std::ios::binary);f.write(reinterpret_cast<const char*>(data.data()),data.size()*sizeof(T));f.close();need(bool(f),"Cannot write probe data "+path);}
static void progress(const std::string& path,int view,int done,int count){atomic(path,"{\"stage\":\"infer_"+std::string(1,char('a'+view))+"\",\"completed\":"+std::to_string(done)+",\"total\":"+std::to_string(count)+"}");}

int main(int argc,char** argv){try{
    auto beginning=Clock::now();std::map<std::string,std::string> args;
    for(int i=1;i<argc;i+=2){need(i+1<argc,"Each option requires a value");args[argv[i]]=argv[i+1];}
    if(args.count("--validate-model")){QuantModel model(args["--validate-model"]);std::cout<<"Validated MRIMQV2 ABI2 bits="<<model.bits<<" layers="<<model.layers.size()<<" resident_bytes="<<Layout(model).bytes<<" target_clock_mhz="<<MRI_TARGET_CLOCK_MHZ<<std::endl;return 0;}
    need(args.count("--input")&&args.count("--model"),"--input --model required");
    mri_runtime_v5::Timings timings;auto start=Clock::now();Input input(args["--input"]);timings.input_preprocessing_ms=milliseconds(start);
    start=Clock::now();QuantModel model(args["--model"]);timings.model_read_ms=milliseconds(start);
    if(args.count("--preprocess-only")){
        uint64_t saturations=0;std::ostringstream meta;meta<<"{\"preprocess_only\":true,\"dtype\":\"little-endian-int16\",\"layout\":\"NCHW\",\"views\":[";
        for(int v=0;v<3;v++){input.wait(v);std::vector<int16_t> all;int e=model.layers[v==0?0:4].input_exp;for(int n=0;n<input.counts[v];n++){std::vector<int16_t> q=quantize(slice(input.views[v],n,v!=0).v,e,saturations);all.insert(all.end(),q.begin(),q.end());}dump(args["--preprocess-only"]+"_"+char('a'+v)+"_i16.bin",all);if(v)meta<<',';meta<<"{\"view\":\""<<char('a'+v)<<"\",\"count\":"<<input.counts[v]<<",\"channels\":"<<(v?3:1)<<",\"height\":"<<(v?224:128)<<",\"width\":"<<(v?224:128)<<",\"exponent\":"<<e<<'}';}
        meta<<"],\"input_saturations\":"<<saturations<<",\"elapsed_ms\":"<<milliseconds(beginning)<<'}';atomic(args["--preprocess-only"]+"_metadata.json",meta.str());std::cout<<meta.str()<<std::endl;return 0;
    }
    need(args.count("--result")&&args.count("--backend"),"--result --backend required for inference");
    bool hardware=args["--backend"]=="pl";need(hardware||args["--backend"]=="cpu","Backend must explicitly be pl or cpu");
    if(args.count("--probe-view")){need(args["--probe-view"].size()==1&&args["--probe-view"]>="a"&&args["--probe-view"]<="c"&&args.count("--probe-index")&&args.count("--probe-output"),"Probe requires view a/b/c, index and output");int v=args["--probe-view"][0]-'a',n=std::stoi(args["--probe-index"]);need(n>=0&&n<input.counts[v],"Probe slice index outside view");}
    start=Clock::now();SliceEngine engine(model,hardware);timings.engine_init_ms=milliseconds(start);
    start=Clock::now();engine.upload(model);timings.model_upload_ms=milliseconds(start);timings.model_upload_count=1;
    struct Prepared {std::vector<std::vector<int16_t> > images;std::vector<double> times;uint64_t saturations=0;};
    struct Request {int view,first,count;};std::vector<Request> requests;
    for(int view=0;view<3;view++)for(int n=0;n<input.counts[view];){
        if(args.count("--probe-view")){
            if(args["--probe-view"]!=std::string(1,char('a'+view))){break;}
            requests.push_back({view,std::stoi(args["--probe-index"]),1});break;
        }
        int count=std::min(4,input.counts[view]-n);requests.push_back({view,n,count});n+=count;
    }
    auto prepare=[&](Request request){
        Prepared result;input.wait(request.view);
        for(int n=0;n<request.count;n++){
            auto t=Clock::now();Tensor image=slice(input.views[request.view],request.first+n,request.view!=0);
            auto q=quantize(image.v,model.layers[request.view==0?0:4].input_exp,result.saturations);
            size_t spatial=size_t(image.h)*image.w;std::vector<int16_t> packed(spatial*4,0);
            for(int c=0;c<image.c;c++)for(size_t x=0;x<spatial;x++)packed[x*4+c]=q[size_t(c)*spatial+x];
            result.images.push_back(std::move(packed));result.times.push_back(milliseconds(t));
        }
        return result;
    };
    need(!requests.empty(),"No selected batches");
    std::future<Prepared> pending=std::async(std::launch::async,prepare,requests[0]);
    timings.preprocessing_overlapped=true;
    Vec means[3]={Vec(32,0),Vec(512,0),Vec(512,0)};uint64_t saturations=0;unsigned calls=0,engine_calls=0;
    std::ostringstream batches;batches<<std::setprecision(10)<<'[';
    std::vector<int32_t> captured[3];
    for(size_t request=0;request<requests.size();request++){
        Request selected=requests[request];int view=selected.view,last=view==0?3:23;
        progress(args["--progress"],view,selected.first,input.counts[view]);
        mri_runtime_v5::SliceTiming timing={view,selected.first,0,0,0,0,0,0};
        start=Clock::now();Prepared prepared=pending.get();timing.preprocessing_wait_ms=milliseconds(start);
        saturations+=prepared.saturations;
        if(request+1<requests.size())pending=std::async(std::launch::async,prepare,requests[request+1]);
        auto outputs=engine.run_batch(prepared.images,view==0?0:1,timing);++engine_calls;
        if(request)batches<<',';
        batches<<"{\"view\":\""<<char('a'+view)<<"\",\"first\":"<<selected.first<<",\"count\":"<<selected.count
               <<",\"preprocessing_wait_ms\":"<<timing.preprocessing_wait_ms<<",\"input_transfer_ms\":"<<timing.input_transfer_ms
               <<",\"engine_ms\":"<<timing.engine_ms<<",\"output_transfer_ms\":"<<timing.output_transfer_ms
               <<",\"scheduler_iterations\":"<<engine.scheduler_counts[0]<<",\"mac_issue_iterations\":"<<engine.scheduler_counts[1]<<",\"input_wait_iterations\":"<<engine.scheduler_counts[2]<<'}';
        for(int n=0;n<selected.count;n++){
            auto& encoded_feature=outputs[n];
            if(args.count("--dump-features"))captured[view].insert(captured[view].end(),encoded_feature.begin(),encoded_feature.end());
            start=Clock::now();Vec feature(encoded_feature.size());for(size_t j=0;j<feature.size();j++)feature[j]=std::ldexp(float(encoded_feature[j])/(view==0?16.f:49.f),-model.layers[last].output_exp);
            if(view==0){feature=linear(feature,model.get("a.embedding.0.weight",8192),model.get("a.embedding.0.bias",32));for(float& value:feature)value=std::max(0.f,value);}
            for(float value:feature)need(std::isfinite(value),"Nonfinite slice features");
            mri_runtime_v5::SliceTiming individual=timing;individual.index=selected.first+n;individual.preprocessing_ms=prepared.times[n];
            individual.input_transfer_ms/=selected.count;individual.engine_ms/=selected.count;individual.output_transfer_ms/=selected.count;individual.preprocessing_wait_ms/=selected.count;
            individual.small_head_ms=milliseconds(start);timings.slices.push_back(individual);++calls;
            if(args.count("--probe-view")){
                dump(args["--probe-output"],feature);timings.total_ms=milliseconds(beginning);
                atomic(args["--result"],"{\"probe_only\":true,\"execution_backend\":\"pl\",\"timings\":"+timings.json()+"}");return 0;
            }
            for(size_t j=0;j<feature.size();j++)means[view][j]+=feature[j]/input.counts[view];
        }
        progress(args["--progress"],view,selected.first+selected.count,input.counts[view]);
    }
    batches<<']';
    if(args.count("--dump-features"))for(int v=0;v<3;v++)dump(args["--dump-features"]+"_"+char('a'+v)+"_i32.bin",captured[v]);
    start=Clock::now();float pa=probability(linear(means[0],model.get("a.classifier.weight",64),model.get("a.classifier.bias",2))),pb=head(model,"b",means[1]),pc=head(model,"c",means[2]);
    double pd=.427*pa+.300*pb+.273*pc;bool positive=pd>=.5,severity_ok=true;float ps=0;int category=0;
    if(positive){try{Vec combined=means[1];combined.insert(combined.end(),means[2].begin(),means[2].end());ps=head(model,"s",combined);category=ps>=.5?2:1;}catch(const std::exception& error){severity_ok=false;std::cerr<<"Severity incomplete: "<<error.what()<<std::endl;}}
    timings.heads_ms=milliseconds(start);timings.total_ms=milliseconds(beginning);
    std::ostringstream out;out<<std::setprecision(10)<<"{\"execution_backend\":\""<<(hardware?"pl":"ps_cpu_reference")<<"\",\"model_version\":\""<<CONTRACT<<"\",\"accelerator_version\":6,\"accelerator_name\":\"FULL\",\"quantization_version\":\"frozen-int16-20261024-v2\",\"precision\":\"int"<<model.bits<<"\",\"target_clock_mhz\":"<<MRI_TARGET_CLOCK_MHZ<<",\"probabilities_abc\":["<<pa<<','<<pb<<','<<pc<<"],\"probability_positive\":"<<pd<<",\"score\":"<<100*pd<<",\"prediction\":"<<int(positive)<<",\"class_id\":"<<(severity_ok?std::to_string(category):"null")<<",\"severity_probability\":";
    if(positive&&severity_ok)out<<ps;else out<<"null";
    out<<",\"runtime_variant\":\"overlap-v1\",\"normalization_streamed\":true,\"normalization_views_ms\":["<<input.view_ms[0]<<','<<input.view_ms[1]<<','<<input.view_ms[2]<<"],\"input_preprocessing_scope\":\"input header check and producer launch only; normalization_views_ms is overlapped background work\",\"severity_status\":\""<<(positive?(severity_ok?"complete":"incomplete"):"not_applicable")<<"\",\"severity_error\":"<<(severity_ok?"null":"\"severity_head_failed\"")<<",\"batch_size\":4,\"engine_calls\":"<<engine_calls<<",\"batch_timings\":"<<batches.str()<<",\"slice_timing_scope\":\"batch engine/copy/wait times amortized across its slices; batch_timings contains measured batch durations\",\"slice_calls\":"<<calls<<",\"input_saturations\":"<<saturations<<",\"resident_ddr_bytes\":"<<engine.resident_bytes()<<",\"timings\":"<<timings.json()<<'}';
    atomic(args["--result"],out.str());atomic(args["--progress"],"{\"stage\":\"complete\",\"completed\":131,\"total\":131,\"percent\":100}");std::cout<<out.str()<<std::endl;return 0;
}catch(const std::exception& error){std::cerr<<"MRI v5 inference failed: "<<error.what()<<std::endl;return 1;}}
