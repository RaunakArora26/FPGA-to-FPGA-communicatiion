-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Jul 12 12:14:22 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lenovo/Decrypting_BLE_hardcoded/Decrypting_BLE_hardcoded.srcs/sources_1/bd/BLE_Decryption/ip/BLE_Decryption_UART_Rx_0_0/BLE_Decryption_UART_Rx_0_0_stub.vhdl
-- Design      : BLE_Decryption_UART_Rx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BLE_Decryption_UART_Rx_0_0 is
  Port ( 
    mclk : in STD_LOGIC;
    i_serial : in STD_LOGIC;
    o_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    done : out STD_LOGIC
  );

end BLE_Decryption_UART_Rx_0_0;

architecture stub of BLE_Decryption_UART_Rx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mclk,i_serial,o_byte[7:0],done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART_Rx,Vivado 2017.4";
begin
end;
