//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Jul 23 09:22:37 2024
//Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
//Command     : generate_target BLE_UART.bd
//Design      : BLE_UART
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BLE_UART,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BLE_UART,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BLE_UART.hwdef" *) 
module BLE_UART
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

  wire [3:0]Seven_seg_0_an;
  wire [6:0]Seven_seg_0_seg;
  wire [3:0]Seven_seg_1_an;
  wire [6:0]Seven_seg_1_seg;
  wire [7:0]UART_Rx_0_o_byte;
  wire [7:0]UART_Rx_1_o_byte;
  wire i_serial_0_1;
  wire i_serial_1_1;
  wire mclk_0_1;

  assign Tx_BLE = i_serial_0_1;
  assign Tx_UART = i_serial_1_1;
  assign an_0[3:0] = Seven_seg_0_an;
  assign an_1[3:0] = Seven_seg_1_an;
  assign i_serial_0_1 = i_serial_UART;
  assign i_serial_1_1 = i_serial_BLE;
  assign mclk_0_1 = mclk;
  assign seg_0[6:0] = Seven_seg_0_seg;
  assign seg_1[6:0] = Seven_seg_1_seg;
  BLE_UART_Seven_seg_1_0 Seven_seg_BLE
       (.an(Seven_seg_1_an),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_1_o_byte),
        .seg(Seven_seg_1_seg));
  BLE_UART_Seven_seg_0_0 Seven_seg_UART
       (.an(Seven_seg_0_an),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_0_o_byte),
        .seg(Seven_seg_0_seg));
  BLE_UART_UART_Rx_0_0 UART_Rx_0
       (.i_serial(i_serial_0_1),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_0_o_byte));
  BLE_UART_UART_Rx_1_0 UART_Rx_1
       (.i_serial(i_serial_1_1),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_1_o_byte));
endmodule
