; ModuleID = 'F:/mri_fpga_delivery_20261025/build/hls/mri_full/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define i32 @apatb_mri_full_ir(i64* %weights, i64* %biases, i32* %shifts, i64* %layers, i64* %features, i64* %wide, i32* %output, i32 %mode, i32 %batch_count, i64* %feature_input) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 24000000)
  %weights_copy = bitcast i8* %malloccall to [3000000 x i64]*
  %malloccall1 = tail call i8* @malloc(i64 98304)
  %biases_copy = bitcast i8* %malloccall1 to [12288 x i64]*
  %malloccall2 = tail call i8* @malloc(i64 49152)
  %shifts_copy = bitcast i8* %malloccall2 to [12288 x i32]*
  %layers_copy = alloca [96 x i64], align 512
  %malloccall3 = tail call i8* @malloc(i64 25690112)
  %features_copy = bitcast i8* %malloccall3 to [3211264 x i64]*
  %malloccall4 = tail call i8* @malloc(i64 3211264)
  %wide_copy = bitcast i8* %malloccall4 to [401408 x i64]*
  %malloccall5 = tail call i8* @malloc(i64 8256)
  %output_copy = bitcast i8* %malloccall5 to [2064 x i32]*
  %malloccall6 = tail call i8* @malloc(i64 25690112)
  %feature_input_copy = bitcast i8* %malloccall6 to [3211264 x i64]*
  %0 = bitcast i64* %weights to [3000000 x i64]*
  %1 = bitcast i64* %biases to [12288 x i64]*
  %2 = bitcast i32* %shifts to [12288 x i32]*
  %3 = bitcast i64* %layers to [96 x i64]*
  %4 = bitcast i64* %features to [3211264 x i64]*
  %5 = bitcast i64* %wide to [401408 x i64]*
  %6 = bitcast i32* %output to [2064 x i32]*
  %7 = bitcast i64* %feature_input to [3211264 x i64]*
  call fastcc void @copy_in([3000000 x i64]* %0, [3000000 x i64]* %weights_copy, [12288 x i64]* %1, [12288 x i64]* %biases_copy, [12288 x i32]* %2, [12288 x i32]* %shifts_copy, [96 x i64]* %3, [96 x i64]* nonnull align 512 %layers_copy, [3211264 x i64]* %4, [3211264 x i64]* %features_copy, [401408 x i64]* %5, [401408 x i64]* %wide_copy, [2064 x i32]* %6, [2064 x i32]* %output_copy, [3211264 x i64]* %7, [3211264 x i64]* %feature_input_copy)
  %8 = getelementptr inbounds [3000000 x i64], [3000000 x i64]* %weights_copy, i32 0, i32 0
  %9 = getelementptr inbounds [12288 x i64], [12288 x i64]* %biases_copy, i32 0, i32 0
  %10 = getelementptr inbounds [12288 x i32], [12288 x i32]* %shifts_copy, i32 0, i32 0
  %11 = getelementptr inbounds [96 x i64], [96 x i64]* %layers_copy, i32 0, i32 0
  %12 = getelementptr inbounds [3211264 x i64], [3211264 x i64]* %features_copy, i32 0, i32 0
  %13 = getelementptr inbounds [401408 x i64], [401408 x i64]* %wide_copy, i32 0, i32 0
  %14 = getelementptr inbounds [2064 x i32], [2064 x i32]* %output_copy, i32 0, i32 0
  %15 = getelementptr inbounds [3211264 x i64], [3211264 x i64]* %feature_input_copy, i32 0, i32 0
  %16 = call i32 @apatb_mri_full_hw(i64* %8, i64* %9, i32* %10, i64* %11, i64* %12, i64* %13, i32* %14, i32 %mode, i32 %batch_count, i64* %15)
  call fastcc void @copy_out([3000000 x i64]* %0, [3000000 x i64]* %weights_copy, [12288 x i64]* %1, [12288 x i64]* %biases_copy, [12288 x i32]* %2, [12288 x i32]* %shifts_copy, [96 x i64]* %3, [96 x i64]* nonnull align 512 %layers_copy, [3211264 x i64]* %4, [3211264 x i64]* %features_copy, [401408 x i64]* %5, [401408 x i64]* %wide_copy, [2064 x i32]* %6, [2064 x i32]* %output_copy, [3211264 x i64]* %7, [3211264 x i64]* %feature_input_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  tail call void @free(i8* %malloccall5)
  tail call void @free(i8* %malloccall6)
  ret i32 %16
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([3000000 x i64]* readonly, [3000000 x i64]* noalias, [12288 x i64]* readonly, [12288 x i64]* noalias, [12288 x i32]* readonly, [12288 x i32]* noalias, [96 x i64]* readonly, [96 x i64]* noalias align 512, [3211264 x i64]* readonly, [3211264 x i64]* noalias, [401408 x i64]* readonly, [401408 x i64]* noalias, [2064 x i32]* readonly, [2064 x i32]* noalias, [3211264 x i64]* readonly, [3211264 x i64]* noalias) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3000000i64([3000000 x i64]* %1, [3000000 x i64]* %0)
  call fastcc void @onebyonecpy_hls.p0a12288i64([12288 x i64]* %3, [12288 x i64]* %2)
  call fastcc void @onebyonecpy_hls.p0a12288i32([12288 x i32]* %5, [12288 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a96i64([96 x i64]* align 512 %7, [96 x i64]* %6)
  call fastcc void @onebyonecpy_hls.p0a3211264i64([3211264 x i64]* %9, [3211264 x i64]* %8)
  call fastcc void @onebyonecpy_hls.p0a401408i64([401408 x i64]* %11, [401408 x i64]* %10)
  call fastcc void @onebyonecpy_hls.p0a2064i32([2064 x i32]* %13, [2064 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a3211264i64([3211264 x i64]* %15, [3211264 x i64]* %14)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a3000000i64([3000000 x i64]* noalias, [3000000 x i64]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [3000000 x i64]* %0, null
  %3 = icmp eq [3000000 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [3000000 x i64], [3000000 x i64]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i64* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [3000000 x i64], [3000000 x i64]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i64* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3000000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a12288i64([12288 x i64]* noalias, [12288 x i64]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [12288 x i64]* %0, null
  %3 = icmp eq [12288 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [12288 x i64], [12288 x i64]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i64* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [12288 x i64], [12288 x i64]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i64* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 12288
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a12288i32([12288 x i32]* noalias, [12288 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [12288 x i32]* %0, null
  %3 = icmp eq [12288 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [12288 x i32], [12288 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [12288 x i32], [12288 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 12288
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a96i64([96 x i64]* noalias align 512, [96 x i64]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [96 x i64]* %0, null
  %3 = icmp eq [96 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [96 x i64], [96 x i64]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i64* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [96 x i64], [96 x i64]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i64* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 96
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a3211264i64([3211264 x i64]* noalias, [3211264 x i64]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [3211264 x i64]* %0, null
  %3 = icmp eq [3211264 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [3211264 x i64], [3211264 x i64]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i64* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [3211264 x i64], [3211264 x i64]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i64* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3211264
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a401408i64([401408 x i64]* noalias, [401408 x i64]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [401408 x i64]* %0, null
  %3 = icmp eq [401408 x i64]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [401408 x i64], [401408 x i64]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i64* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [401408 x i64], [401408 x i64]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i64* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 401408
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a2064i32([2064 x i32]* noalias, [2064 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [2064 x i32]* %0, null
  %3 = icmp eq [2064 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [2064 x i32], [2064 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [2064 x i32], [2064 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2064
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([3000000 x i64]*, [3000000 x i64]* noalias readonly, [12288 x i64]*, [12288 x i64]* noalias readonly, [12288 x i32]*, [12288 x i32]* noalias readonly, [96 x i64]*, [96 x i64]* noalias readonly align 512, [3211264 x i64]*, [3211264 x i64]* noalias readonly, [401408 x i64]*, [401408 x i64]* noalias readonly, [2064 x i32]*, [2064 x i32]* noalias readonly, [3211264 x i64]*, [3211264 x i64]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3000000i64([3000000 x i64]* %0, [3000000 x i64]* %1)
  call fastcc void @onebyonecpy_hls.p0a12288i64([12288 x i64]* %2, [12288 x i64]* %3)
  call fastcc void @onebyonecpy_hls.p0a12288i32([12288 x i32]* %4, [12288 x i32]* %5)
  call fastcc void @onebyonecpy_hls.p0a96i64([96 x i64]* %6, [96 x i64]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a3211264i64([3211264 x i64]* %8, [3211264 x i64]* %9)
  call fastcc void @onebyonecpy_hls.p0a401408i64([401408 x i64]* %10, [401408 x i64]* %11)
  call fastcc void @onebyonecpy_hls.p0a2064i32([2064 x i32]* %12, [2064 x i32]* %13)
  call fastcc void @onebyonecpy_hls.p0a3211264i64([3211264 x i64]* %14, [3211264 x i64]* %15)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare i32 @apatb_mri_full_hw(i64*, i64*, i32*, i64*, i64*, i64*, i32*, i32, i32, i64*)

define i32 @mri_full_hw_stub_wrapper(i64*, i64*, i32*, i64*, i64*, i64*, i32*, i32, i32, i64*) #5 {
entry:
  %10 = bitcast i64* %0 to [3000000 x i64]*
  %11 = bitcast i64* %1 to [12288 x i64]*
  %12 = bitcast i32* %2 to [12288 x i32]*
  %13 = bitcast i64* %3 to [96 x i64]*
  %14 = bitcast i64* %4 to [3211264 x i64]*
  %15 = bitcast i64* %5 to [401408 x i64]*
  %16 = bitcast i32* %6 to [2064 x i32]*
  %17 = bitcast i64* %9 to [3211264 x i64]*
  call void @copy_out([3000000 x i64]* null, [3000000 x i64]* %10, [12288 x i64]* null, [12288 x i64]* %11, [12288 x i32]* null, [12288 x i32]* %12, [96 x i64]* null, [96 x i64]* %13, [3211264 x i64]* null, [3211264 x i64]* %14, [401408 x i64]* null, [401408 x i64]* %15, [2064 x i32]* null, [2064 x i32]* %16, [3211264 x i64]* null, [3211264 x i64]* %17)
  %18 = bitcast [3000000 x i64]* %10 to i64*
  %19 = bitcast [12288 x i64]* %11 to i64*
  %20 = bitcast [12288 x i32]* %12 to i32*
  %21 = bitcast [96 x i64]* %13 to i64*
  %22 = bitcast [3211264 x i64]* %14 to i64*
  %23 = bitcast [401408 x i64]* %15 to i64*
  %24 = bitcast [2064 x i32]* %16 to i32*
  %25 = bitcast [3211264 x i64]* %17 to i64*
  %26 = call i32 @mri_full_hw_stub(i64* %18, i64* %19, i32* %20, i64* %21, i64* %22, i64* %23, i32* %24, i32 %7, i32 %8, i64* %25)
  call void @copy_in([3000000 x i64]* null, [3000000 x i64]* %10, [12288 x i64]* null, [12288 x i64]* %11, [12288 x i32]* null, [12288 x i32]* %12, [96 x i64]* null, [96 x i64]* %13, [3211264 x i64]* null, [3211264 x i64]* %14, [401408 x i64]* null, [401408 x i64]* %15, [2064 x i32]* null, [2064 x i32]* %16, [3211264 x i64]* null, [3211264 x i64]* %17)
  ret i32 %26
}

declare i32 @mri_full_hw_stub(i64*, i64*, i32*, i64*, i64*, i64*, i32*, i32, i32, i64*)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
