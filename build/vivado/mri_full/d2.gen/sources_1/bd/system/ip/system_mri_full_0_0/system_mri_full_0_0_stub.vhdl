-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Nov  1 11:14:17 2026
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_mri_full_0_0 -prefix
--               system_mri_full_0_0_ system_mri_full_0_0_stub.vhdl
-- Design      : system_mri_full_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_mri_full_0_0 is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_weights_mem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_weights_mem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_weights_mem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_mem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_mem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_mem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_mem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_mem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_mem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_mem_AWVALID : out STD_LOGIC;
    m_axi_weights_mem_AWREADY : in STD_LOGIC;
    m_axi_weights_mem_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_weights_mem_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_weights_mem_WLAST : out STD_LOGIC;
    m_axi_weights_mem_WVALID : out STD_LOGIC;
    m_axi_weights_mem_WREADY : in STD_LOGIC;
    m_axi_weights_mem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_mem_BVALID : in STD_LOGIC;
    m_axi_weights_mem_BREADY : out STD_LOGIC;
    m_axi_weights_mem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_weights_mem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_weights_mem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_mem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_mem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_mem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_mem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_mem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_mem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_mem_ARVALID : out STD_LOGIC;
    m_axi_weights_mem_ARREADY : in STD_LOGIC;
    m_axi_weights_mem_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_weights_mem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_mem_RLAST : in STD_LOGIC;
    m_axi_weights_mem_RVALID : in STD_LOGIC;
    m_axi_weights_mem_RREADY : out STD_LOGIC;
    m_axi_feature_mem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_mem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_feature_mem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_mem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_mem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_mem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_mem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_mem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_mem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_mem_AWVALID : out STD_LOGIC;
    m_axi_feature_mem_AWREADY : in STD_LOGIC;
    m_axi_feature_mem_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_mem_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_feature_mem_WLAST : out STD_LOGIC;
    m_axi_feature_mem_WVALID : out STD_LOGIC;
    m_axi_feature_mem_WREADY : in STD_LOGIC;
    m_axi_feature_mem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_mem_BVALID : in STD_LOGIC;
    m_axi_feature_mem_BREADY : out STD_LOGIC;
    m_axi_feature_mem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_mem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_feature_mem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_mem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_mem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_mem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_mem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_mem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_mem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_mem_ARVALID : out STD_LOGIC;
    m_axi_feature_mem_ARREADY : in STD_LOGIC;
    m_axi_feature_mem_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_mem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_mem_RLAST : in STD_LOGIC;
    m_axi_feature_mem_RVALID : in STD_LOGIC;
    m_axi_feature_mem_RREADY : out STD_LOGIC;
    m_axi_feature_read_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_read_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_feature_read_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_read_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_read_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_read_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_read_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_read_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_read_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_read_AWVALID : out STD_LOGIC;
    m_axi_feature_read_AWREADY : in STD_LOGIC;
    m_axi_feature_read_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_read_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_feature_read_WLAST : out STD_LOGIC;
    m_axi_feature_read_WVALID : out STD_LOGIC;
    m_axi_feature_read_WREADY : in STD_LOGIC;
    m_axi_feature_read_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_read_BVALID : in STD_LOGIC;
    m_axi_feature_read_BREADY : out STD_LOGIC;
    m_axi_feature_read_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_read_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_feature_read_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_read_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_read_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_read_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_read_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_read_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_feature_read_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_feature_read_ARVALID : out STD_LOGIC;
    m_axi_feature_read_ARREADY : in STD_LOGIC;
    m_axi_feature_read_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_feature_read_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_feature_read_RLAST : in STD_LOGIC;
    m_axi_feature_read_RVALID : in STD_LOGIC;
    m_axi_feature_read_RREADY : out STD_LOGIC
  );

end system_mri_full_0_0;

