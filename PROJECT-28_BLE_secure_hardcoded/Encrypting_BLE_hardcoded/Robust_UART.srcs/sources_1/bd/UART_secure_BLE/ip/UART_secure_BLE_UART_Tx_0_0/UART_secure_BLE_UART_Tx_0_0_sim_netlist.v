// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jul 23 17:25:38 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/lenovo/Robust_UART/Robust_UART.srcs/sources_1/bd/UART_secure_BLE/ip/UART_secure_BLE_UART_Tx_0_0/UART_secure_BLE_UART_Tx_0_0_sim_netlist.v
// Design      : UART_secure_BLE_UART_Tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UART_secure_BLE_UART_Tx_0_0,UART_Tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "UART_Tx,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module UART_secure_BLE_UART_Tx_0_0
   (data_byte,
    data_available,
    mclk,
    Tx,
    active,
    done);
  input [7:0]data_byte;
  input data_available;
  input mclk;
  output Tx;
  output active;
  output done;

  wire Tx;
  wire active;
  wire data_available;
  wire [7:0]data_byte;
  wire done;
  wire mclk;

  UART_secure_BLE_UART_Tx_0_0_UART_Tx inst
       (.Tx(Tx),
        .active(active),
        .data_available(data_available),
        .data_byte(data_byte),
        .done(done),
        .mclk(mclk));
endmodule

