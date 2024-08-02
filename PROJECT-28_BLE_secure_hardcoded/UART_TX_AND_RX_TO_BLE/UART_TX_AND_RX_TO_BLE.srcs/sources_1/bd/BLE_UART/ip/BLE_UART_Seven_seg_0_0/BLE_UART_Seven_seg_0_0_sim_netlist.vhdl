-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 23 09:24:09 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lenovo/UART_TX_AND_RX_TO_BLE/UART_TX_AND_RX_TO_BLE.srcs/sources_1/bd/BLE_UART/ip/BLE_UART_Seven_seg_0_0/BLE_UART_Seven_seg_0_0_sim_netlist.vhdl
-- Design      : BLE_UART_Seven_seg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_UART_Seven_seg_0_0_SlowClock is
  port (
    CLK : out STD_LOGIC;
    mclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BLE_UART_Seven_seg_0_0_SlowClock : entity is "SlowClock";
end BLE_UART_Seven_seg_0_0_SlowClock;

architecture STRUCTURE of BLE_UART_Seven_seg_0_0_SlowClock is
  signal \^clk\ : STD_LOGIC;
  signal clk_out : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_2_n_0 : STD_LOGIC;
  signal clk_out_i_3_n_0 : STD_LOGIC;
  signal clk_out_i_4_n_0 : STD_LOGIC;
  signal clk_out_i_5_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count[20]_i_3_n_0\ : STD_LOGIC;
  signal \count[20]_i_4_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal \NLW_count_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_out_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair0";
begin
  CLK <= \^clk\;
clk_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => \count[20]_i_3_n_0\,
      I2 => clk_out_i_3_n_0,
      I3 => clk_out_i_4_n_0,
      I4 => clk_out_i_5_n_0,
      I5 => \^clk\,
      O => clk_out_i_1_n_0
    );
clk_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => count(4),
      I1 => count(3),
      I2 => count(6),
      I3 => count(5),
      O => clk_out_i_2_n_0
    );
clk_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => count(16),
      I1 => count(15),
      I2 => count(18),
      I3 => count(17),
      O => clk_out_i_3_n_0
    );
clk_out_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(12),
      I1 => count(11),
      I2 => count(14),
      I3 => count(13),
      O => clk_out_i_4_n_0
    );
clk_out_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => count(0),
      I1 => count(19),
      I2 => count(20),
      I3 => count(2),
      I4 => count(1),
      O => clk_out_i_5_n_0
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => clk_out_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => count_0(0)
    );
\count[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => count(5),
      I1 => count(6),
      I2 => count(3),
      I3 => count(4),
      I4 => \count[20]_i_3_n_0\,
      I5 => \count[20]_i_4_n_0\,
      O => clk_out
    );
\count[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => count(7),
      I1 => count(8),
      I2 => count(10),
      I3 => count(9),
      O => \count[20]_i_3_n_0\
    );
\count[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clk_out_i_3_n_0,
      I1 => count(12),
      I2 => count(11),
      I3 => count(14),
      I4 => count(13),
      I5 => clk_out_i_5_n_0,
      O => \count[20]_i_4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => count_0(0),
      Q => count(0),
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(10),
      Q => count(10),
      R => clk_out
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(11),
      Q => count(11),
      R => clk_out
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(12),
      Q => count(12),
      R => clk_out
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(13),
      Q => count(13),
      R => clk_out
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(14),
      Q => count(14),
      R => clk_out
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(15),
      Q => count(15),
      R => clk_out
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(16),
      Q => count(16),
      R => clk_out
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(17),
      Q => count(17),
      R => clk_out
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(18),
      Q => count(18),
      R => clk_out
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(19),
      Q => count(19),
      R => clk_out
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(1),
      Q => count(1),
      R => clk_out
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(20),
      Q => count(20),
      R => clk_out
    );
