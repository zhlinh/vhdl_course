-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Full Version"

-- DATE "04/11/2015 10:13:39"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TRISTATE IS
    PORT (
	EN : IN std_logic;
	DIN : IN std_logic;
	DOUT : OUT std_logic
	);
END TRISTATE;

-- Design Ports Information
-- DOUT	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TRISTATE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL \DOUT~output_o\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;

BEGIN

ww_EN <= EN;
ww_DIN <= DIN;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X26_Y31_N9
\DOUT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT~output_o\);

-- Location: IOIBUF_X26_Y0_N8
\DIN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

ww_DOUT <= \DOUT~output_o\;
END structure;


