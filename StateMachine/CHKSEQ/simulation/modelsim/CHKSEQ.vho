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

-- DATE "05/14/2015 08:55:19"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CHKSEQ IS
    PORT (
	DIN : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	DOUT : BUFFER std_logic
	);
END CHKSEQ;

-- Design Ports Information
-- DOUT	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CHKSEQ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOUT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \PRESENT_STATE.S1~q\ : std_logic;
SIGNAL \PRESENT_STATE.S2~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S2~1_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S2~q\ : std_logic;
SIGNAL \NEXT_STATE.S3~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S3~q\ : std_logic;
SIGNAL \NEXT_STATE.S4~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S4~q\ : std_logic;
SIGNAL \NEXT_STATE.S5~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S5~q\ : std_logic;
SIGNAL \NEXT_STATE.S6~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S6~q\ : std_logic;
SIGNAL \NEXT_STATE.S7~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S7~q\ : std_logic;
SIGNAL \NEXT_STATE.S8~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S8~q\ : std_logic;
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_DIN <= DIN;
ww_CLK <= CLK;
ww_RESET <= RESET;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;

-- Location: IOOBUF_X12_Y31_N9
\DOUT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRESENT_STATE.S8~q\,
	devoe => ww_devoe,
	o => \DOUT~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y31_N8
\DIN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: LCCOMB_X14_Y30_N10
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\PRESENT_STATE.S7~q\) # ((\DIN~input_o\) # ((\PRESENT_STATE.S2~q\) # (\PRESENT_STATE.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRESENT_STATE.S7~q\,
	datab => \DIN~input_o\,
	datac => \PRESENT_STATE.S2~q\,
	datad => \PRESENT_STATE.S4~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X14_Y30_N28
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\PRESENT_STATE.S5~q\) # (\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PRESENT_STATE.S5~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G19
\RESET~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X14_Y30_N29
\PRESENT_STATE.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S1~q\);

-- Location: LCCOMB_X14_Y30_N18
\PRESENT_STATE.S2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PRESENT_STATE.S2~0_combout\ = (\DIN~input_o\ & (((\PRESENT_STATE.S5~q\) # (\PRESENT_STATE.S8~q\)))) # (!\DIN~input_o\ & (\PRESENT_STATE.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datab => \PRESENT_STATE.S2~q\,
	datac => \PRESENT_STATE.S5~q\,
	datad => \PRESENT_STATE.S8~q\,
	combout => \PRESENT_STATE.S2~0_combout\);

-- Location: LCCOMB_X14_Y30_N8
\PRESENT_STATE.S2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PRESENT_STATE.S2~1_combout\ = (\PRESENT_STATE.S2~0_combout\) # ((\DIN~input_o\ & !\PRESENT_STATE.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datac => \PRESENT_STATE.S1~q\,
	datad => \PRESENT_STATE.S2~0_combout\,
	combout => \PRESENT_STATE.S2~1_combout\);

-- Location: FF_X14_Y30_N9
\PRESENT_STATE.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PRESENT_STATE.S2~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S2~q\);

-- Location: LCCOMB_X14_Y30_N2
\NEXT_STATE.S3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S3~0_combout\ = (\DIN~input_o\ & ((\PRESENT_STATE.S7~q\) # (\PRESENT_STATE.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datac => \PRESENT_STATE.S7~q\,
	datad => \PRESENT_STATE.S2~q\,
	combout => \NEXT_STATE.S3~0_combout\);

-- Location: FF_X14_Y30_N3
\PRESENT_STATE.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S3~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S3~q\);

-- Location: LCCOMB_X14_Y30_N24
\NEXT_STATE.S4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S4~0_combout\ = (\DIN~input_o\ & ((\PRESENT_STATE.S4~q\) # (\PRESENT_STATE.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datac => \PRESENT_STATE.S4~q\,
	datad => \PRESENT_STATE.S3~q\,
	combout => \NEXT_STATE.S4~0_combout\);

-- Location: FF_X14_Y30_N25
\PRESENT_STATE.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S4~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S4~q\);

-- Location: LCCOMB_X14_Y30_N26
\NEXT_STATE.S5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S5~0_combout\ = (!\DIN~input_o\ & \PRESENT_STATE.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S4~q\,
	combout => \NEXT_STATE.S5~0_combout\);

-- Location: FF_X14_Y30_N27
\PRESENT_STATE.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S5~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S5~q\);

-- Location: LCCOMB_X14_Y30_N20
\NEXT_STATE.S6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S6~0_combout\ = (!\DIN~input_o\ & \PRESENT_STATE.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datad => \PRESENT_STATE.S5~q\,
	combout => \NEXT_STATE.S6~0_combout\);

-- Location: FF_X14_Y30_N21
\PRESENT_STATE.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S6~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S6~q\);

-- Location: LCCOMB_X14_Y30_N22
\NEXT_STATE.S7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S7~0_combout\ = (\DIN~input_o\ & \PRESENT_STATE.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S6~q\,
	combout => \NEXT_STATE.S7~0_combout\);

-- Location: FF_X14_Y30_N23
\PRESENT_STATE.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S7~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S7~q\);

-- Location: LCCOMB_X14_Y30_N12
\NEXT_STATE.S8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S8~0_combout\ = (!\DIN~input_o\ & \PRESENT_STATE.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datad => \PRESENT_STATE.S7~q\,
	combout => \NEXT_STATE.S8~0_combout\);

-- Location: FF_X14_Y30_N13
\PRESENT_STATE.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S8~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S8~q\);

ww_DOUT <= \DOUT~output_o\;
END structure;