\count_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \NLW_count_reg[20]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[20]_i_2_n_1\,
      CO(1) => \count_reg[20]_i_2_n_2\,
      CO(0) => \count_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(2),
      Q => count(2),
      R => clk_out
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(3),
      Q => count(3),
      R => clk_out
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(4),
      Q => count(4),
      R => clk_out
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(5),
      Q => count(5),
      R => clk_out
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(6),
      Q => count(6),
      R => clk_out
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(7),
      Q => count(7),
      R => clk_out
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(8),
      Q => count(8),
      R => clk_out
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk,
      CE => '1',
      D => data0(9),
      Q => count(9),
      R => clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_UART_Seven_seg_0_0_binarytoSevenSeg is
  port (
    \out__20\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out__9\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hundreds : out STD_LOGIC_VECTOR ( 0 to 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_byte : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BLE_UART_Seven_seg_0_0_binarytoSevenSeg : entity is "binarytoSevenSeg";
end BLE_UART_Seven_seg_0_0_binarytoSevenSeg;

architecture STRUCTURE of BLE_UART_Seven_seg_0_0_binarytoSevenSeg is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Seg_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Seg_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Seg_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Seg_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Seg_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Seg_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Seg_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Seg_reg[6]_i_15\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Seg_reg[6]_i_20\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Seg_reg[6]_i_21\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Seg_reg[6]_i_22\ : label is "soft_lutpair8";
begin
\Seg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => seg(0)
    );
\Seg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => seg(1)
    );
\Seg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => seg(2)
    );
\Seg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => seg(3)
    );
\Seg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => seg(4)
    );
\Seg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => seg(5)
    );
\Seg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => seg(6)
    );
\Seg_reg[6]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E00000"
    )
        port map (
      I0 => o_byte(1),
      I1 => o_byte(2),
      I2 => o_byte(4),
      I3 => o_byte(3),
      I4 => o_byte(5),
      O => hundreds(0)
    );
\Seg_reg[6]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0290402424020940"
    )
        port map (
      I0 => o_byte(5),
      I1 => o_byte(3),
      I2 => o_byte(4),
      I3 => o_byte(2),
      I4 => o_byte(1),
      I5 => o_byte(0),
      O => \out__20\(2)
    );
\Seg_reg[6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D02DB40B0BD042B4"
    )
        port map (
      I0 => o_byte(5),
      I1 => o_byte(3),
      I2 => o_byte(4),
      I3 => o_byte(2),
      I4 => o_byte(1),
      I5 => o_byte(0),
      O => \out__20\(0)
    );
\Seg_reg[6]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9949269292996426"
    )
        port map (
      I0 => o_byte(5),
      I1 => o_byte(3),
      I2 => o_byte(4),
      I3 => o_byte(2),
      I4 => o_byte(1),
      I5 => o_byte(0),
      O => \out__20\(1)
    );
\Seg_reg[6]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FD24BF40BD042B4"
    )
        port map (
      I0 => o_byte(5),
      I1 => o_byte(3),
      I2 => o_byte(4),
      I3 => o_byte(2),
      I4 => o_byte(1),
      I5 => o_byte(0),
      O => \out__20\(3)
    );
\Seg_reg[6]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4642"
    )
        port map (
      I0 => o_byte(5),
      I1 => o_byte(4),
      I2 => o_byte(3),
      I3 => o_byte(2),
      O => \out__9\(1)
    );
\Seg_reg[6]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2169206"
    )
        port map (
      I0 => o_byte(5),
      I1 => o_byte(4),
      I2 => o_byte(3),
      I3 => o_byte(2),
      I4 => o_byte(1),
      O => \out__9\(0)
    );
\Seg_reg[6]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080828"
    )
        port map (
      I0 => o_byte(5),
      I1 => o_byte(3),
      I2 => o_byte(4),
      I3 => o_byte(2),
      I4 => o_byte(1),
      O => \out__9\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_UART_Seven_seg_0_0_twobitcounter is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_byte : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out__20\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out__9\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hundreds : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BLE_UART_Seven_seg_0_0_twobitcounter : entity is "twobitcounter";
end BLE_UART_Seven_seg_0_0_twobitcounter;

architecture STRUCTURE of BLE_UART_Seven_seg_0_0_twobitcounter is
  signal \Seg_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \Seg_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \Seg_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \Seg_reg[6]_i_13_n_0\ : STD_LOGIC;
  signal \Seg_reg[6]_i_14_n_0\ : STD_LOGIC;
  signal \Seg_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \Seg_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \Seg_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal counter_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mux_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Seg_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Seg_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Seg_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Seg_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Seg_reg[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Seg_reg[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Seg_reg[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Seg_reg[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp[1]_i_1\ : label is "soft_lutpair6";
begin
\Seg_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => mux_out(1),
      I1 => mux_out(2),
      I2 => mux_out(0),
      I3 => mux_out(3),
      O => D(0)
    );
\Seg_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => mux_out(0),
      I1 => mux_out(1),
      I2 => mux_out(2),
      I3 => mux_out(3),
      O => D(1)
    );
\Seg_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => mux_out(0),
      I1 => mux_out(2),
      I2 => mux_out(1),
      I3 => mux_out(3),
      O => D(2)
    );
\Seg_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C89C"
    )
        port map (
      I0 => mux_out(3),
      I1 => mux_out(0),
      I2 => mux_out(2),
      I3 => mux_out(1),
      O => D(3)
    );
\Seg_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1F0"
    )
        port map (
      I0 => mux_out(3),
      I1 => mux_out(1),
      I2 => mux_out(0),
      I3 => mux_out(2),
      O => D(4)
    );