architecture stub of system_mri_full_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[7:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[7:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_weights_mem_AWADDR[63:0],m_axi_weights_mem_AWLEN[7:0],m_axi_weights_mem_AWSIZE[2:0],m_axi_weights_mem_AWBURST[1:0],m_axi_weights_mem_AWLOCK[1:0],m_axi_weights_mem_AWREGION[3:0],m_axi_weights_mem_AWCACHE[3:0],m_axi_weights_mem_AWPROT[2:0],m_axi_weights_mem_AWQOS[3:0],m_axi_weights_mem_AWVALID,m_axi_weights_mem_AWREADY,m_axi_weights_mem_WDATA[63:0],m_axi_weights_mem_WSTRB[7:0],m_axi_weights_mem_WLAST,m_axi_weights_mem_WVALID,m_axi_weights_mem_WREADY,m_axi_weights_mem_BRESP[1:0],m_axi_weights_mem_BVALID,m_axi_weights_mem_BREADY,m_axi_weights_mem_ARADDR[63:0],m_axi_weights_mem_ARLEN[7:0],m_axi_weights_mem_ARSIZE[2:0],m_axi_weights_mem_ARBURST[1:0],m_axi_weights_mem_ARLOCK[1:0],m_axi_weights_mem_ARREGION[3:0],m_axi_weights_mem_ARCACHE[3:0],m_axi_weights_mem_ARPROT[2:0],m_axi_weights_mem_ARQOS[3:0],m_axi_weights_mem_ARVALID,m_axi_weights_mem_ARREADY,m_axi_weights_mem_RDATA[63:0],m_axi_weights_mem_RRESP[1:0],m_axi_weights_mem_RLAST,m_axi_weights_mem_RVALID,m_axi_weights_mem_RREADY,m_axi_feature_mem_AWADDR[63:0],m_axi_feature_mem_AWLEN[7:0],m_axi_feature_mem_AWSIZE[2:0],m_axi_feature_mem_AWBURST[1:0],m_axi_feature_mem_AWLOCK[1:0],m_axi_feature_mem_AWREGION[3:0],m_axi_feature_mem_AWCACHE[3:0],m_axi_feature_mem_AWPROT[2:0],m_axi_feature_mem_AWQOS[3:0],m_axi_feature_mem_AWVALID,m_axi_feature_mem_AWREADY,m_axi_feature_mem_WDATA[63:0],m_axi_feature_mem_WSTRB[7:0],m_axi_feature_mem_WLAST,m_axi_feature_mem_WVALID,m_axi_feature_mem_WREADY,m_axi_feature_mem_BRESP[1:0],m_axi_feature_mem_BVALID,m_axi_feature_mem_BREADY,m_axi_feature_mem_ARADDR[63:0],m_axi_feature_mem_ARLEN[7:0],m_axi_feature_mem_ARSIZE[2:0],m_axi_feature_mem_ARBURST[1:0],m_axi_feature_mem_ARLOCK[1:0],m_axi_feature_mem_ARREGION[3:0],m_axi_feature_mem_ARCACHE[3:0],m_axi_feature_mem_ARPROT[2:0],m_axi_feature_mem_ARQOS[3:0],m_axi_feature_mem_ARVALID,m_axi_feature_mem_ARREADY,m_axi_feature_mem_RDATA[63:0],m_axi_feature_mem_RRESP[1:0],m_axi_feature_mem_RLAST,m_axi_feature_mem_RVALID,m_axi_feature_mem_RREADY,m_axi_feature_read_AWADDR[63:0],m_axi_feature_read_AWLEN[7:0],m_axi_feature_read_AWSIZE[2:0],m_axi_feature_read_AWBURST[1:0],m_axi_feature_read_AWLOCK[1:0],m_axi_feature_read_AWREGION[3:0],m_axi_feature_read_AWCACHE[3:0],m_axi_feature_read_AWPROT[2:0],m_axi_feature_read_AWQOS[3:0],m_axi_feature_read_AWVALID,m_axi_feature_read_AWREADY,m_axi_feature_read_WDATA[63:0],m_axi_feature_read_WSTRB[7:0],m_axi_feature_read_WLAST,m_axi_feature_read_WVALID,m_axi_feature_read_WREADY,m_axi_feature_read_BRESP[1:0],m_axi_feature_read_BVALID,m_axi_feature_read_BREADY,m_axi_feature_read_ARADDR[63:0],m_axi_feature_read_ARLEN[7:0],m_axi_feature_read_ARSIZE[2:0],m_axi_feature_read_ARBURST[1:0],m_axi_feature_read_ARLOCK[1:0],m_axi_feature_read_ARREGION[3:0],m_axi_feature_read_ARCACHE[3:0],m_axi_feature_read_ARPROT[2:0],m_axi_feature_read_ARQOS[3:0],m_axi_feature_read_ARVALID,m_axi_feature_read_ARREADY,m_axi_feature_read_RDATA[63:0],m_axi_feature_read_RRESP[1:0],m_axi_feature_read_RLAST,m_axi_feature_read_RVALID,m_axi_feature_read_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mri_full,Vivado 2020.2";
begin
end;
