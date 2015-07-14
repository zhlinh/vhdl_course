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

-- DATE "04/11/2015 10:00:51"

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

ENTITY 	MUXB41 IS
    PORT (
	DATA0 : IN std_logic_vector(3 DOWNTO 0);
	DATA1 : IN std_logic_vector(3 DOWNTO 0);
	DATA2 : IN std_logic_vector(3 DOWNTO 0);
	DATA3 : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic_vector(3 DOWNTO 0)
	);
END MUXB41;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA3[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA3[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA3[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA3[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUXB41 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATA1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATA2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATA3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \DATA3[0]~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \DATA2[0]~input_o\ : std_logic;
SIGNAL \DATA1[0]~input_o\ : std_logic;
SIGNAL \DATA0[0]~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \DATA0[1]~input_o\ : std_logic;
SIGNAL \DATA2[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \DATA1[1]~input_o\ : std_logic;
SIGNAL \DATA3[1]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \DATA3[2]~input_o\ : std_logic;
SIGNAL \DATA2[2]~input_o\ : std_logic;
SIGNAL \DATA1[2]~input_o\ : std_logic;
SIGNAL \DATA0[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \DATA1[3]~input_o\ : std_logic;
SIGNAL \DATA2[3]~input_o\ : std_logic;
SIGNAL \DATA0[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \DATA3[3]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

BEGIN

ww_DATA0 <= DATA0;
ww_DATA1 <= DATA1;
ww_DATA2 <= DATA2;
ww_DATA3 <= DATA3;
ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y31_N9
\Y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\Y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOIBUF_X20_Y31_N1
\DATA3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA3(0),
	o => \DATA3[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\DATA2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(0),
	o => \DATA2[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\DATA1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(0),
	o => \DATA1[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\DATA0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(0),
	o => \DATA0[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\B~input_o\ & (((\A~input_o\)))) # (!\B~input_o\ & ((\A~input_o\ & (\DATA1[0]~input_o\)) # (!\A~input_o\ & ((\DATA0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \B~input_o\,
	datac => \DATA0[0]~input_o\,
	datad => \A~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X19_Y1_N2
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\B~input_o\ & ((\Mux3~0_combout\ & (\DATA3[0]~input_o\)) # (!\Mux3~0_combout\ & ((\DATA2[0]~input_o\))))) # (!\B~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA3[0]~input_o\,
	datab => \B~input_o\,
	datac => \DATA2[0]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X8_Y0_N8
\DATA0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(1),
	o => \DATA0[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\DATA2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(1),
	o => \DATA2[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N12
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\B~input_o\ & (((\DATA2[1]~input_o\) # (\A~input_o\)))) # (!\B~input_o\ & (\DATA0[1]~input_o\ & ((!\A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[1]~input_o\,
	datab => \B~input_o\,
	datac => \DATA2[1]~input_o\,
	datad => \A~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\DATA1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(1),
	o => \DATA1[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\DATA3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA3(1),
	o => \DATA3[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N14
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\DATA3[1]~input_o\) # (!\A~input_o\)))) # (!\Mux2~0_combout\ & (\DATA1[1]~input_o\ & ((\A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \DATA1[1]~input_o\,
	datac => \DATA3[1]~input_o\,
	datad => \A~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X31_Y0_N1
\DATA3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA3(2),
	o => \DATA3[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\DATA2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(2),
	o => \DATA2[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\DATA1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(2),
	o => \DATA1[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\DATA0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(2),
	o => \DATA0[2]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\B~input_o\ & (((\A~input_o\)))) # (!\B~input_o\ & ((\A~input_o\ & (\DATA1[2]~input_o\)) # (!\A~input_o\ & ((\DATA0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[2]~input_o\,
	datab => \B~input_o\,
	datac => \DATA0[2]~input_o\,
	datad => \A~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y1_N26
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\B~input_o\ & ((\Mux1~0_combout\ & (\DATA3[2]~input_o\)) # (!\Mux1~0_combout\ & ((\DATA2[2]~input_o\))))) # (!\B~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA3[2]~input_o\,
	datab => \B~input_o\,
	datac => \DATA2[2]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X26_Y0_N8
\DATA1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(3),
	o => \DATA1[3]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\DATA2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA2(3),
	o => \DATA2[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\DATA0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(3),
	o => \DATA0[3]~input_o\);

-- Location: LCCOMB_X19_Y1_N4
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\A~input_o\ & (((\B~input_o\)))) # (!\A~input_o\ & ((\B~input_o\ & (\DATA2[3]~input_o\)) # (!\B~input_o\ & ((\DATA0[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA2[3]~input_o\,
	datab => \A~input_o\,
	datac => \DATA0[3]~input_o\,
	datad => \B~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\DATA3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA3(3),
	o => \DATA3[3]~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\DATA3[3]~input_o\) # (!\A~input_o\)))) # (!\Mux0~0_combout\ & (\DATA1[3]~input_o\ & ((\A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[3]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \DATA3[3]~input_o\,
	datad => \A~input_o\,
	combout => \Mux0~1_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;
END structure;


