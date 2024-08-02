-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 23 11:31:44 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lenovo/PROJECT-20_GPIO_AND_UART_MICROBLAZE/PROJECT-20_GPIO_AND_UART_MICROBLAZE.srcs/sources_1/bd/GPIO_UART/ip/GPIO_UART_NOT_0_0/GPIO_UART_NOT_0_0_stub.vhdl
-- Design      : GPIO_UART_NOT_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GPIO_UART_NOT_0_0 is
  Port ( 
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );

end GPIO_UART_NOT_0_0;

architecture stub of GPIO_UART_NOT_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "NOT,Vivado 2017.4";
begin
end;
