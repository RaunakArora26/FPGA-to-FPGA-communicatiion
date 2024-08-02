-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 23 17:25:38 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/lenovo/Robust_UART/Robust_UART.srcs/sources_1/bd/UART_secure_BLE/ip/UART_secure_BLE_UART_Tx_0_0/UART_secure_BLE_UART_Tx_0_0_sim_netlist.vhdl
-- Design      : UART_secure_BLE_UART_Tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_secure_BLE_UART_Tx_0_0_UART_Tx is
  port (
    Tx : out STD_LOGIC;
    done : out STD_LOGIC;
    active : out STD_LOGIC;
    data_available : in STD_LOGIC;
    mclk : in STD_LOGIC;
    data_byte : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_secure_BLE_UART_Tx_0_0_UART_Tx : entity is "UART_Tx";
end UART_secure_BLE_UART_Tx_0_0_UART_Tx;

architecture STRUCTURE of UART_secure_BLE_UART_Tx_0_0_UART_Tx is
  signal \^active\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal r_Tx_i_1_n_0 : STD_LOGIC;
  signal r_Tx_i_2_n_0 : STD_LOGIC;
  signal r_Tx_i_3_n_0 : STD_LOGIC;
  signal r_active_i_1_n_0 : STD_LOGIC;
  signal r_active_i_2_n_0 : STD_LOGIC;
  signal r_active_i_3_n_0 : STD_LOGIC;
  signal r_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_counter[9]_i_5_n_0\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal r_data_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_data_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal r_done_i_1_n_0 : STD_LOGIC;
  signal r_index : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_index[2]_i_1_n_0\ : STD_LOGIC;
  signal r_states : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_states[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_states[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_states[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of r_Tx_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_active_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_counter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_counter[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_counter[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_counter[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_counter[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_counter[9]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_index[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_index[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_states[1]_i_1\ : label is "soft_lutpair4";
begin
  active <= \^active\;
  done <= \^done\;
r_Tx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400FF"
    )
        port map (
      I0 => r_index(2),
      I1 => r_Tx_i_2_n_0,
      I2 => r_Tx_i_3_n_0,
      I3 => r_states(0),
      I4 => r_states(1),
      O => r_Tx_i_1_n_0
    );
r_Tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => r_data_byte(1),
      I1 => r_data_byte(3),
      I2 => r_index(1),
      I3 => r_data_byte(0),
      I4 => r_index(0),
      I5 => r_data_byte(2),
      O => r_Tx_i_2_n_0
    );
r_Tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => r_data_byte(5),
      I1 => r_data_byte(7),
      I2 => r_index(1),
      I3 => r_data_byte(4),
      I4 => r_index(0),
      I5 => r_data_byte(6),
      O => r_Tx_i_3_n_0
    );
r_Tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_Tx_i_1_n_0,
      Q => Tx,
      R => '0'
    );
r_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFA000A"
    )
        port map (
      I0 => data_available,
      I1 => r_active_i_2_n_0,
      I2 => r_states(1),
      I3 => r_states(0),
      I4 => \^active\,
      O => r_active_i_1_n_0
    );
r_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAFFFFFFFFFFFF"
    )
        port map (
      I0 => r_active_i_3_n_0,
      I1 => \r_counter_reg_n_0_[5]\,
      I2 => \r_counter_reg_n_0_[6]\,
      I3 => \r_counter[5]_i_2_n_0\,
      I4 => \r_counter_reg_n_0_[9]\,
      I5 => \r_counter_reg_n_0_[8]\,
      O => r_active_i_2_n_0
    );
r_active_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100FF00FF00FF"
    )
        port map (
      I0 => \r_counter_reg_n_0_[3]\,
      I1 => \r_counter_reg_n_0_[4]\,
      I2 => \r_counter_reg_n_0_[2]\,
      I3 => \r_counter_reg_n_0_[7]\,
      I4 => \r_counter_reg_n_0_[5]\,
      I5 => \r_counter_reg_n_0_[6]\,
      O => r_active_i_3_n_0
    );
r_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_active_i_1_n_0,
      Q => \^active\,
      R => '0'
    );
\r_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_counter[9]_i_3_n_0\,
      I1 => \r_counter_reg_n_0_[0]\,
      O => r_counter(0)
    );
\r_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \r_counter[9]_i_3_n_0\,
      I1 => \r_counter_reg_n_0_[0]\,
      I2 => \r_counter_reg_n_0_[1]\,
      O => r_counter(1)
    );
