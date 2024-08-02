//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Tue Jul 23 12:21:33 2024
//Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
//Command     : generate_target GPIO_UART_wrapper.bd
//Design      : GPIO_UART_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module GPIO_UART_wrapper
   (RST,
    Rx,
    Tx,
    btn,
    led,
    mclk);
  input RST;
  input Rx;
  output Tx;
  input [0:0]btn;
  output [3:0]led;
  input mclk;

  wire RST;
  wire Rx;
  wire Tx;
  wire [0:0]btn;
  wire [3:0]led;
  wire mclk;

  GPIO_UART GPIO_UART_i
       (.RST(RST),
        .Rx(Rx),
        .Tx(Tx),
        .btn(btn),
        .led(led),
        .mclk(mclk));
endmodule
