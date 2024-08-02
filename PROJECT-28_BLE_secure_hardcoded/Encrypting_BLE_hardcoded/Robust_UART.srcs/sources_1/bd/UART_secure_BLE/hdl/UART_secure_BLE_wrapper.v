//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Jul 23 17:22:50 2024
//Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
//Command     : generate_target UART_secure_BLE_wrapper.bd
//Design      : UART_secure_BLE_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module UART_secure_BLE_wrapper
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

  wire [3:0]Encrypt_An;
  wire [6:0]Encrypt_Seg;
  wire [3:0]Sender_An;
  wire [6:0]Sender_Seg;
  wire Tx_ble_Encry;
  wire i_serial_uart;
  wire mclk;

  UART_secure_BLE UART_secure_BLE_i
       (.Encrypt_An(Encrypt_An),
        .Encrypt_Seg(Encrypt_Seg),
        .Sender_An(Sender_An),
        .Sender_Seg(Sender_Seg),
        .Tx_ble_Encry(Tx_ble_Encry),
        .i_serial_uart(i_serial_uart),
        .mclk(mclk));
endmodule
