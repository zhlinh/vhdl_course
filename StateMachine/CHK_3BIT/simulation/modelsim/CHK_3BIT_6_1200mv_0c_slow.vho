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

-- DATE "05/13/2015 11:43:01"

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

ENTITY 	CHK_3BIT IS
    PORT (
	DIN : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	BIT3 : IN std_logic_vector(2 DOWNTO 0);
	DOUT : OUT std_logic
	);
END CHK_3BIT;

-- Design Ports Information
-- DOUT	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT3[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT3[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT3[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CHK_3BIT IS
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
SIGNAL ww_BIT3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DOUT : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOUT~output_o\ : std_logic;
SIGNAL \BIT3[2]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \PRESENT_STATE.S1~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \PRESENT_STATE.S1~q\ : std_logic;
SIGNAL \NEXT_STATE.S3~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S3~q\ : std_logic;
SIGNAL \NEXT_STATE.S7~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S7~q\ : std_logic;
SIGNAL \NEXT_STATE.S2~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S2~q\ : std_logic;
SIGNAL \NEXT_STATE.S5~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S5~q\ : std_logic;
SIGNAL \NEXT_STATE.S4~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S4~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S8~q\ : std_logic;
SIGNAL \NEXT_STATE.S9~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S9~q\ : std_logic;
SIGNAL \NEXT_STATE.S6~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S6~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S10~q\ : std_logic;
SIGNAL \NEXT_STATE.S13~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S13~q\ : std_logic;
SIGNAL \NEXT_STATE.S11~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S11~q\ : std_logic;
SIGNAL \NEXT_STATE.S15~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S15~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S14~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \PRESENT_STATE.S12~q\ : std_logic;
SIGNAL \BIT3[0]~input_o\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \BIT3[1]~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_DIN <= DIN;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_BIT3 <= BIT3;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;

-- Location: IOOBUF_X20_Y0_N2
\DOUT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector0~5_combout\,
	devoe => ww_devoe,
	o => \DOUT~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\BIT3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT3(2),
	o => \BIT3[2]~input_o\);

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

-- Location: IOIBUF_X20_Y0_N8
\DIN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: LCCOMB_X20_Y1_N28
\PRESENT_STATE.S1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PRESENT_STATE.S1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \PRESENT_STATE.S1~feeder_combout\);

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

-- Location: FF_X20_Y1_N29
\PRESENT_STATE.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PRESENT_STATE.S1~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S1~q\);

-- Location: LCCOMB_X20_Y1_N0
\NEXT_STATE.S3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S3~0_combout\ = (\DIN~input_o\ & !\PRESENT_STATE.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S1~q\,
	combout => \NEXT_STATE.S3~0_combout\);

-- Location: FF_X20_Y1_N1
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

-- Location: LCCOMB_X20_Y1_N8
\NEXT_STATE.S7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S7~0_combout\ = (\DIN~input_o\ & \PRESENT_STATE.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S3~q\,
	combout => \NEXT_STATE.S7~0_combout\);

-- Location: FF_X20_Y1_N9
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

-- Location: LCCOMB_X20_Y1_N10
\NEXT_STATE.S2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S2~0_combout\ = (!\DIN~input_o\ & !\PRESENT_STATE.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S1~q\,
	combout => \NEXT_STATE.S2~0_combout\);

-- Location: FF_X20_Y1_N11
\PRESENT_STATE.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S2~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S2~q\);

-- Location: LCCOMB_X20_Y1_N22
\NEXT_STATE.S5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S5~0_combout\ = (\DIN~input_o\ & \PRESENT_STATE.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S2~q\,
	combout => \NEXT_STATE.S5~0_combout\);

-- Location: FF_X20_Y1_N23
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

-- Location: LCCOMB_X20_Y1_N6
\NEXT_STATE.S4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S4~0_combout\ = (!\DIN~input_o\ & \PRESENT_STATE.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S2~q\,
	combout => \NEXT_STATE.S4~0_combout\);

-- Location: FF_X20_Y1_N7
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

-- Location: LCCOMB_X20_Y1_N30
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\DIN~input_o\ & ((\PRESENT_STATE.S12~q\) # ((\PRESENT_STATE.S8~q\) # (\PRESENT_STATE.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datab => \PRESENT_STATE.S12~q\,
	datac => \PRESENT_STATE.S8~q\,
	datad => \PRESENT_STATE.S4~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X20_Y1_N31
\PRESENT_STATE.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S8~q\);

-- Location: LCCOMB_X20_Y1_N14
\NEXT_STATE.S9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S9~0_combout\ = (\DIN~input_o\ & ((\PRESENT_STATE.S4~q\) # ((\PRESENT_STATE.S8~q\) # (\PRESENT_STATE.S12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRESENT_STATE.S4~q\,
	datab => \DIN~input_o\,
	datac => \PRESENT_STATE.S8~q\,
	datad => \PRESENT_STATE.S12~q\,
	combout => \NEXT_STATE.S9~0_combout\);

-- Location: FF_X20_Y1_N15
\PRESENT_STATE.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S9~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S9~q\);

-- Location: LCCOMB_X20_Y1_N12
\NEXT_STATE.S6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S6~0_combout\ = (!\DIN~input_o\ & \PRESENT_STATE.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN~input_o\,
	datad => \PRESENT_STATE.S3~q\,
	combout => \NEXT_STATE.S6~0_combout\);

-- Location: FF_X20_Y1_N13
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

-- Location: LCCOMB_X20_Y1_N26
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\DIN~input_o\ & ((\PRESENT_STATE.S9~q\) # ((\PRESENT_STATE.S5~q\) # (\PRESENT_STATE.S13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datab => \PRESENT_STATE.S9~q\,
	datac => \PRESENT_STATE.S5~q\,
	datad => \PRESENT_STATE.S13~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X20_Y1_N27
\PRESENT_STATE.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S10~q\);

