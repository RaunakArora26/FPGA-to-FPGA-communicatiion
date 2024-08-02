-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 23 09:24:08 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lenovo/UART_TX_AND_RX_TO_BLE/UART_TX_AND_RX_TO_BLE.srcs/sources_1/bd/BLE_UART/ip/BLE_UART_UART_Rx_1_0/BLE_UART_UART_Rx_1_0_sim_netlist.vhdl
-- Design      : BLE_UART_UART_Rx_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_UART_UART_Rx_1_0_UART_Rx is
  port (
    o_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    done : out STD_LOGIC;
    mclk : in STD_LOGIC;
    i_serial : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BLE_UART_UART_Rx_1_0_UART_Rx : entity is "UART_Rx";
end BLE_UART_UART_Rx_1_0_UART_Rx;

architecture STRUCTURE of BLE_UART_UART_Rx_1_0_UART_Rx is
  signal \^done\ : STD_LOGIC;
  signal \^o_byte\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_byte[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_byte[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[10]_i_3_n_0\ : STD_LOGIC;
  signal \r_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \r_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \r_count[10]_i_6_n_0\ : STD_LOGIC;
  signal \r_count[10]_i_7_n_0\ : STD_LOGIC;
  signal \r_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_count_reg_n_0_[9]\ : STD_LOGIC;
  signal r_done_i_1_n_0 : STD_LOGIC;
  signal r_done_i_2_n_0 : STD_LOGIC;
  signal \r_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_state__30\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_count[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_count[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_count[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_count[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_count[8]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_count[9]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_index[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_state[1]_i_2\ : label is "soft_lutpair4";
begin
  done <= \^done\;
  o_byte(7 downto 0) <= \^o_byte\(7 downto 0);
\r_byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[1]\,
      I2 => \r_index_reg_n_0_[0]\,
      I3 => \r_index_reg_n_0_[2]\,
      I4 => \r_byte[7]_i_2_n_0\,
      I5 => \^o_byte\(0),
      O => \r_byte[0]_i_1_n_0\
    );
\r_byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[1]\,
      I2 => \r_index_reg_n_0_[0]\,
      I3 => \r_index_reg_n_0_[2]\,
      I4 => \r_byte[7]_i_2_n_0\,
      I5 => \^o_byte\(1),
      O => \r_byte[1]_i_1_n_0\
    );
\r_byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[0]\,
      I2 => \r_index_reg_n_0_[1]\,
      I3 => \r_index_reg_n_0_[2]\,
      I4 => \r_byte[7]_i_2_n_0\,
      I5 => \^o_byte\(2),
      O => \r_byte[2]_i_1_n_0\
    );
\r_byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[2]\,
      I2 => \r_byte[7]_i_2_n_0\,
      I3 => \r_index_reg_n_0_[0]\,
      I4 => \r_index_reg_n_0_[1]\,
      I5 => \^o_byte\(3),
      O => \r_byte[3]_i_1_n_0\
    );
\r_byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[1]\,
      I2 => \r_index_reg_n_0_[0]\,
      I3 => \r_index_reg_n_0_[2]\,
      I4 => \r_byte[7]_i_2_n_0\,
      I5 => \^o_byte\(4),
      O => \r_byte[4]_i_1_n_0\
    );
\r_byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[1]\,
      I2 => \r_index_reg_n_0_[0]\,
      I3 => \r_index_reg_n_0_[2]\,
      I4 => \r_byte[7]_i_2_n_0\,
      I5 => \^o_byte\(5),
      O => \r_byte[5]_i_1_n_0\
    );
\r_byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[0]\,
      I2 => \r_index_reg_n_0_[1]\,
      I3 => \r_index_reg_n_0_[2]\,
      I4 => \r_byte[7]_i_2_n_0\,
      I5 => \^o_byte\(6),
      O => \r_byte[6]_i_1_n_0\
    );
\r_byte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_index_reg_n_0_[2]\,
      I2 => \r_byte[7]_i_2_n_0\,
      I3 => \r_index_reg_n_0_[0]\,
      I4 => \r_index_reg_n_0_[1]\,
      I5 => \^o_byte\(7),
      O => \r_byte[7]_i_1_n_0\
    );
