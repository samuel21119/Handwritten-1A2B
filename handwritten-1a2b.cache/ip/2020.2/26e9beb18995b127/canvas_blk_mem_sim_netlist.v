// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jan  7 16:40:15 2022
// Host        : t510599-X512JP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ canvas_blk_mem_sim_netlist.v
// Design      : canvas_blk_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "canvas_blk_mem,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21744)
`pragma protect data_block
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
Bp42rMziAGenQM/eh17MBqWaxGg40b9PV1Gm
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
