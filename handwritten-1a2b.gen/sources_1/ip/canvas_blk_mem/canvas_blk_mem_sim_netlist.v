// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jan  7 16:40:15 2022
// Host        : t510599-X512JP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/t510599/workspace/handwritten-1a2b/handwritten-1a2b.gen/sources_1/ip/canvas_blk_mem/canvas_blk_mem_sim_netlist.v
// Design      : canvas_blk_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "canvas_blk_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module canvas_blk_mem
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [0:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]dinb;
  wire [0:0]douta;
  wire [0:0]doutb;
  wire enb;
  wire rsta;
  wire rstb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3154 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "canvas_blk_mem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  canvas_blk_mem_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(rstb),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21728)
`pragma protect data_block
xQ0kfXIfai0siWFHEKLsLbDHjL+doj5FL3HS4RoOC98jpfuuwenDW0C2J9CgzOxqlDJ+6RpW3h5+
RoDxmAYOU7tprHjT3XI4qpJ9z/Brsz03x/LDpzely+GsfSOiHp48OqlZ3ECx771eK4+Q4NI+F6YO
8nIXppL2+PQCpHms3AKgYOmKfe/qdptR4mvF4XGNoNwf8Y5+/tdSSZRcJQB0k+R5mP9c7qoFi9D3
bXvtB8FFopcdAFfUcIb7oTHSqaw2whw6tkBahtu+8Qlr99JMBFGVzk0ug9td/5gcjiL6cwUFslaK
F9dyLRALzkbPkPteiUVVhfi4PsR/6tKT2zQLEvIXo4EwJ04cdYeT7VdVHOeiKRy4uBcNstJ/aapZ
P8xh9YxqOFjsLzMkvGFkRptLjDZF507v7Ugj/vjCLNGD6GX+7KimgZx2FoYDWDFS7HXHYu/xbDqD
0H2W7jxynHSL5meffxIZdW75suqJnDdTqxubL5RJF0Hs8dYybgijTeao/jNvQ28+U59EQNt/5Zp0
FzNQKriN5MNGqeh6GZKWFZ3cBGYqGhhue9MVORV59jojmtp0pCA3PcIRt0wsTldU/frMhKyVSiFJ
FHdYHrKaXr8333oTjYq57PjbOVSF/uvwBnX0pvk3TK87liUdruSZoTt4GelFCh8syCZw9J4hIX+7
ul4GVM5/+D88psN/cefHOFezwU+fx+JjrgzJ+26L9snoWwikt4B2lTDpcgQtasaYk8gcq/r0aOYw
7NqiVHGxw/+C7iwsWWkEpr2I4qxi453Mt1EG9OxoQ7FKjOnLj5U4ggLUdsGHXW3Rwjeg0w1Rtb1m
xYflG2/WQ8M7ismvpyRhji6RFj+qmbWSWhV7BgWQJ+x5SuPHUXZMhdgpSiW66YsQMGNTrJCNzOy7
VNUdfvt3QMWV/kHu7HDKAv8bJcYjvX88qRU/yUVACyK4xl87Kxnbb9Us+AHDe0HIfTfVjAEYP15x
ZX+CgHR+nr55eb5yAyAlH8acWCUJnITuRjVuZM1f/mDhzj6S6C54HGE4izcDW25xIJHP8PT0IL7Q
laagy8yS6Dpmel08XiYLwde1JgIP8olC9uLQtgaphpu1U8MFx2k6lx+DrqWdiuu1BuYeop2dPgtr
Euj+gUVpJvlzh+G5pf+4vr0UBsarDlqf6eEo4QyC7yZbsQOT3/Pnle6DvVLetapOSGqRD9bPC0JX
K3e0vCIZTRDJsuCSEwYF9CBFP8kJrq+6od+ulvGNHhxWtiBREFYqrg974SeQ7HkVL6fBb/u8Mpy4
hZOMshVkH8+Tkgw7FaNBcW7SII6GScbgwA1ghuLhL45YmX0EP2Ic3uWnATsdWrKdJV8yZWcaRCnq
FTUbpiLbH/ntf0o47l0LlEVLo/bj98li5fprQhWALgHa++Xmf99dWIlZVG6oNsG0yThiG1VQMgBO
MuhaxDL8UxPvHpcOI6jln1Vy5AAufQAapABiRXMY59GVMU9zjuiKq09ky5iAR20yiTLzQc4is84N
ndgFpAl1fajC3X8xrvCocxVZQ7M7nOTOCquZV9oNywcxcu4jEr68h4uC4erG2Asvl80dkX29bbfp
no/FAUcSi98W1YShZFeUZgXdcuBUIQe1ZK3JRU7q5Pi4uoHwTywGcgNTLAfG8jvOi9MOnxUgpiSg
tmLJo/rvx2ALH//IxwNa2fjw3rQsdTG9x7bJtgJICyBxOL4FJdSKwD+f0GilGans9u773mq7gNmK
xhtPdtu+6gS3TGeniJiI4sShvs79HeVWRJBceNBD++3N0XheC/sNyHb/8twsH/NOrhk9+NLxobpe
6Tbas7Vv6Rh+QRWYRulurI1npqghm38OLDNE2BXtFL3/FMV2/sHuEFxDuoTRWaDDMpFV7XzH16Sm
0MVB3EGkITT6UaBywIycyUWisT8Apg6BFAH9+CnevvRNIKB4TDVFcERGtLMWFpp3DwNKfKWy6JVO
OY/ZiveIz+Dt4NYuVkHv65JErrq1p9BLXkYkBNKsSG1iT9HOEd+1n5lt2Az27ljlXKzsMLZpx4Tn
NbSCFG8biy3BZvLlV5JJPjPTVKz1Y9+aGcBugKTl9BtNds6qHTzJno2KYiSxaadU15o0ujoTyMSk
EFn6l18XDaN+5lfClg9DXwSzrJsO4OyfaMiQDh3KurZkXoCxUQTAuNTIxN9laPVKJCPwLApOHbwA
mYeY5v6SeLyBJWdothHDNuYB6o0v3FfSqyEHGJjQQ1cMKszm3cULdOC7iqxoW0+r8Or8WTWF/3rc
uc6eyrQ3QbGsPvlV9IJx0ilTA1UPejFvkU+oxI3PJ2IW1QekvehVpcEdwNsztpMRHChDwA8I6CTD
IpkQ2DJsyxTBTVlmBWNEqK7C0D7Yk6lDdVZFaEyU6zLSt5pS4mOxKDMNp5eTFkrEDhSouy8mD2qO
g17plc1Mptmcs36KWkTL+BroTeQ0YdQ/gu6xbPmaaqnPsx7+2NLyyNHGviAVvQqER3Ub2jBp/mN9
yvzFVYcDsE3N6lu41xRoP8UywqRRMN0Rjxc2ZBhasZtif1AzYnIYusj1T6aTlgwaY5E0VDzKrmGi
PVu8tjrsTq/ftDvHhNCZafV0dRr3tmolUUhXim/0o3fI6WtdUQIcrFxEUMVgISemZILbmyUZWAZi
+c5xZlIdwRz7EAYF/wkjYD6lwDR+dModrnMaAuzq3G+RfnNyljPpximyPK7IdZ68Z+eZFqpxTQJN
t/8vI0AcFjjHTfgkechlrxgLCZx5RKeoiNypOdeX4CgXZsbqwueWHXJWqBMKYfvLw6u3erdLgmbr
B0nfeE4PApCYitUvWg0qQ2F92jcP8JuMAcmDruLzNofSEwppJIq9dy6T6cQx9XsL+W/vt0JYuhyp
xFFvEZ1sEQJUpQaN9gRdRa3jsSJof32t+xu5U32U3Lrk+hdqg31lQEgPEN4Q9gN8Ul2dqGd5sJJg
xxXl1pUSh1oG0rVLbqFJcUQ6qkXhOhP1CviLJwu0L4i0OCi3m4fXCnpAmcEESp8Y4hF5uEB6zgDw
nXoBZAj8usXEl8M+BczHrfHzXSv/eJL0w2SQCTjQq0MDobgszImou0DykShVU+O4MBbMaJ1CAEUm
nUwF5PTso/eZJgyI2kVr3w4f1t4k0re29TNIf2JSb56GANuDbbVuhdisKvd3dVluS+Brsb9lKPUT
S/3kGBKdgCKgmtBtIDb50cONgwuMGN272XKjj8mh4DQKxX/MflWYO2BXx29jGNM0j8kB+ijDq+Ik
vSGsN9xSJ2Re/LzSOFnRZVUkVZUi/5hoLqTxp9N3cris7t4QFQxe9kV0ld3m/ZUEKdBVu4MqREqg
w0zTuA5cHWUEczEptOY+B2a2gDmW7l1QATIPwRSuJxK2YJSd8q8kDg2S1oa4XVpdTXoeJIS+hB2c
pJQY5I3YfPL2HYOY8x4pGEpORrbR2cUJvduqe0IEy7FIBwq+J3W+ZFKviqvxwVUaBhS+vmwbojDR
VQ3YTMfSoZSdjc5EaCY5143uB3hymlIxeaIep6OV2UTltAv+sZ0VATpcQCKT/YhzpL6LEgz2f44X
ZpEtMyMVt+gYM0BSi5mwMgVhlGXQmB91mscfk5RhIia87ih2UjbHURhv6Zny010VL2WLKc4GVDKM
FwgVZmu+CWn0rthvbTqL0d2KEHICBMGAWgsxMynED+Oq0FaoLfc7sPVPSQg2Q88ljKnp8xtPR2Mq
V54J/lJaQSnxwRscd4aM+I5DQlfOparHX76Gdd8jbUSPQ7mcmLVEnzUJQPubJxQvgcOgcSpFzP3M
m31BvE3SAJDY2mNLwploxT9MMKNc3+5BetCD6wSMwyDSSzwsV2EpgV9RGxfMg6trdYiM0BD4K5Em
Inwvn1T3igGf4W0jfRMWXEW1qSfP4gmfBuI0lhv/EDZRboEWCPi38gDMviDyxN2d06nIxeRXQ2DL
rzKc6DVIW+h9yLXg37vFoyeYHh2gr7qfMWGBVfyi6e9MYEywHRjWi/+X2X0i3gHUm2Okxce26t4x
b5XomKncRoq7/NLWydoe1y2TJbqbvge4rrDSq7nnSwwvSlIAUIyWND7f5+ZaitWSxo23DMr3vx04
45KW0GFxxg++7va5CWYvFRwOMOTknw8HVjlMGkOPjVT1sa7Hv1dF5zpDDSXcRae2LurWDIePsIK6
qWDgqGo7G0Nl5vOiBg98LavivzQ/J4uCnwykcDBfx/nsV2sSzA0hLJSIt6hVSLRUAqRdeO0ho3Be
kEWWx8SYAKvETRjTzZEaH/VdVtYYuK1ZYqyvcaFAQwwx4uY3GmV9oNvCZCa4WtiRp7CHqLk8Qxrb
Wht9Ql79DnrZd9vISsjsvoI7vjj/w6uiRGrtIDvWwdYolLzIxBFtJI3Fbe/7x3nCF1osIWDrqBWI
7TqT2lvJnV3/vlURsDiSpwgbxxV92/aU56fHNW2Il13DVJJOucSG3pOW/qVQsO00nKfgFqJvtJmi
k8eF3ok4t5M19SbI8OfinzV5abjKYSf4PP1C5XW1WMCE7ukLRfJE3tuXvejDvv5SVISt0A3M+dvG
ZZHo+Szmnh5nQX5Xhkzs4WhpAe4h+dmDz63z8qPQ7HSX2+DJvy/YsGZNSwIH3ZJHAPHyOdy7dJST
/KccFsOm50+ue4aO/SR8Vfp3DVyPT1ZNeoNkBXpS0UTcs3zB+MuvoXY1c3aZarRtIdtLixQ4Gr0k
yI7k1xQoN8P5FdLEiXG9F1qmyNwms9QRf3yXvRiFxb83OzdcozPZ0+5iGvxUzzvEwE4VLiAwh2+p
hg1gMjXcL8oAZ8rAL+AXAeGJYuvABRDdFX9OKNYcZpXr34WRL4j2MjRSD13vdiMJR8Fuy1htJ0Sz
G1BPDWplwK8+Y+4+8v71D8Iu937uC1uHPkoZWNwlQTvgAk6shU/SISqqiwYalzVdBtdsJGAxb4/M
EF2Uyly+4iYh/CtATD49ULpZ8Ex7ba4tD6b4OyDU87Rq0Z+MirFXir/4+DWtGIILLU/mI0PRtaEc
3yB4U93KH96O30ANt9h9iyG81v4YywvQEU53Q6Q5EbgE+UqQvSQmcs/j1ObnG8mh6p7i6JkfSlUJ
UyV2ZOm/1sMZMtkzhh3lRJ3R6QgjoKIEZdWyUG2TG4EXHWVgnGC54lY74FcvM09E9/DYbfg90Nib
4SPwEFuPwpKwKi7f2wXHchPzfLpD9jvl4u2KowS1Ae7LlbaXpKVRjtztcd2a7vUCbOkTMPiTIL7h
LeFrDWUEGBCifd4aBRZg1Cfrnn4P/0retKSB3YYVsc0vUDg3KFCCW0/x28PRT+X421flWj5xIhlA
X08mjmlSadvLlqMVwTn3UO0Amo53OF4MRDG3/9jYZjTdZ8mOmVkHTE9eq/FWVIlGr2fIXv5VwxI+
7KmHnB3Ouh4wjFS3B0xSf+kInFBiX6Oa0IM+VCJYTDKsd2DMxzo4dnHOmBQOqXAq1zWM2rlMUgFx
E88KI1iAGh4IIm5iHQdKLQxSy6M17y2lqzh65Z4yyS3AZ4GRInBxHJlJI/XA76IdPIibfzYsNEZ/
UCQ3kvTJYH19FsbX+M7PLyzo/NtK0unneV9sLixKFPlElV6MJ4Qlvo2rJS9ZB/9GSa89NN7TIY4x
+Ii32Q7Au9nZnxN15Hah0tboge7FVOrGt6BjAqymzhCKq4ZGK8w/ZXnyO54TIM6IYOAFWuG9dLVk
JH31SY8HZEW4he5c8TMGs3x4kwx9yHnANwrwgIjABOGKtYnaEXws2PX7e6VtLnp7w2z4XqoKywoj
C2I5t1THxGwj/xGQBd692hL05nJ7O//EIqW1ZpjaR9o1PFrPpsjwx5VsN3CYy9cMipvFMxWbdUG0
7s43ZpPwBDD0XBJKSgSHI4qxpWR7RrBUY3mLhGtHMicOms8GkesxRmLfPLzInr5VGAXFNCRnFf3D
37sD5E2I3bZty3yYRW4HbmFWXuG2mhzW3iAQ5NoUn/8CTZ5sSi6kMAr5mCU3fx3EwRlmCt3gOABt
CpD2uFPCZTnQBTZtM1fvcsRE3uNlrQMoVUB/gR5dSnjJBlKomcOQLpusqefgfDcknrfc77SHCGnM
QENlU+Jq/Hw5AfPWQzw5kH81LsjE5rh0GzR72jISdzd/6CduT5EblN6fSBP01eg0dQGiiTc3G2tE
DoLQx3wofi7eqp8fcePlrjfGJ7uzhIdpBC6QrkG9sZB2JknDSG+K1lRLrNpbz4Oc1yTNrgaWfQ6b
JpVbEB2qAqPzAVLvIGnM8ueLV3jjgzp5OMRVwVwsrPzFYZhP/opl2f0h+ki5/cbFXezyj1mI1i9U
BeOkBpW4Qgkq7yekKMBB6xxv8QU5QotEGcUJee/LmPHwBhkZ5QNlGDYyZTIBB+G7Nja4qLoDs7Hw
hLRavt1kBH55oBwhUtgQxCl04Wu+t4uEZPJAspAP+MamtMSIxAvsTErAI8/TYLWi7Qe0C2nuxf86
p+YDLDUyGuXHTVDatC8ky6rbgUIGWTliaFJ9w8xBlwcrYCRzwkpnHC+I8y7mDdvE4iLOWyKE4LlJ
S8uO5z1uq22JwpkbLWZ1gt8S9PQ0paZrZkJfdZ+tkuPh3qkiqiCSu5jyYFD5IaFgM+1dXX2B3TcI
1moEguZeD97kqPPdDhBRPZpSFxuy+YJc2dzJe9zmdmEVWNXRtZbrvdjRZdNyAQxkWQ5/3u4QJsTM
OX/ypgffLWvu0mwxrNX0Q5sakE2zBsQzZGcdVCxJnja0mNMSV0QCd9URsl01fSBh5frS11gLjSF6
cgSHDlEyWglJBytuxikylopxBrWhLO+Sdz2BHaud/xzg02dVz02UB3o2Iq8DqWEAg9fDOnsdAgky
6PRbmen7r4DdHwAA3vTKgF+AZmV1nWUCWQAwHbtJZIL9AVcWGHx2BT0aq5PulOgFDWXjmohgbM7J
Oe2RdX31t1eRMau7jDELPr42irUNjjO2HRa23O0zUOj9kNAM/tn5EMM+c24vUgaksVB6Gcc/KxtD
/NUlmDd4Rdir/mmwp0osut160L8D4vVHZVHWQ6e5+gptXhgSHWqtD1FotGzACF/cNJYFl9AoDfHc
f74XtMHIC9GgVcL+Ni6/OUEBwowPgHRvvYW9wVk0iOc7M42JW8IqaE7P1qpKczSOKaC+c8g0g+/z
musvtdFL2OpWywHURUyEXxQYd4q+DaOZQAw3jlwuK5RnqNqCB1qt3/2TY8SSAsTXh0UTa186dTSZ
xnSlktolAQUBsCgfPq7U8VE2C9JnfIr9IP3KD+cE9pyzpwwNtL4G9YRa+24N6JqgZESa62fOvwHH
BDeA8XD6d19U1F80SlByERua10oKR5oTtVDdmQZ2YOMhYUNfFY6MTDoZzQy9f7BsWcV6k98LZz1d
G7XuRtVuK9dD25H52N/EW0BFZiuYrsv/KknQ8RVcQj2a80FCkpeNmxO88rwTvZtJU1LcawUlpyzf
99Ovd2fLRzQ1Lslpd05Cu2g9Fj4ePRs89ob64a2YBwDEQIJDlW6DStT8nu2GxKUxneGJnz1Mq9wH
KjYWRJtUN8gsQM8vXS9ox7bazt/N/Xi2Lb9sylc1IFHSAM9cLWZpOIGrksmKDO7OO83I1Bmc639E
9Bhcics9DosgZ+3d6Dy4lKa8oy0n3mLnn2AZy5X5dY9SLfi41VsCUTZ0Z0XOPWfhxrtA0LTQdd1K
0iuenzT1SKeRZCeoM8LiQoCwlqS/IuecNQu2ev4hvR55gadvRaaKlKojTxRqXUxovpLFs3BMloCj
3/3kES1bxIEecwFp/Ye+UUiXjOyl5X3TDcG6usLa1ODGU7KjGcINFDWpPRcv1KBQyW9eUUoKnvTq
fQbCpOH1Dvk0dfmABRpE6yYhUTyC40pwXFoItXZQhTWNK8AgmWY6jbfvOmLXMzj2N1fCg0kWPGUA
+g+fSXI/2rkL3hpai4UvRyViIyJEcm5Ji7tAa+nF40PMiR3s5jFodLOdHbmqx+ancG344Hazuiwi
gEX0lmnSqND/os6W0TBc4Ysa+aox7rhWVTejqFh0x6hbpPEy6/aVLU8CTGYqli9vjNaJWH6SxAKO
QRbtPCpXhrdNDlzZj4ZGrc8ZqAVhZN0e3ZpsxycFJMbEaSFcsnfuySsvX1IfbMYGWL3Pu8Ep7Psl
AfpPPq32OQUyMbQQ9CZGcCuVV2HA7qLvqrbBQp/36xlZbfp98d/ZFN/kIOI2QvBvfS1Xg6t82IuE
5CP6rDV1b+rujf264IwX1fNO77f9pg45Fho4VtHY14DviQXFs3N897F8ZkT+N2PN+4UvziubBN/C
cz7yfyoJXpcsQtSxiXPSXCRczlMQ4PEvM+v+7UOecSmz+akqPx51mtlYYe6YHE0eZNrslDjXPlem
nSS1EGS9SYsj1g4ltOJp4GIWJHA8kiB1nw60xxfXxhPBph2S1Dqbwi0BxKzM6GICaVbKD3S2FD/q
4MLsigHZqa63HU5W1iERFDo/7q9KWZR/L9hhbiNh76KMIoP0mdLlMMhkHL/Q5gE0aTdVUXcLIt3e
cqo1fvjUQltYmn4PgZ8y1HtHoC7fNUGIdDO7Qnz9sLhn4DoWMOj1CqphhjWoYWSIyZEE0AgaDWck
tHNab8UltjV4mt3bmcEtRJwiXDXxMUNTW+4SZGvCxyxg8aKnl8Ujg5Dwfm3JYcni3KfqyR2uQjbY
/z0q1HZ/krJJy8NukG7wAogA7Cj6URxaNirD2CqvCysAUnY1hpu40Lk7IrdXz7RVn2hblQYS50SQ
hZeNs4MXPLr64675SGlUsX5DPQgKB/QndNkQistUxnCH6EkMfkJD/vIUK6dx+PfKqPgUfPwRuOUK
9zI5aKWMKaQuXmNzugn2JXYmBD3HgdO9H9cAJzMKbNVjp0dFODPFajD/XlMWJi/XS+WBP33H/hhP
9bMChADDCtt06lIRB+xi15IXOhjk34JdyS04yW2D9rtFuz6QGOA1qYBVq9iRlN+sF6MD84UWUT76
jF934qiWp2iIl97zCshmQHGqLEcjLrAt8RmoiXXgGBo3/bhims13nLha7UsF8u/Tiq2YxEZ1i28a
WP9pYB2p8YkR/8sZ2PNtFTAFnIZyRtAYhdgi+RHgV0bQ22Y6l0zhGR/69r+ApV5MiwlZoBDz/kAE
mGm/My/yGjmc1MYwk5iM36Mrh7rgfeSjgD+zsL7DmBTlF2Yeuh4Dn3cZymi+y8UwQJaoeqOQHi9F
ujRosOYwFSnjvyfaqeYFfpFsp/wBXFIcw9AKZX1VdVMvnJkbGn2mQnSXk4/TQz/hk8e1rBu5k6PJ
El3eAhzVfE/t+aqhHdGCken+iovVEXDPtgadoZaoNrmEbFnMNOkZp7rUMC0BKx8NyfB6BSgdQSSz
wrelK97tnAUAAH4KRjV70BnkTZKv/aadfk1hGNgfkSBvU27DOqipjWZmo1MEQ1i4tl+M8t3/ThIa
s85qKwW8uW2YyxYLRe1cT6NsAUwwUQAN+BKZm0oCVCQfFSH6KC2/ylSu0uT/niWeo71I8STXncV2
BLmjqzHMzwTedZr1ZRaVGokSQyQBHoV6hwjkqCkcKF7uN2KVQqq9it+1VRwR9b1m3NRYJuaEV2/1
S9R2ULrzhoXoDmNTP7nnnedQFGB9JFPlIjX9UVt64/WRPcv7ZE1F2QO45LW9pWj8xVg0VHABRt6B
oXrJpmXIYfW8jD5KnKzICCptd901iz6D59ubDMaamijTyOjlJQtfEPIlNGYZwd0pKik9ISkXACB3
9Ph4U3+BeirSD3vxsfU26PoTGyek3Cbmr5T4i1uI4YYl2GFu9PrLISnvXe8x11D7bUAYqRLgT3ry
gY/kOQWYbXHw51Lj1nWPE5OdB8Ry5mUj8r07aHfJ1wJtK9uRMlzsCuXvim/2qMogJLzFe+E98vhn
trQpGW2FGc+3u7/NYYjzIBf3uUCXEsZuwAVnhrmvgeNhqB2M5Ckt5oyFMJvgldRRYhlws2uuwIsT
W5Ixu6SDJxemh/nQFdli0SPGrLGmwdJvJ9QNMQoxDqxMO39ns1rBya0wz7nMaRayml8emWI2cnJV
HvNh7VhrwyfY8NPW2QxM64OVaY+C+TY+2aREt3SXMAfjzrbZ6DJwz5G80/1dn22r3CBJCpGxC401
iHx2qTOuw0Q8y96YM8jOureFCRa/Kzgng6jneqgVf07SDc9hJvOpKtBl3bS6Gp4+iIitTxU3R7gT
w8JR7h/2NHO9C5fYhiSQ45y5zg9t5ZvBkpdW+15t27wtAC3boSoyCyiP6BdmXPrl/E8Z1r8qh25n
FpvsQYA3b5C3+4kMvpsBBAPuXKpIddmhIjlSu7o7nvA4l/wsWyvfRlryeAberxx7El+G79Kzui/K
QMi2MQCaD+90JNJzznwpQdapbqouN6LplqQangKj91BqL1FFTeKIZb/vtzL5Sb6G/jOnjliDUvI4
R71mz4HsICe90hNzvmgAAzTLRum5yrGGuJijUg6aLrkjaR4jJ17BFBlN7VCqijSBPrxIVPDhIuRa
6Ccr9w/GVb6cmMzlG7YgblxyuMFjxqVcYUrTWs5agoS4HP8AFFyZlWKqlDby8QNtT23xUUu4//j5
HL08lzO1XKqc0VTIbZ+2l7r095dfPVaBpzb0qjGseHWAZ4dfRSTuMMO34gUGAla5tCqL9zmdJPIL
v4zRjRf6JeE/zZ0T22CtmOnBi9B39Hmcqkdb3+Zly37iD5zi8h6+E3HXYCmnM8HAUox22aLwZErj
4p6osB9bXhXweYJK7fknnlVgFFOSWOdWxkTNL96uOc7Qc1MsUM0RTRF1OKdiezgQHSL2CJLOZi4V
4VsQsBbXRZaiM0VBhVPUmvaYViCTmnD3bVL2cU2xCzibjNPYONpfVaDhESPsGboQwSM2ThbKGQpV
i/n8oehiZGKxplRoD1kUADBsN0SqFcaBxRtR1aCUmDC5Yy+/x6JqVbc3V3iG3u81v9b1t11+PxWT
8o8Dljj4sQNjJMa+wsYCYVzs1HrOAqMrSUBTPD+iJwxeV7DV8iBCYkk2vffd2skx+67unMQRqUVk
lnkos2DP7lHMr9vnzKVpN7QAksok2PKWTGlBGTK5euaQ5Kf+agGmJKz87qjfgtAAoXHvCdQRwh/V
7V0gMKXfNX6HM0X8OrU6FlYC7UFsEitsFVEphTNsL6ZuR/gG+GjrGbtFJeCpdr82IQaZzSDop+nl
V8tJxE3VOpwkVrMYBb7ADdY+T3sl9B5b4HsP2sMSeT4CnQ4G2ImoPeS6E87gyEpDVpIL9I+TjG5Q
U4dwfOM2FPaV9BCRGRf5zpBzfS4zrU6FjihUlG/Tlj/qPw+aBbheeks1dq5wB+5H9QGTPtgEivxR
FADukRNvgzPVkZeZPwbhOYM3CreQo1urksq5lPSNCAp9TdPDbArjpXyy6GHMcq9zjypJxazcrE8f
ryzxHGpB7Ri0RwIeviZ82xoSyMqnXtQXfALXqponbIctGNUSFLB9/e4itocUwxo7QHCsps8p8oI1
HoiC6fnG47Fn+TZMhbdxUZxbiaDFnbKmU92Fwr3J+Wo/eVlEhr1zjujPx11noqYWy6yMngX4ovNf
M2qrt6UT4UN0fBLmsSoFfsJLADN5E0g2lx6Eh8MeVn5CLrDZ/zKQUPkjQhOydARvBDSqXSLBwP89
hwhJUydQulxehKDdk/6OKCOdOQFxBJNbY0OgLKwd2WGsKWRzDGgrUchNRi++6on0fc30mjcdBUke
CAe01J7SPB+gvaQUILmnwwzdKXVdBC7eZxfQAt/HnrkhCQZLYTNrBN4DzUmdbp2w4SlvklBEe1fu
jZGwNVuw4tqNyb7hJs3oLd6kAiRowhK4c6LIkRvA4QYeG21Hpy0ZcFkeku+1IfIuGLL4iDFVqU2f
2SqfXoMPYvGY8m6Sz+2MmNYSkw2tKsm+QuCaL5ddjqyt+fSRz/TOH74wwiFNJ2pii6KjC/xvbQc6
vjJLXAkqLUFppVKQP/NVZa/oIO/meMnMtJnYRXY+iZoTXUyx0CXrKgLp9E8VTSM5x8IHNr7VYDqw
o7pVhONjuAkURGRMQcFDadH1O47dJRCs6hQZnV7U0Txi0937wbowG23aPcybQKfFhVY/4yyOvJ44
XMbHw1e7Dg/W2WO/AlsxkG5mMj3r7HK4zf34of7OHgP0BPHL007pmCdsKrO93VyMRQB5hgCNV1wh
aUGLTfkYXl/YZ/iEUISqwJM3jyrze6+m06r0wvjYAaeG/Ghp9GSh/RkvAUn6FFCXHDLUvyMoIOxb
ieVYLnLrwFDUiB8rdz87yVOGqLlYlxs62NsfvtfY41MVvxjHcTNjkZh1NzTBBK1iSVQtUpcV9R65
Bo3mU+tHx3jIVLPYB23+07EOGjtM2D5q4l787W0hpHF8vX95FdvjW3OrkiPE2dgSkN1Z5v5qS9ev
UqJKtRGn7kkSDKkDHCtjktdD5D5Gfeu+ebQS4NwMIIj7sjh9AWJKEjgkxZZkfX4QR9DFZv22s3OX
CShAp0UPy06uifL3bS94s8fKygR5pwzi2OlutNKJwm3zZerFL2ycZHNgeP8d8cWNPnZvhVHmIt4H
RmjlIgkBuH+WRWmjAcEaGGo9imwsFaAQ64GEMakh5/iY6Ps2mrU63wk8LXG9ivGCBIVveNUtd8O8
QPxPja/kyDTzrkec/P+ufNsTuoI8jybKKZUqZPzrgYpQFXUw7kRDtXoB6O5G1N/y14HcQdYBm2hc
QmMEXbGfL/6FX8CDtoysaZ1rYUR74KunbUjLEfpfDUcQnPrwRwzMab92TRTWMwW3kTuSYg+lvUCv
15iUYfVHcPjCD0XpsOx0ZNLgnctvOkskgZsnfdnpHvPRns+FKspfFBv/EZnNmyL/+f7GmnU/jrWF
nRvSWmzqCHSTo+zSmYRug74bxYIr86lhaqEzGcxmnJqlmTe3Bm/4KPa0zoQEaeVs2pRvhA0NI9P4
+2/AV4ApV/bUgr2CVmgpyix4FEKf1NfNBiQPjfbmKBLTXTyhGkFGP0Rnuy1WFLSANU8X+95HCe+C
lxU3UBBnrdyI5qJDX9hUvw5P+om1aqwoUBqvnJOq3uH+4KY8fZj16LGR9yXvmExxC9iLhSynHVHE
pwevHMnoPXpq02ZV12/+eLD2VkmlvbJ502Ny5vOkESO2bQCpIMiXxjzss4YDkuHM0G2yqeVv0zun
BjVfPv9ka4cTnR01CqM6BBwDaD7TTbMhGpg2/8sgzXF0hOb2MGOISQfzh163eMWtlmAtwp4DCo6e
nlVbFvcP0nOBhKdrSBlU/1RkJQO+3tDrF+fJDaB7sIwWToaxuldgEMlbtwDPZqGchsZbOMyPXbYR
suNGfI6MOL/2E40HZd3R0z+5m5qdkREAagRvWKkNZ5P30szORW/lQR1EHwYmLvtlMcz00CWoJHSb
rIC2F/aDJDUIpZdxT36zDnEopOotN0SuF9AhzxmjW/RjzCk2pKQVPZ23Hl6krRhzOugKYbXJrKiK
dvmjmxB0o0d6xNR4oQdmfm01VFp1WR24eAIxdjideZTwWOR+Hh0tzU1r36HGzCcCP3VSp4MirpJM
8Ccl1XPVmJpyh+tocJI4zLtxoPdUpdrNW4MZuGAoijcHutLjE4wUwUl8CI8mRnVi8UuL8s0QL5VP
wHpyoNYySgGHpHnDGoRb01VNhyCuX1tltmGbMJfwffHY+ac2X3gEg9DLjiFUFncewM6h+R++2VlQ
WqlEzR6xWedp0T0sRxQIa+HOo+c8nX81yFCPxvq8MSuSX0IaNlpxVk5T2Or5nlLJL3PTeq+8hCZD
EKelNLOyKp3cJpw98myvPD/+wg/CLTkLy92FZj1M8CCYpdS9hvkZMvqDc4Om1X9LUViifr/zeQei
bX8dingXPotoEog7GLQW5+7hFKjA7ky0rCRPkCOJkUw7m3UKxd5P02wo2wf+YWaPUvoHhj8Xii8e
2eLi+ljRAqG/2cc7cnbJBU5SCw+EDEVxRI9/x1uBkQ0hDCBGCMccMTvR34pxfzf8w7gXntDS52xq
099667KOSSiMHB7w1mLtPMOBbZ8QA3ZWJD+TP7zqXphNlsa55fSTCOV2KEkkiQhrttZrs5orVtUA
wkN4oAWBGM8ylHxEVPoo627WJaIInfAm5DJwwSQ7tUzxKPdWWP/FmG55hWwggoJC0QwkMFPb1fOW
+aS0DStfK51ZkBqjEP/N7JFW0/e8p7CtIv7Qhi6YCa9QMkTF4oq6fmVoozI4GfIDRw40ZN46OZOx
RBbCfDfioLWy03tNPW9Ev6sHGTl51yIj9ATJBKw4vvkh/72eH6HQFLbX+1CrQYuUktxnQmzLqBV3
NwWCs0apSUq/nR0TY754IKSAwdTM7bFrg4t6MWjsx5Zsy9k8EuMyWyhgZdTRwg1wSWVPceg4wKql
X/0FwDt7teeo0uEB8yT4bPxNF8W8H6phmdo10IYsfSfkhqfx2pKXQj6T6x+7QFZ6dTOig/7l66Se
kxldFQ9Ml2wlZLJjll04UfrGC4NMRuRMMm7fdin1opFr+xuT/gZ7h2Vqk0N27Dpp4ZdpDjj9tkvi
WrXI9rqHy8f/kX9BXJQhi7fMrbAtJzA/4F9H8sML6tI0F8/gOLjZIRSd6uNeuPm02yvP8/KJo2/l
G7LmwLZh8YHQtJHws4LCTZL5LMis1ArnjKQjtkJxNoazGbuIFbUmygr8GHpm8ROKB8DXZkSqeQLD
K+EifCuXQPqu+1EGX7lKnn3lgsuofQHT71BGygqffPEDeY7AyRRPEtme66JiTBanGZHNxirTEIWl
qAvI9kcvE9CRq+7+EiZsMqs6e4RYuAqDWKWKNsMOHaku5NQEloadM7fsgXv4mEHipDK0We5OPOrC
UQguu4TvUSDLTPSXsThb90bTNLHf7Mnlg6mtu3OnNN4Gw+hxQeuDmGak1NLFuxv8U+KDgZdZQ6/z
Nvoe8rF3xNAwffH2XkkRWM4peEGZmohDX9eTe3Wz24PjLHlT63WID8NFNQXZ32oyac/fbzbFl45h
tDf2PIAODLvnbAE4UIZZQNI2PueWyUpp8wN0fNXCOGGuF2wRvZHrG4W2V6j/vRaNoyH3kipy+OFE
uK+nvM5KyJU4ufLvN765RxuYxwXkZdctGxyWP2KVmPeCpteV1VKC3azN2THTeD6GEqrfkCVq95a8
uznP2/gDZEk/kW9Ln9CB4Rr86yqL/yh78mW/VlCWeNfwKKyFMX/uKlU9lbTkJDhLylZr49Zo4uGP
OzOgjTA8RFYW4fJUOGgoVhdgV1Akj/+B2ll8YMVOHeahT4CHBgsh4l/4i6N1gIVDRQhMcJ6Q1nQl
QE1b1rGPJECwTky2Gw8luXoE6owc/yP+xBiOtqnEGjBmb+u/xKPU4EmXB17xHVsqYfXk5JgSdjkk
rxeQbF/ZWfgu4hOI1M2da4YhPnUugT7b7mrMSZBt+545fVYUOhwGtASuyHM4GCdLBSAsin9w7Diu
w6cALtRrNWCU7zgxGc73Bi+wGzHjNR3Kg1cIcAuMclvmY5vEPU8chB54pCRmtUBPsR5Ek7IwNwXc
fyAQzwNuoNO8HESr0lifo2B3a3DbYKVJkxLjV3ZjoTPpia5F4H7Um2/PBHmv/X1xJ9HWAQt5a/ct
rK7Eb2ZrdXLp9rLPOzGEMKWLkv/kxep0Vv9EDt2sPJgqIxPrXkK4iLN3owLdH/uVXK77XBRcA2CI
+gRuOpVLT15ToSufptiuLcEGug8my1MYCksbd411uK1PSG+0Y+KdDR8WEm2z4c1XtjrktiQEtc9y
NE4VheneVYtJZN123ql4Hy4lTX8u/2FI0bT16hAHuy+HmRCVKtEd9LKRLi8wZC0dKNCeFoWv+yUU
jGFdiiHI4YS3GVp5HsddMq5alX+l+xbD8tmr3Q+fck3JhUP03EdUuehG9nszsMK9i5s8LtdL7kr4
WFwcK5Bds60J+nXqlIE1sEU6g7Cc/Oj5qicNOPjGSWnObL7hPZ74TfLm2WecBmuqYsoYPXMggUtQ
gK2icTiQ40JloVTa0C8W6wVS0GjGsHnQEv134bSXiVVdR41jUtNMkIjD7lubBOePc7HH99eN5nZ2
dqAN2edpFg75ljjV4EUPucuaexYts4dj+PwyXfF2xNBcS6noTmpZlRnqTNffJbhRosA07zR0uv6J
bdjpwSCKMmmY7WVEMtWZbrn4L2vzpX97B37C8Ma19NoxwxbJRx/FCgbMFuvScMHFt1WYLNSNHxrl
EB2oNA4QdO7DzEIIc3Pvi1PT4GKVpTl/s81MaFUjIGVmBtZF8UOCQQBGjq/aer6WLiPl7QUv+ZMH
MI7TovrHauqtDsIY6YqdPOc6mupCFUo/zSR8UrvZPYjZwHm3nqEWClbWAo7YBpUFKOXezUX1dFyq
YPPHfG+Of0H26ItOLpbV4fbB1cqmor6CHFDU4s+n0IZiMxklUwXvJ4lgx/2/LRpQr649Z0noJBrF
AyCGSrasV8C3dLuxHg+/amiWASj93Pv0AKUxcaJjBhYVQvQp41Ii6jYLv8A9jaa3fEBMeN7g02bp
DeLRNGC4ljVJQARJb+1emgWmbJ+EWb4la8V/dhfgSkKbaJmEcFWO7RHCpuyHrsH/itWllT7k4VKt
KFZ557u0JI/j86tG0Q0MpvJiJbn0S0diGsjz8ZIEtU8RDHvRm2KCYk8Auev6BetQsgV9WJSXyEXg
VTMUSUNSjVXCC5jEqr6zNBvD9M9/umIKLnNIL0Wk5lfNvhp5Mh7mtNbVyce5zoX/PjrXcN/52Rde
luTa0SGHGZgQGRZYVAnCwnVgEcmrE660BnaiR/VXpbBcUrlE25VvMbgW4xhxNpbxzYzEUZRqYeLl
pyW4B9mpsDfFrXyLLkgCzfRxW77yUqrI8xpvYl9n4g6gGwc0GJGkbG8a44pxLHG+acJDMyjtmXrV
DU8166LruxXTrfp9wrGIkfUSGwmd5HJ1Zvd+fM/Ve71lxYY8h/0QoB8X1V163jn3Y0h+U0/HIq/a
11TpNSByfQ3po0tE+FkWpqGhXIvlmovZEbhadxOvwBW66kSpDGfBqmOARW1CCJ6U2XyFj1//9iPr
XRBQH50CU/7bECAmUJFpDguIjJYk40COTOVWcqiUhn9j3bWlXVpQXdGCaGqCUbZwMrX/e03u1b/h
S2BSrBooDJKACDZOGM2E6A393AbSDQZaSsFDF43B0Fawmo1cmSGNkP6ZGUXXQqUXezryEK7dIHIu
HTmtuN0lF+FaadBVhCscC3Xa1DsXkTe6G2ewOyameK0Ia03kHeTekkuSldBfFacKKP1c3KwnJc+b
PUGM2f5BGdMGVC8xynFQG5+GfTZkOkfk30VtXCvuVjB4k8Og+dAIzIesoIO5Gk82At/M6Ghj1PQc
0DJRQGspn/xQ87igHaAUesDUpk+40CsxLXjAx/BJjLVLHfn7Dwrp1rVTQeNg+VIVKHBeQB+PWHjA
LoxkzOQ+2W41sJHH2caLn+yusL+nRPGcVwGp0Do2O3B8qfv6SEBwOGIIf779g45ykVsUhHZ0XHiZ
dLKfudd4J2OuYBfn/GJRKPemrKkR5KOajkiiLglD55T5NGwAEnwLs2zW4qar3XXWULPQoa4blH5V
KNfwNHXGIb4BSdWbhN6SZej3zJewZGAnftxUMPBrfTkLMeRDy2lQ5I7l2OxxwmTGYOj7Thd5RmWx
3IOjyQGm44YqAhe7UwqccrqK0l63Ah5I0cHAOZbbjSkrt8Qsfx85dcbwHQB4ap5w2plNoPW/rtAY
zUGc4IvSWlbg+JYukT8CsrQNKWCasMYWvBKofI3dmN5R30TyCH106X1/DXLjzytPkRuzp9sK7pG6
got5jxh06Xh8k6QbMXlQzsmWg4m43p7dWKBh/Anp5j2X+vfovYizXnRQbMM+AqYAGUhvgZcMpLtV
6tSqD75In7Gc4+FiZk/FA3OgQkz/shwbT4dJkFCdP1XKjsoGkPzHAC/gHjQTfFc87tQBTywvDtsD
L829eLF6TLtzm5dCki2UK7vQmJ3dV89DfVzLNSxCS1f+muhr03FDooyRHQJe1ZX5vyzi8Z/EuEJU
HlquJvwjS3nKMzzyanf4jHXEDzizpm8y5yPAftO0yTcRxA/SqL3eu57RMnyHROYn4Xh3OLyd/bqi
bJG4wMlLX0VJl+hk2zjT4gcrRSK6STlalVf9om2ZXShv//RU2xi/HvGhmJVmNhSKsKLvaxy2KvxT
lsy0+2VHG1aB+dUVhblx27FK+/2kdJFdvYdxxaL7b9e3iJklSuj5zsOd5Bm9OpS2k7bMnKUxw5YZ
D1P2zOyjgJxcQ1mO/Nm9EJN4zuz0ZvNjTZcq+9drVWu2b0eA8HFgM8eh871TmHj1FPQAUk77aBun
ffu0o7DYRfR277EyWbvLqml/RItec0HTrAbgOMQ4PSjFDLSGwioDjRvPia7SWQ23+AVHvcI0Y6++
kyEqjs/6rBAhqUvIPvQkVzjwE5L8BM+oP+4H9tzOizfUsSRbDES1p0p33LJL+IOESgbJSzUE53wU
bqXlnGSRYG02AhTRvnvZdSaFhz0XAEXKpgYIAUMe21pkSQOlGLwGriHJd8t/jRniwxYpsCzc2dZ+
l8mseWUFyc2JJthittWLJOoH2Ci3HR11UfuJ2+5CbRYTYGD2qZ/RZQrN5raLfxMzVA6ek68sO9iw
tVZS7TsG3LJJrJFBEZCQ2BeAUPbymvFfnDMWWVz0dstCd2Odg9S7bZdtYMLXYz52AVJEaP0LKFMZ
VTIaQTGp1kJOQlfDHnD+cZ6u560hAXdYmxfSbp0vpbUDhmBPaDC9IWwsPXnqfj4Vxn56zjP3LJl2
WNBQSGAw5D8oyJvPSYWPjRYEOhw1NB/N7jv43PiZncxgXkpg3cK9HYXR2ri1RJHnRPrjcu7WnWfA
K8kqnK24oB3Y678TlQyhdhW7g6rfAOMb+wBJzUesz2PQk+h/q+wApMS3DAVTt8o7Qrt3BCCaZpS4
3TrOLnIqrYVtqTdmoYoIVTmQynTwLXwY+GrRAKBhTQ7RlWQXNUkCeHegBZpWP+cF2MkX80cz3ME+
e4fUj5so3G80NLYGTTIyyF5NqMQpo3uym7hdO4q17GOT8TttQ9kWuGr2uPeP1mtGbmMVQJqhsKTF
tvuqfwyFBvrax+I+XvDEr2jl0e2tLf/IzWcLHwZZ5lJXvvw9PvF0w15hHch6kSKX2Ee2yF2x4rCf
VH5kYcp6NRFIFQH5ZMqiw2pvDFXCb3aIuxGaDLTj8shPtcnOCmptjyy1upG2zNCmrka09u70gc/4
q//mONOOFT5V8Kg7SpMUNdO2xwjB3vdN9dM2zKHPdaKfKq1wTJ2uec60DeCzcMT51dfJ8/EPWshY
Xmz+bDtN4JPgdVQxq+0L89XsKuwtCpBJEjG2aB21OfLVbJW7sO/ZJrIIf1gKItCCZcJ+N/PUSfqm
eHhb1Ykvs54y0WEDzgthhxR4yNW8HTEpAnPYn4Q6Rl47l/IF0ccr+qxtX5K84ef3xUe7bE4sBhR7
hfeIN/s/9Ev7lPZSKQf/UJWSh9TjT773W0vgVuekwEm+K7JBa7fVXTSUTQh8NIkinB8KIEPFqrp/
3MEdJfYLSGtm3/3BzNaL6BjC1TYjbBOCIEmdbvGYPKshwT7uEJjsdarpntQQC/ncLzsIO11gd+xI
1W1jU9LkBu2rQKhA6qpBSNsR4oaP+wcmn2CMJLrfYrgjTUBNYyTEr9gB14IjgMHGOgRa9H0tPlbN
8aOSrEIrxrfIhpUg7pGWg9T7oTd8B8Qi4hPJ9B5AFfJV2SdkyRlabJUYWXSIaEXbTptYnxugYCgD
ZuyzqcDyVOI81SGGKH7bKWvQddr5vd3I+bdkTuJcEEYaYZESXKsXTOQZDnd8YTEKew8NkeJGX3tk
VgWMX6S1SFYuB9b3KgeMjaWKTYcRyjsMyJ9T3NtjNtVIozOHmiHWS18gMwMzyB7lhv4xa/cwkyci
LkQtpPp0R89cli+NYXtDGIeA+tyC0fzFh4a3r+EfgqcRQW7crmwUTKbEHnAkop4I/HRqg7H0rVIi
iqAmsm4z3eoJ4bNeaOKbRqVO82udcu/ngh6MKhxVnVr9Uc0joUyAW22p+7JMqJXvO2at+6pu/cIz
0VHu1WSU5XUTfhbFwRMeHAtnQQmK0QIl9c3f/JeO4RVML0hcF1gAyvRfiBhq4Y39EtLeReRhFQMD
DemREUFk370GxFGWBFM7Y4v69qTe59qT7vKH/SaufBu87YsiK1rTU14tzzdjgkDatQ+IHW8qTGGp
rB7SL9DMpQrniy7j6/5URkCKckhPH73XTpPJRwZQ3W4n4txcRLSs404WX4XCWq6WpTBvJPgrcEyk
GQE7fN9RyN7HxbRBoVwW8jM7MdXXTl17K1VFccIiQy2+Pvmecix9xSZbzkG2jsWj6kwflnRWahBO
88sPXkd/IVWADQTUETUzlwPqqQt/Z04ikZji9nWsw5QjLVyPMdCagMu0vBcw1tAPSggah0hdN3T9
WBPeNhQs2eVapvBXHTylATDCKl+efwa0ktv+CDFP9b1ZbDQ1O1dNim60loxxDV4HwFXEvlg8IFEi
udiwEN4qhthD8Df07ElevLic1ZwPlOexM4LOHfrnShKNdgMCTiWpORpYiHr6imrlH+jZ4i/mmrRD
WpNph0/NUG/6p8D5zQAg4t3NvQUsElA1+qW/XgiVB9vb9NOjBYp586dJonM2smKXc26JqSegn3Mj
OoO+GxfKCzczQtXJGAqitIk+k+oDkBzodjoWRM8s6NaJp+v3ZEcyjFBTizKvQXNNP/mIWv+mK6UC
SS4J45hq35lvyLStJg1J48rBp/JK/6kYpJfO6nmNAmH2KnCUSlkJTs7q7tgRDjzYWcq9AxMyYDDW
Txd60aoBi8jvvP9ukrogp+5UNzdGSd57Ta8DuB8SlPgNMmvlAASB33z3IlHZ2ODyDYF6byz5nT1I
sV7WaBZcce68KsNx600Q+ADKgORecuVRWV6hg254nu8lgo7xtE0i/x67kgtrjzEBuzPSPAsqjRgS
SjkDxYKvdPt6K3Mvoq15akrSFRg1RfyJCZ7UbKOPv9Dd3ofVCvq6tPE+MWyzlgY+dDhhPLRXCz8H
/9DjRH2UoGak0bMA8tJpqnjXYRKjwqwIIdq+SZODwc1iIrgCTV6JQn85ZELeQ31IoDHXxkw6skFO
9VuISdL/SETlcLFUeNrKggVFnv5YF40aqtS1MApaI0dBeoNHhKAky2OZcyYHX8RIDZ4hjZG3kOPy
O3q62o5vZ6Cj7VSUdMhFqF7GAocunGlRgQ8u01H9bqKcxbZntWTp8GqlVvT8P12B6VrGCFPeHypv
Wm4tug/ap357ZOIIQmYh4ArA1vWh3AD89dMyQr6mqEms05BOXw1KC6vZbHfyh/Uzhu4FNIEyA4k7
isvd7U9IsVLxIchLOClHpbX/VDso/15uJp4qBWN9SPqcyjTYN65T4dhrE7INF1DBPZwPIvFro8GE
F2xIRrhxXwbAKaXgZjoQrLqFX7ZhcaQiw0YKyOrWqnM8XNrgbujS5cuZaPw5k0LyHcS3y5H7lCSf
9W5QRkVFSrCSvZIRRP08a3lMPHYc9s1OuE+EbNuQSprFngwdENlJnZrYVVaOr1PbUmZ7ufEOyKh8
pner1FeoURSlIvfAojLjRLlD/865yn1VfPrhEjhZBQ68U+xVPMSCVFTKVvqMigBP6SKUCWEg1ATM
WeNFK6uiGdtDE5t2LYT0z0fKrC5+z6o30NWpsdUBwryWDTfEyjBZmDa8QYxfneFl+sONd/A12uHM
EDwJT0xSbBRhPbt6hxANRO265+ikXAnPsKZrFdQGnYJ+XAAI7y6W94tz7KfwM69jOn/4+UaDArgw
Aqa8V4QyylxWoOKRxJJGCAmCf0gsSndcb15+JFxDXXkrW2Jjcie0bzKtxZvhxp/Yv++u7+Lxw+7I
OqSHbyO6Y3qULupzVc0wnLGC52dis+YIYoV/Tdh41kr0nIpzpEl/zCNVk4XKPEjBsHMrHwbE0d6j
ZLDpI6is2xcgCbXyDOAjUxRm8nePyJFG+FeCjdBPfj4RIWqu0vEZkhshAjrXY+Fts06UvQKV4fhX
JMmxMtvOHDZglD6iOvT+8JhdSozARFKNIUe3Mhx/nlBl3tfHFQ2owCxvouxuRatE79beR0hEw/51
7mOSdb4VXAGLcOv5pUNnEh7F1YqpDkVAHgHrbd/XvHkFOBpd5TqbH2R7OkLrA1bSeob5E+QIxWZg
Jl5apULSNOsZ7mASayDIXMfVqTgEL2JgM8d/H2vCc/HB7l0VLCDFUMjbZz8zQmdcLIgrSOwO4mHL
0iqPuLzC9B6u3T1ektmuvGrfZYDxopCLfNrO/qRfPqcPA9/XgVm9VXR1CRwa3CbWRUzk2TH92SsA
Jis51QyyFASSgKwmynit7INg9xMEr6eCzQWYQtZa5XKNiTX7yNZ0Gka/URWjuCRdDICquDyi8UxI
ZMTFsQa96YtFJ43OeNocKYISWw9KIK4KbaV5TNqLYqprfBbFUh2HPUraYFYkzjn3iUk9kCo3VUNX
Y3gN6sMY0yOgP7QUuU4R9r0yLNtQuXGx6xW13t3Kp6oPU8L3qAecL1BWjnIBxB19MF9+8iZb254P
tqhnVTSvFcAjy9HkCHTdfHw7Nb0BvUX3vnfmHQJTwU824BdO54CLYVD1X7XrUr0hmzaKXZMK3Lj6
I3GVkUHOr6rmfPIKmwAvZpZifRDonWrIhb9FfykbvhnRz9e3TkFk8WxkG/ZiCTRUAtatU5NHNWjd
bAClot9/RWCcnbqxKpN0sbXMZBavsiIuZBMjuEi6XfkH+wISjia61cTUciFN3K2PoOe2s6gvmMOQ
0Bh+g4ksQEA6cMpGwqb+vh7lalf31t8CaFS0N+Fjmdh5ttqyBhEfTpnSRbECiWdBEXuYFJ+E1EnD
fozWukdWtVKHo+uh8OV52S5M3CPRZiJgLWgg63LxzUnQHSIUW7QUOUQVD8ithgfNCnEZLgQHzPjb
vZyk3lh61PuLCKb+jqVYXFhMTam6PTBNkowSkQ8N80US70iHeKT2K/wm/m8toSGqiXSwfHIvoTU6
QdZNKg2uqm+sCksT41uuy2xbMFikGlnQdhqXFLq2LtX2e1IC6+nMVH+ZbmFzjVtPbZrrp7kp84Dq
4p7MpPOGtOepREdyux5z+o2aHHn47rspl21wbjPquWfMY4DUL7IqW+0E7MA14dkP5uaxsple1a1P
uK1VNLJcwYu/u5+RunUgF5jOzMeeTTivzv7Xp8KrAVFGHVgZw8jpQ1cE0NzIAKe+EUyJxzlOeLj7
KGosRdcC6KIMlEq5wYCM6t3bysxdbHOubJ63rMYPR9R2lv+kSw8P5z5JswSRnrHSyuUKSP1gGO8D
PFousG1WbuzyP/P0+Y1RMhZX2eihT/MAftJLafsfIHeOsh/UWlmr1CjvKHyWVE+odvFA8NPGJ1Yb
tJtPfxl/gt8/0MF6lYmaOBPnhzBOCjqZ6npR+blUZ1qivImaq5ULJXQ1NWO21NPIKjq3q4incrj0
Y53EbMgZnLvWoYtaBr8dUlLg8OkP6KCujXijYOeuh7idpRsaL3dSXsPyGFwygwjSYxRnHNPN+0nh
Ces1FX2ZRAb01YeIUZgNz6wb72kEWGDnp+3/NT/+gVvBWVt0I/n+++LZhztl6IwxW4qNeT9EkWXr
zMWA73hSTgvB/v6Doe5QIN3nn58vmN64eSEjjsLpRQ242UxhYGwC2e5fI8xH7YLu0iG2tyn8/fFA
6WpBKDD1xiSjkoeKkpEthw01sCrrLlNjnK+l4wUd4u8Ks7DalWQfI2Xtua9ETXDomymusoCu1hH7
prLbwCPqozNqPFpAFJCRp/jTcuzQ4Z2+yLrghlqxx2KkW9ril3EX70qjwOBBf5n+hNOHntazu8BE
Zew320bjhpSyST7QpM33DLsipj6XpbSsjGMz93PAeMw0T8ylneKgFZfxUHwWk/PQejo4f6xkXCxG
wN6rjQn4kTkeDyOHsA6rpxp/ogFCP50ERQxDEgTQbNFXvYk2eudzr1/sgFC5F9vM6szh6nCJuMii
h9q4CW00DG7eIdZLos6Fn6yOgZs0e8GylhtVrNfAd/kVHcmyeQR0y4mgktPk3hIXrQ3Ih3DYPtwp
9v3CExhjoK5dTzMmpOPp2EdSdjx3FCF3pNMfz2umMzyOsozfFKPRxcwUvdd36OOeXraW/KtxZCBM
5ESMWvtJxLPG1+Y/PaoPK5O8IYnL9ELx6ogkKK3/AVMXn63W+81Ve/JK0yd33C0qSySDQZaeaR67
tiC/y+q0pINgxPpgpUV15VJ5RQHZVyl9z43+9XKdQWF0k/xPV6JVxMlq61A4bCt2XRk6z5s14gJl
eMWlGGnVmCp+2LcicotAcQ4tTamJKmFRrMKMF/CpPG9/mmXLFRTZNHLQNNOCAcEP2G0fQEtGNQby
zzspKTuSuONUFtC1JzDr5ySOyFhYZoOvvBnws4KG1LRZxg9yUQNRLOcvzVzeJ9RU8Pj3BSbTc6W2
rpHuMz64rnOybrPrQLG8ukPVTPepqxCNc7CWtnXwDeZZ0KkHjVpr9c221jDMNrZkKAOGWE08bZ0E
M2Wfmp9jrhUYxPb0UPa0uRTgQwnTZFMDSWJFrM4AadVLK7yZ5xVe1d1mahIFx7+AlemRF963vHlf
WAhWcocnTYSSCnYlYgjvWbQtJMmGUg9Jk7lfOoQXm6UJFOeC6qUX1sxPD+IGRJ8APogtFzh0jqUq
sYqyRM8+KET37R9oKC7KbJecXbnpDh8k8ztiGbUo5Fae5J7Ovc5wk2dF15UKBkZVQdLNqQkPJGD1
x9Dn/ZU0rBxRYPIHlmYWlPPXIKqev9frtEwqkb1z7/IAFVGpTGRahXuYpvFCZ25WUK7GSSrKEGmY
UaN+51Vh0x3zmr/E8PpSqR+p2TDC/93u+aC3e8WCpUkmVjlJqxL+srOWD5nuRVwEk7eOoLBEgW2J
BA54R4CY1EsA5eHM7i0WtdCL9OwRzt+64TTcSzBxbb9Oe5mEFioAr4RA09bDNfKoDgkMqfHOrKTR
n9gp/ADznfDc84ShnpxjmAXQsBNX4Ok4wRag7+DXFVUKgcMgBB20boXOkIxydl89zBdpmqeTfxeD
ZGws173387B8UXJN5YXpTh7wn5AwBgxEV2qp3qzJ1TC3LgQoWtablbrKl7PggDZCdunZSFiSZz61
pdkrag6tIeJA93Kh4m+9+i51kcd6QMePx88Cb3vLeyUIrut6SnETBbWGU+Q0S1KJKA+/rSZX/txj
Mdz3PkbnAcORUziYR8xP6/cSYyJvjppJ0m/Voit/FMmXETlhW56UKFHTq15e2BBhgItqmHowDXp0
MiFRFgr0Qg4n5dORw4RurFqBxQxb2Mh+WHWpH2m+vm7IWuZQYPPkL4yyuH5+TULoXsK9ELQMEncY
rc8aB7vZjKqXpkv2KmYfbB9yjaVEGJni0nhOh92r3NtYN6j7UVAD0V/gBK0VpQjALoyeDGHQ5U4b
0UjwmJ5GvAOrDpf7SbV89mHjkdyFsUcFGeNTxb7DqwOmGBqqeAWerZL44oJro9DD0PpSVKTuyYVV
AeONnmP1Ph2CvQIQQufS7u2BWvlk0Y3/AyLUD601UXA9Afi15KhvJma9H/6l4dlCB1L58qeE+eto
nSYnPt7ciF9O1k/FRL24BeqQM8mYKrJDuyCXXr9aNeJ4bOwez3wn5m2BeTsSi3CeA9fiHDw/cEl8
e4DP3goGnTObtO2jjtqScs/WltmPHQqrorxRaWuZhpte5Deaq+cg7GtN8K1+SgIlcWXfNfZoYXr+
rmvGH91mJjN/Eob4JPd6Gi6ihv1MS/4DbS0QWu6t+l/PwdH9756Ro9/41ovA+EeOBa4XFHWRs5DA
YJOa1/NYX8q6W6wSXrvB7x3lHcLfuEPTDYGNVlirIaEQ7/h9pTYI6fwHDhZ3xe9mjSzCeR8AdwKg
S3YK0y3faSOSaq7uNOV/sS37zQHs3bJCTUOMtSBOQ7C3ywMXgcoHYObKqGQbWNSmtwUXvNdkfXPv
UdVUvn7EtLinbO7puacIWOsuysH/45QeS5FkW4KlqgaWDOvlL1iagfWNhmBkytL4QCy5dYigc40Q
IYhrBXA5ousnMOEQ2aJG0jKXtPOvOZnJ9LUL3QTx7DD8Z/FFe3iOmOK3OIGWCCyMGsw3sDorly0R
iuesKtozwH63HShYmBFhM7jT+zk5S4rD6qWDr7g2GFd0j0ww2EpgJXUcLYM1pGFmf6WezwZ3eUle
CjSrKQtiJ922maotkIko1BxWTULKfRfPysRhoE56FYxWqruhic26fchhQN5VjNRnJ+Oszo/FqhxZ
6qUcpFwaSMh+IyoyEi0a01pHdFTTVYPGSsuxyq/RGxe6QVhJqoAxq5eEP9NYJvV6M6HeYmPa2zj5
KBx65lGoN/DArWqbaktv2BbnXsKQY5hv/gymFW1gDWHbQw0McFgHDiXX5jbTzHaONxAxrDR4ZuXb
sqv3R9cM1zSsSHsT5cI+PNSLBYb/8D3YXLyYec6/DEthWKPY40BDYXRThCaZJNlWMWFni3VaWN1R
/c+d6+6gj1fZB0LKJJ430FE3U8HwKoJt/fOD0uE4mTlR1vtVNWoYaPMPEKW97e+DNQCSpceu+r1Q
mCs0mD91cvRFpzFQgauZ6Galf1JhUJKngVtvUsXe1OgHWBxmoNr+2tvNtX6gi1E7vsCvzi+oL+Xz
DFQ+f4kBROP/ohEaPVAdMLEPVPmUPmQHhN9tyMdSQgtOXoW5A85ydXFrsm2D7FvLYgoPJwV5XY0d
cbsHwrt9WAsLmmv+g0yEh7i6Lv7CKU8fRW8dzleOxFaithz2SKHerBagDOEcfp8C0UWFMHmYWo0T
d4IZRf/1h9eyXcqM4XRMm/IfdkZS+j6Oxpndu3IPrivKm97PygMGtr49PBOyFQsvS5mdPvL7LUgX
uvRvp+pTGovvRkqWDA6bjcc4H0e19OLKJUXD0qsOyyyuUbffE0Zc/xsHQkvFHQ82+vCWjRCR9Hss
oUmpsUELb8zRy9Be0AmPsnsIU8RiYvMEk0cZ7gUMIMemV8sr1R8sI6jm4m7E6IM5LAccvs6UvLjU
tk/38sxWin5aAiWhW+UuiLwuSfCNXyzY6oSBNvazLjnN9NeSbcIave1gNuWmaanajHeAn4XlqRxU
nMInWg9Iv9f4asl9ZjIGsZGA+0i412DvRv9BZqDPH/8kPtQ7YfSAxpwZLIFNW8rKOIj6kB8M35vY
XrHPKCWSxOBF48/Qa8ZJ7B2c4ASmEF+q26TX5VdGtuMLNBGbxGR0Eutsb52ddT2WQk87bFIMT1pB
j1OhNwbHtcONKSQr29NeaHkZchTuWt/Zf9EZPOC6dNJknpiYQ6nH2JJIl3/Fw6BkyL9Uj30ruve1
VO4ZaLFqu5QMTVwwOnL02VZaLNFqiltjbEwXPo3hHKkXZoj6+ldjZE4TZpPZPreQTM7TnKpeEBfY
2ZFAboFvhrHW+Ug2NGxL8SY5mZc3wxcwMSG8oVB68Ee8k+yprpyOHfnEMX/F0meZ9mcuGrImym8q
bveHzgBfLBMafTMiUByIKAcoPpSrOSTp6Qf9T/jz451Lv8ERgsGAAcx3TPYqdxnqVsKdoX88ecbx
BWCoDWD/w/5SFjVvdYbWBZrVtsuM1AqYeP8hDRQ1cmIyrVjX5f2n+ZRPtn6F6JMpo0j0zpv4/EsE
GpVMWPDG5LT/1Q52hhRB61akuenWOq3L3ar557vfxOkypWzA4qzWkWuFd2qFJuKmDvq1O33Ji0cv
thPq7qlZFnYBqRHmM2K8m/uFQNwRSaBe4lgrwiNW777tdqos12u5+U5SSvnwCQaK1z6Mi9f1TUwu
NPjpXyucm2JXzswACooCyTIs7Q+4AasVAIHZ342pa3qX9blzdZhLMArC6+LZYDGAW6BbfGbR8xBG
4AP92IwjwpEwOsnGs5OZlXmCf9DXmXKie926acDaNw8AhaboSE/KmkJ0gNaz2fLxwn0MO63s0swZ
R0HOqa5gSHiYPn1P3t2texGcRVscU+/YRvtdwEIVeqVP5lwiMLIy3OrnoJK1RtYPXTPMuW9hcBxP
+sCO2mGJ2Wj1RN89wbbPpVwpj9jwHpaPj+vHfwqhiCKAoCK2Jcd9KBKFEQ4ghZzDkWN860GwuZkb
0/q8ij5aUJ7uOSswvDLbkzHaZxyvLDRJx8sem0ErgAN8zs76uQEy1NijUqf+gqwiza6kJwsgrpcE
HB+BlqC+cRxD+0/6IrlmWw3gRuuwDqIkpFt/mGt7FuyaWrFOTJuKfFTbB0/+QrKEQ6MwWPWm4hfv
46huSjssVlz9cVlbBOC1qSNF7Hu8Y7sTcMSGxzJJxmraqK4DL2Ze0Bo3H38h+4lXNJn7hvqbmc/Q
hTkbiKeLxOk7KlSpWNP/hGbuWPut87xvIDLa4UAbKJoDxH1YCo5nCifFTTCHVWfzLmwDgo5+h4le
sQQhpQ0H+1r6VaE2E4JuVZUKa8hh6GLJ6hHaJvTpm1OiYVldJ2uh7xRBFh3CCBbbxIWYzODzkFuK
RmUOpdqYaGPqbGnNWh38Md1sNtyznFAIJ4DSOzIb7HCsnMgyx6mBWhJEiAfBEsMQs4e30wGFsD+U
GGNki5akM7FRlEOpoRUhVbdOTiz+mscJu/3e5hWqOP93KaYGAT0G/ZtwkDmcziBXjCSCOutt5kgb
dxbJ5hMaUAlCC3A3ypAsNGsR5oY3VOpuLECoeUrqxO9u6cFuJZFawbcLhxhme1nnH1soYN6ai2Lp
SAAzc2oUlX4brMGYXSdgVwtCoHjdTgl0L4r0caBtd1Bi5XwRZ8LlH3ZWk1Pir9XdjwYkPcY4BeXD
ETEXG8WPRfjMtM9Yyylww4PjzLm7cLyg6UvAOaCInP+hOfpKLiF6trMvq7JtwrPeyxDjJxZIcT17
6WtKpwUsF1elbUxJeAVmgM3eichTS5Tdyhbx6m07374k4/cGNaP6WEwognQ6RNIT3iFVxEvguA8c
Dwr1oseQkEozOsg=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