\Seg_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B2"
    )
        port map (
      I0 => mux_out(1),
      I1 => mux_out(2),
      I2 => mux_out(0),
      I3 => mux_out(3),
      O => D(5)
    );
\Seg_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => mux_out(1),
      I1 => mux_out(2),
      I2 => mux_out(0),
      I3 => mux_out(3),
      O => D(6)
    );
\Seg_reg[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000001A2"
    )
        port map (
      I0 => \out__9\(0),
      I1 => \out__9\(1),
      I2 => \out__20\(3),
      I3 => \out__9\(2),
      I4 => counter_out(1),
      O => \Seg_reg[6]_i_10_n_0\
    );
\Seg_reg[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4642FFFF46420000"
    )
        port map (
      I0 => \out__9\(2),
      I1 => \out__9\(1),
      I2 => \out__9\(0),
      I3 => \out__20\(3),
      I4 => counter_out(1),
      I5 => o_byte(0),
      O => \Seg_reg[6]_i_11_n_0\
    );
\Seg_reg[6]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000003E0"
    )
        port map (
      I0 => o_byte(1),
      I1 => \out__20\(0),
      I2 => \out__20\(1),
      I3 => \out__20\(2),
      I4 => counter_out(1),
      O => \Seg_reg[6]_i_12_n_0\
    );
\Seg_reg[6]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000410"
    )
        port map (
      I0 => \out__20\(0),
      I1 => o_byte(1),
      I2 => \out__20\(1),
      I3 => \out__20\(2),
      I4 => counter_out(1),
      O => \Seg_reg[6]_i_13_n_0\
    );
\Seg_reg[6]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000410"
    )
        port map (
      I0 => \out__9\(0),
      I1 => \out__20\(3),
      I2 => \out__9\(1),
      I3 => \out__9\(2),
      I4 => counter_out(1),
      O => \Seg_reg[6]_i_14_n_0\
    );
\Seg_reg[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => mux_out(3),
      I1 => mux_out(2),
      I2 => mux_out(1),
      O => E(0)
    );
\Seg_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_reg[6]_i_7_n_0\,
      I1 => \Seg_reg[6]_i_8_n_0\,
      O => mux_out(1),
      S => counter_out(0)
    );
\Seg_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_reg[6]_i_9_n_0\,
      I1 => \Seg_reg[6]_i_10_n_0\,
      O => mux_out(2),
      S => counter_out(0)
    );
\Seg_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_reg[6]_i_11_n_0\,
      I1 => \Seg_reg[6]_i_12_n_0\,
      O => mux_out(0),
      S => counter_out(0)
    );
\Seg_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_reg[6]_i_13_n_0\,
      I1 => \Seg_reg[6]_i_14_n_0\,
      O => mux_out(3),
      S => counter_out(0)
    );
\Seg_reg[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888B8B8B8888B8"
    )
        port map (
      I0 => hundreds(0),
      I1 => counter_out(1),
      I2 => \out__20\(2),
      I3 => \out__20\(0),
      I4 => \out__20\(1),
      I5 => o_byte(1),
      O => \Seg_reg[6]_i_7_n_0\
    );
\Seg_reg[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000162"
    )
        port map (
      I0 => \out__20\(3),
      I1 => \out__9\(1),
      I2 => \out__9\(0),
      I3 => \out__9\(2),
      I4 => counter_out(1),
      O => \Seg_reg[6]_i_8_n_0\
    );
