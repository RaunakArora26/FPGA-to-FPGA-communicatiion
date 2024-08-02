// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jul 23 09:24:08 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BLE_UART_Seven_seg_1_0_sim_netlist.v
// Design      : BLE_UART_Seven_seg_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BLE_UART_Seven_seg_1_0,Seven_seg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Seven_seg,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (o_byte,
    mclk,
    an,
    seg);
  input [7:0]o_byte;
  input mclk;
  output [3:0]an;
  output [6:0]seg;

  wire \<const1> ;
  wire [2:0]\^an ;
  wire mclk;
  wire [7:0]o_byte;
  wire [6:0]seg;

  assign an[3] = \<const1> ;
  assign an[2:0] = \^an [2:0];
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Seven_seg inst
       (.an(\^an ),
        .mclk(mclk),
        .o_byte(o_byte),
        .seg(seg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Seven_seg
   (an,
    seg,
    o_byte,
    mclk);
  output [2:0]an;
  output [6:0]seg;
  input [7:0]o_byte;
  input mclk;

  wire [3:0]\L1/U4/out__20 ;
  wire [2:0]\L1/U6/out__9 ;
  wire L3_n_0;
  wire L3_n_1;
  wire L3_n_10;
  wire L3_n_2;
  wire L3_n_3;
  wire L3_n_4;
  wire L3_n_5;
  wire L3_n_6;
  wire [2:0]an;
  wire clk_out;
  wire [1:1]hundreds;
  wire mclk;
  wire [7:0]o_byte;
  wire [6:0]seg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SlowClock L2
       (.CLK(clk_out),
        .mclk(mclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_twobitcounter L3
       (.CLK(clk_out),
        .D({L3_n_0,L3_n_1,L3_n_2,L3_n_3,L3_n_4,L3_n_5,L3_n_6}),
        .E(L3_n_10),
        .an(an),
        .hundreds(hundreds),
        .o_byte(o_byte[1:0]),
        .out__20(\L1/U4/out__20 ),
        .out__9(\L1/U6/out__9 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binarytoSevenSeg L6
       (.D({L3_n_0,L3_n_1,L3_n_2,L3_n_3,L3_n_4,L3_n_5,L3_n_6}),
        .E(L3_n_10),
        .hundreds(hundreds),
        .o_byte(o_byte[7:2]),
        .out__20(\L1/U4/out__20 ),
        .out__9(\L1/U6/out__9 ),
        .seg(seg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SlowClock
   (CLK,
    mclk);
  output CLK;
  input mclk;

  wire CLK;
  wire clk_out;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire clk_out_i_4_n_0;
  wire clk_out_i_5_n_0;
  wire [20:0]count;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire [0:0]count_0;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[20]_i_2_n_1 ;
  wire \count_reg[20]_i_2_n_2 ;
  wire \count_reg[20]_i_2_n_3 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire [20:1]data0;
  wire mclk;
  wire [3:3]\NLW_count_reg[20]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    clk_out_i_1
       (.I0(clk_out_i_2_n_0),
        .I1(\count[20]_i_3_n_0 ),
        .I2(clk_out_i_3_n_0),
        .I3(clk_out_i_4_n_0),
        .I4(clk_out_i_5_n_0),
        .I5(CLK),
        .O(clk_out_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    clk_out_i_2
       (.I0(count[4]),
        .I1(count[3]),
        .I2(count[6]),
        .I3(count[5]),
        .O(clk_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    clk_out_i_3
       (.I0(count[16]),
        .I1(count[15]),
        .I2(count[18]),
        .I3(count[17]),
        .O(clk_out_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_out_i_4
       (.I0(count[12]),
        .I1(count[11]),
        .I2(count[14]),
        .I3(count[13]),
        .O(clk_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    clk_out_i_5
       (.I0(count[0]),
        .I1(count[19]),
        .I2(count[20]),
        .I3(count[2]),
        .I4(count[1]),
        .O(clk_out_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(mclk),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \count[20]_i_1 
       (.I0(count[5]),
        .I1(count[6]),
        .I2(count[3]),
        .I3(count[4]),
        .I4(\count[20]_i_3_n_0 ),
        .I5(\count[20]_i_4_n_0 ),
        .O(clk_out));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count[20]_i_3 
       (.I0(count[7]),
        .I1(count[8]),
        .I2(count[10]),
        .I3(count[9]),
        .O(\count[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[20]_i_4 
       (.I0(clk_out_i_3_n_0),
        .I1(count[12]),
        .I2(count[11]),
        .I3(count[14]),
        .I4(count[13]),
        .I5(clk_out_i_5_n_0),
        .O(\count[20]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(count_0),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(count[10]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(count[11]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(count[12]),
        .R(clk_out));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(count[13]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(count[14]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(count[15]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(count[16]),
        .R(clk_out));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(count[17]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(count[18]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(count[19]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(count[1]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(count[20]),
        .R(clk_out));
  CARRY4 \count_reg[20]_i_2 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_reg[20]_i_2_CO_UNCONNECTED [3],\count_reg[20]_i_2_n_1 ,\count_reg[20]_i_2_n_2 ,\count_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(count[2]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(count[3]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(count[4]),
        .R(clk_out));
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(count[5]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(count[6]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(count[7]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(count[8]),
        .R(clk_out));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(mclk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(count[9]),
        .R(clk_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_binarytoSevenSeg
   (out__20,
    out__9,
    hundreds,
    seg,
    o_byte,
    D,
    E);
  output [3:0]out__20;
  output [2:0]out__9;
  output [0:0]hundreds;
  output [6:0]seg;
  input [5:0]o_byte;
  input [6:0]D;
  input [0:0]E;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]hundreds;
  wire [5:0]o_byte;
  wire [3:0]out__20;
  wire [2:0]out__9;
  wire [6:0]seg;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Seg_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(seg[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Seg_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(seg[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Seg_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(seg[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Seg_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(seg[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Seg_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(seg[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Seg_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(seg[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Seg_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(seg[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF0E00000)) 
    \Seg_reg[6]_i_15 
       (.I0(o_byte[1]),
        .I1(o_byte[2]),
        .I2(o_byte[4]),
        .I3(o_byte[3]),
        .I4(o_byte[5]),
        .O(hundreds));
  LUT6 #(
    .INIT(64'h0290402424020940)) 
    \Seg_reg[6]_i_16 
       (.I0(o_byte[5]),
        .I1(o_byte[3]),
        .I2(o_byte[4]),
        .I3(o_byte[2]),
        .I4(o_byte[1]),
        .I5(o_byte[0]),
        .O(out__20[2]));
  LUT6 #(
    .INIT(64'hD02DB40B0BD042B4)) 
    \Seg_reg[6]_i_17 
       (.I0(o_byte[5]),
        .I1(o_byte[3]),
        .I2(o_byte[4]),
        .I3(o_byte[2]),
        .I4(o_byte[1]),
        .I5(o_byte[0]),
        .O(out__20[0]));
  LUT6 #(
    .INIT(64'h9949269292996426)) 
    \Seg_reg[6]_i_18 
       (.I0(o_byte[5]),
        .I1(o_byte[3]),
        .I2(o_byte[4]),
        .I3(o_byte[2]),
        .I4(o_byte[1]),
        .I5(o_byte[0]),
        .O(out__20[1]));
  LUT6 #(
    .INIT(64'h2FD24BF40BD042B4)) 
    \Seg_reg[6]_i_19 
       (.I0(o_byte[5]),
        .I1(o_byte[3]),
        .I2(o_byte[4]),
        .I3(o_byte[2]),
        .I4(o_byte[1]),
        .I5(o_byte[0]),
        .O(out__20[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4642)) 
    \Seg_reg[6]_i_20 
       (.I0(o_byte[5]),
        .I1(o_byte[4]),
        .I2(o_byte[3]),
        .I3(o_byte[2]),
        .O(out__9[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hD2169206)) 
    \Seg_reg[6]_i_21 
       (.I0(o_byte[5]),
        .I1(o_byte[4]),
        .I2(o_byte[3]),
        .I3(o_byte[2]),
        .I4(o_byte[1]),
        .O(out__9[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h08080828)) 
    \Seg_reg[6]_i_22 
       (.I0(o_byte[5]),
        .I1(o_byte[3]),
        .I2(o_byte[4]),
        .I3(o_byte[2]),
        .I4(o_byte[1]),
        .O(out__9[2]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_twobitcounter
   (D,
    an,
    E,
    o_byte,
    out__20,
    out__9,
    hundreds,
    CLK);
  output [6:0]D;
  output [2:0]an;
  output [0:0]E;
  input [1:0]o_byte;
  input [3:0]out__20;
  input [2:0]out__9;
  input [0:0]hundreds;
  input CLK;

  wire CLK;
  wire [6:0]D;
  wire [0:0]E;
  wire \Seg_reg[6]_i_10_n_0 ;
  wire \Seg_reg[6]_i_11_n_0 ;
  wire \Seg_reg[6]_i_12_n_0 ;
  wire \Seg_reg[6]_i_13_n_0 ;
  wire \Seg_reg[6]_i_14_n_0 ;
  wire \Seg_reg[6]_i_7_n_0 ;
  wire \Seg_reg[6]_i_8_n_0 ;
  wire \Seg_reg[6]_i_9_n_0 ;
  wire [2:0]an;
  wire [1:0]counter_out;
  wire [0:0]hundreds;
  wire [3:0]mux_out;
  wire [1:0]o_byte;
  wire [3:0]out__20;
  wire [2:0]out__9;
  wire \temp[0]_i_1_n_0 ;
  wire \temp[1]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \Seg_reg[0]_i_1 
       (.I0(mux_out[1]),
        .I1(mux_out[2]),
        .I2(mux_out[0]),
        .I3(mux_out[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \Seg_reg[1]_i_1 
       (.I0(mux_out[0]),
        .I1(mux_out[1]),
        .I2(mux_out[2]),
        .I3(mux_out[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \Seg_reg[2]_i_1 
       (.I0(mux_out[0]),
        .I1(mux_out[2]),
        .I2(mux_out[1]),
        .I3(mux_out[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC89C)) 
    \Seg_reg[3]_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[0]),
        .I2(mux_out[2]),
        .I3(mux_out[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF1F0)) 
    \Seg_reg[4]_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[1]),
        .I2(mux_out[0]),
        .I3(mux_out[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B2)) 
    \Seg_reg[5]_i_1 
       (.I0(mux_out[1]),
        .I1(mux_out[2]),
        .I2(mux_out[0]),
        .I3(mux_out[3]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0091)) 
    \Seg_reg[6]_i_1 
       (.I0(mux_out[1]),
        .I1(mux_out[2]),
        .I2(mux_out[0]),
        .I3(mux_out[3]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h000001A2)) 
    \Seg_reg[6]_i_10 
       (.I0(out__9[0]),
        .I1(out__9[1]),
        .I2(out__20[3]),
        .I3(out__9[2]),
        .I4(counter_out[1]),
        .O(\Seg_reg[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4642FFFF46420000)) 
    \Seg_reg[6]_i_11 
       (.I0(out__9[2]),
        .I1(out__9[1]),
        .I2(out__9[0]),
        .I3(out__20[3]),
        .I4(counter_out[1]),
        .I5(o_byte[0]),
        .O(\Seg_reg[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h000003E0)) 
    \Seg_reg[6]_i_12 
       (.I0(o_byte[1]),
        .I1(out__20[0]),
        .I2(out__20[1]),
        .I3(out__20[2]),
        .I4(counter_out[1]),
        .O(\Seg_reg[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000410)) 
    \Seg_reg[6]_i_13 
       (.I0(out__20[0]),
        .I1(o_byte[1]),
        .I2(out__20[1]),
        .I3(out__20[2]),
        .I4(counter_out[1]),
        .O(\Seg_reg[6]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000410)) 
    \Seg_reg[6]_i_14 
       (.I0(out__9[0]),
        .I1(out__20[3]),
        .I2(out__9[1]),
        .I3(out__9[2]),
        .I4(counter_out[1]),
        .O(\Seg_reg[6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \Seg_reg[6]_i_2 
       (.I0(mux_out[3]),
        .I1(mux_out[2]),
        .I2(mux_out[1]),
        .O(E));
  MUXF7 \Seg_reg[6]_i_3 
       (.I0(\Seg_reg[6]_i_7_n_0 ),
        .I1(\Seg_reg[6]_i_8_n_0 ),
        .O(mux_out[1]),
        .S(counter_out[0]));
  MUXF7 \Seg_reg[6]_i_4 
       (.I0(\Seg_reg[6]_i_9_n_0 ),
        .I1(\Seg_reg[6]_i_10_n_0 ),
        .O(mux_out[2]),
        .S(counter_out[0]));
  MUXF7 \Seg_reg[6]_i_5 
       (.I0(\Seg_reg[6]_i_11_n_0 ),
        .I1(\Seg_reg[6]_i_12_n_0 ),
        .O(mux_out[0]),
        .S(counter_out[0]));
  MUXF7 \Seg_reg[6]_i_6 
       (.I0(\Seg_reg[6]_i_13_n_0 ),
        .I1(\Seg_reg[6]_i_14_n_0 ),
        .O(mux_out[3]),
        .S(counter_out[0]));
  LUT6 #(
    .INIT(64'h88888B8B8B8888B8)) 
    \Seg_reg[6]_i_7 
       (.I0(hundreds),
        .I1(counter_out[1]),
        .I2(out__20[2]),
        .I3(out__20[0]),
        .I4(out__20[1]),
        .I5(o_byte[1]),
        .O(\Seg_reg[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000162)) 
    \Seg_reg[6]_i_8 
       (.I0(out__20[3]),
        .I1(out__9[1]),
        .I2(out__9[0]),
        .I3(out__9[2]),
        .I4(counter_out[1]),
        .O(\Seg_reg[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000001A2)) 
    \Seg_reg[6]_i_9 
       (.I0(out__20[0]),
        .I1(out__20[1]),
        .I2(o_byte[1]),
        .I3(out__20[2]),
        .I4(counter_out[1]),
        .O(\Seg_reg[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(counter_out[0]),
        .I1(counter_out[1]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(counter_out[1]),
        .I1(counter_out[0]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(counter_out[0]),
        .I1(counter_out[1]),
        .O(an[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[0]_i_1 
       (.I0(counter_out[0]),
        .O(\temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \temp[1]_i_1 
       (.I0(counter_out[0]),
        .I1(counter_out[1]),
        .O(\temp[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\temp[0]_i_1_n_0 ),
        .Q(counter_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\temp[1]_i_1_n_0 ),
        .Q(counter_out[1]),
        .R(1'b0));
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
