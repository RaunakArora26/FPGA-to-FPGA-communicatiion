// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jul 23 09:24:08 2024
// Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/lenovo/UART_TX_AND_RX_TO_BLE/UART_TX_AND_RX_TO_BLE.srcs/sources_1/bd/BLE_UART/ip/BLE_UART_UART_Rx_1_0/BLE_UART_UART_Rx_1_0_stub.v
// Design      : BLE_UART_UART_Rx_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UART_Rx,Vivado 2017.4" *)
module BLE_UART_UART_Rx_1_0(mclk, i_serial, o_byte, done)
/* synthesis syn_black_box black_box_pad_pin="mclk,i_serial,o_byte[7:0],done" */;
  input mclk;
  input i_serial;
  output [7:0]o_byte;
  output done;
endmodule
