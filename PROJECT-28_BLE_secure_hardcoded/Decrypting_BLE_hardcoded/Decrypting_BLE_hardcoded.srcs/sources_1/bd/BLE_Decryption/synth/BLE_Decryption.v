//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Fri Jul 12 14:26:22 2024
//Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
//Command     : generate_target BLE_Decryption.bd
//Design      : BLE_Decryption
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BLE_Decryption,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BLE_Decryption,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BLE_Decryption.hwdef" *) 
module BLE_Decryption
   (Decrypted_An,
    Decrypted_Seg,
    Encrypted_An,
    Encrypted_Seg,
    Placeholder,
    Tx_Uart,
    i_serial_BLE,
    mclk);
  output [3:0]Decrypted_An;
  output [6:0]Decrypted_Seg;
  output [3:0]Encrypted_An;
  output [6:0]Encrypted_Seg;
  output Placeholder;
  output Tx_Uart;
  input i_serial_BLE;
  input mclk;

  wire [7:0]Decrypter_0_Normal;
  wire Decrypter_0_Placeholder;
  wire [3:0]Seven_seg_0_an;
  wire [6:0]Seven_seg_0_seg;
  wire [3:0]Seven_seg_1_an;
  wire [6:0]Seven_seg_1_seg;
  wire UART_Rx_0_done;
  wire [7:0]UART_Rx_0_o_byte;
  wire UART_Tx_0_Tx;
  wire i_serial_0_1;
  wire mclk_0_1;

  assign Decrypted_An[3:0] = Seven_seg_1_an;
  assign Decrypted_Seg[6:0] = Seven_seg_1_seg;
  assign Encrypted_An[3:0] = Seven_seg_0_an;
  assign Encrypted_Seg[6:0] = Seven_seg_0_seg;
  assign Placeholder = Decrypter_0_Placeholder;
  assign Tx_Uart = UART_Tx_0_Tx;
  assign i_serial_0_1 = i_serial_BLE;
  assign mclk_0_1 = mclk;
  BLE_Decryption_Decrypter_0_1 Decrypter_0
       (.Encrypted(UART_Rx_0_o_byte),
        .Normal(Decrypter_0_Normal),
        .Placeholder(Decrypter_0_Placeholder));
  BLE_Decryption_Seven_seg_0_0 Seven_seg_0
       (.an(Seven_seg_0_an),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_0_o_byte),
        .seg(Seven_seg_0_seg));
  BLE_Decryption_Seven_seg_1_0 Seven_seg_1
       (.an(Seven_seg_1_an),
        .mclk(mclk_0_1),
        .o_byte(Decrypter_0_Normal),
        .seg(Seven_seg_1_seg));
  BLE_Decryption_UART_Rx_0_0 UART_Rx_0
       (.done(UART_Rx_0_done),
        .i_serial(i_serial_0_1),
        .mclk(mclk_0_1),
        .o_byte(UART_Rx_0_o_byte));
  BLE_Decryption_UART_Tx_0_0 UART_Tx_0
       (.Tx(UART_Tx_0_Tx),
        .data_available(UART_Rx_0_done),
        .data_byte(Decrypter_0_Normal),
        .mclk(mclk_0_1));
endmodule
