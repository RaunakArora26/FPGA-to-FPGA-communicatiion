//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Jul 23 09:22:37 2024
//Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
//Command     : generate_target BLE_UART_wrapper.bd
//Design      : BLE_UART_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BLE_UART_wrapper
   (Tx_BLE,
    Tx_UART,
    an_0,
    an_1,
    i_serial_BLE,
    i_serial_UART,
    mclk,
    seg_0,
    seg_1);
  output Tx_BLE;
  output Tx_UART;
  output [3:0]an_0;
  output [3:0]an_1;
  input i_serial_BLE;
  input i_serial_UART;
  input mclk;
  output [6:0]seg_0;
  output [6:0]seg_1;

  wire Tx_BLE;
  wire Tx_UART;
  wire [3:0]an_0;
  wire [3:0]an_1;
  wire i_serial_BLE;
  wire i_serial_UART;
  wire mclk;
  wire [6:0]seg_0;
  wire [6:0]seg_1;

  BLE_UART BLE_UART_i
       (.Tx_BLE(Tx_BLE),
        .Tx_UART(Tx_UART),
        .an_0(an_0),
        .an_1(an_1),
        .i_serial_BLE(i_serial_BLE),
        .i_serial_UART(i_serial_UART),
        .mclk(mclk),
        .seg_0(seg_0),
        .seg_1(seg_1));
endmodule
