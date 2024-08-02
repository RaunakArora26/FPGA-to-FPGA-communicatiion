-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 23 17:25:38 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/lenovo/Robust_UART/Robust_UART.srcs/sources_1/bd/UART_secure_BLE/ip/UART_secure_BLE_Encryption_logic_0_0/UART_secure_BLE_Encryption_logic_0_0_stub.vhdl
-- Design      : UART_secure_BLE_Encryption_logic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_secure_BLE_Encryption_logic_0_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end UART_secure_BLE_Encryption_logic_0_0;

architecture stub of UART_secure_BLE_Encryption_logic_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[7:0],b[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Encryption_logic,Vivado 2017.4";
begin
end;