\r_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \r_counter[9]_i_3_n_0\,
      I1 => \r_counter_reg_n_0_[1]\,
      I2 => \r_counter_reg_n_0_[0]\,
      I3 => \r_counter_reg_n_0_[2]\,
      O => r_counter(2)
    );
\r_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \r_counter[9]_i_3_n_0\,
      I1 => \r_counter_reg_n_0_[0]\,
      I2 => \r_counter_reg_n_0_[1]\,
      I3 => \r_counter_reg_n_0_[2]\,
      I4 => \r_counter_reg_n_0_[3]\,
      O => r_counter(3)
    );
\r_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \r_counter[9]_i_3_n_0\,
      I1 => \r_counter_reg_n_0_[2]\,
      I2 => \r_counter_reg_n_0_[1]\,
      I3 => \r_counter_reg_n_0_[0]\,
      I4 => \r_counter_reg_n_0_[3]\,
      I5 => \r_counter_reg_n_0_[4]\,
      O => r_counter(4)
    );
\r_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \r_counter[9]_i_3_n_0\,
      I1 => \r_counter_reg_n_0_[3]\,
      I2 => \r_counter[5]_i_2_n_0\,
      I3 => \r_counter_reg_n_0_[2]\,
      I4 => \r_counter_reg_n_0_[4]\,
      I5 => \r_counter_reg_n_0_[5]\,
      O => r_counter(5)
    );
\r_counter[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_counter_reg_n_0_[0]\,
      I1 => \r_counter_reg_n_0_[1]\,
      O => \r_counter[5]_i_2_n_0\
    );
\r_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \r_counter[9]_i_2_n_0\,
      I1 => \r_counter[9]_i_3_n_0\,
      I2 => \r_counter_reg_n_0_[6]\,
      O => r_counter(6)
    );
\r_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \r_counter_reg_n_0_[6]\,
      I1 => \r_counter[9]_i_2_n_0\,
      I2 => \r_counter[9]_i_3_n_0\,
      I3 => \r_counter_reg_n_0_[7]\,
      O => r_counter(7)
    );
\r_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \r_counter_reg_n_0_[7]\,
      I1 => \r_counter[9]_i_2_n_0\,
      I2 => \r_counter_reg_n_0_[6]\,
      I3 => \r_counter[9]_i_3_n_0\,
      I4 => \r_counter_reg_n_0_[8]\,
      O => r_counter(8)
    );
\r_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \r_counter_reg_n_0_[8]\,
      I1 => \r_counter_reg_n_0_[6]\,
      I2 => \r_counter[9]_i_2_n_0\,
      I3 => \r_counter_reg_n_0_[7]\,
      I4 => \r_counter[9]_i_3_n_0\,
      I5 => \r_counter_reg_n_0_[9]\,
      O => r_counter(9)
    );
\r_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_counter_reg_n_0_[5]\,
      I1 => \r_counter_reg_n_0_[3]\,
      I2 => \r_counter_reg_n_0_[0]\,
      I3 => \r_counter_reg_n_0_[1]\,
      I4 => \r_counter_reg_n_0_[2]\,
      I5 => \r_counter_reg_n_0_[4]\,
      O => \r_counter[9]_i_2_n_0\
    );
\r_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF555500000000"
    )
        port map (
      I0 => \r_counter[9]_i_4_n_0\,
      I1 => \r_counter[5]_i_2_n_0\,
      I2 => \r_counter_reg_n_0_[6]\,
      I3 => \r_counter_reg_n_0_[5]\,
      I4 => r_active_i_3_n_0,
      I5 => \r_counter[9]_i_5_n_0\,
      O => \r_counter[9]_i_3_n_0\
    );
\r_counter[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_counter_reg_n_0_[8]\,
      I1 => \r_counter_reg_n_0_[9]\,
      O => \r_counter[9]_i_4_n_0\
    );
\r_counter[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_states(0),
      I1 => r_states(1),
      O => \r_counter[9]_i_5_n_0\
    );
\r_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(0),
      Q => \r_counter_reg_n_0_[0]\,
      R => '0'
    );
\r_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(1),
      Q => \r_counter_reg_n_0_[1]\,
      R => '0'
    );
\r_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(2),
      Q => \r_counter_reg_n_0_[2]\,
      R => '0'
    );
\r_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(3),
      Q => \r_counter_reg_n_0_[3]\,
      R => '0'
    );
