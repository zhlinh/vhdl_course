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

-- DATE "04/17/2015 16:53:20"

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

ENTITY 	BIDIR IS
    PORT (
	A : INOUT std_logic_vector(7 DOWNTO 0);
	B : INOUT std_logic_vector(7 DOWNTO 0);
	EN : IN std_logic;
	DIR : IN std_logic
	);
END BIDIR;

-- Design Ports Information
-- A[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BIDIR IS
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
SIGNAL ww_DIR : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \DIR~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;

BEGIN

ww_EN <= EN;
ww_DIR <= DIR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X22_Y0_N9
\A[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\A[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\A[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\A[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\A[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\A[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[5]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\A[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[6]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\A[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[7]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\B[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\B[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[1]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\B[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[2]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\B[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[3]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\B[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\B[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[5]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\B[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[6]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\B[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[7]~input_o\,
	oe => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\DIR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIR,
	o => \DIR~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X25_Y11_N16
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\DIR~input_o\ & !\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIR~input_o\,
	datac => \EN~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X31_Y31_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => A(7),
	o => \A[7]~input_o\);

A(0) <= \A[0]~output_o\;

A(1) <= \A[1]~output_o\;

A(2) <= \A[2]~output_o\;

A(3) <= \A[3]~output_o\;

A(4) <= \A[4]~output_o\;

A(5) <= \A[5]~output_o\;

A(6) <= \A[6]~output_o\;

A(7) <= \A[7]~output_o\;

B(0) <= \B[0]~output_o\;

B(1) <= \B[1]~output_o\;

B(2) <= \B[2]~output_o\;

B(3) <= \B[3]~output_o\;

B(4) <= \B[4]~output_o\;

B(5) <= \B[5]~output_o\;

B(6) <= \B[6]~output_o\;

B(7) <= \B[7]~output_o\;
END structure;