-- Location: LCCOMB_X20_Y1_N24
\NEXT_STATE.S13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S13~0_combout\ = (\DIN~input_o\ & ((\PRESENT_STATE.S6~q\) # ((\PRESENT_STATE.S10~q\) # (\PRESENT_STATE.S14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRESENT_STATE.S6~q\,
	datab => \DIN~input_o\,
	datac => \PRESENT_STATE.S10~q\,
	datad => \PRESENT_STATE.S14~q\,
	combout => \NEXT_STATE.S13~0_combout\);

-- Location: FF_X20_Y1_N25
\PRESENT_STATE.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S13~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S13~q\);

-- Location: LCCOMB_X20_Y1_N18
\NEXT_STATE.S11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S11~0_combout\ = (\DIN~input_o\ & ((\PRESENT_STATE.S5~q\) # ((\PRESENT_STATE.S9~q\) # (\PRESENT_STATE.S13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRESENT_STATE.S5~q\,
	datab => \DIN~input_o\,
	datac => \PRESENT_STATE.S9~q\,
	datad => \PRESENT_STATE.S13~q\,
	combout => \NEXT_STATE.S11~0_combout\);

-- Location: FF_X20_Y1_N19
\PRESENT_STATE.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S11~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S11~q\);

-- Location: LCCOMB_X20_Y1_N4
\NEXT_STATE.S15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \NEXT_STATE.S15~0_combout\ = (\DIN~input_o\ & ((\PRESENT_STATE.S7~q\) # ((\PRESENT_STATE.S15~q\) # (\PRESENT_STATE.S11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datab => \PRESENT_STATE.S7~q\,
	datac => \PRESENT_STATE.S15~q\,
	datad => \PRESENT_STATE.S11~q\,
	combout => \NEXT_STATE.S15~0_combout\);

-- Location: FF_X20_Y1_N5
\PRESENT_STATE.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NEXT_STATE.S15~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S15~q\);

-- Location: LCCOMB_X20_Y1_N16
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\DIN~input_o\ & ((\PRESENT_STATE.S15~q\) # ((\PRESENT_STATE.S7~q\) # (\PRESENT_STATE.S11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datab => \PRESENT_STATE.S15~q\,
	datac => \PRESENT_STATE.S7~q\,
	datad => \PRESENT_STATE.S11~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X20_Y1_N17
\PRESENT_STATE.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S14~q\);

-- Location: LCCOMB_X20_Y1_N20
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\DIN~input_o\ & ((\PRESENT_STATE.S14~q\) # ((\PRESENT_STATE.S10~q\) # (\PRESENT_STATE.S6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~input_o\,
	datab => \PRESENT_STATE.S14~q\,
	datac => \PRESENT_STATE.S10~q\,
	datad => \PRESENT_STATE.S6~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X20_Y1_N21
\PRESENT_STATE.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRESENT_STATE.S12~q\);

-- Location: IOIBUF_X22_Y0_N8
\BIT3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT3(0),
	o => \BIT3[0]~input_o\);

-- Location: LCCOMB_X21_Y1_N12
\Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\BIT3[0]~input_o\ & ((\BIT3[2]~input_o\ & (\PRESENT_STATE.S12~q\)) # (!\BIT3[2]~input_o\ & ((\PRESENT_STATE.S8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIT3[2]~input_o\,
	datab => \PRESENT_STATE.S12~q\,
	datac => \PRESENT_STATE.S8~q\,
	datad => \BIT3[0]~input_o\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X21_Y1_N18
\Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\BIT3[0]~input_o\ & ((\BIT3[2]~input_o\ & ((\PRESENT_STATE.S13~q\))) # (!\BIT3[2]~input_o\ & (\PRESENT_STATE.S9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRESENT_STATE.S9~q\,
	datab => \PRESENT_STATE.S13~q\,
	datac => \BIT3[2]~input_o\,
	datad => \BIT3[0]~input_o\,
	combout => \Selector0~3_combout\);

-- Location: IOIBUF_X14_Y0_N8
\BIT3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT3(1),
	o => \BIT3[1]~input_o\);

-- Location: LCCOMB_X21_Y1_N10
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\BIT3[0]~input_o\ & ((\BIT3[2]~input_o\ & (\PRESENT_STATE.S14~q\)) # (!\BIT3[2]~input_o\ & ((\PRESENT_STATE.S10~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRESENT_STATE.S14~q\,
	datab => \PRESENT_STATE.S10~q\,
	datac => \BIT3[2]~input_o\,
	datad => \BIT3[0]~input_o\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X21_Y1_N4
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\BIT3[0]~input_o\ & ((\BIT3[2]~input_o\ & (\PRESENT_STATE.S15~q\)) # (!\BIT3[2]~input_o\ & ((\PRESENT_STATE.S11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRESENT_STATE.S15~q\,
	datab => \PRESENT_STATE.S11~q\,
	datac => \BIT3[2]~input_o\,
	datad => \BIT3[0]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X21_Y1_N28
\Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\BIT3[1]~input_o\ & ((\Selector0~1_combout\) # (\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \BIT3[1]~input_o\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X21_Y1_N14
\Selector0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~2_combout\) # ((!\BIT3[1]~input_o\ & ((\Selector0~4_combout\) # (\Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datab => \Selector0~3_combout\,
	datac => \BIT3[1]~input_o\,
	datad => \Selector0~2_combout\,
	combout => \Selector0~5_combout\);

ww_DOUT <= \DOUT~output_o\;
END structure;


