// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jul 23 17:25:38 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/lenovo/Robust_UART/Robust_UART.srcs/sources_1/bd/UART_secure_BLE/ip/UART_secure_BLE_Encryption_logic_0_0/UART_secure_BLE_Encryption_logic_0_0_stub.v
// Design      : UART_secure_BLE_Encryption_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Encryption_logic,Vivado 2017.4" *)
module UART_secure_BLE_Encryption_logic_0_0(a, b)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],b[7:0]" */;
  input [7:0]a;
  output [7:0]b;
endmodule