\r_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(4),
      Q => \r_counter_reg_n_0_[4]\,
      R => '0'
    );
\r_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(5),
      Q => \r_counter_reg_n_0_[5]\,
      R => '0'
    );
\r_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(6),
      Q => \r_counter_reg_n_0_[6]\,
      R => '0'
    );
\r_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(7),
      Q => \r_counter_reg_n_0_[7]\,
      R => '0'
    );
\r_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(8),
      Q => \r_counter_reg_n_0_[8]\,
      R => '0'
    );
\r_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => r_counter(9),
      Q => \r_counter_reg_n_0_[9]\,
      R => '0'
    );
\r_data_byte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_available,
      I1 => r_states(1),
      I2 => r_states(0),
      O => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_states(1),
      I1 => r_states(0),
      O => \r_data_byte[7]_i_2_n_0\
    );
\r_data_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(0),
      Q => r_data_byte(0),
      R => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(1),
      Q => r_data_byte(1),
      R => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(2),
      Q => r_data_byte(2),
      R => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(3),
      Q => r_data_byte(3),
      R => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(4),
      Q => r_data_byte(4),
      R => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(5),
      Q => r_data_byte(5),
      R => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(6),
      Q => r_data_byte(6),
      R => \r_data_byte[7]_i_1_n_0\
    );
\r_data_byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => \r_data_byte[7]_i_2_n_0\,
      D => data_byte(7),
      Q => r_data_byte(7),
      R => \r_data_byte[7]_i_1_n_0\
    );
r_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC40"
    )
        port map (
      I0 => r_active_i_2_n_0,
      I1 => r_states(1),
      I2 => r_states(0),
      I3 => \^done\,
      O => r_done_i_1_n_0
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
      I0 => r_active_i_2_n_0,
      I1 => r_states(1),
      I2 => r_states(0),
      I3 => r_index(0),
      O => \r_index[0]_i_1_n_0\
    );
\r_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD00020"
    )
        port map (
      I0 => r_index(0),
      I1 => r_active_i_2_n_0,
      I2 => r_states(1),
      I3 => r_states(0),
      I4 => r_index(1),
      O => \r_index[1]_i_1_n_0\
    );
\r_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF70000000800"
    )
        port map (
      I0 => r_index(1),
      I1 => r_index(0),
      I2 => r_active_i_2_n_0,
      I3 => r_states(1),
      I4 => r_states(0),
      I5 => r_index(2),
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
      Q => r_index(0),
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
      Q => r_index(1),
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
      Q => r_index(2),
      R => '0'
    );
\r_states[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF222200002E22"
    )
        port map (
      I0 => data_available,
      I1 => r_states(1),
      I2 => \r_states[0]_i_2_n_0\,
      I3 => r_index(2),
      I4 => r_states(0),
      I5 => r_active_i_2_n_0,
      O => \r_states[0]_i_1_n_0\
    );
\r_states[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => r_index(1),
      I1 => r_index(0),
      O => \r_states[0]_i_2_n_0\
    );
\r_states[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => r_states(0),
      I1 => r_active_i_2_n_0,
      I2 => r_states(1),
      O => \r_states[1]_i_1_n_0\
    );
\r_states_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_states[0]_i_1_n_0\,
      Q => r_states(0),
      R => '0'
    );
\r_states_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => \r_states[1]_i_1_n_0\,
      Q => r_states(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_secure_BLE_UART_Tx_0_0 is
  port (
    data_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_available : in STD_LOGIC;
    mclk : in STD_LOGIC;
    Tx : out STD_LOGIC;
    active : out STD_LOGIC;
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UART_secure_BLE_UART_Tx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UART_secure_BLE_UART_Tx_0_0 : entity is "UART_secure_BLE_UART_Tx_0_0,UART_Tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of UART_secure_BLE_UART_Tx_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of UART_secure_BLE_UART_Tx_0_0 : entity is "UART_Tx,Vivado 2017.4";
end UART_secure_BLE_UART_Tx_0_0;

architecture STRUCTURE of UART_secure_BLE_UART_Tx_0_0 is
begin
inst: entity work.UART_secure_BLE_UART_Tx_0_0_UART_Tx
     port map (
      Tx => Tx,
      active => active,
      data_available => data_available,
      data_byte(7 downto 0) => data_byte(7 downto 0),
      done => done,
      mclk => mclk
    );
end STRUCTURE;
