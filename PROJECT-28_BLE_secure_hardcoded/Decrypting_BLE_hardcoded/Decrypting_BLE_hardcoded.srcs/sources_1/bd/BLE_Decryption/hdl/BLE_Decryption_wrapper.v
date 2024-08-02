//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Fri Jul 12 14:26:22 2024
//Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
//Command     : generate_target BLE_Decryption_wrapper.bd
//Design      : BLE_Decryption_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BLE_Decryption_wrapper
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

  wire [3:0]Decrypted_An;
  wire [6:0]Decrypted_Seg;
  wire [3:0]Encrypted_An;
  wire [6:0]Encrypted_Seg;
  wire Placeholder;
  wire Tx_Uart;
  wire i_serial_BLE;
  wire mclk;

  BLE_Decryption BLE_Decryption_i
       (.Decrypted_An(Decrypted_An),
        .Decrypted_Seg(Decrypted_Seg),
        .Encrypted_An(Encrypted_An),
        .Encrypted_Seg(Encrypted_Seg),
        .Placeholder(Placeholder),
        .Tx_Uart(Tx_Uart),
        .i_serial_BLE(i_serial_BLE),
        .mclk(mclk));
endmodule
