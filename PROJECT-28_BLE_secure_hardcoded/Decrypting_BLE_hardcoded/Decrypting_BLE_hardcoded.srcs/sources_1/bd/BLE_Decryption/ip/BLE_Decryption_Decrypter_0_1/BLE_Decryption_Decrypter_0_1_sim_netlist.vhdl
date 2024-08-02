-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Jul 12 14:27:30 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lenovo/Decrypting_BLE_hardcoded/Decrypting_BLE_hardcoded.srcs/sources_1/bd/BLE_Decryption/ip/BLE_Decryption_Decrypter_0_1/BLE_Decryption_Decrypter_0_1_sim_netlist.vhdl
-- Design      : BLE_Decryption_Decrypter_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_Decryption_Decrypter_0_1_Decrypter is
  port (
    Normal : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Encrypted : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BLE_Decryption_Decrypter_0_1_Decrypter : entity is "Decrypter";
end BLE_Decryption_Decrypter_0_1_Decrypter;

architecture STRUCTURE of BLE_Decryption_Decrypter_0_1_Decrypter is
  signal \Normal[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Normal[6]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Normal[7]_INST_0\ : label is "soft_lutpair0";
begin
\Normal[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Encrypted(0),
      O => Normal(0)
    );
\Normal[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Normal[7]_INST_0_i_1_n_0\,
      I1 => Encrypted(6),
      O => Normal(1)
    );
\Normal[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => Encrypted(6),
      I1 => \Normal[7]_INST_0_i_1_n_0\,
      I2 => Encrypted(7),
      O => Normal(2)
    );
\Normal[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Encrypted(4),
      I1 => Encrypted(2),
      I2 => Encrypted(0),
      I3 => Encrypted(1),
      I4 => Encrypted(3),
      I5 => Encrypted(5),
      O => \Normal[7]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_Decryption_Decrypter_0_1 is
  port (
    Encrypted : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Normal : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Placeholder : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BLE_Decryption_Decrypter_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BLE_Decryption_Decrypter_0_1 : entity is "BLE_Decryption_Decrypter_0_1,Decrypter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BLE_Decryption_Decrypter_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BLE_Decryption_Decrypter_0_1 : entity is "Decrypter,Vivado 2017.4";
end BLE_Decryption_Decrypter_0_1;

architecture STRUCTURE of BLE_Decryption_Decrypter_0_1 is
  signal \<const1>\ : STD_LOGIC;
begin
  Placeholder <= \<const1>\;
\Normal[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Encrypted(0),
      I1 => Encrypted(1),
      O => Normal(1)
    );
\Normal[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => Encrypted(1),
      I1 => Encrypted(0),
      I2 => Encrypted(2),
      O => Normal(2)
    );
\Normal[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => Encrypted(2),
      I1 => Encrypted(0),
      I2 => Encrypted(1),
      I3 => Encrypted(3),
      O => Normal(3)
    );
\Normal[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => Encrypted(3),
      I1 => Encrypted(1),
      I2 => Encrypted(0),
      I3 => Encrypted(2),
      I4 => Encrypted(4),
      O => Normal(4)
    );
\Normal[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => Encrypted(4),
      I1 => Encrypted(2),
      I2 => Encrypted(0),
      I3 => Encrypted(1),
      I4 => Encrypted(3),
      I5 => Encrypted(5),
      O => Normal(5)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.BLE_Decryption_Decrypter_0_1_Decrypter
     port map (
      Encrypted(7 downto 0) => Encrypted(7 downto 0),
      Normal(2 downto 1) => Normal(7 downto 6),
      Normal(0) => Normal(0)
    );
end STRUCTURE;
