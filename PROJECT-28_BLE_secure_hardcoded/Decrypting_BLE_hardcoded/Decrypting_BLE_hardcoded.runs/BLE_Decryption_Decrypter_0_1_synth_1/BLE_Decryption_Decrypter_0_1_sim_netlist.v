// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Jul 12 14:27:30 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BLE_Decryption_Decrypter_0_1_sim_netlist.v
// Design      : BLE_Decryption_Decrypter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BLE_Decryption_Decrypter_0_1,Decrypter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Decrypter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Encrypted,
    Normal,
    Placeholder);
  input [7:0]Encrypted;
  output [7:0]Normal;
  output Placeholder;

  wire \<const1> ;
  wire [7:0]Encrypted;
  wire [7:0]Normal;

  assign Placeholder = \<const1> ;
  LUT2 #(
    .INIT(4'h9)) 
    \Normal[1]_INST_0 
       (.I0(Encrypted[0]),
        .I1(Encrypted[1]),
        .O(Normal[1]));
  LUT3 #(
    .INIT(8'hE1)) 
    \Normal[2]_INST_0 
       (.I0(Encrypted[1]),
        .I1(Encrypted[0]),
        .I2(Encrypted[2]),
        .O(Normal[2]));
  LUT4 #(
    .INIT(16'hFE01)) 
    \Normal[3]_INST_0 
       (.I0(Encrypted[2]),
        .I1(Encrypted[0]),
        .I2(Encrypted[1]),
        .I3(Encrypted[3]),
        .O(Normal[3]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \Normal[4]_INST_0 
       (.I0(Encrypted[3]),
        .I1(Encrypted[1]),
        .I2(Encrypted[0]),
        .I3(Encrypted[2]),
        .I4(Encrypted[4]),
        .O(Normal[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \Normal[5]_INST_0 
       (.I0(Encrypted[4]),
        .I1(Encrypted[2]),
        .I2(Encrypted[0]),
        .I3(Encrypted[1]),
        .I4(Encrypted[3]),
        .I5(Encrypted[5]),
        .O(Normal[5]));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Decrypter inst
       (.Encrypted(Encrypted),
        .Normal({Normal[7:6],Normal[0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Decrypter
   (Normal,
    Encrypted);
  output [2:0]Normal;
  input [7:0]Encrypted;

  wire [7:0]Encrypted;
  wire [2:0]Normal;
  wire \Normal[7]_INST_0_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \Normal[0]_INST_0 
       (.I0(Encrypted[0]),
        .O(Normal[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Normal[6]_INST_0 
       (.I0(\Normal[7]_INST_0_i_1_n_0 ),
        .I1(Encrypted[6]),
        .O(Normal[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \Normal[7]_INST_0 
       (.I0(Encrypted[6]),
        .I1(\Normal[7]_INST_0_i_1_n_0 ),
        .I2(Encrypted[7]),
        .O(Normal[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Normal[7]_INST_0_i_1 
       (.I0(Encrypted[4]),
        .I1(Encrypted[2]),
        .I2(Encrypted[0]),
        .I3(Encrypted[1]),
        .I4(Encrypted[3]),
        .I5(Encrypted[5]),
        .O(\Normal[7]_INST_0_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
