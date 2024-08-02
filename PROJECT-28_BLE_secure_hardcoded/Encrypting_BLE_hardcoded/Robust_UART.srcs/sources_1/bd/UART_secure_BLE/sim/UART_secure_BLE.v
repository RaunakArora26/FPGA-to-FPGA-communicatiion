//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Jul 23 17:22:50 2024
//Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
//Command     : generate_target UART_secure_BLE.bd
//Design      : UART_secure_BLE
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "UART_secure_BLE,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UART_secure_BLE,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "UART_secure_BLE.hwdef" *) 
module UART_secure_BLE
   (Encrypt_An,
    Encrypt_Seg,
    Sender_An,
    Sender_Seg,
    Tx_ble_Encry,
    i_serial_uart,
    mclk);
  output [3:0]Encrypt_An;
  output [6:0]Encrypt_Seg;
  output [3:0]Sender_An;
  output [6:0]Sender_Seg;
  output Tx_ble_Encry;
  input i_serial_uart;
  input mclk;

  wire [7:0]Encryption_logic_0_b;
  wire [3:0]Seven_seg_0_an;
  wire [6:0]Seven_seg_0_seg;
  wire [3:0]Seven_seg_1_an;
  wire [6:0]Seven_seg_1_seg;
  wire UART_Rx_0_done;
  wire [7:0]UART_Rx_0_o_byte;
  wire UART_Tx_0_Tx;
  wire i_serial_0_1;
  wire mclk_0_1;

  assign Encrypt_An[3:0] = Seven_seg_1_an;
  assign Encrypt_Seg[6:0] = Seven_seg_1_seg;
  assign Sender_An[3:0] = Seven_seg_0_an;
  assign Sender_Seg[6:0] = Seven_seg_0_seg;
  assign Tx_ble_Encry = UART_Tx_0_Tx;
  assign i_serial_0_1 = i_serial_uart;
  assign mclk_0_1 = mclk;
  UART_secure_BLE_Encryption_logic_0_0 Encryption_logic_0
       (.a(UART_Rx_0_o_byte),
        .b(Encryption_logic_0_b));
  UART_secure_BLE_Seven_seg_0_1 Seven_seg_0
       (.an(Seven_seg_0_an),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_0_o_byte),
        .seg(Seven_seg_0_seg));
  UART_secure_BLE_Seven_seg_1_0 Seven_seg_1
       (.an(Seven_seg_1_an),
        .mclk(mclk_0_1),
        .o_byte(Encryption_logic_0_b),
        .seg(Seven_seg_1_seg));
  UART_secure_BLE_UART_Rx_0_0 UART_Rx_0
       (.done(UART_Rx_0_done),
        .i_serial(i_serial_0_1),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_0_o_byte));
  UART_secure_BLE_UART_Tx_0_0 UART_Tx_0
       (.Tx(UART_Tx_0_Tx),
        .data_available(UART_Rx_0_done),
        .data_byte(Encryption_logic_0_b),
        .mclk(mclk_0_1));
endmodule