\Seg_reg[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000001A2"
    )
        port map (
      I0 => \out__20\(0),
      I1 => \out__20\(1),
      I2 => o_byte(1),
      I3 => \out__20\(2),
      I4 => counter_out(1),
      O => \Seg_reg[6]_i_9_n_0\
    );
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_out(0),
      I1 => counter_out(1),
      O => an(0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter_out(1),
      I1 => counter_out(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter_out(0),
      I1 => counter_out(1),
      O => an(2)
    );
\temp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_out(0),
      O => \temp[0]_i_1_n_0\
    );
\temp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_out(0),
      I1 => counter_out(1),
      O => \temp[1]_i_1_n_0\
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \temp[0]_i_1_n_0\,
      Q => counter_out(0),
      R => '0'
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \temp[1]_i_1_n_0\,
      Q => counter_out(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_UART_Seven_seg_0_0_Seven_seg is
  port (
    an : out STD_LOGIC_VECTOR ( 2 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BLE_UART_Seven_seg_0_0_Seven_seg : entity is "Seven_seg";
end BLE_UART_Seven_seg_0_0_Seven_seg;

architecture STRUCTURE of BLE_UART_Seven_seg_0_0_Seven_seg is
  signal \L1/U4/out__20\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \L1/U6/out__9\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal L3_n_0 : STD_LOGIC;
  signal L3_n_1 : STD_LOGIC;
  signal L3_n_10 : STD_LOGIC;
  signal L3_n_2 : STD_LOGIC;
  signal L3_n_3 : STD_LOGIC;
  signal L3_n_4 : STD_LOGIC;
  signal L3_n_5 : STD_LOGIC;
  signal L3_n_6 : STD_LOGIC;
  signal clk_out : STD_LOGIC;
  signal hundreds : STD_LOGIC_VECTOR ( 1 to 1 );
begin
L2: entity work.BLE_UART_Seven_seg_0_0_SlowClock
     port map (
      CLK => clk_out,
      mclk => mclk
    );
L3: entity work.BLE_UART_Seven_seg_0_0_twobitcounter
     port map (
      CLK => clk_out,
      D(6) => L3_n_0,
      D(5) => L3_n_1,
      D(4) => L3_n_2,
      D(3) => L3_n_3,
      D(2) => L3_n_4,
      D(1) => L3_n_5,
      D(0) => L3_n_6,
      E(0) => L3_n_10,
      an(2 downto 0) => an(2 downto 0),
      hundreds(0) => hundreds(1),
      o_byte(1 downto 0) => o_byte(1 downto 0),
      \out__20\(3 downto 0) => \L1/U4/out__20\(3 downto 0),
      \out__9\(2 downto 0) => \L1/U6/out__9\(2 downto 0)
    );
L6: entity work.BLE_UART_Seven_seg_0_0_binarytoSevenSeg
     port map (
      D(6) => L3_n_0,
      D(5) => L3_n_1,
      D(4) => L3_n_2,
      D(3) => L3_n_3,
      D(2) => L3_n_4,
      D(1) => L3_n_5,
      D(0) => L3_n_6,
      E(0) => L3_n_10,
      hundreds(0) => hundreds(1),
      o_byte(5 downto 0) => o_byte(7 downto 2),
      \out__20\(3 downto 0) => \L1/U4/out__20\(3 downto 0),
      \out__9\(2 downto 0) => \L1/U6/out__9\(2 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BLE_UART_Seven_seg_0_0 is
  port (
    o_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mclk : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BLE_UART_Seven_seg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BLE_UART_Seven_seg_0_0 : entity is "BLE_UART_Seven_seg_0_0,Seven_seg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BLE_UART_Seven_seg_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BLE_UART_Seven_seg_0_0 : entity is "Seven_seg,Vivado 2017.4";
end BLE_UART_Seven_seg_0_0;

architecture STRUCTURE of BLE_UART_Seven_seg_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^an\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  an(3) <= \<const1>\;
  an(2 downto 0) <= \^an\(2 downto 0);
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.BLE_UART_Seven_seg_0_0_Seven_seg
     port map (
      an(2 downto 0) => \^an\(2 downto 0),
      mclk => mclk,
      o_byte(7 downto 0) => o_byte(7 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