\r_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555550100000000"
    )
        port map (
      I0 => \r_state_reg_n_0_[0]\,
      I1 => \r_byte[7]_i_3_n_0\,
      I2 => \r_byte[7]_i_4_n_0\,
      I3 => \r_count_reg_n_0_[10]\,
      I4 => \r_byte[7]_i_5_n_0\,
      I5 => \r_state_reg_n_0_[1]\,
      O => \r_byte[7]_i_2_n_0\
    );
\r_byte[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => \r_count_reg_n_0_[5]\,
      I1 => \r_count_reg_n_0_[7]\,
      I2 => \r_count_reg_n_0_[6]\,
      O => \r_byte[7]_i_3_n_0\
    );
\r_byte[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \r_count_reg_n_0_[8]\,
      I1 => \r_count_reg_n_0_[9]\,
      I2 => \r_count_reg_n_0_[3]\,
      I3 => \r_count_reg_n_0_[4]\,
      I4 => \r_count_reg_n_0_[7]\,
      I5 => \r_count_reg_n_0_[2]\,
      O => \r_byte[7]_i_4_n_0\
    );
\r_byte[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_count_reg_n_0_[6]\,
      I1 => \r_count_reg_n_0_[9]\,
      I2 => \r_count_reg_n_0_[0]\,
      I3 => \r_count_reg_n_0_[1]\,
      I4 => \r_count_reg_n_0_[5]\,
      I5 => \r_count_reg_n_0_[8]\,
      O => \r_byte[7]_i_5_n_0\
    );
\r_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[0]_i_1_n_0\,
      Q => \^o_byte\(0),
      R => '0'
    );
\r_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[1]_i_1_n_0\,
      Q => \^o_byte\(1),
      R => '0'
    );
\r_byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[2]_i_1_n_0\,
      Q => \^o_byte\(2),
      R => '0'
    );
\r_byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[3]_i_1_n_0\,
      Q => \^o_byte\(3),
      R => '0'
    );
\r_byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[4]_i_1_n_0\,
      Q => \^o_byte\(4),
      R => '0'
    );
\r_byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[5]_i_1_n_0\,
      Q => \^o_byte\(5),
      R => '0'
    );
\r_byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[6]_i_1_n_0\,
      Q => \^o_byte\(6),
      R => '0'
    );
\r_byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_byte[7]_i_1_n_0\,
      Q => \^o_byte\(7),
      R => '0'
    );
\r_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088B8"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[0]\,
      O => \r_count[0]_i_1_n_0\
    );
\r_count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \r_state_reg_n_0_[1]\,
      I1 => \r_state_reg_n_0_[0]\,
      I2 => i_serial,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count[10]_i_2_n_0\,
      O => \r_count[10]_i_1_n_0\
    );
\r_count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \r_count_reg_n_0_[6]\,
      I1 => \r_count_reg_n_0_[0]\,
      I2 => \r_count_reg_n_0_[1]\,
      I3 => \r_count[10]_i_5_n_0\,
      I4 => \r_count[10]_i_6_n_0\,
      I5 => \r_count_reg_n_0_[2]\,
      O => \r_count[10]_i_2_n_0\
    );
\r_count[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count[10]_i_7_n_0\,
      O => \r_count[10]_i_3_n_0\
    );
\r_count[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \r_count_reg_n_0_[0]\,
      I1 => \r_count_reg_n_0_[3]\,
      I2 => \r_count_reg_n_0_[6]\,
      I3 => \r_count_reg_n_0_[1]\,
      I4 => \r_count_reg_n_0_[2]\,
      I5 => \r_count[10]_i_6_n_0\,
      O => \r_count[10]_i_4_n_0\
    );
