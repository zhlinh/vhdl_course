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

-- DATE "05/28/2015 21:32:50"

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

ENTITY 	LED_CNT IS
    PORT (
	CLK : IN std_logic;
	CLKDSP : IN std_logic;
	RESET : IN std_logic;
	DOUT : BUFFER std_logic_vector(6 DOWNTO 0);
	SEL : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END LED_CNT;

-- Design Ports Information
-- DOUT[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKDSP	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LED_CNT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLKDSP : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_DOUT : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLKDSP~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \CLKDSP~input_o\ : std_logic;
SIGNAL \CLKDSP~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST_SCANNER|SEL_REG~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST_SCANNER|SEL_REG[1]~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG[4]~11_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG[0]~10_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG[2]~4_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG~7_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG~1_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|Equal0~0_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG[6]~5_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG~8_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG~2_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG[8]~9_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|Equal1~0_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG[10]~3_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG~6_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|BCD_CNT_REG~0_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|DOUT12[9]~feeder_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux2~0_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux2~1_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|DOUT12[11]~feeder_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux0~0_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux0~1_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|DOUT12[8]~feeder_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux3~0_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux3~1_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|DOUT12[10]~feeder_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux1~0_combout\ : std_logic;
SIGNAL \INST_SCANNER|Mux1~1_combout\ : std_logic;
SIGNAL \INST_LED_DEC|Mux6~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|Mux5~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|Mux4~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|Mux3~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|Mux2~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|Mux1~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|Mux0~0_combout\ : std_logic;
SIGNAL \INST_BCD_CNT|DOUT12\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \INST_BCD_CNT|BCD_CNT_REG\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \INST_SCANNER|SEL_REG\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_LED_DEC|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \INST_LED_DEC|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLKDSP <= CLKDSP;
ww_RESET <= RESET;
DOUT <= ww_DOUT;
SEL <= ww_SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLKDSP~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKDSP~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\INST_LED_DEC|ALT_INV_Mux0~0_combout\ <= NOT \INST_LED_DEC|Mux0~0_combout\;
\INST_LED_DEC|ALT_INV_Mux1~0_combout\ <= NOT \INST_LED_DEC|Mux1~0_combout\;
\INST_LED_DEC|ALT_INV_Mux2~0_combout\ <= NOT \INST_LED_DEC|Mux2~0_combout\;
\INST_LED_DEC|ALT_INV_Mux3~0_combout\ <= NOT \INST_LED_DEC|Mux3~0_combout\;
\INST_LED_DEC|ALT_INV_Mux4~0_combout\ <= NOT \INST_LED_DEC|Mux4~0_combout\;
\INST_LED_DEC|ALT_INV_Mux5~0_combout\ <= NOT \INST_LED_DEC|Mux5~0_combout\;

-- Location: IOOBUF_X33_Y15_N2
\DOUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DEC|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\DOUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DEC|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\DOUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DEC|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\DOUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DEC|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\DOUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DEC|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\DOUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DEC|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\DOUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DEC|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\SEL[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_SCANNER|SEL_REG\(0),
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\SEL[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_SCANNER|SEL_REG\(1),
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\CLKDSP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKDSP,
	o => \CLKDSP~input_o\);

-- Location: CLKCTRL_G19
\CLKDSP~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKDSP~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKDSP~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y14_N12
\INST_SCANNER|SEL_REG~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|SEL_REG~0_combout\ = (\INST_SCANNER|SEL_REG\(1)) # (!\INST_SCANNER|SEL_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SCANNER|SEL_REG\(0),
	datad => \INST_SCANNER|SEL_REG\(1),
	combout => \INST_SCANNER|SEL_REG~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G18
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

-- Location: FF_X31_Y14_N13
\INST_SCANNER|SEL_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDSP~inputclkctrl_outclk\,
	d => \INST_SCANNER|SEL_REG~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SCANNER|SEL_REG\(0));

-- Location: LCCOMB_X31_Y14_N18
\INST_SCANNER|SEL_REG[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|SEL_REG[1]~1_combout\ = \INST_SCANNER|SEL_REG\(1) $ (\INST_SCANNER|SEL_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SCANNER|SEL_REG\(1),
	datad => \INST_SCANNER|SEL_REG\(0),
	combout => \INST_SCANNER|SEL_REG[1]~1_combout\);

-- Location: FF_X31_Y14_N19
\INST_SCANNER|SEL_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDSP~inputclkctrl_outclk\,
	d => \INST_SCANNER|SEL_REG[1]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SCANNER|SEL_REG\(1));

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

-- Location: LCCOMB_X26_Y14_N4
\INST_BCD_CNT|BCD_CNT_REG[4]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG[4]~11_combout\ = !\INST_BCD_CNT|BCD_CNT_REG\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_BCD_CNT|BCD_CNT_REG\(4),
	combout => \INST_BCD_CNT|BCD_CNT_REG[4]~11_combout\);

-- Location: LCCOMB_X26_Y14_N6
\INST_BCD_CNT|BCD_CNT_REG[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG[0]~10_combout\ = !\INST_BCD_CNT|BCD_CNT_REG\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_BCD_CNT|BCD_CNT_REG\(0),
	combout => \INST_BCD_CNT|BCD_CNT_REG[0]~10_combout\);

-- Location: FF_X26_Y14_N7
\INST_BCD_CNT|BCD_CNT_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG[0]~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(0));

