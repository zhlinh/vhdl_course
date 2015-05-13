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

-- DATE "04/15/2015 11:34:32"

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

ENTITY 	TRI_BUFS IS
    PORT (
	DIN : IN std_logic_vector(7 DOWNTO 0);
	EN : IN std_logic;
	DOUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END TRI_BUFS;

-- Design Ports Information
-- DOUT[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TRI_BUFS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;

BEGIN

ww_DIN <= DIN;
ww_EN <= EN;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y27_N2
\DOUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[0]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\DOUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[1]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\DOUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[2]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\DOUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[3]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\DOUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[4]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\DOUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[5]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\DOUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[6]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\DOUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN[7]~input_o\,
	oe => \EN~input_o\,
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOIBUF_X33_Y16_N8
\DIN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\DIN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\DIN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\DIN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\DIN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\DIN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\DIN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\DIN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;
END structure;


