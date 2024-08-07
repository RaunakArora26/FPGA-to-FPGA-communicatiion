-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 23 09:24:09 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lenovo/UART_TX_AND_RX_TO_BLE/UART_TX_AND_RX_TO_BLE.srcs/sources_1/bd/BLE_UART/ip/BLE_UART_Seven_seg_0_0/BLE_UART_Seven_seg_0_0_stub.vhdl
-- Design      : BLE_UART_Seven_seg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BLE_UART_Seven_seg_0_0 is
  Port ( 
    o_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mclk : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end BLE_UART_Seven_seg_0_0;

architecture stub of BLE_UART_Seven_seg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "o_byte[7:0],mclk,an[3:0],seg[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Seven_seg,Vivado 2017.4";
begin
end;
