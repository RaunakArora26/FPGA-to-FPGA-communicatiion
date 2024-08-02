// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jul 23 17:25:38 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/lenovo/Robust_UART/Robust_UART.srcs/sources_1/bd/UART_secure_BLE/ip/UART_secure_BLE_Encryption_logic_0_0/UART_secure_BLE_Encryption_logic_0_0_sim_netlist.v
// Design      : UART_secure_BLE_Encryption_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UART_secure_BLE_Encryption_logic_0_0,Encryption_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Encryption_logic,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module UART_secure_BLE_Encryption_logic_0_0
   (a,
    b);
  input [7:0]a;
  output [7:0]b;

  wire [7:0]a;
  wire [7:0]b;

  UART_secure_BLE_Encryption_logic_0_0_Encryption_logic inst
       (.a(a),
        .b(b));
endmodule

(* ORIG_REF_NAME = "Encryption_logic" *) 
module UART_secure_BLE_Encryption_logic_0_0_Encryption_logic
   (b,
    a);
  output [7:0]b;
  input [7:0]a;

  wire [7:0]a;
  wire [7:0]b;
  wire \b[7]_INST_0_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \b[0]_INST_0 
       (.I0(a[0]),
        .O(b[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b[1]_INST_0 
       (.I0(a[0]),
        .I1(a[1]),
        .O(b[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \b[2]_INST_0 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .O(b[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \b[3]_INST_0 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .O(b[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \b[4]_INST_0 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[4]),
        .O(b[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \b[5]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(b[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b[6]_INST_0 
       (.I0(\b[7]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .O(b[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \b[7]_INST_0 
       (.I0(\b[7]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(a[7]),
        .O(b[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \b[7]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\b[7]_INST_0_i_1_n_0 ));
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