\r_count[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => i_serial,
      I1 => \r_count_reg_n_0_[3]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_state_reg_n_0_[1]\,
      O => \r_count[10]_i_5_n_0\
    );
\r_count[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \r_count_reg_n_0_[8]\,
      I1 => \r_count_reg_n_0_[5]\,
      I2 => \r_count_reg_n_0_[10]\,
      I3 => \r_count_reg_n_0_[9]\,
      I4 => \r_count_reg_n_0_[7]\,
      I5 => \r_count_reg_n_0_[4]\,
      O => \r_count[10]_i_6_n_0\
    );
\r_count[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_count_reg_n_0_[8]\,
      I1 => \r_count_reg_n_0_[6]\,
      I2 => \r_count[6]_i_2_n_0\,
      I3 => \r_count_reg_n_0_[7]\,
      I4 => \r_count_reg_n_0_[9]\,
      I5 => \r_count_reg_n_0_[10]\,
      O => \r_count[10]_i_7_n_0\
    );
\r_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[1]\,
      I5 => \r_count_reg_n_0_[0]\,
      O => \r_count[1]_i_1_n_0\
    );
\r_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[2]\,
      I5 => \r_count[2]_i_2_n_0\,
      O => \r_count[2]_i_1_n_0\
    );
\r_count[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_count_reg_n_0_[0]\,
      I1 => \r_count_reg_n_0_[1]\,
      O => \r_count[2]_i_2_n_0\
    );
\r_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[3]\,
      I5 => \r_count[3]_i_2_n_0\,
      O => \r_count[3]_i_1_n_0\
    );
\r_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_count_reg_n_0_[2]\,
      I1 => \r_count_reg_n_0_[1]\,
      I2 => \r_count_reg_n_0_[0]\,
      O => \r_count[3]_i_2_n_0\
    );
\r_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[4]\,
      I5 => \r_count[4]_i_2_n_0\,
      O => \r_count[4]_i_1_n_0\
    );
\r_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \r_count_reg_n_0_[3]\,
      I1 => \r_count_reg_n_0_[0]\,
      I2 => \r_count_reg_n_0_[1]\,
      I3 => \r_count_reg_n_0_[2]\,
      O => \r_count[4]_i_2_n_0\
    );
\r_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[5]\,
      I5 => \r_count[5]_i_2_n_0\,
      O => \r_count[5]_i_1_n_0\
    );
\r_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \r_count_reg_n_0_[4]\,
      I1 => \r_count_reg_n_0_[2]\,
      I2 => \r_count_reg_n_0_[1]\,
      I3 => \r_count_reg_n_0_[0]\,
      I4 => \r_count_reg_n_0_[3]\,
      O => \r_count[5]_i_2_n_0\
    );
\r_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[6]\,
      I5 => \r_count[6]_i_2_n_0\,
      O => \r_count[6]_i_1_n_0\
    );
\r_count[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_count_reg_n_0_[5]\,
      I1 => \r_count_reg_n_0_[3]\,
      I2 => \r_count_reg_n_0_[0]\,
      I3 => \r_count_reg_n_0_[1]\,
      I4 => \r_count_reg_n_0_[2]\,
      I5 => \r_count_reg_n_0_[4]\,
      O => \r_count[6]_i_2_n_0\
    );
\r_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[7]\,
      I5 => \r_count[7]_i_2_n_0\,
      O => \r_count[7]_i_1_n_0\
    );
\r_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_count_reg_n_0_[6]\,
      I1 => \r_count_reg_n_0_[4]\,
      I2 => \r_count_reg_n_0_[2]\,
      I3 => \r_count[2]_i_2_n_0\,
      I4 => \r_count_reg_n_0_[3]\,
      I5 => \r_count_reg_n_0_[5]\,
      O => \r_count[7]_i_2_n_0\
    );
