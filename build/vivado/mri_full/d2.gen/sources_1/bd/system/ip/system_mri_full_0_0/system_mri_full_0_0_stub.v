// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  1 11:14:17 2026
// Command     : write_verilog -force -mode synth_stub -rename_top system_mri_full_0_0 -prefix
//               system_mri_full_0_0_ system_mri_full_0_0_stub.v
// Design      : system_mri_full_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mri_full,Vivado 2020.2" *)
module system_mri_full_0_0(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_weights_mem_AWADDR, 
  m_axi_weights_mem_AWLEN, m_axi_weights_mem_AWSIZE, m_axi_weights_mem_AWBURST, 
  m_axi_weights_mem_AWLOCK, m_axi_weights_mem_AWREGION, m_axi_weights_mem_AWCACHE, 
  m_axi_weights_mem_AWPROT, m_axi_weights_mem_AWQOS, m_axi_weights_mem_AWVALID, 
  m_axi_weights_mem_AWREADY, m_axi_weights_mem_WDATA, m_axi_weights_mem_WSTRB, 
  m_axi_weights_mem_WLAST, m_axi_weights_mem_WVALID, m_axi_weights_mem_WREADY, 
  m_axi_weights_mem_BRESP, m_axi_weights_mem_BVALID, m_axi_weights_mem_BREADY, 
  m_axi_weights_mem_ARADDR, m_axi_weights_mem_ARLEN, m_axi_weights_mem_ARSIZE, 
  m_axi_weights_mem_ARBURST, m_axi_weights_mem_ARLOCK, m_axi_weights_mem_ARREGION, 
  m_axi_weights_mem_ARCACHE, m_axi_weights_mem_ARPROT, m_axi_weights_mem_ARQOS, 
  m_axi_weights_mem_ARVALID, m_axi_weights_mem_ARREADY, m_axi_weights_mem_RDATA, 
  m_axi_weights_mem_RRESP, m_axi_weights_mem_RLAST, m_axi_weights_mem_RVALID, 
  m_axi_weights_mem_RREADY, m_axi_feature_mem_AWADDR, m_axi_feature_mem_AWLEN, 
  m_axi_feature_mem_AWSIZE, m_axi_feature_mem_AWBURST, m_axi_feature_mem_AWLOCK, 
  m_axi_feature_mem_AWREGION, m_axi_feature_mem_AWCACHE, m_axi_feature_mem_AWPROT, 
  m_axi_feature_mem_AWQOS, m_axi_feature_mem_AWVALID, m_axi_feature_mem_AWREADY, 
  m_axi_feature_mem_WDATA, m_axi_feature_mem_WSTRB, m_axi_feature_mem_WLAST, 
  m_axi_feature_mem_WVALID, m_axi_feature_mem_WREADY, m_axi_feature_mem_BRESP, 
  m_axi_feature_mem_BVALID, m_axi_feature_mem_BREADY, m_axi_feature_mem_ARADDR, 
  m_axi_feature_mem_ARLEN, m_axi_feature_mem_ARSIZE, m_axi_feature_mem_ARBURST, 
  m_axi_feature_mem_ARLOCK, m_axi_feature_mem_ARREGION, m_axi_feature_mem_ARCACHE, 
  m_axi_feature_mem_ARPROT, m_axi_feature_mem_ARQOS, m_axi_feature_mem_ARVALID, 
  m_axi_feature_mem_ARREADY, m_axi_feature_mem_RDATA, m_axi_feature_mem_RRESP, 
  m_axi_feature_mem_RLAST, m_axi_feature_mem_RVALID, m_axi_feature_mem_RREADY, 
  m_axi_feature_read_AWADDR, m_axi_feature_read_AWLEN, m_axi_feature_read_AWSIZE, 
  m_axi_feature_read_AWBURST, m_axi_feature_read_AWLOCK, m_axi_feature_read_AWREGION, 
  m_axi_feature_read_AWCACHE, m_axi_feature_read_AWPROT, m_axi_feature_read_AWQOS, 
  m_axi_feature_read_AWVALID, m_axi_feature_read_AWREADY, m_axi_feature_read_WDATA, 
  m_axi_feature_read_WSTRB, m_axi_feature_read_WLAST, m_axi_feature_read_WVALID, 
  m_axi_feature_read_WREADY, m_axi_feature_read_BRESP, m_axi_feature_read_BVALID, 
  m_axi_feature_read_BREADY, m_axi_feature_read_ARADDR, m_axi_feature_read_ARLEN, 
  m_axi_feature_read_ARSIZE, m_axi_feature_read_ARBURST, m_axi_feature_read_ARLOCK, 
  m_axi_feature_read_ARREGION, m_axi_feature_read_ARCACHE, m_axi_feature_read_ARPROT, 
  m_axi_feature_read_ARQOS, m_axi_feature_read_ARVALID, m_axi_feature_read_ARREADY, 
  m_axi_feature_read_RDATA, m_axi_feature_read_RRESP, m_axi_feature_read_RLAST, 
  m_axi_feature_read_RVALID, m_axi_feature_read_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[7:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[7:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_weights_mem_AWADDR[63:0],m_axi_weights_mem_AWLEN[7:0],m_axi_weights_mem_AWSIZE[2:0],m_axi_weights_mem_AWBURST[1:0],m_axi_weights_mem_AWLOCK[1:0],m_axi_weights_mem_AWREGION[3:0],m_axi_weights_mem_AWCACHE[3:0],m_axi_weights_mem_AWPROT[2:0],m_axi_weights_mem_AWQOS[3:0],m_axi_weights_mem_AWVALID,m_axi_weights_mem_AWREADY,m_axi_weights_mem_WDATA[63:0],m_axi_weights_mem_WSTRB[7:0],m_axi_weights_mem_WLAST,m_axi_weights_mem_WVALID,m_axi_weights_mem_WREADY,m_axi_weights_mem_BRESP[1:0],m_axi_weights_mem_BVALID,m_axi_weights_mem_BREADY,m_axi_weights_mem_ARADDR[63:0],m_axi_weights_mem_ARLEN[7:0],m_axi_weights_mem_ARSIZE[2:0],m_axi_weights_mem_ARBURST[1:0],m_axi_weights_mem_ARLOCK[1:0],m_axi_weights_mem_ARREGION[3:0],m_axi_weights_mem_ARCACHE[3:0],m_axi_weights_mem_ARPROT[2:0],m_axi_weights_mem_ARQOS[3:0],m_axi_weights_mem_ARVALID,m_axi_weights_mem_ARREADY,m_axi_weights_mem_RDATA[63:0],m_axi_weights_mem_RRESP[1:0],m_axi_weights_mem_RLAST,m_axi_weights_mem_RVALID,m_axi_weights_mem_RREADY,m_axi_feature_mem_AWADDR[63:0],m_axi_feature_mem_AWLEN[7:0],m_axi_feature_mem_AWSIZE[2:0],m_axi_feature_mem_AWBURST[1:0],m_axi_feature_mem_AWLOCK[1:0],m_axi_feature_mem_AWREGION[3:0],m_axi_feature_mem_AWCACHE[3:0],m_axi_feature_mem_AWPROT[2:0],m_axi_feature_mem_AWQOS[3:0],m_axi_feature_mem_AWVALID,m_axi_feature_mem_AWREADY,m_axi_feature_mem_WDATA[63:0],m_axi_feature_mem_WSTRB[7:0],m_axi_feature_mem_WLAST,m_axi_feature_mem_WVALID,m_axi_feature_mem_WREADY,m_axi_feature_mem_BRESP[1:0],m_axi_feature_mem_BVALID,m_axi_feature_mem_BREADY,m_axi_feature_mem_ARADDR[63:0],m_axi_feature_mem_ARLEN[7:0],m_axi_feature_mem_ARSIZE[2:0],m_axi_feature_mem_ARBURST[1:0],m_axi_feature_mem_ARLOCK[1:0],m_axi_feature_mem_ARREGION[3:0],m_axi_feature_mem_ARCACHE[3:0],m_axi_feature_mem_ARPROT[2:0],m_axi_feature_mem_ARQOS[3:0],m_axi_feature_mem_ARVALID,m_axi_feature_mem_ARREADY,m_axi_feature_mem_RDATA[63:0],m_axi_feature_mem_RRESP[1:0],m_axi_feature_mem_RLAST,m_axi_feature_mem_RVALID,m_axi_feature_mem_RREADY,m_axi_feature_read_AWADDR[63:0],m_axi_feature_read_AWLEN[7:0],m_axi_feature_read_AWSIZE[2:0],m_axi_feature_read_AWBURST[1:0],m_axi_feature_read_AWLOCK[1:0],m_axi_feature_read_AWREGION[3:0],m_axi_feature_read_AWCACHE[3:0],m_axi_feature_read_AWPROT[2:0],m_axi_feature_read_AWQOS[3:0],m_axi_feature_read_AWVALID,m_axi_feature_read_AWREADY,m_axi_feature_read_WDATA[63:0],m_axi_feature_read_WSTRB[7:0],m_axi_feature_read_WLAST,m_axi_feature_read_WVALID,m_axi_feature_read_WREADY,m_axi_feature_read_BRESP[1:0],m_axi_feature_read_BVALID,m_axi_feature_read_BREADY,m_axi_feature_read_ARADDR[63:0],m_axi_feature_read_ARLEN[7:0],m_axi_feature_read_ARSIZE[2:0],m_axi_feature_read_ARBURST[1:0],m_axi_feature_read_ARLOCK[1:0],m_axi_feature_read_ARREGION[3:0],m_axi_feature_read_ARCACHE[3:0],m_axi_feature_read_ARPROT[2:0],m_axi_feature_read_ARQOS[3:0],m_axi_feature_read_ARVALID,m_axi_feature_read_ARREADY,m_axi_feature_read_RDATA[63:0],m_axi_feature_read_RRESP[1:0],m_axi_feature_read_RLAST,m_axi_feature_read_RVALID,m_axi_feature_read_RREADY" */;
  input [7:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [7:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [63:0]m_axi_weights_mem_AWADDR;
  output [7:0]m_axi_weights_mem_AWLEN;
  output [2:0]m_axi_weights_mem_AWSIZE;
  output [1:0]m_axi_weights_mem_AWBURST;
  output [1:0]m_axi_weights_mem_AWLOCK;
  output [3:0]m_axi_weights_mem_AWREGION;
  output [3:0]m_axi_weights_mem_AWCACHE;
  output [2:0]m_axi_weights_mem_AWPROT;
  output [3:0]m_axi_weights_mem_AWQOS;
  output m_axi_weights_mem_AWVALID;
  input m_axi_weights_mem_AWREADY;
  output [63:0]m_axi_weights_mem_WDATA;
  output [7:0]m_axi_weights_mem_WSTRB;
  output m_axi_weights_mem_WLAST;
  output m_axi_weights_mem_WVALID;
  input m_axi_weights_mem_WREADY;
  input [1:0]m_axi_weights_mem_BRESP;
  input m_axi_weights_mem_BVALID;
  output m_axi_weights_mem_BREADY;
  output [63:0]m_axi_weights_mem_ARADDR;
  output [7:0]m_axi_weights_mem_ARLEN;
  output [2:0]m_axi_weights_mem_ARSIZE;
  output [1:0]m_axi_weights_mem_ARBURST;
  output [1:0]m_axi_weights_mem_ARLOCK;
  output [3:0]m_axi_weights_mem_ARREGION;
  output [3:0]m_axi_weights_mem_ARCACHE;
  output [2:0]m_axi_weights_mem_ARPROT;
  output [3:0]m_axi_weights_mem_ARQOS;
  output m_axi_weights_mem_ARVALID;
  input m_axi_weights_mem_ARREADY;
  input [63:0]m_axi_weights_mem_RDATA;
  input [1:0]m_axi_weights_mem_RRESP;
  input m_axi_weights_mem_RLAST;
  input m_axi_weights_mem_RVALID;
  output m_axi_weights_mem_RREADY;
  output [63:0]m_axi_feature_mem_AWADDR;
  output [7:0]m_axi_feature_mem_AWLEN;
  output [2:0]m_axi_feature_mem_AWSIZE;
  output [1:0]m_axi_feature_mem_AWBURST;
  output [1:0]m_axi_feature_mem_AWLOCK;
  output [3:0]m_axi_feature_mem_AWREGION;
  output [3:0]m_axi_feature_mem_AWCACHE;
  output [2:0]m_axi_feature_mem_AWPROT;
  output [3:0]m_axi_feature_mem_AWQOS;
  output m_axi_feature_mem_AWVALID;
  input m_axi_feature_mem_AWREADY;
  output [63:0]m_axi_feature_mem_WDATA;
  output [7:0]m_axi_feature_mem_WSTRB;
  output m_axi_feature_mem_WLAST;
  output m_axi_feature_mem_WVALID;
  input m_axi_feature_mem_WREADY;
  input [1:0]m_axi_feature_mem_BRESP;
  input m_axi_feature_mem_BVALID;
  output m_axi_feature_mem_BREADY;
  output [63:0]m_axi_feature_mem_ARADDR;
  output [7:0]m_axi_feature_mem_ARLEN;
  output [2:0]m_axi_feature_mem_ARSIZE;
  output [1:0]m_axi_feature_mem_ARBURST;
  output [1:0]m_axi_feature_mem_ARLOCK;
  output [3:0]m_axi_feature_mem_ARREGION;
  output [3:0]m_axi_feature_mem_ARCACHE;
  output [2:0]m_axi_feature_mem_ARPROT;
  output [3:0]m_axi_feature_mem_ARQOS;
  output m_axi_feature_mem_ARVALID;
  input m_axi_feature_mem_ARREADY;
  input [63:0]m_axi_feature_mem_RDATA;
  input [1:0]m_axi_feature_mem_RRESP;
  input m_axi_feature_mem_RLAST;
  input m_axi_feature_mem_RVALID;
  output m_axi_feature_mem_RREADY;
  output [63:0]m_axi_feature_read_AWADDR;
  output [7:0]m_axi_feature_read_AWLEN;
  output [2:0]m_axi_feature_read_AWSIZE;
  output [1:0]m_axi_feature_read_AWBURST;
  output [1:0]m_axi_feature_read_AWLOCK;
  output [3:0]m_axi_feature_read_AWREGION;
  output [3:0]m_axi_feature_read_AWCACHE;
  output [2:0]m_axi_feature_read_AWPROT;
  output [3:0]m_axi_feature_read_AWQOS;
  output m_axi_feature_read_AWVALID;
  input m_axi_feature_read_AWREADY;
  output [63:0]m_axi_feature_read_WDATA;
  output [7:0]m_axi_feature_read_WSTRB;
  output m_axi_feature_read_WLAST;
  output m_axi_feature_read_WVALID;
  input m_axi_feature_read_WREADY;
  input [1:0]m_axi_feature_read_BRESP;
  input m_axi_feature_read_BVALID;
  output m_axi_feature_read_BREADY;
  output [63:0]m_axi_feature_read_ARADDR;
  output [7:0]m_axi_feature_read_ARLEN;
  output [2:0]m_axi_feature_read_ARSIZE;
  output [1:0]m_axi_feature_read_ARBURST;
  output [1:0]m_axi_feature_read_ARLOCK;
  output [3:0]m_axi_feature_read_ARREGION;
  output [3:0]m_axi_feature_read_ARCACHE;
  output [2:0]m_axi_feature_read_ARPROT;
  output [3:0]m_axi_feature_read_ARQOS;
  output m_axi_feature_read_ARVALID;
  input m_axi_feature_read_ARREADY;
  input [63:0]m_axi_feature_read_RDATA;
  input [1:0]m_axi_feature_read_RRESP;
  input m_axi_feature_read_RLAST;
  input m_axi_feature_read_RVALID;
  output m_axi_feature_read_RREADY;
endmodule
