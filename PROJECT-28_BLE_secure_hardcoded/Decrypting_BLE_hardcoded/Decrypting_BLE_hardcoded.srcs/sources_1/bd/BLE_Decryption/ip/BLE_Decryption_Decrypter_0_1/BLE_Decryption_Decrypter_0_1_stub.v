// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Jul 12 14:27:30 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/lenovo/Decrypting_BLE_hardcoded/Decrypting_BLE_hardcoded.srcs/sources_1/bd/BLE_Decryption/ip/BLE_Decryption_Decrypter_0_1/BLE_Decryption_Decrypter_0_1_stub.v
// Design      : BLE_Decryption_Decrypter_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Decrypter,Vivado 2017.4" *)
module BLE_Decryption_Decrypter_0_1(Encrypted, Normal, Placeholder)
/* synthesis syn_black_box black_box_pad_pin="Encrypted[7:0],Normal[7:0],Placeholder" */;
  input [7:0]Encrypted;
  output [7:0]Normal;
  output Placeholder;
endmodule
