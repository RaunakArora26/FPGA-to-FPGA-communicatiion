// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jul 23 17:25:36 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ UART_secure_BLE_UART_Rx_0_0_sim_netlist.v
// Design      : UART_secure_BLE_UART_Rx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Rx
   (o_byte,
    done,
    mclk,
    i_serial);
  output [7:0]o_byte;
  output done;
  input mclk;
  input i_serial;

  wire done;
  wire i_serial;
  wire mclk;
  wire [7:0]o_byte;
  wire \r_byte[0]_i_1_n_0 ;
  wire \r_byte[1]_i_1_n_0 ;
  wire \r_byte[2]_i_1_n_0 ;
  wire \r_byte[3]_i_1_n_0 ;
  wire \r_byte[4]_i_1_n_0 ;
  wire \r_byte[5]_i_1_n_0 ;
  wire \r_byte[6]_i_1_n_0 ;
  wire \r_byte[7]_i_1_n_0 ;
  wire \r_byte[7]_i_2_n_0 ;
  wire \r_byte[7]_i_3_n_0 ;
  wire \r_byte[7]_i_4_n_0 ;
  wire \r_byte[7]_i_5_n_0 ;
  wire \r_count[0]_i_1_n_0 ;
  wire \r_count[10]_i_1_n_0 ;
  wire \r_count[10]_i_2_n_0 ;
  wire \r_count[10]_i_3_n_0 ;
  wire \r_count[10]_i_4_n_0 ;
  wire \r_count[10]_i_5_n_0 ;
  wire \r_count[10]_i_6_n_0 ;
  wire \r_count[10]_i_7_n_0 ;
  wire \r_count[1]_i_1_n_0 ;
  wire \r_count[2]_i_1_n_0 ;
  wire \r_count[2]_i_2_n_0 ;
  wire \r_count[3]_i_1_n_0 ;
  wire \r_count[3]_i_2_n_0 ;
  wire \r_count[4]_i_1_n_0 ;
  wire \r_count[4]_i_2_n_0 ;
  wire \r_count[5]_i_1_n_0 ;
  wire \r_count[5]_i_2_n_0 ;
  wire \r_count[6]_i_1_n_0 ;
  wire \r_count[6]_i_2_n_0 ;
  wire \r_count[7]_i_1_n_0 ;
  wire \r_count[7]_i_2_n_0 ;
  wire \r_count[8]_i_1_n_0 ;
  wire \r_count[8]_i_2_n_0 ;
  wire \r_count[9]_i_1_n_0 ;
  wire \r_count[9]_i_2_n_0 ;
  wire \r_count_reg_n_0_[0] ;
  wire \r_count_reg_n_0_[10] ;
  wire \r_count_reg_n_0_[1] ;
  wire \r_count_reg_n_0_[2] ;
  wire \r_count_reg_n_0_[3] ;
  wire \r_count_reg_n_0_[4] ;
  wire \r_count_reg_n_0_[5] ;
  wire \r_count_reg_n_0_[6] ;
  wire \r_count_reg_n_0_[7] ;
  wire \r_count_reg_n_0_[8] ;
  wire \r_count_reg_n_0_[9] ;
  wire r_done_i_1_n_0;
  wire r_done_i_2_n_0;
  wire \r_index[0]_i_1_n_0 ;
  wire \r_index[1]_i_1_n_0 ;
  wire \r_index[2]_i_1_n_0 ;
  wire \r_index_reg_n_0_[0] ;
  wire \r_index_reg_n_0_[1] ;
  wire \r_index_reg_n_0_[2] ;
  wire \r_state[0]_i_1_n_0 ;
  wire \r_state[0]_i_3_n_0 ;
  wire \r_state[0]_i_4_n_0 ;
  wire \r_state[1]_i_1_n_0 ;
  wire \r_state[1]_i_2_n_0 ;
  wire \r_state[1]_i_3_n_0 ;
  wire \r_state[1]_i_4_n_0 ;
  wire [0:0]r_state__30;
  wire \r_state_reg_n_0_[0] ;
  wire \r_state_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \r_byte[0]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[1] ),
        .I2(\r_index_reg_n_0_[0] ),
        .I3(\r_index_reg_n_0_[2] ),
        .I4(\r_byte[7]_i_2_n_0 ),
        .I5(o_byte[0]),
        .O(\r_byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_byte[1]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[1] ),
        .I2(\r_index_reg_n_0_[0] ),
        .I3(\r_index_reg_n_0_[2] ),
        .I4(\r_byte[7]_i_2_n_0 ),
        .I5(o_byte[1]),
        .O(\r_byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \r_byte[2]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[0] ),
        .I2(\r_index_reg_n_0_[1] ),
        .I3(\r_index_reg_n_0_[2] ),
        .I4(\r_byte[7]_i_2_n_0 ),
        .I5(o_byte[2]),
        .O(\r_byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_byte[3]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[2] ),
        .I2(\r_byte[7]_i_2_n_0 ),
        .I3(\r_index_reg_n_0_[0] ),
        .I4(\r_index_reg_n_0_[1] ),
        .I5(o_byte[3]),
        .O(\r_byte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \r_byte[4]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[1] ),
        .I2(\r_index_reg_n_0_[0] ),
        .I3(\r_index_reg_n_0_[2] ),
        .I4(\r_byte[7]_i_2_n_0 ),
        .I5(o_byte[4]),
        .O(\r_byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_byte[5]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[1] ),
        .I2(\r_index_reg_n_0_[0] ),
        .I3(\r_index_reg_n_0_[2] ),
        .I4(\r_byte[7]_i_2_n_0 ),
        .I5(o_byte[5]),
        .O(\r_byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \r_byte[6]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[0] ),
        .I2(\r_index_reg_n_0_[1] ),
        .I3(\r_index_reg_n_0_[2] ),
        .I4(\r_byte[7]_i_2_n_0 ),
        .I5(o_byte[6]),
        .O(\r_byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \r_byte[7]_i_1 
       (.I0(i_serial),
        .I1(\r_index_reg_n_0_[2] ),
        .I2(\r_byte[7]_i_2_n_0 ),
        .I3(\r_index_reg_n_0_[0] ),
        .I4(\r_index_reg_n_0_[1] ),
        .I5(o_byte[7]),
        .O(\r_byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555550100000000)) 
    \r_byte[7]_i_2 
       (.I0(\r_state_reg_n_0_[0] ),
        .I1(\r_byte[7]_i_3_n_0 ),
        .I2(\r_byte[7]_i_4_n_0 ),
        .I3(\r_count_reg_n_0_[10] ),
        .I4(\r_byte[7]_i_5_n_0 ),
        .I5(\r_state_reg_n_0_[1] ),
        .O(\r_byte[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \r_byte[7]_i_3 
       (.I0(\r_count_reg_n_0_[5] ),
        .I1(\r_count_reg_n_0_[7] ),
        .I2(\r_count_reg_n_0_[6] ),
        .O(\r_byte[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \r_byte[7]_i_4 
       (.I0(\r_count_reg_n_0_[8] ),
        .I1(\r_count_reg_n_0_[9] ),
        .I2(\r_count_reg_n_0_[3] ),
        .I3(\r_count_reg_n_0_[4] ),
        .I4(\r_count_reg_n_0_[7] ),
        .I5(\r_count_reg_n_0_[2] ),
        .O(\r_byte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_byte[7]_i_5 
       (.I0(\r_count_reg_n_0_[6] ),
        .I1(\r_count_reg_n_0_[9] ),
        .I2(\r_count_reg_n_0_[0] ),
        .I3(\r_count_reg_n_0_[1] ),
        .I4(\r_count_reg_n_0_[5] ),
        .I5(\r_count_reg_n_0_[8] ),
        .O(\r_byte[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[0]_i_1_n_0 ),
        .Q(o_byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[1]_i_1_n_0 ),
        .Q(o_byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[2]_i_1_n_0 ),
        .Q(o_byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[3] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[3]_i_1_n_0 ),
        .Q(o_byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[4] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[4]_i_1_n_0 ),
        .Q(o_byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[5] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[5]_i_1_n_0 ),
        .Q(o_byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[6] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[6]_i_1_n_0 ),
        .Q(o_byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_byte_reg[7] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_byte[7]_i_1_n_0 ),
        .Q(o_byte[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000088B8)) 
    \r_count[0]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[0] ),
        .O(\r_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \r_count[10]_i_1 
       (.I0(\r_state_reg_n_0_[1] ),
        .I1(\r_state_reg_n_0_[0] ),
        .I2(i_serial),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count[10]_i_2_n_0 ),
        .O(\r_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \r_count[10]_i_2 
       (.I0(\r_count_reg_n_0_[6] ),
        .I1(\r_count_reg_n_0_[0] ),
        .I2(\r_count_reg_n_0_[1] ),
        .I3(\r_count[10]_i_5_n_0 ),
        .I4(\r_count[10]_i_6_n_0 ),
        .I5(\r_count_reg_n_0_[2] ),
        .O(\r_count[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88B80000)) 
    \r_count[10]_i_3 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count[10]_i_7_n_0 ),
        .O(\r_count[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \r_count[10]_i_4 
       (.I0(\r_count_reg_n_0_[0] ),
        .I1(\r_count_reg_n_0_[3] ),
        .I2(\r_count_reg_n_0_[6] ),
        .I3(\r_count_reg_n_0_[1] ),
        .I4(\r_count_reg_n_0_[2] ),
        .I5(\r_count[10]_i_6_n_0 ),
        .O(\r_count[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \r_count[10]_i_5 
       (.I0(i_serial),
        .I1(\r_count_reg_n_0_[3] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_state_reg_n_0_[1] ),
        .O(\r_count[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \r_count[10]_i_6 
       (.I0(\r_count_reg_n_0_[8] ),
        .I1(\r_count_reg_n_0_[5] ),
        .I2(\r_count_reg_n_0_[10] ),
        .I3(\r_count_reg_n_0_[9] ),
        .I4(\r_count_reg_n_0_[7] ),
        .I5(\r_count_reg_n_0_[4] ),
        .O(\r_count[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_count[10]_i_7 
       (.I0(\r_count_reg_n_0_[8] ),
        .I1(\r_count_reg_n_0_[6] ),
        .I2(\r_count[6]_i_2_n_0 ),
        .I3(\r_count_reg_n_0_[7] ),
        .I4(\r_count_reg_n_0_[9] ),
        .I5(\r_count_reg_n_0_[10] ),
        .O(\r_count[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[1]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[1] ),
        .I5(\r_count_reg_n_0_[0] ),
        .O(\r_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[2]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[2] ),
        .I5(\r_count[2]_i_2_n_0 ),
        .O(\r_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_count[2]_i_2 
       (.I0(\r_count_reg_n_0_[0] ),
        .I1(\r_count_reg_n_0_[1] ),
        .O(\r_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[3]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[3] ),
        .I5(\r_count[3]_i_2_n_0 ),
        .O(\r_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_count[3]_i_2 
       (.I0(\r_count_reg_n_0_[2] ),
        .I1(\r_count_reg_n_0_[1] ),
        .I2(\r_count_reg_n_0_[0] ),
        .O(\r_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[4]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[4] ),
        .I5(\r_count[4]_i_2_n_0 ),
        .O(\r_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_count[4]_i_2 
       (.I0(\r_count_reg_n_0_[3] ),
        .I1(\r_count_reg_n_0_[0] ),
        .I2(\r_count_reg_n_0_[1] ),
        .I3(\r_count_reg_n_0_[2] ),
        .O(\r_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[5]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[5] ),
        .I5(\r_count[5]_i_2_n_0 ),
        .O(\r_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_count[5]_i_2 
       (.I0(\r_count_reg_n_0_[4] ),
        .I1(\r_count_reg_n_0_[2] ),
        .I2(\r_count_reg_n_0_[1] ),
        .I3(\r_count_reg_n_0_[0] ),
        .I4(\r_count_reg_n_0_[3] ),
        .O(\r_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[6]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[6] ),
        .I5(\r_count[6]_i_2_n_0 ),
        .O(\r_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_count[6]_i_2 
       (.I0(\r_count_reg_n_0_[5] ),
        .I1(\r_count_reg_n_0_[3] ),
        .I2(\r_count_reg_n_0_[0] ),
        .I3(\r_count_reg_n_0_[1] ),
        .I4(\r_count_reg_n_0_[2] ),
        .I5(\r_count_reg_n_0_[4] ),
        .O(\r_count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[7]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[7] ),
        .I5(\r_count[7]_i_2_n_0 ),
        .O(\r_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_count[7]_i_2 
       (.I0(\r_count_reg_n_0_[6] ),
        .I1(\r_count_reg_n_0_[4] ),
        .I2(\r_count_reg_n_0_[2] ),
        .I3(\r_count[2]_i_2_n_0 ),
        .I4(\r_count_reg_n_0_[3] ),
        .I5(\r_count_reg_n_0_[5] ),
        .O(\r_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[8]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[8] ),
        .I5(\r_count[8]_i_2_n_0 ),
        .O(\r_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_count[8]_i_2 
       (.I0(\r_count_reg_n_0_[7] ),
        .I1(\r_count[6]_i_2_n_0 ),
        .I2(\r_count_reg_n_0_[6] ),
        .O(\r_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088B888B80000)) 
    \r_count[9]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count[10]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[9] ),
        .I5(\r_count[9]_i_2_n_0 ),
        .O(\r_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_count[9]_i_2 
       (.I0(\r_count_reg_n_0_[8] ),
        .I1(\r_count_reg_n_0_[6] ),
        .I2(\r_count[6]_i_2_n_0 ),
        .I3(\r_count_reg_n_0_[7] ),
        .O(\r_count[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[0] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[0]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[0] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[10] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[10]_i_3_n_0 ),
        .Q(\r_count_reg_n_0_[10] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[1] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[1]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[1] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[2] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[2]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[2] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[3] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[3]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[3] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[4] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[4]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[4] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[5] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[5]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[5] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[6] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[6]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[6] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[7] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[7]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[7] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[8] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[8]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[8] ),
        .S(\r_count[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_count_reg[9] 
       (.C(mclk),
        .CE(\r_count[10]_i_2_n_0 ),
        .D(\r_count[9]_i_1_n_0 ),
        .Q(\r_count_reg_n_0_[9] ),
        .S(\r_count[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFC40)) 
    r_done_i_1
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(done),
        .O(r_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF13)) 
    r_done_i_2
       (.I0(\r_count_reg_n_0_[5] ),
        .I1(\r_count_reg_n_0_[7] ),
        .I2(\r_count_reg_n_0_[6] ),
        .I3(\r_byte[7]_i_4_n_0 ),
        .I4(\r_count_reg_n_0_[10] ),
        .I5(\r_byte[7]_i_5_n_0 ),
        .O(r_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_done_reg
       (.C(mclk),
        .CE(1'b1),
        .D(r_done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF804)) 
    \r_index[0]_i_1 
       (.I0(r_done_i_2_n_0),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_index_reg_n_0_[0] ),
        .O(\r_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFD00020)) 
    \r_index[1]_i_1 
       (.I0(\r_index_reg_n_0_[0] ),
        .I1(r_done_i_2_n_0),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(\r_index_reg_n_0_[1] ),
        .O(\r_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF70000000800)) 
    \r_index[2]_i_1 
       (.I0(\r_index_reg_n_0_[1] ),
        .I1(\r_index_reg_n_0_[0] ),
        .I2(r_done_i_2_n_0),
        .I3(\r_state_reg_n_0_[1] ),
        .I4(\r_state_reg_n_0_[0] ),
        .I5(\r_index_reg_n_0_[2] ),
        .O(\r_index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_index_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_index[0]_i_1_n_0 ),
        .Q(\r_index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_index_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_index[1]_i_1_n_0 ),
        .Q(\r_index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_index_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_index[2]_i_1_n_0 ),
        .Q(\r_index_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFA00FA0F0A300A3F)) 
    \r_state[0]_i_1 
       (.I0(r_state__30),
        .I1(\r_state[0]_i_3_n_0 ),
        .I2(\r_state_reg_n_0_[1] ),
        .I3(\r_state_reg_n_0_[0] ),
        .I4(i_serial),
        .I5(r_done_i_2_n_0),
        .O(\r_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \r_state[0]_i_2 
       (.I0(\r_state[0]_i_4_n_0 ),
        .I1(\r_count_reg_n_0_[2] ),
        .I2(\r_count_reg_n_0_[0] ),
        .I3(\r_count_reg_n_0_[1] ),
        .I4(\r_count[10]_i_6_n_0 ),
        .O(r_state__30));
  LUT3 #(
    .INIT(8'h7F)) 
    \r_state[0]_i_3 
       (.I0(\r_index_reg_n_0_[2] ),
        .I1(\r_index_reg_n_0_[0] ),
        .I2(\r_index_reg_n_0_[1] ),
        .O(\r_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD5FFD5FFD5FF)) 
    \r_state[0]_i_4 
       (.I0(\r_count_reg_n_0_[8] ),
        .I1(\r_count_reg_n_0_[6] ),
        .I2(\r_count_reg_n_0_[7] ),
        .I3(\r_count_reg_n_0_[5] ),
        .I4(\r_count_reg_n_0_[3] ),
        .I5(\r_count_reg_n_0_[4] ),
        .O(\r_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF8A8A8A8A8A8A)) 
    \r_state[1]_i_1 
       (.I0(\r_state_reg_n_0_[1] ),
        .I1(r_done_i_2_n_0),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_state[1]_i_2_n_0 ),
        .I4(\r_state[1]_i_3_n_0 ),
        .I5(\r_state[1]_i_4_n_0 ),
        .O(\r_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r_state[1]_i_2 
       (.I0(\r_count[10]_i_6_n_0 ),
        .I1(\r_count_reg_n_0_[2] ),
        .I2(\r_count_reg_n_0_[1] ),
        .O(\r_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F400F400F400)) 
    \r_state[1]_i_3 
       (.I0(\r_count_reg_n_0_[1] ),
        .I1(\r_count_reg_n_0_[0] ),
        .I2(\r_count_reg_n_0_[2] ),
        .I3(\r_count_reg_n_0_[5] ),
        .I4(\r_count_reg_n_0_[3] ),
        .I5(\r_count_reg_n_0_[4] ),
        .O(\r_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000100010001000)) 
    \r_state[1]_i_4 
       (.I0(i_serial),
        .I1(\r_state_reg_n_0_[1] ),
        .I2(\r_state_reg_n_0_[0] ),
        .I3(\r_count_reg_n_0_[8] ),
        .I4(\r_count_reg_n_0_[6] ),
        .I5(\r_count_reg_n_0_[7] ),
        .O(\r_state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_state[0]_i_1_n_0 ),
        .Q(\r_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_state_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .D(\r_state[1]_i_1_n_0 ),
        .Q(\r_state_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "UART_secure_BLE_UART_Rx_0_0,UART_Rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "UART_Rx,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (mclk,
    i_serial,
    o_byte,
    done);
  input mclk;
  input i_serial;
  output [7:0]o_byte;
  output done;

  wire done;
  wire i_serial;
  wire mclk;
  wire [7:0]o_byte;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_Rx inst
       (.done(done),
        .i_serial(i_serial),
        .mclk(mclk),
        .o_byte(o_byte));
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
