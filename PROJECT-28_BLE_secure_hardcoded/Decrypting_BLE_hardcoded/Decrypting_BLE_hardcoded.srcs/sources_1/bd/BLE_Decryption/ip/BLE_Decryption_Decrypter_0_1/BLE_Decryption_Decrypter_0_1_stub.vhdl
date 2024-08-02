-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Jul 12 14:27:30 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lenovo/Decrypting_BLE_hardcoded/Decrypting_BLE_hardcoded.srcs/sources_1/bd/BLE_Decryption/ip/BLE_Decryption_Decrypter_0_1/BLE_Decryption_Decrypter_0_1_stub.vhdl
-- Design      : BLE_Decryption_Decrypter_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BLE_Decryption_Decrypter_0_1 is
  Port ( 
    Encrypted : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Normal : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Placeholder : out STD_LOGIC
  );

end BLE_Decryption_Decrypter_0_1;

architecture stub of BLE_Decryption_Decrypter_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Encrypted[7:0],Normal[7:0],Placeholder";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Decrypter,Vivado 2017.4";
begin
end;