-- Location: LCCOMB_X26_Y14_N0
\INST_BCD_CNT|BCD_CNT_REG[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG[2]~4_combout\ = \INST_BCD_CNT|BCD_CNT_REG\(2) $ (((\INST_BCD_CNT|BCD_CNT_REG\(0) & \INST_BCD_CNT|BCD_CNT_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(0),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(2),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(1),
	combout => \INST_BCD_CNT|BCD_CNT_REG[2]~4_combout\);

-- Location: FF_X26_Y14_N1
\INST_BCD_CNT|BCD_CNT_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG[2]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(2));

-- Location: LCCOMB_X26_Y14_N22
\INST_BCD_CNT|BCD_CNT_REG~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG~7_combout\ = (\INST_BCD_CNT|BCD_CNT_REG\(0) & ((\INST_BCD_CNT|BCD_CNT_REG\(1) & (\INST_BCD_CNT|BCD_CNT_REG\(3) $ (\INST_BCD_CNT|BCD_CNT_REG\(2)))) # (!\INST_BCD_CNT|BCD_CNT_REG\(1) & (\INST_BCD_CNT|BCD_CNT_REG\(3) & 
-- \INST_BCD_CNT|BCD_CNT_REG\(2))))) # (!\INST_BCD_CNT|BCD_CNT_REG\(0) & (((\INST_BCD_CNT|BCD_CNT_REG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(0),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(1),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(3),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(2),
	combout => \INST_BCD_CNT|BCD_CNT_REG~7_combout\);

-- Location: FF_X26_Y14_N23
\INST_BCD_CNT|BCD_CNT_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(3));