(* ORIG_REF_NAME = "UART_Tx" *) 
module UART_secure_BLE_UART_Tx_0_0_UART_Tx
   (Tx,
    done,
    active,
    data_available,
    mclk,
    data_byte);
  output Tx;
  output done;
  output active;
  input data_available;
  input mclk;
  input [7:0]data_byte;

  wire Tx;
  wire active;
  wire data_available;
  wire [7:0]data_byte;
  wire done;
  wire mclk;
  wire r_Tx_i_1_n_0;
  wire r_Tx_i_2_n_0;
  wire r_Tx_i_3_n_0;
  wire r_active_i_1_n_0;
  wire r_active_i_2_n_0;
  wire r_active_i_3_n_0;
  wire [9:0]r_counter;
  wire \r_counter[5]_i_2_n_0 ;
  wire \r_counter[9]_i_2_n_0 ;
  wire \r_counter[9]_i_3_n_0 ;
  wire \r_counter[9]_i_4_n_0 ;
  wire \r_counter[9]_i_5_n_0 ;
  wire \r_counter_reg_n_0_[0] ;
  wire \r_counter_reg_n_0_[1] ;
  wire \r_counter_reg_n_0_[2] ;
  wire \r_counter_reg_n_0_[3] ;
  wire \r_counter_reg_n_0_[4] ;
  wire \r_counter_reg_n_0_[5] ;
  wire \r_counter_reg_n_0_[6] ;
  wire \r_counter_reg_n_0_[7] ;
  wire \r_counter_reg_n_0_[8] ;
  wire \r_counter_reg_n_0_[9] ;
  wire [7:0]r_data_byte;
  wire \r_data_byte[7]_i_1_n_0 ;
  wire \r_data_byte[7]_i_2_n_0 ;
  wire r_done_i_1_n_0;
  wire [2:0]r_index;
  wire \r_index[0]_i_1_n_0 ;
  wire \r_index[1]_i_1_n_0 ;
  wire \r_index[2]_i_1_n_0 ;
  wire [1:0]r_states;
  wire \r_states[0]_i_1_n_0 ;
  wire \r_states[0]_i_2_n_0 ;
  wire \r_states[1]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE400FF)) 
    r_Tx_i_1
       (.I0(r_index[2]),
        .I1(r_Tx_i_2_n_0),
        .I2(r_Tx_i_3_n_0),
        .I3(r_states[0]),
        .I4(r_states[1]),
        .O(r_Tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    r_Tx_i_2
       (.I0(r_data_byte[1]),
        .I1(r_data_byte[3]),
        .I2(r_index[1]),
        .I3(r_data_byte[0]),
        .I4(r_index[0]),
        .I5(r_data_byte[2]),
        .O(r_Tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    r_Tx_i_3
       (.I0(r_data_byte[5]),
        .I1(r_data_byte[7]),
        .I2(r_index[1]),
        .I3(r_data_byte[4]),
        .I4(r_index[0]),
        .I5(r_data_byte[6]),
        .O(r_Tx_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    r_Tx_reg
       (.C(mclk),
        .CE(1'b1),
        .D(r_Tx_i_1_n_0),
        .Q(Tx),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hCFFA000A)) 
    r_active_i_1
       (.I0(data_available),
        .I1(r_active_i_2_n_0),
        .I2(r_states[1]),
        .I3(r_states[0]),
        .I4(active),
        .O(r_active_i_1_n_0));
  LUT6 #(
    .INIT(64'h2AAAFFFFFFFFFFFF)) 
    r_active_i_2
       (.I0(r_active_i_3_n_0),
        .I1(\r_counter_reg_n_0_[5] ),
        .I2(\r_counter_reg_n_0_[6] ),
        .I3(\r_counter[5]_i_2_n_0 ),
        .I4(\r_counter_reg_n_0_[9] ),
        .I5(\r_counter_reg_n_0_[8] ),
        .O(r_active_i_2_n_0));
  LUT6 #(
    .INIT(64'h000100FF00FF00FF)) 
    r_active_i_3
       (.I0(\r_counter_reg_n_0_[3] ),
        .I1(\r_counter_reg_n_0_[4] ),
        .I2(\r_counter_reg_n_0_[2] ),
        .I3(\r_counter_reg_n_0_[7] ),
        .I4(\r_counter_reg_n_0_[5] ),
        .I5(\r_counter_reg_n_0_[6] ),
        .O(r_active_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_active_reg
       (.C(mclk),
        .CE(1'b1),
        .D(r_active_i_1_n_0),
        .Q(active),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_counter[0]_i_1 
       (.I0(\r_counter[9]_i_3_n_0 ),
        .I1(\r_counter_reg_n_0_[0] ),
        .O(r_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_counter[1]_i_1 
       (.I0(\r_counter[9]_i_3_n_0 ),
        .I1(\r_counter_reg_n_0_[0] ),
        .I2(\r_counter_reg_n_0_[1] ),
        .O(r_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_counter[2]_i_1 
       (.I0(\r_counter[9]_i_3_n_0 ),
        .I1(\r_counter_reg_n_0_[1] ),
        .I2(\r_counter_reg_n_0_[0] ),
        .I3(\r_counter_reg_n_0_[2] ),
        .O(r_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_counter[3]_i_1 
       (.I0(\r_counter[9]_i_3_n_0 ),
        .I1(\r_counter_reg_n_0_[0] ),
        .I2(\r_counter_reg_n_0_[1] ),
        .I3(\r_counter_reg_n_0_[2] ),
        .I4(\r_counter_reg_n_0_[3] ),
        .O(r_counter[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_counter[4]_i_1 
       (.I0(\r_counter[9]_i_3_n_0 ),
        .I1(\r_counter_reg_n_0_[2] ),
        .I2(\r_counter_reg_n_0_[1] ),
        .I3(\r_counter_reg_n_0_[0] ),
        .I4(\r_counter_reg_n_0_[3] ),
        .I5(\r_counter_reg_n_0_[4] ),
        .O(r_counter[4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \r_counter[5]_i_1 
       (.I0(\r_counter[9]_i_3_n_0 ),
        .I1(\r_counter_reg_n_0_[3] ),
        .I2(\r_counter[5]_i_2_n_0 ),
        .I3(\r_counter_reg_n_0_[2] ),
        .I4(\r_counter_reg_n_0_[4] ),
        .I5(\r_counter_reg_n_0_[5] ),
        .O(r_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[5]_i_2 
       (.I0(\r_counter_reg_n_0_[0] ),
        .I1(\r_counter_reg_n_0_[1] ),
        .O(\r_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_counter[6]_i_1 
       (.I0(\r_counter[9]_i_2_n_0 ),
        .I1(\r_counter[9]_i_3_n_0 ),
        .I2(\r_counter_reg_n_0_[6] ),
        .O(r_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_counter[7]_i_1 
       (.I0(\r_counter_reg_n_0_[6] ),
        .I1(\r_counter[9]_i_2_n_0 ),
        .I2(\r_counter[9]_i_3_n_0 ),
        .I3(\r_counter_reg_n_0_[7] ),
        .O(r_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \r_counter[8]_i_1 
       (.I0(\r_counter_reg_n_0_[7] ),
        .I1(\r_counter[9]_i_2_n_0 ),
        .I2(\r_counter_reg_n_0_[6] ),
        .I3(\r_counter[9]_i_3_n_0 ),
        .I4(\r_counter_reg_n_0_[8] ),
        .O(r_counter[8]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_counter[9]_i_1 
       (.I0(\r_counter_reg_n_0_[8] ),
        .I1(\r_counter_reg_n_0_[6] ),
        .I2(\r_counter[9]_i_2_n_0 ),
        .I3(\r_counter_reg_n_0_[7] ),
        .I4(\r_counter[9]_i_3_n_0 ),
        .I5(\r_counter_reg_n_0_[9] ),
        .O(r_counter[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_counter[9]_i_2 
       (.I0(\r_counter_reg_n_0_[5] ),
        .I1(\r_counter_reg_n_0_[3] ),
        .I2(\r_counter_reg_n_0_[0] ),
        .I3(\r_counter_reg_n_0_[1] ),
        .I4(\r_counter_reg_n_0_[2] ),
        .I5(\r_counter_reg_n_0_[4] ),
        .O(\r_counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF555500000000)) 
    \r_counter[9]_i_3 
       (.I0(\r_counter[9]_i_4_n_0 ),
        .I1(\r_counter[5]_i_2_n_0 ),
        .I2(\r_counter_reg_n_0_[6] ),
        .I3(\r_counter_reg_n_0_[5] ),
        .I4(r_active_i_3_n_0),
        .I5(\r_counter[9]_i_5_n_0 ),
        .O(\r_counter[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_counter[9]_i_4 
       (.I0(\r_counter_reg_n_0_[8] ),
        .I1(\r_counter_reg_n_0_[9] ),
        .O(\r_counter[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_counter[9]_i_5 
       (.I0(r_states[0]),
        .I1(r_states[1]),
        .O(\r_counter[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[0]),
        .Q(\r_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[1]),
        .Q(\r_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[2]),
        .Q(\r_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[3] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[3]),
        .Q(\r_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[4] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[4]),
        .Q(\r_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[5] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[5]),
        .Q(\r_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[6] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[6]),
        .Q(\r_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[7] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[7]),
        .Q(\r_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[8] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[8]),
        .Q(\r_counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_counter_reg[9] 
       (.C(mclk),
        .CE(1'b1),
        .D(r_counter[9]),
        .Q(\r_counter_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \r_data_byte[7]_i_1 
       (.I0(data_available),
        .I1(r_states[1]),
        .I2(r_states[0]),
        .O(\r_data_byte[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_data_byte[7]_i_2 
       (.I0(r_states[1]),
        .I1(r_states[0]),
        .O(\r_data_byte[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[0] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[0]),
        .Q(r_data_byte[0]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[1] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[1]),
        .Q(r_data_byte[1]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[2] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[2]),
        .Q(r_data_byte[2]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[3] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[3]),
        .Q(r_data_byte[3]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[4] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[4]),
        .Q(r_data_byte[4]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[5] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[5]),
        .Q(r_data_byte[5]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[6] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[6]),
        .Q(r_data_byte[6]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_byte_reg[7] 
       (.C(mclk),
        .CE(\r_data_byte[7]_i_2_n_0 ),
        .D(data_byte[7]),
        .Q(r_data_byte[7]),
        .R(\r_data_byte[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFC40)) 
    r_done_i_1
       (.I0(r_active_i_2_n_0),
        .I1(r_states[1]),
        .I2(r_states[0]),
        .I3(done),
        .O(r_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_done_reg
       (.C(mclk),
        .CE(1'b1),
        .D(r_done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF804)) 
    \r_index[0]_i_1 
       (.I0(r_active_i_2_n_0),
        .I1(r_states[1]),
        .I2(r_states[0]),
        .I3(r_index[0]),
        .O(\r_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFD00020)) 
    \r_index[1]_i_1 
       (.I0(r_index[0]),
        .I1(r_active_i_2_n_0),
        .I2(r_states[1]),
        .I3(r_states[0]),
        .I4(r_index[1]),
        .O(\r_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF70000000800)) 
    \r_index[2]_i_1 
       (.I0(r_index[1]),
        .I1(r_index[0]),
        .I2(r_active_i_2_n_0),
        .I3(r_states[1]),
        .I4(r_states[0]),
        .I5(r_index[2]),
        .O(\r_index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_index_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_index[0]_i_1_n_0 ),
        .Q(r_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_index_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_index[1]_i_1_n_0 ),
        .Q(r_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_index_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_index[2]_i_1_n_0 ),
        .Q(r_index[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF222200002E22)) 
    \r_states[0]_i_1 
       (.I0(data_available),
        .I1(r_states[1]),
        .I2(\r_states[0]_i_2_n_0 ),
        .I3(r_index[2]),
        .I4(r_states[0]),
        .I5(r_active_i_2_n_0),
        .O(\r_states[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r_states[0]_i_2 
       (.I0(r_index[1]),
        .I1(r_index[0]),
        .O(\r_states[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \r_states[1]_i_1 
       (.I0(r_states[0]),
        .I1(r_active_i_2_n_0),
        .I2(r_states[1]),
        .O(\r_states[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_states_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_states[0]_i_1_n_0 ),
        .Q(r_states[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_states_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_states[1]_i_1_n_0 ),
        .Q(r_states[1]),
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
