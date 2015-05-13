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

-- DATE "04/10/2015 21:13:47"

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

ENTITY 	MUX41 IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	);
END MUX41;

-- Design Ports Information
-- Y	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX41 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;

BEGIN

ww_X <= X;
ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N9
\Y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOIBUF_X12_Y31_N1
\X[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\X[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\X[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X20_Y14_N24
\Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (\A~input_o\ & ((\X[1]~input_o\) # ((\B~input_o\)))) # (!\A~input_o\ & (((\X[0]~input_o\ & !\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \X[1]~input_o\,
	datac => \X[0]~input_o\,
	datad => \B~input_o\,
	combout => \Y~0_combout\);

-- Location: IOIBUF_X20_Y31_N1
\X[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X20_Y14_N26
\Y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = (\Y~0_combout\ & ((\X[2]~input_o\) # ((!\B~input_o\)))) # (!\Y~0_combout\ & (((\X[3]~input_o\ & \B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y~0_combout\,
	datac => \X[3]~input_o\,
	datad => \B~input_o\,
	combout => \Y~1_combout\);

ww_Y <= \Y~output_o\;
END structure;