\r_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[8]\,
      I5 => \r_count[8]_i_2_n_0\,
      O => \r_count[8]_i_1_n_0\
    );
\r_count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_count_reg_n_0_[7]\,
      I1 => \r_count[6]_i_2_n_0\,
      I2 => \r_count_reg_n_0_[6]\,
      O => \r_count[8]_i_2_n_0\
    );
\r_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B80000"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count[10]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[9]\,
      I5 => \r_count[9]_i_2_n_0\,
      O => \r_count[9]_i_1_n_0\
    );
\r_count[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \r_count_reg_n_0_[8]\,
      I1 => \r_count_reg_n_0_[6]\,
      I2 => \r_count[6]_i_2_n_0\,
      I3 => \r_count_reg_n_0_[7]\,
      O => \r_count[9]_i_2_n_0\
    );
\r_count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[0]_i_1_n_0\,
      Q => \r_count_reg_n_0_[0]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[10]_i_3_n_0\,
      Q => \r_count_reg_n_0_[10]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[1]_i_1_n_0\,
      Q => \r_count_reg_n_0_[1]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[2]_i_1_n_0\,
      Q => \r_count_reg_n_0_[2]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[3]_i_1_n_0\,
      Q => \r_count_reg_n_0_[3]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[4]_i_1_n_0\,
      Q => \r_count_reg_n_0_[4]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[5]_i_1_n_0\,
      Q => \r_count_reg_n_0_[5]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[6]_i_1_n_0\,
      Q => \r_count_reg_n_0_[6]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[7]_i_1_n_0\,
      Q => \r_count_reg_n_0_[7]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[8]_i_1_n_0\,
      Q => \r_count_reg_n_0_[8]\,
      S => \r_count[10]_i_1_n_0\
    );
\r_count_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_count[10]_i_2_n_0\,
      D => \r_count[9]_i_1_n_0\,
      Q => \r_count_reg_n_0_[9]\,
      S => \r_count[10]_i_1_n_0\
    );
r_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC40"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \^done\,
      O => r_done_i_1_n_0
    );
r_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF13"
    )
        port map (
      I0 => \r_count_reg_n_0_[5]\,
      I1 => \r_count_reg_n_0_[7]\,
      I2 => \r_count_reg_n_0_[6]\,
      I3 => \r_byte[7]_i_4_n_0\,
      I4 => \r_count_reg_n_0_[10]\,
      I5 => \r_byte[7]_i_5_n_0\,
      O => r_done_i_2_n_0
    );
r_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_done_i_1_n_0,
      Q => \^done\,
      R => '0'
    );
\r_index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F804"
    )
        port map (
      I0 => r_done_i_2_n_0,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_index_reg_n_0_[0]\,
      O => \r_index[0]_i_1_n_0\
    );
\r_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD00020"
    )
        port map (
      I0 => \r_index_reg_n_0_[0]\,
      I1 => r_done_i_2_n_0,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => \r_index_reg_n_0_[1]\,
      O => \r_index[1]_i_1_n_0\
    );
\r_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF70000000800"
    )
        port map (
      I0 => \r_index_reg_n_0_[1]\,
      I1 => \r_index_reg_n_0_[0]\,
      I2 => r_done_i_2_n_0,
      I3 => \r_state_reg_n_0_[1]\,
      I4 => \r_state_reg_n_0_[0]\,
      I5 => \r_index_reg_n_0_[2]\,
      O => \r_index[2]_i_1_n_0\
    );
\r_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_index[0]_i_1_n_0\,
      Q => \r_index_reg_n_0_[0]\,
      R => '0'
    );
\r_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_index[1]_i_1_n_0\,
      Q => \r_index_reg_n_0_[1]\,
      R => '0'
    );
\r_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_index[2]_i_1_n_0\,
      Q => \r_index_reg_n_0_[2]\,
      R => '0'
    );
