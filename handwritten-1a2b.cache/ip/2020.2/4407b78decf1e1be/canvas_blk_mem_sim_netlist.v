// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jan  7 15:50:47 2022
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
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire [0:0]wea;
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
  wire [0:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1577 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "canvas_blk_mem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(1'b0),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
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
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18272)
`pragma protect data_block
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
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
