-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 23 11:31:44 2024
-- Host        : Raunak-Thinkpad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/lenovo/PROJECT-20_GPIO_AND_UART_MICROBLAZE/PROJECT-20_GPIO_AND_UART_MICROBLAZE.srcs/sources_1/bd/GPIO_UART/ip/GPIO_UART_NOT_0_0/GPIO_UART_NOT_0_0_sim_netlist.vhdl
-- Design      : GPIO_UART_NOT_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIO_UART_NOT_0_0 is
  port (
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GPIO_UART_NOT_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GPIO_UART_NOT_0_0 : entity is "GPIO_UART_NOT_0_0,NOT,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of GPIO_UART_NOT_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of GPIO_UART_NOT_0_0 : entity is "NOT,Vivado 2017.4";
end GPIO_UART_NOT_0_0;

architecture STRUCTURE of GPIO_UART_NOT_0_0 is
begin
B_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A,
      O => B
    );
end STRUCTURE;
