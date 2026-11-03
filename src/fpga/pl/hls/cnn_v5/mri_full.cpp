#include "../../../../shared/accelerator/mri_v5.hpp"
#include <stdint.h>
#ifdef __SYNTHESIS__
#include <ap_int.h>
#include <hls_stream.h>
typedef ap_int<48> accum_t;
#else
#include <queue>
#include <stdexcept>
// The frozen-weight absolute-sum bound fits 41 signed bits for any INT16 input.
// Native checking uses the same arithmetic in int64; synthesized state is 48-bit.
typedef int64_t accum_t;
namespace hls { template<class T> class stream {
 std::queue<T> q;
 public: stream(const char*){} void write(T v){q.push(v);}
 bool read_nb(T&v){if(q.empty())return false;v=q.front();q.pop();return true;}
 T read(){if(q.empty())throw std::runtime_error("stream underflow");T v=q.front();q.pop();return v;}
}; }
#endif
struct Result4 {accum_t a,b,c,d;};
using namespace mri_v5;
namespace {
// Two output rows reduce strip storage; four spatial lanes share each weight.
const int OC=8,IC=4,SP=4,ROWS=2,COLS=128,PH=9,PW=224,WT=1152;
typedef int16_t WeightBank[OC][IC][WT];
// Two physically separate ping-pong banks; each replica serves two read ports.
// Replicate only the small input strip. Each copy serves two spatial lanes,
// avoiding HLS's conservative four-read conflict for a runtime stride value.
typedef int16_t Strip[2][IC][PH][PW];
typedef accum_t Acc[OC][ROWS][COLS];
static int16_t lane(uint64_t x,int i){
#pragma HLS INLINE
 return int16_t(uint16_t(x>>(i*16)));
}
static int64_t requant(int64_t x,int shift){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1
 const int64_t lim=(int64_t(1)<<60)-1;
 if(shift>0){uint64_t mag=x<0?uint64_t(-(x+1))+1:uint64_t(x);uint64_t q=(mag+(uint64_t(1)<<(shift-1)))>>shift;return x<0?-int64_t(q):int64_t(q);}
 if(shift<0){int n=-shift;if(x>(lim>>n))return lim;if(x<-(lim>>n))return -lim;return x*(int64_t(1)<<n);}
 return x>lim?lim:x<-lim?-lim:x;
}
static int16_t sat(int64_t x,bool relu){
#pragma HLS INLINE
 if(relu&&x<0)x=0;return x>32767?32767:x<-32768?-32768:int16_t(x);
}
// Only this straight-line contiguous loop touches AXI; scatter/conditions are local.
static void load_weights(const uint64_t*w,uint32_t base,uint16_t ob,uint16_t ci,uint16_t co,uint16_t k,bool enabled,WeightBank&bank){
#pragma HLS INLINE off
 if(!enabled)return;uint16_t kk=k*k,n=ci*kk;
 for(uint16_t o=0;o<OC;o++){
  uint32_t first=base+uint32_t(ob+o)*n;
  if(ci>=IC){
   // IC4-interleaved DDR: one burst word feeds four independent banks.
   for(uint16_t j=0;j<n/IC;j++){
#pragma HLS PIPELINE II=1
    uint64_t word=w[(first>>2)+j];
    for(uint16_t c=0;c<IC;c++){
#pragma HLS UNROLL
     bank[o][c][j]=lane(word,c);
    }
   }
  }else{
   // The two input stems have only 1/3 channels and retain OIHW layout.
   uint64_t raw[38];uint16_t mis=first&3,count=(mis+n+3)/4;
   for(uint16_t j=0;j<count;j++){
#pragma HLS PIPELINE II=1
    raw[j]=w[(first>>2)+j];
   }
   for(uint16_t c=0;c<ci;c++)for(uint16_t t=0;t<kk;t++){
#pragma HLS PIPELINE II=1
    uint16_t j=mis+c*kk+t;bank[o][c][t]=lane(raw[j>>2],j&3);
   }
  }
 }
}
// Frozen package: convolution shifts are 14..24; residual shifts are 0..2.
// Specialize these two datapaths instead of replicating eight general 64-bit shifters.
static int64_t requant_conv(accum_t x,int shift){
#pragma HLS INLINE
 accum_t mag=x<0?accum_t(-x):x;
 accum_t q=(mag+(accum_t(1)<<(shift-1)))>>shift;
 return int64_t(x<0?accum_t(-q):q);
}
static int64_t requant_skip(int16_t x,int shift){
#pragma HLS INLINE
 int32_t mag=x<0?-int32_t(x):int32_t(x);
 int32_t q=shift==0?mag:shift==1?(mag+1)>>1:(mag+2)>>2;
 return x<0?-q:q;
}
// CHW4: one DDR word contains four channels at one spatial position.
// All sample/slot offsets retain their original INT16-element units.
// Separate burst reader and row assembler: DDR prefetch overlaps forwarding.
static void read_fresh(const uint64_t* f,uint32_t input,uint16_t ci,uint16_t h,
 uint16_t rw,uint16_t ph,uint16_t keep,uint16_t stride,uint16_t pad,uint16_t oh,
 hls::stream<uint64_t>& fresh_words){
#pragma HLS INLINE off
 for(uint16_t yb=0;yb<oh;yb+=ROWS){
  int16_t y0=yb*stride-pad,begin=y0<0?0:y0,end=y0+ph>h?h:y0+ph;
  int16_t fresh=yb&&keep?((y0+keep)>begin?y0+keep:begin):begin;
  if(fresh>end)fresh=end;
  for(uint16_t cb=0;cb<ci;cb+=IC){
   uint32_t first=(input>>2)+(uint32_t(cb/IC)*h+fresh)*rw;
   uint16_t count=(end-fresh)*rw;
   // Keep the DDR loop unconditional and contiguous for burst inference.
   for(uint16_t j=0;j<count;j++){
#pragma HLS PIPELINE II=1
    fresh_words.write(f[first+j]);
   }
  }
 }
}
static void assemble_rows(hls::stream<uint64_t>& fresh_words,
 hls::stream<uint64_t>& pixels,uint16_t ci,uint16_t h,uint16_t rw,
 uint16_t ph,uint16_t keep,uint16_t stride,uint16_t pad,uint16_t oh){
#pragma HLS INLINE off
 uint64_t overlap[2048];
#pragma HLS BIND_STORAGE variable=overlap type=ram_t2p impl=bram
 // Only cb/y/x is pipelined; the yb loop drains between strips. Within it,
 // writes target rows already read, never future reads (no inter RAW).
 // A same-address overwrite trails its read by (ph-keep)*rw >= 8 words:
 // ph-keep=2*stride, rw>=4 for every supported nonempty layer.
#pragma HLS DEPENDENCE variable=overlap inter RAW false
#pragma HLS DEPENDENCE variable=overlap inter WAR true distance=8
 for(uint16_t yb=0;yb<oh;yb+=ROWS){
  int16_t y0=yb*stride-pad;
  for(uint16_t cb=0;cb<ci;cb+=IC){
   uint32_t saved=uint32_t(cb/IC)*keep*rw;
   for(uint16_t y=0;y<ph;y++)for(uint16_t x=0;x<rw;x++){
#pragma HLS PIPELINE II=1
    int16_t yy=y0+y;
    uint64_t word=0;
    if(yy>=0&&yy<h){
     if(yb&&y<keep)word=overlap[saved+y*rw+x];
     else word=fresh_words.read();
    }
    pixels.write(word);
    // Save while forwarding. The destination row is always earlier than y,
    // so every old value is consumed before the next strip overwrites it.
    if(y>=ph-keep)overlap[saved+(y-(ph-keep))*rw+x]=word;
   }
  }
 }
}
static void load_uncached(const uint64_t* f,uint32_t input,uint16_t ci,uint16_t h,
 uint16_t rw,uint16_t ph,uint16_t keep,uint16_t stride,uint16_t pad,uint16_t oh,
 hls::stream<uint64_t>& pixels){
#pragma HLS INLINE off
#pragma HLS DATAFLOW
 hls::stream<uint64_t> fresh_words("fresh_words");
#pragma HLS STREAM variable=fresh_words depth=512
#pragma HLS BIND_STORAGE variable=fresh_words type=fifo impl=bram
 read_fresh(f,input,ci,h,rw,ph,keep,stride,pad,oh,fresh_words);
 assemble_rows(fresh_words,pixels,ci,h,rw,ph,keep,stride,pad,oh);
}
static void load_tiles(const uint64_t* f,uint32_t input,uint16_t ci,uint16_t h,
 uint16_t w,uint16_t k,uint16_t stride,uint16_t pad,uint16_t oh,
 hls::stream<uint64_t>& pixels,bool cached,bool refresh){
#pragma HLS INLINE off
 static uint64_t cache[14336];
#pragma HLS BIND_STORAGE variable=cache type=ram_s2p impl=bram
 // Cache ownership stays with one sample through all output-channel blocks.
 // Downsampling projections reuse the same physical cache as the 7x7 layers.
 const bool compact=k==1&&stride==2&&pad==0&&h<=28;
 const uint16_t rw=(w+3)&~3,crw=(oh+3)&~3;
 if(cached&&refresh){
  if(compact){
   uint64_t row[28];
#pragma HLS BIND_STORAGE variable=row type=ram_2p impl=lutram
   for(uint16_t cb=0;cb<ci;cb+=IC)for(uint16_t y=0;y<oh;y++){
    uint32_t base=(input>>2)+(uint32_t(cb/IC)*h+2*y)*rw;
    for(uint16_t x=0;x<rw;x++){
#pragma HLS PIPELINE II=1
     row[x]=f[base+x];
    }
    for(uint16_t x=0;x<crw;x++){
#pragma HLS PIPELINE II=1
     cache[(uint32_t(cb/IC)*oh+y)*crw+x]=x<oh?row[2*x]:uint64_t(0);
    }
   }
  }else for(uint16_t j=0;j<uint16_t((ci/IC)*h*rw);j++){
#pragma HLS PIPELINE II=1
   cache[j]=f[(input>>2)+j];
  }
 }
 const uint16_t source_h=compact?oh:h,source_rw=compact?crw:rw;
 const uint16_t source_stride=compact?1:stride;
 const uint16_t ph=(ROWS-1)*source_stride+k,keep=k>stride?k-stride:0;
 if(cached){
  for(uint16_t yb=0;yb<oh;yb+=ROWS)
   for(uint16_t cb=0;cb<ci;cb+=IC)
    for(uint16_t y=0;y<ph;y++)for(uint16_t x=0;x<source_rw;x++){
#pragma HLS PIPELINE II=1
     int16_t yy=yb*source_stride-pad+y;
     pixels.write(yy>=0&&yy<source_h?cache[(uint32_t(cb/IC)*source_h+yy)*source_rw+x]:uint64_t(0));
    }
 }else load_uncached(f,input,ci,h,rw,ph,keep,stride,pad,oh,pixels);
}

// Counters describe scheduler iterations, not wall-clock cycles unless II=1.
static uint64_t profile_ticks=0,profile_mac=0,profile_wait=0;
struct SampleBlock {int16_t v[SP][IC];};
// Each physical bank either accepts one broadcast write or serves two reads.
// Owning this choice inside the RAM module prevents speculative third accesses.
template<int ID> static SampleBlock bank_access(bool writing,uint64_t word,uint16_t wa,
 bool reading,uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1
 static int16_t memory[SP/2][IC][PH*PW];
#pragma HLS ARRAY_PARTITION variable=memory complete dim=1
#pragma HLS ARRAY_PARTITION variable=memory complete dim=2
#pragma HLS BIND_STORAGE variable=memory type=ram_t2p impl=bram
#pragma HLS DEPENDENCE variable=memory inter false
 SampleBlock result={};
#pragma HLS ARRAY_PARTITION variable=result.v complete dim=0
 if(writing){
  for(int rep=0;rep<SP/2;rep++)for(int c=0;c<IC;c++){
#pragma HLS UNROLL
   memory[rep][c][wa]=lane(word,c);
  }
 }else if(reading){
  for(int c=0;c<IC;c++){
#pragma HLS UNROLL
   result.v[0][c]=memory[0][c][a0];result.v[1][c]=memory[0][c][a1];
   result.v[2][c]=memory[1][c][a2];result.v[3][c]=memory[1][c][a3];
  }
 }
 return result;
}
struct AccessAddress {uint16_t a[SP];bool valid[SP];};
// Register address generation before the RAM access. Both tasks retain II=1.
static AccessAddress address_stage(uint16_t x,uint16_t y,uint16_t ky,uint16_t kx,
 uint16_t stride,uint16_t pad,uint16_t wi){
#pragma HLS INLINE off
#pragma HLS PIPELINE II=1
#pragma HLS LATENCY min=2 max=2
 AccessAddress result;
#pragma HLS ARRAY_PARTITION variable=result.a complete
#pragma HLS ARRAY_PARTITION variable=result.valid complete
 for(int sp=0;sp<SP;sp++){
#pragma HLS UNROLL
  int16_t xx=(x+sp)*stride+kx-pad;result.valid[sp]=xx>=0&&xx<wi;
  result.a[sp]=result.valid[sp]?(y*stride+ky)*PW+xx:0;
 }
 return result;
}
static void compute_row(hls::stream<uint64_t>&pixels,const WeightBank&weights,
 const int64_t bias[OC],uint16_t ci,uint16_t wi,uint16_t k,uint16_t stride,
 uint16_t pad,uint16_t ow,bool enabled,Acc&acc){
#pragma HLS INLINE off
 if(!enabled)return;
 const uint16_t rw=(wi+3)&~3,ph=(ROWS-1)*stride+k;
 for(uint16_t y=0;y<ph;y++)for(uint16_t x=0;x<rw;x++){
#pragma HLS PIPELINE II=1
  uint64_t word=pixels.read();bank_access<0>(true,word,y*PW+x,false,0,0,0,0);
 }
 const uint32_t steps=uint32_t(k)*k*ROWS*((ow+SP-1)/SP);
 uint16_t remaining=(ci+IC-1)/IC,ky=0,kx=0,y=0,xgroup=0,load_y=0,load_x=0;
 uint32_t step=0;uint16_t weight_index=0;bool bank=false;
 uint32_t ticks=0,issues=0,waits=0;
 while(remaining!=0){
#pragma HLS PIPELINE II=1
#pragma HLS DEPENDENCE variable=acc inter RAW distance=4 true
#pragma HLS DEPENDENCE variable=acc inter WAR distance=4 true
#pragma HLS DEPENDENCE variable=acc inter WAW distance=4 true
  ++ticks;
  if(step==steps&&(remaining==1||load_y==ph)){
   --remaining;bank=!bank;step=0;ky=kx=y=xgroup=load_y=load_x=0;
  }else{
   uint64_t incoming=0;bool loaded=false;uint16_t wa=load_y*PW+load_x;
   if(remaining>1&&load_y<ph){
    loaded=pixels.read_nb(incoming);
    if(loaded&&++load_x==rw){load_x=0;++load_y;}
   }
   const uint16_t x=xgroup*SP;
   AccessAddress addr=address_stage(x,y,ky,kx,stride,pad,wi);
#pragma HLS ARRAY_PARTITION variable=addr.a complete
#pragma HLS ARRAY_PARTITION variable=addr.valid complete
   bool computing=step<steps;
   SampleBlock b0=bank_access<0>(loaded&&bank,incoming,wa,computing&&!bank,addr.a[0],addr.a[1],addr.a[2],addr.a[3]);
   SampleBlock b1=bank_access<1>(loaded&&!bank,incoming,wa,computing&&bank,addr.a[0],addr.a[1],addr.a[2],addr.a[3]);
#pragma HLS ARRAY_PARTITION variable=b0.v complete dim=0
#pragma HLS ARRAY_PARTITION variable=b1.v complete dim=0
   if(computing){
    ++issues;
    for(int o=0;o<OC;o++){
#pragma HLS UNROLL
     for(int sp=0;sp<SP;sp++){
#pragma HLS UNROLL
      accum_t partial=0;
      for(int c=0;c<IC;c++){
#pragma HLS UNROLL
       int16_t v=addr.valid[sp]?(bank?b1.v[sp][c]:b0.v[sp][c]):0;
       int16_t wt=(ci>=IC||c<ci)?weights[o][c][weight_index]:0;
       int32_t product=int32_t(v)*int32_t(wt);
#pragma HLS RESOURCE variable=product core=Mul_DSP
       partial+=product;
      }
      acc[o][y][x+sp]=((weight_index==0)?accum_t(bias[o]):acc[o][y][x+sp])+partial;
     }
    }
    ++step;
    if(x+SP>=ow){xgroup=0;if(++y==ROWS){y=0;++weight_index;if(++kx==k){kx=0;++ky;}}}else ++xgroup;
   }else ++waits;
  }
 }
 profile_ticks+=ticks;profile_mac+=issues;profile_wait+=waits;
}
static void emit_row(const Acc&acc,hls::stream<Result4>&results,
 uint16_t rows,uint16_t ow,bool enabled){
#pragma HLS INLINE off
 if(!enabled)return;
 for(uint16_t g=0;g<OC;g+=4)for(uint16_t y=0;y<rows;y++)for(uint16_t x=0;x<ow;x++){
#pragma HLS PIPELINE II=1
  Result4 v;v.a=acc[g][y][x];v.b=acc[g+1][y][x];v.c=acc[g+2][y][x];v.d=acc[g+3][y][x];
  results.write(v);
 }
}
// Separate accumulator ownership overlaps row computation and result emission.
static void row_pair(hls::stream<uint64_t>& pixels,hls::stream<Result4>& results,
 const WeightBank& weights,const int64_t bias[OC],uint16_t ci,uint16_t wi,
 uint16_t k,uint16_t stride,uint16_t pad,uint16_t ow,bool computing,bool emitting,
 uint16_t previous_rows,Acc& current,const Acc& previous){
#pragma HLS INLINE off
#pragma HLS DATAFLOW
 compute_row(pixels,weights,bias,ci,wi,k,stride,pad,ow,computing,current);
 emit_row(previous,results,previous_rows,ow,emitting);
}
static void compute_tiles(hls::stream<uint64_t>&pixels,hls::stream<Result4>&results,
 const WeightBank&weights,const int64_t bias[OC],uint16_t ci,uint16_t wi,
 uint16_t k,uint16_t stride,uint16_t pad,uint16_t oh,uint16_t ow){
#pragma HLS INLINE off
 Acc a0,a1;
#pragma HLS BIND_STORAGE variable=a0 type=ram_s2p impl=lutram
#pragma HLS BIND_STORAGE variable=a1 type=ram_s2p impl=lutram
#pragma HLS ARRAY_PARTITION variable=a0 complete dim=1
#pragma HLS ARRAY_PARTITION variable=a1 complete dim=1
#pragma HLS ARRAY_PARTITION variable=a0 cyclic factor=4 dim=3
#pragma HLS ARRAY_PARTITION variable=a1 cyclic factor=4 dim=3
 uint16_t tiles=(oh+ROWS-1)/ROWS;
 for(uint16_t tile=0;tile<=tiles;tile++){
  uint16_t previous_rows=tile==tiles?oh-(tiles-1)*ROWS:ROWS;
  if((tile&1)==0)row_pair(pixels,results,weights,bias,ci,wi,k,stride,pad,ow,tile<tiles,tile>0,previous_rows,a0,a1);
  else row_pair(pixels,results,weights,bias,ci,wi,k,stride,pad,ow,tile<tiles,true,previous_rows,a1,a0);
 }
}
static void store_tiles(const uint64_t*fr,uint64_t*fw,int64_t*wide,
 hls::stream<Result4>&results,const int shifts[OC],uint32_t output,uint32_t skip,
 int skipshift,uint16_t ob,uint16_t oh,uint16_t ow,int kind){
#pragma HLS INLINE off
 uint64_t packed[ROWS*COLS],skipbuf[ROWS*COLS];int64_t widebuf[4][ROWS*COLS];
#pragma HLS BIND_STORAGE variable=packed type=ram_2p impl=lutram
#pragma HLS BIND_STORAGE variable=skipbuf type=ram_2p impl=lutram
#pragma HLS BIND_STORAGE variable=widebuf type=ram_2p impl=lutram
#pragma HLS ARRAY_PARTITION variable=widebuf complete dim=1
 const uint16_t rw=(ow+3)&~3;
 for(uint16_t yb=0;yb<oh;yb+=ROWS){
  uint16_t rows=yb+ROWS>oh?oh-yb:ROWS;
  for(uint16_t g=0;g<OC;g+=4){
   uint32_t groupbase=(uint32_t((ob+g)/4)*oh+yb)*rw;
   if(kind==3)for(uint16_t j=0;j<rows*rw;j++){
#pragma HLS PIPELINE II=1
    skipbuf[j]=fr[(skip>>2)+groupbase+j];
   }
   if(kind==4)for(uint16_t c=0;c<4;c++){
    uint32_t base=(uint32_t(ob+g+c)*oh+yb)*ow;
    for(uint16_t j=0;j<rows*ow;j++){
#pragma HLS PIPELINE II=1
     widebuf[c][j]=wide[base+j];
    }
   }
   for(uint16_t y=0;y<rows;y++)for(uint16_t x=0;x<rw;x++){
#pragma HLS PIPELINE II=1
    uint64_t word=0;
    if(x<ow){
     Result4 v=results.read();accum_t a[4]={v.a,v.b,v.c,v.d};
#pragma HLS ARRAY_PARTITION variable=a complete
     uint64_t skipword=kind==3?skipbuf[y*rw+x]:uint64_t(0);
     for(uint16_t c=0;c<4;c++){
#pragma HLS UNROLL
      int64_t q=requant_conv(a[c],shifts[g+c]);
      if(kind==2)widebuf[c][y*ow+x]=q;
      else{
       int64_t r=kind==3?requant_skip(lane(skipword,c),skipshift):kind==4?widebuf[c][y*ow+x]:0;
       word|=uint64_t(uint16_t(sat(q+r,kind!=0)))<<(c*16);
      }
     }
    }
    packed[y*rw+x]=word;
   }
   if(kind==2)for(uint16_t c=0;c<4;c++){
    uint32_t base=(uint32_t(ob+g+c)*oh+yb)*ow;
    for(uint16_t j=0;j<rows*ow;j++){
#pragma HLS PIPELINE II=1
     wide[base+j]=widebuf[c][j];
    }
   }else for(uint16_t j=0;j<rows*rw;j++){
#pragma HLS PIPELINE II=1
    fw[(output>>2)+groupbase+j]=packed[j];
   }
  }
 }
}
static void block(const uint64_t*fr,uint64_t*fw,int64_t*wide,const WeightBank&weights,const int64_t bias[OC],const int shifts[OC],uint32_t input,uint32_t output,uint32_t skip,int skipshift,uint16_t ob,uint16_t ci,uint16_t h,uint16_t wi,uint16_t k,uint16_t stride,uint16_t pad,uint16_t oh,uint16_t ow,int kind){
#pragma HLS INLINE off
#pragma HLS DATAFLOW
 hls::stream<uint64_t> pixels("pixels");hls::stream<Result4> results("results");
#pragma HLS STREAM variable=pixels depth=512
#pragma HLS STREAM variable=results depth=64
#pragma HLS BIND_STORAGE variable=results type=fifo impl=lutram
 const bool compact=k==1&&stride==2&&pad==0&&h<=28;
 load_tiles(fr,input,ci,h,wi,k,stride,pad,oh,pixels,((h==7&&wi==7&&ci==512)||(h==14&&wi==14&&ci==256))||compact,ob==0);
 compute_tiles(pixels,results,weights,bias,ci,compact?ow:wi,k,compact?uint16_t(1):stride,pad,oh,ow);
 store_tiles(fw,fw,wide,results,shifts,output,skip,skipshift,ob,oh,ow,kind);
}
static void output_pair(const uint64_t*w,const uint64_t*fr,uint64_t*fw,int64_t*wide,uint32_t wbase,uint16_t ob,uint16_t ci,uint16_t h,uint16_t wi,uint16_t co,uint16_t k,uint16_t stride,uint16_t pad,uint16_t oh,uint16_t ow,uint32_t input,uint32_t output,uint32_t skip,int skipshift,int kind,unsigned batch_count,WeightBank&next,const WeightBank&current,const int64_t bias[OC],const int shifts[OC]){
#pragma HLS INLINE off
#pragma HLS DATAFLOW
 load_weights(w,wbase,ob+OC,ci,co,k,ob+OC<co,next);
 for(unsigned sample=0;sample<batch_count;sample++) {
  const uint32_t base=sample*FEATURE_ELEMENTS;
  block(fr,fw,wide+sample*WIDE_ELEMENTS,current,bias,shifts,input+base,output+base,skip+base,skipshift,ob,ci,h,wi,k,stride,pad,oh,ow,kind);
 }
}
static void conv(const uint64_t*w,const int64_t*b,const int32_t*s,const LayerQuant&q,uint64_t*f,const uint64_t*feature_input,int64_t*wide,uint32_t input,uint32_t output,uint32_t skip,uint16_t ci,uint16_t hi,uint16_t wi,uint16_t co,uint16_t k,uint16_t stride,uint16_t pad,int kind,unsigned batch_count){
#pragma HLS INLINE off
 WeightBank w0,w1;
#pragma HLS ARRAY_PARTITION variable=w0 complete dim=1
#pragma HLS ARRAY_PARTITION variable=w0 complete dim=2
#pragma HLS ARRAY_PARTITION variable=w1 complete dim=1
#pragma HLS ARRAY_PARTITION variable=w1 complete dim=2
 uint16_t oh=((hi+2*pad-k)>>(stride==2))+1,ow=((wi+2*pad-k)>>(stride==2))+1;
 const bool cached=((hi==7&&wi==7&&ci==512)||(hi==14&&wi==14&&ci==256))||(k==1&&stride==2&&pad==0&&hi<=28);
 const unsigned outer=cached?batch_count:1,inner=cached?1:batch_count;
 for(unsigned sample=0;sample<outer;sample++){
 const uint32_t sample_base=sample*FEATURE_ELEMENTS;
 load_weights(w,q.weight_offset,0,ci,co,k,true,w0);
 for(uint16_t ob=0;ob<co;ob+=OC){int64_t bias[OC];int shift[OC];
#pragma HLS ARRAY_PARTITION variable=bias complete
#pragma HLS ARRAY_PARTITION variable=shift complete
  for(uint16_t o=0;o<OC;o++){
#pragma HLS PIPELINE II=1
   bias[o]=b[q.bias_offset+ob+o];shift[o]=s[q.shift_offset+ob+o];
  }
  if((ob/OC)%2==0)output_pair(w,feature_input,f,wide+sample*WIDE_ELEMENTS,q.weight_offset,ob,ci,hi,wi,co,k,stride,pad,oh,ow,input+sample_base,output+sample_base,skip+sample_base,q.residual_shift,kind,inner,w1,w0,bias,shift);
  else output_pair(w,feature_input,f,wide+sample*WIDE_ELEMENTS,q.weight_offset,ob,ci,hi,wi,co,k,stride,pad,oh,ow,input+sample_base,output+sample_base,skip+sample_base,q.residual_shift,kind,inner,w0,w1,bias,shift);
 }
 }
}
static void maxpool(uint64_t*f,uint32_t input,uint32_t output,uint16_t channels,uint16_t h,uint16_t k,uint16_t stride,uint16_t pad){
#pragma HLS INLINE off
 uint16_t oh=((h+2*pad-k)>>(stride==2))+1,rw=(h+3)&~3,ow=(oh+3)&~3;
 uint64_t rows[3*112],packed[64];
#pragma HLS BIND_STORAGE variable=rows type=ram_2p impl=lutram
#pragma HLS BIND_STORAGE variable=packed type=ram_2p impl=lutram
 for(uint16_t cb=0;cb<channels;cb+=4)for(uint16_t y=0;y<oh;y++){
  int16_t y0=y*stride-pad,begin=y0<0?0:y0,end=y0+k>h?h:y0+k;
  uint32_t base=(input>>2)+(uint32_t(cb/4)*h+begin)*rw;
  for(uint16_t j=0;j<(end-begin)*rw;j++){
#pragma HLS PIPELINE II=1
   rows[j]=f[base+j];
  }
  for(uint16_t x=0;x<ow;x++){
   int16_t value[4]={-32768,-32768,-32768,-32768};
#pragma HLS ARRAY_PARTITION variable=value complete
   for(uint16_t ky=0;ky<k;ky++)for(uint16_t kx=0;kx<k;kx++){
#pragma HLS PIPELINE II=1
    int16_t yy=y0+ky,xx=x*stride+kx-pad;
    if(x<oh&&yy>=0&&yy<h&&xx>=0&&xx<h){
     uint64_t word=rows[(yy-begin)*rw+xx];
     for(uint16_t c=0;c<4;c++){
#pragma HLS UNROLL
      int16_t v=lane(word,c);if(v>value[c])value[c]=v;
     }
    }
   }
   uint64_t word=0;
   for(uint16_t c=0;c<4;c++){
#pragma HLS UNROLL
    word|=uint64_t(uint16_t(x<oh?value[c]:0))<<(16*c);
   }
   packed[x]=word;
  }
  base=(output>>2)+(uint32_t(cb/4)*oh+y)*ow;
  for(uint16_t j=0;j<ow;j++){
#pragma HLS PIPELINE II=1
   f[base+j]=packed[j];
  }
 }
}
static void sums(const uint64_t*f,uint32_t base,int32_t*out,int mode){
#pragma HLS INLINE off
 uint64_t tile[64];
#pragma HLS BIND_STORAGE variable=tile type=ram_2p impl=lutram
 if(mode==MODE_AXIAL){
  for(uint16_t cb=0;cb<64;cb+=4){
   for(uint16_t j=0;j<64;j++){
#pragma HLS PIPELINE II=1
    tile[j]=f[(base>>2)+uint32_t(cb/4)*64+j];
   }
   for(uint16_t y=0;y<2;y++)for(uint16_t x=0;x<2;x++){
    int32_t total[4]={0,0,0,0};
#pragma HLS ARRAY_PARTITION variable=total complete
    for(uint16_t yy=0;yy<4;yy++)for(uint16_t xx=0;xx<4;xx++){
#pragma HLS PIPELINE II=1
     uint64_t word=tile[(y*4+yy)*8+x*4+xx];
     for(uint16_t c=0;c<4;c++){
#pragma HLS UNROLL
      total[c]+=lane(word,c);
     }
    }
    for(uint16_t c=0;c<4;c++)out[(y*2+x)*64+cb+c]=total[c];
   }
  }
 }else{
  for(uint16_t cb=0;cb<512;cb+=4){
   for(uint16_t j=0;j<56;j++){
#pragma HLS PIPELINE II=1
    tile[j]=f[(base>>2)+uint32_t(cb/4)*56+j];
   }
   int32_t total[4]={0,0,0,0};
#pragma HLS ARRAY_PARTITION variable=total complete
   for(uint16_t y=0;y<7;y++)for(uint16_t x=0;x<7;x++){
#pragma HLS PIPELINE II=1
    uint64_t word=tile[y*8+x];
    for(uint16_t c=0;c<4;c++){
#pragma HLS UNROLL
     total[c]+=lane(word,c);
    }
   }
   for(uint16_t c=0;c<4;c++)out[cb+c]=total[c];
  }
 }
}
}
extern "C" int mri_full(const uint64_t*weights,const int64_t*biases,const int32_t*shifts,const uint64_t*layers,uint64_t*features,int64_t*wide,int32_t*output,int mode,unsigned batch_count,const uint64_t*feature_input){
#pragma HLS INTERFACE m_axi port=weights offset=slave bundle=weights_mem depth=3000000 max_read_burst_length=64 num_read_outstanding=4 num_write_outstanding=2
#pragma HLS INTERFACE m_axi port=biases offset=slave bundle=weights_mem depth=12288
#pragma HLS INTERFACE m_axi port=shifts offset=slave bundle=weights_mem depth=12288
#pragma HLS INTERFACE m_axi port=layers offset=slave bundle=weights_mem depth=96
#pragma HLS INTERFACE m_axi port=features offset=slave bundle=feature_mem depth=3211264 max_read_burst_length=64 max_write_burst_length=32 num_read_outstanding=2 num_write_outstanding=2
#pragma HLS INTERFACE m_axi port=wide offset=slave bundle=feature_mem depth=401408
#pragma HLS INTERFACE m_axi port=output offset=slave bundle=feature_mem depth=2064
#pragma HLS INTERFACE s_axilite port=weights bundle=control offset=0x20
#pragma HLS INTERFACE s_axilite port=biases bundle=control offset=0x2c
#pragma HLS INTERFACE s_axilite port=shifts bundle=control offset=0x38
#pragma HLS INTERFACE s_axilite port=layers bundle=control offset=0x44
#pragma HLS INTERFACE s_axilite port=features bundle=control offset=0x50
#pragma HLS INTERFACE s_axilite port=wide bundle=control offset=0x5c
#pragma HLS INTERFACE s_axilite port=output bundle=control offset=0x68
#pragma HLS INTERFACE s_axilite port=mode bundle=control offset=0x74
#pragma HLS INTERFACE s_axilite port=batch_count bundle=control offset=0x7c
#pragma HLS INTERFACE s_axilite port=feature_input bundle=control offset=0x88
#pragma HLS INTERFACE m_axi port=feature_input offset=slave bundle=feature_read depth=3211264 max_read_burst_length=64 num_read_outstanding=4
#pragma HLS INTERFACE s_axilite port=return bundle=control
 profile_ticks=profile_mac=profile_wait=0;
 if(mode!=MODE_AXIAL&&mode!=MODE_RESNET)return -1;
 if(batch_count<1||batch_count>4)return -6;
 LayerQuant q[24];const int co[24]={16,32,64,64,64,64,64,64,64,128,128,128,128,128,256,256,256,256,256,512,512,512,512,512};
 uint64_t metadata[96];for(int i=0;i<96;i++){
#pragma HLS PIPELINE II=1
 metadata[i]=layers[i];}
 for(int i=0;i<24;i++){uint64_t v0=metadata[4*i],v1=metadata[4*i+1],v2=metadata[4*i+2],v3=metadata[4*i+3];q[i].weight_offset=uint32_t(v0);q[i].bias_offset=uint32_t(v0>>32);q[i].shift_offset=uint32_t(v1);q[i].residual_shift=int32_t(v1>>32);q[i].input_exp=int32_t(v2);q[i].output_exp=int32_t(v2>>32);q[i].reserved0=uint32_t(v3);q[i].reserved1=uint32_t(v3>>32);if(q[i].reserved0!=WEIGHT_LAYOUT||q[i].reserved1!=0)return -5;if(q[i].shift_offset+co[i]>12288||q[i].bias_offset+co[i]>12288||q[i].weight_offset>=12000000||q[i].residual_shift<-31||q[i].residual_shift>62)return -2;
  for(uint16_t c=0;c<co[i];c++){int s=shifts[q[i].shift_offset+c];if(s<-31||s>62)return -3;}}
 if(mode==MODE_AXIAL){uint16_t h=128,ci=1;for(int i=0;i<4;i++){conv(weights,biases,shifts,q[i],features,feature_input,wide,0,FEATURE_SLOT,0,ci,h,h,co[i],3,1,1,1,batch_count);for(unsigned n=0;n<batch_count;n++)maxpool(features,n*FEATURE_ELEMENTS+FEATURE_SLOT,n*FEATURE_ELEMENTS,co[i],h,2,2,0);h/=2;ci=co[i];}for(unsigned n=0;n<batch_count;n++)sums(features,n*FEATURE_ELEMENTS,output+n*OUTPUT_ELEMENTS,mode);
 uint64_t stats[3]={profile_ticks,profile_mac,profile_wait};
 for(int j=0;j<3;j++){output[2048+2*j]=uint32_t(stats[j]);output[2049+2*j]=uint32_t(stats[j]>>32);}
 return 0;}
 conv(weights,biases,shifts,q[4],features,feature_input,wide,0,FEATURE_SLOT,0,3,224,224,64,7,2,3,1,batch_count);
 for(unsigned n=0;n<batch_count;n++)maxpool(features,n*FEATURE_ELEMENTS+FEATURE_SLOT,n*FEATURE_ELEMENTS,64,112,3,2,1);
 uint16_t index=5,h=56,ci=64;uint32_t current=0,next=2*FEATURE_SLOT;
 for(int stage=0;stage<4;stage++)for(int b=0;b<2;b++){
  uint16_t channels=64<<stage,stride=stage>0&&b==0?2:1;int c1=index++,c2=index++;
  if(stride==2){int projection=index++;if(q[projection].output_exp!=q[c2].output_exp)return -4;
   conv(weights,biases,shifts,q[projection],features,feature_input,wide,current,0,0,ci,h,h,channels,1,2,0,2,batch_count);}
  conv(weights,biases,shifts,q[c1],features,feature_input,wide,current,FEATURE_SLOT,0,ci,h,h,channels,3,stride,1,1,batch_count);
  h>>=(stride==2);
  conv(weights,biases,shifts,q[c2],features,feature_input,wide,FEATURE_SLOT,next,current,channels,h,h,channels,3,1,1,stride==2?4:3,batch_count);
  uint32_t old=current;current=next;next=old;ci=channels;
 }
 for(unsigned n=0;n<batch_count;n++)sums(features,n*FEATURE_ELEMENTS+current,output+n*OUTPUT_ELEMENTS,mode);
 uint64_t stats[3]={profile_ticks,profile_mac,profile_wait};
 for(int j=0;j<3;j++){output[2048+2*j]=uint32_t(stats[j]);output[2049+2*j]=uint32_t(stats[j]>>32);}
 return 0;
}