-- Location: LCCOMB_X26_Y14_N28
\INST_BCD_CNT|BCD_CNT_REG~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG~1_combout\ = (\INST_BCD_CNT|BCD_CNT_REG\(0) & (!\INST_BCD_CNT|BCD_CNT_REG\(1) & ((\INST_BCD_CNT|BCD_CNT_REG\(2)) # (!\INST_BCD_CNT|BCD_CNT_REG\(3))))) # (!\INST_BCD_CNT|BCD_CNT_REG\(0) & (((\INST_BCD_CNT|BCD_CNT_REG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(3),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(0),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(1),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(2),
	combout => \INST_BCD_CNT|BCD_CNT_REG~1_combout\);

-- Location: FF_X26_Y14_N29
\INST_BCD_CNT|BCD_CNT_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(1));

-- Location: LCCOMB_X26_Y14_N2
\INST_BCD_CNT|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|Equal0~0_combout\ = (\INST_BCD_CNT|BCD_CNT_REG\(0) & (!\INST_BCD_CNT|BCD_CNT_REG\(1) & (\INST_BCD_CNT|BCD_CNT_REG\(3) & !\INST_BCD_CNT|BCD_CNT_REG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(0),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(1),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(3),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(2),
	combout => \INST_BCD_CNT|Equal0~0_combout\);

-- Location: FF_X26_Y14_N5
\INST_BCD_CNT|BCD_CNT_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG[4]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \INST_BCD_CNT|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(4));

-- Location: LCCOMB_X25_Y14_N22
\INST_BCD_CNT|BCD_CNT_REG[6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG[6]~5_combout\ = \INST_BCD_CNT|BCD_CNT_REG\(6) $ (((\INST_BCD_CNT|BCD_CNT_REG\(4) & (\INST_BCD_CNT|BCD_CNT_REG\(5) & \INST_BCD_CNT|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(4),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(5),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(6),
	datad => \INST_BCD_CNT|Equal0~0_combout\,
	combout => \INST_BCD_CNT|BCD_CNT_REG[6]~5_combout\);

-- Location: FF_X25_Y14_N23
\INST_BCD_CNT|BCD_CNT_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG[6]~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(6));

-- Location: LCCOMB_X26_Y14_N12
\INST_BCD_CNT|BCD_CNT_REG~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG~8_combout\ = (\INST_BCD_CNT|BCD_CNT_REG\(5) & (\INST_BCD_CNT|BCD_CNT_REG\(7) $ (((\INST_BCD_CNT|BCD_CNT_REG\(6) & \INST_BCD_CNT|BCD_CNT_REG\(4)))))) # (!\INST_BCD_CNT|BCD_CNT_REG\(5) & (\INST_BCD_CNT|BCD_CNT_REG\(7) & 
-- ((\INST_BCD_CNT|BCD_CNT_REG\(6)) # (!\INST_BCD_CNT|BCD_CNT_REG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(5),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(6),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(7),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(4),
	combout => \INST_BCD_CNT|BCD_CNT_REG~8_combout\);

-- Location: FF_X26_Y14_N13
\INST_BCD_CNT|BCD_CNT_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \INST_BCD_CNT|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(7));

-- Location: LCCOMB_X26_Y14_N8
\INST_BCD_CNT|BCD_CNT_REG~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG~2_combout\ = (\INST_BCD_CNT|BCD_CNT_REG\(5) & (((!\INST_BCD_CNT|BCD_CNT_REG\(4))))) # (!\INST_BCD_CNT|BCD_CNT_REG\(5) & (\INST_BCD_CNT|BCD_CNT_REG\(4) & ((\INST_BCD_CNT|BCD_CNT_REG\(6)) # (!\INST_BCD_CNT|BCD_CNT_REG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(7),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(6),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(5),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(4),
	combout => \INST_BCD_CNT|BCD_CNT_REG~2_combout\);

-- Location: FF_X26_Y14_N9
\INST_BCD_CNT|BCD_CNT_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \INST_BCD_CNT|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(5));

-- Location: FF_X26_Y14_N11
\INST_BCD_CNT|DOUT12[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(5));

-- Location: LCCOMB_X25_Y14_N28
\INST_BCD_CNT|BCD_CNT_REG[8]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG[8]~9_combout\ = !\INST_BCD_CNT|BCD_CNT_REG\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_BCD_CNT|BCD_CNT_REG\(8),
	combout => \INST_BCD_CNT|BCD_CNT_REG[8]~9_combout\);

-- Location: LCCOMB_X25_Y14_N14
\INST_BCD_CNT|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|Equal1~0_combout\ = (!\INST_BCD_CNT|BCD_CNT_REG\(6) & (\INST_BCD_CNT|BCD_CNT_REG\(7) & (!\INST_BCD_CNT|BCD_CNT_REG\(5) & \INST_BCD_CNT|BCD_CNT_REG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(6),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(7),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(5),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(4),
	combout => \INST_BCD_CNT|Equal1~0_combout\);

-- Location: FF_X25_Y14_N29
\INST_BCD_CNT|BCD_CNT_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG[8]~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \INST_BCD_CNT|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(8));

-- Location: LCCOMB_X25_Y14_N16
\INST_BCD_CNT|BCD_CNT_REG[10]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG[10]~3_combout\ = \INST_BCD_CNT|BCD_CNT_REG\(10) $ (((\INST_BCD_CNT|BCD_CNT_REG\(8) & (\INST_BCD_CNT|BCD_CNT_REG\(9) & \INST_BCD_CNT|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(8),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(9),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(10),
	datad => \INST_BCD_CNT|Equal1~0_combout\,
	combout => \INST_BCD_CNT|BCD_CNT_REG[10]~3_combout\);

-- Location: FF_X25_Y14_N17
\INST_BCD_CNT|BCD_CNT_REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG[10]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(10));

-- Location: LCCOMB_X25_Y14_N20
\INST_BCD_CNT|BCD_CNT_REG~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG~6_combout\ = (\INST_BCD_CNT|BCD_CNT_REG\(9) & (\INST_BCD_CNT|BCD_CNT_REG\(11) $ (((\INST_BCD_CNT|BCD_CNT_REG\(10) & \INST_BCD_CNT|BCD_CNT_REG\(8)))))) # (!\INST_BCD_CNT|BCD_CNT_REG\(9) & (\INST_BCD_CNT|BCD_CNT_REG\(11) & 
-- ((\INST_BCD_CNT|BCD_CNT_REG\(10)) # (!\INST_BCD_CNT|BCD_CNT_REG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(9),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(10),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(11),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(8),
	combout => \INST_BCD_CNT|BCD_CNT_REG~6_combout\);

-- Location: FF_X25_Y14_N21
\INST_BCD_CNT|BCD_CNT_REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \INST_BCD_CNT|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(11));

-- Location: LCCOMB_X25_Y14_N30
\INST_BCD_CNT|BCD_CNT_REG~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|BCD_CNT_REG~0_combout\ = (\INST_BCD_CNT|BCD_CNT_REG\(8) & (!\INST_BCD_CNT|BCD_CNT_REG\(9) & ((\INST_BCD_CNT|BCD_CNT_REG\(10)) # (!\INST_BCD_CNT|BCD_CNT_REG\(11))))) # (!\INST_BCD_CNT|BCD_CNT_REG\(8) & (((\INST_BCD_CNT|BCD_CNT_REG\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|BCD_CNT_REG\(8),
	datab => \INST_BCD_CNT|BCD_CNT_REG\(11),
	datac => \INST_BCD_CNT|BCD_CNT_REG\(9),
	datad => \INST_BCD_CNT|BCD_CNT_REG\(10),
	combout => \INST_BCD_CNT|BCD_CNT_REG~0_combout\);

-- Location: FF_X25_Y14_N31
\INST_BCD_CNT|BCD_CNT_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|BCD_CNT_REG~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \INST_BCD_CNT|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|BCD_CNT_REG\(9));

-- Location: LCCOMB_X25_Y14_N26
\INST_BCD_CNT|DOUT12[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|DOUT12[9]~feeder_combout\ = \INST_BCD_CNT|BCD_CNT_REG\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_BCD_CNT|BCD_CNT_REG\(9),
	combout => \INST_BCD_CNT|DOUT12[9]~feeder_combout\);

-- Location: FF_X25_Y14_N27
\INST_BCD_CNT|DOUT12[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|DOUT12[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(9));

-- Location: FF_X26_Y14_N21
\INST_BCD_CNT|DOUT12[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(1));

-- Location: LCCOMB_X26_Y14_N20
\INST_SCANNER|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux2~0_combout\ = (\INST_SCANNER|SEL_REG\(0) & ((\INST_SCANNER|SEL_REG\(1) & (\INST_BCD_CNT|DOUT12\(9))) # (!\INST_SCANNER|SEL_REG\(1) & ((\INST_BCD_CNT|DOUT12\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|DOUT12\(9),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(1),
	datad => \INST_SCANNER|SEL_REG\(1),
	combout => \INST_SCANNER|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y14_N10
\INST_SCANNER|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux2~1_combout\ = (\INST_SCANNER|Mux2~0_combout\) # ((\INST_SCANNER|SEL_REG\(1) & (!\INST_SCANNER|SEL_REG\(0) & \INST_BCD_CNT|DOUT12\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|SEL_REG\(1),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(5),
	datad => \INST_SCANNER|Mux2~0_combout\,
	combout => \INST_SCANNER|Mux2~1_combout\);

-- Location: FF_X26_Y14_N17
\INST_BCD_CNT|DOUT12[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(7));

-- Location: LCCOMB_X25_Y14_N10
\INST_BCD_CNT|DOUT12[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|DOUT12[11]~feeder_combout\ = \INST_BCD_CNT|BCD_CNT_REG\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_BCD_CNT|BCD_CNT_REG\(11),
	combout => \INST_BCD_CNT|DOUT12[11]~feeder_combout\);

-- Location: FF_X25_Y14_N11
\INST_BCD_CNT|DOUT12[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|DOUT12[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(11));

-- Location: FF_X26_Y14_N19
\INST_BCD_CNT|DOUT12[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(3));

-- Location: LCCOMB_X26_Y14_N18
\INST_SCANNER|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux0~0_combout\ = (\INST_SCANNER|SEL_REG\(0) & ((\INST_SCANNER|SEL_REG\(1) & (\INST_BCD_CNT|DOUT12\(11))) # (!\INST_SCANNER|SEL_REG\(1) & ((\INST_BCD_CNT|DOUT12\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|DOUT12\(11),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(3),
	datad => \INST_SCANNER|SEL_REG\(1),
	combout => \INST_SCANNER|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y14_N16
\INST_SCANNER|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux0~1_combout\ = (\INST_SCANNER|Mux0~0_combout\) # ((\INST_SCANNER|SEL_REG\(1) & (!\INST_SCANNER|SEL_REG\(0) & \INST_BCD_CNT|DOUT12\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|SEL_REG\(1),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(7),
	datad => \INST_SCANNER|Mux0~0_combout\,
	combout => \INST_SCANNER|Mux0~1_combout\);

-- Location: FF_X26_Y14_N25
\INST_BCD_CNT|DOUT12[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(4));

-- Location: LCCOMB_X25_Y14_N8
\INST_BCD_CNT|DOUT12[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|DOUT12[8]~feeder_combout\ = \INST_BCD_CNT|BCD_CNT_REG\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_BCD_CNT|BCD_CNT_REG\(8),
	combout => \INST_BCD_CNT|DOUT12[8]~feeder_combout\);

-- Location: FF_X25_Y14_N9
\INST_BCD_CNT|DOUT12[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|DOUT12[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(8));

-- Location: FF_X26_Y14_N27
\INST_BCD_CNT|DOUT12[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(0));

-- Location: LCCOMB_X26_Y14_N26
\INST_SCANNER|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux3~0_combout\ = (\INST_SCANNER|SEL_REG\(0) & ((\INST_SCANNER|SEL_REG\(1) & (\INST_BCD_CNT|DOUT12\(8))) # (!\INST_SCANNER|SEL_REG\(1) & ((\INST_BCD_CNT|DOUT12\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BCD_CNT|DOUT12\(8),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(0),
	datad => \INST_SCANNER|SEL_REG\(1),
	combout => \INST_SCANNER|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y14_N24
\INST_SCANNER|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux3~1_combout\ = (\INST_SCANNER|Mux3~0_combout\) # ((\INST_SCANNER|SEL_REG\(1) & (!\INST_SCANNER|SEL_REG\(0) & \INST_BCD_CNT|DOUT12\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|SEL_REG\(1),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(4),
	datad => \INST_SCANNER|Mux3~0_combout\,
	combout => \INST_SCANNER|Mux3~1_combout\);

-- Location: FF_X26_Y14_N31
\INST_BCD_CNT|DOUT12[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(6));

-- Location: FF_X26_Y14_N15
\INST_BCD_CNT|DOUT12[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \INST_BCD_CNT|BCD_CNT_REG\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(2));

-- Location: LCCOMB_X25_Y14_N24
\INST_BCD_CNT|DOUT12[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_BCD_CNT|DOUT12[10]~feeder_combout\ = \INST_BCD_CNT|BCD_CNT_REG\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_BCD_CNT|BCD_CNT_REG\(10),
	combout => \INST_BCD_CNT|DOUT12[10]~feeder_combout\);

-- Location: FF_X25_Y14_N25
\INST_BCD_CNT|DOUT12[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \INST_BCD_CNT|DOUT12[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BCD_CNT|DOUT12\(10));

-- Location: LCCOMB_X26_Y14_N14
\INST_SCANNER|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux1~0_combout\ = (\INST_SCANNER|SEL_REG\(0) & ((\INST_SCANNER|SEL_REG\(1) & ((\INST_BCD_CNT|DOUT12\(10)))) # (!\INST_SCANNER|SEL_REG\(1) & (\INST_BCD_CNT|DOUT12\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|SEL_REG\(1),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(2),
	datad => \INST_BCD_CNT|DOUT12\(10),
	combout => \INST_SCANNER|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y14_N30
\INST_SCANNER|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SCANNER|Mux1~1_combout\ = (\INST_SCANNER|Mux1~0_combout\) # ((\INST_SCANNER|SEL_REG\(1) & (!\INST_SCANNER|SEL_REG\(0) & \INST_BCD_CNT|DOUT12\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|SEL_REG\(1),
	datab => \INST_SCANNER|SEL_REG\(0),
	datac => \INST_BCD_CNT|DOUT12\(6),
	datad => \INST_SCANNER|Mux1~0_combout\,
	combout => \INST_SCANNER|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y14_N0
\INST_LED_DEC|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DEC|Mux6~0_combout\ = (\INST_SCANNER|Mux2~1_combout\ & (!\INST_SCANNER|Mux0~1_combout\ & ((!\INST_SCANNER|Mux1~1_combout\) # (!\INST_SCANNER|Mux3~1_combout\)))) # (!\INST_SCANNER|Mux2~1_combout\ & (\INST_SCANNER|Mux0~1_combout\ $ 
-- (((\INST_SCANNER|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|Mux2~1_combout\,
	datab => \INST_SCANNER|Mux0~1_combout\,
	datac => \INST_SCANNER|Mux3~1_combout\,
	datad => \INST_SCANNER|Mux1~1_combout\,
	combout => \INST_LED_DEC|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y14_N6
\INST_LED_DEC|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DEC|Mux5~0_combout\ = (\INST_SCANNER|Mux3~1_combout\ & ((\INST_SCANNER|Mux2~1_combout\) # (\INST_SCANNER|Mux0~1_combout\ $ (!\INST_SCANNER|Mux1~1_combout\)))) # (!\INST_SCANNER|Mux3~1_combout\ & ((\INST_SCANNER|Mux1~1_combout\ & 
-- ((\INST_SCANNER|Mux0~1_combout\))) # (!\INST_SCANNER|Mux1~1_combout\ & (\INST_SCANNER|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|Mux2~1_combout\,
	datab => \INST_SCANNER|Mux0~1_combout\,
	datac => \INST_SCANNER|Mux3~1_combout\,
	datad => \INST_SCANNER|Mux1~1_combout\,
	combout => \INST_LED_DEC|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y14_N28
\INST_LED_DEC|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DEC|Mux4~0_combout\ = (\INST_SCANNER|Mux3~1_combout\) # ((\INST_SCANNER|Mux2~1_combout\ & (\INST_SCANNER|Mux0~1_combout\)) # (!\INST_SCANNER|Mux2~1_combout\ & ((\INST_SCANNER|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|Mux2~1_combout\,
	datab => \INST_SCANNER|Mux0~1_combout\,
	datac => \INST_SCANNER|Mux3~1_combout\,
	datad => \INST_SCANNER|Mux1~1_combout\,
	combout => \INST_LED_DEC|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y14_N14
\INST_LED_DEC|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DEC|Mux3~0_combout\ = (\INST_SCANNER|Mux2~1_combout\ & ((\INST_SCANNER|Mux0~1_combout\) # ((\INST_SCANNER|Mux3~1_combout\ & \INST_SCANNER|Mux1~1_combout\)))) # (!\INST_SCANNER|Mux2~1_combout\ & (\INST_SCANNER|Mux1~1_combout\ $ 
-- (((!\INST_SCANNER|Mux0~1_combout\ & \INST_SCANNER|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|Mux2~1_combout\,
	datab => \INST_SCANNER|Mux0~1_combout\,
	datac => \INST_SCANNER|Mux3~1_combout\,
	datad => \INST_SCANNER|Mux1~1_combout\,
	combout => \INST_LED_DEC|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y14_N12
\INST_LED_DEC|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DEC|Mux2~0_combout\ = (\INST_SCANNER|Mux1~1_combout\ & (((\INST_SCANNER|Mux0~1_combout\)))) # (!\INST_SCANNER|Mux1~1_combout\ & (\INST_SCANNER|Mux2~1_combout\ & ((\INST_SCANNER|Mux0~1_combout\) # (!\INST_SCANNER|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|Mux2~1_combout\,
	datab => \INST_SCANNER|Mux0~1_combout\,
	datac => \INST_SCANNER|Mux3~1_combout\,
	datad => \INST_SCANNER|Mux1~1_combout\,
	combout => \INST_LED_DEC|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y14_N10
\INST_LED_DEC|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DEC|Mux1~0_combout\ = (\INST_SCANNER|Mux0~1_combout\ & ((\INST_SCANNER|Mux2~1_combout\) # ((\INST_SCANNER|Mux1~1_combout\)))) # (!\INST_SCANNER|Mux0~1_combout\ & (\INST_SCANNER|Mux1~1_combout\ & (\INST_SCANNER|Mux2~1_combout\ $ 
-- (\INST_SCANNER|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|Mux2~1_combout\,
	datab => \INST_SCANNER|Mux0~1_combout\,
	datac => \INST_SCANNER|Mux3~1_combout\,
	datad => \INST_SCANNER|Mux1~1_combout\,
	combout => \INST_LED_DEC|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y14_N4
\INST_LED_DEC|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DEC|Mux0~0_combout\ = (\INST_SCANNER|Mux2~1_combout\ & (\INST_SCANNER|Mux0~1_combout\)) # (!\INST_SCANNER|Mux2~1_combout\ & (\INST_SCANNER|Mux1~1_combout\ $ (((!\INST_SCANNER|Mux0~1_combout\ & \INST_SCANNER|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SCANNER|Mux2~1_combout\,
	datab => \INST_SCANNER|Mux0~1_combout\,
	datac => \INST_SCANNER|Mux3~1_combout\,
	datad => \INST_SCANNER|Mux1~1_combout\,
	combout => \INST_LED_DEC|Mux0~0_combout\);

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;
END structure;