\r_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA00FA0F0A300A3F"
    )
        port map (
      I0 => \r_state__30\(0),
      I1 => \r_state[0]_i_3_n_0\,
      I2 => \r_state_reg_n_0_[1]\,
      I3 => \r_state_reg_n_0_[0]\,
      I4 => i_serial,
      I5 => r_done_i_2_n_0,
      O => \r_state[0]_i_1_n_0\
    );
\r_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \r_state[0]_i_4_n_0\,
      I1 => \r_count_reg_n_0_[2]\,
      I2 => \r_count_reg_n_0_[0]\,
      I3 => \r_count_reg_n_0_[1]\,
      I4 => \r_count[10]_i_6_n_0\,
      O => \r_state__30\(0)
    );
\r_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_index_reg_n_0_[2]\,
      I1 => \r_index_reg_n_0_[0]\,
      I2 => \r_index_reg_n_0_[1]\,
      O => \r_state[0]_i_3_n_0\
    );
\r_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD5FFD5FFD5FF"
    )
        port map (
      I0 => \r_count_reg_n_0_[8]\,
      I1 => \r_count_reg_n_0_[6]\,
      I2 => \r_count_reg_n_0_[7]\,
      I3 => \r_count_reg_n_0_[5]\,
      I4 => \r_count_reg_n_0_[3]\,
      I5 => \r_count_reg_n_0_[4]\,
      O => \r_state[0]_i_4_n_0\
    );
\r_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AFF8A8A8A8A8A8A"
    )
        port map (
      I0 => \r_state_reg_n_0_[1]\,
      I1 => r_done_i_2_n_0,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_state[1]_i_2_n_0\,
      I4 => \r_state[1]_i_3_n_0\,
      I5 => \r_state[1]_i_4_n_0\,
      O => \r_state[1]_i_1_n_0\
    );
\r_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_count[10]_i_6_n_0\,
      I1 => \r_count_reg_n_0_[2]\,
      I2 => \r_count_reg_n_0_[1]\,
      O => \r_state[1]_i_2_n_0\
    );
\r_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F400F400F400"
    )
        port map (
      I0 => \r_count_reg_n_0_[1]\,
      I1 => \r_count_reg_n_0_[0]\,
      I2 => \r_count_reg_n_0_[2]\,
      I3 => \r_count_reg_n_0_[5]\,
      I4 => \r_count_reg_n_0_[3]\,
      I5 => \r_count_reg_n_0_[4]\,
      O => \r_state[1]_i_3_n_0\
    );
\r_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100010001000"
    )
        port map (
      I0 => i_serial,
      I1 => \r_state_reg_n_0_[1]\,
      I2 => \r_state_reg_n_0_[0]\,
      I3 => \r_count_reg_n_0_[8]\,
      I4 => \r_count_reg_n_0_[6]\,
      I5 => \r_count_reg_n_0_[7]\,
      O => \r_state[1]_i_4_n_0\
    );
\r_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_state[0]_i_1_n_0\,
      Q => \r_state_reg_n_0_[0]\,
      R => '0'
    );
\r_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_state[1]_i_1_n_0\,
      Q => \r_state_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_UART_UART_Rx_1_0 is
  port (
    mclk : in STD_LOGIC;
    i_serial : in STD_LOGIC;
    o_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BLE_UART_UART_Rx_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BLE_UART_UART_Rx_1_0 : entity is "BLE_UART_UART_Rx_1_0,UART_Rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BLE_UART_UART_Rx_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BLE_UART_UART_Rx_1_0 : entity is "UART_Rx,Vivado 2017.4";
end BLE_UART_UART_Rx_1_0;

architecture STRUCTURE of BLE_UART_UART_Rx_1_0 is
begin
inst: entity work.BLE_UART_UART_Rx_1_0_UART_Rx
     port map (
      done => done,
      i_serial => i_serial,
      mclk => mclk,
      o_byte(7 downto 0) => o_byte(7 downto 0)
    );
end STRUCTURE;
