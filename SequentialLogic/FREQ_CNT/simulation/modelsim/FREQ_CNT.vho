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

-- DATE "06/13/2015 09:24:15"

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

ENTITY 	FREQ_CNT IS
    PORT (
	RST : IN std_logic;
	CLK_IN_1HZ : IN std_logic;
	CLK_DISP : IN std_logic;
	TEST_CLK : IN std_logic;
	MEASURE_CLK : IN std_logic;
	CHOOSE : IN std_logic;
	DATA_RANGE : IN std_logic;
	BEEP : OUT std_logic;
	RANGE_DISP : OUT std_logic;
	DATA2LED : OUT std_logic_vector(6 DOWNTO 0);
	SEL2LED : OUT std_logic_vector(2 DOWNTO 0)
	);
END FREQ_CNT;

-- Design Ports Information
-- BEEP	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RANGE_DISP	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2LED[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2LED[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2LED[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2LED[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2LED[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2LED[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA2LED[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL2LED[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL2LED[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL2LED[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_RANGE	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_DISP	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_IN_1HZ	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEASURE_CLK	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEST_CLK	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CHOOSE	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FREQ_CNT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK_IN_1HZ : std_logic;
SIGNAL ww_CLK_DISP : std_logic;
SIGNAL ww_TEST_CLK : std_logic;
SIGNAL ww_MEASURE_CLK : std_logic;
SIGNAL ww_CHOOSE : std_logic;
SIGNAL ww_DATA_RANGE : std_logic;
SIGNAL ww_BEEP : std_logic;
SIGNAL ww_RANGE_DISP : std_logic;
SIGNAL ww_DATA2LED : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEL2LED : std_logic_vector(2 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_DISP~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_SEL_SIGNAL|CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BEEP~output_o\ : std_logic;
SIGNAL \RANGE_DISP~output_o\ : std_logic;
SIGNAL \DATA2LED[0]~output_o\ : std_logic;
SIGNAL \DATA2LED[1]~output_o\ : std_logic;
SIGNAL \DATA2LED[2]~output_o\ : std_logic;
SIGNAL \DATA2LED[3]~output_o\ : std_logic;
SIGNAL \DATA2LED[4]~output_o\ : std_logic;
SIGNAL \DATA2LED[5]~output_o\ : std_logic;
SIGNAL \DATA2LED[6]~output_o\ : std_logic;
SIGNAL \SEL2LED[0]~output_o\ : std_logic;
SIGNAL \SEL2LED[1]~output_o\ : std_logic;
SIGNAL \SEL2LED[2]~output_o\ : std_logic;
SIGNAL \DATA_RANGE~input_o\ : std_logic;
SIGNAL \TEST_CLK~input_o\ : std_logic;
SIGNAL \MEASURE_CLK~input_o\ : std_logic;
SIGNAL \CHOOSE~input_o\ : std_logic;
SIGNAL \INST_SEL_SIGNAL|CLK~combout\ : std_logic;
SIGNAL \INST_SEL_SIGNAL|CLK~clkctrl_outclk\ : std_logic;
SIGNAL \CLK_IN_1HZ~input_o\ : std_logic;
SIGNAL \INST_DIV_FREQ|CLK_OUT_TEMP[0]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST_COUNT|CNT~4_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~18_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~13_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~9_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT[0]~feeder_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~7_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~6_combout\ : std_logic;
SIGNAL \INST_COUNT|Add0~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~8_combout\ : std_logic;
SIGNAL \INST_COUNT|Equal0~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT[3]~5_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~11_combout\ : std_logic;
SIGNAL \INST_COUNT|Add1~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~10_combout\ : std_logic;
SIGNAL \INST_COUNT|Add1~1_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~12_combout\ : std_logic;
SIGNAL \INST_COUNT|Equal1~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT[11]~15_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~16_combout\ : std_logic;
SIGNAL \INST_COUNT|Add2~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~14_combout\ : std_logic;
SIGNAL \INST_COUNT|Add2~1_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~17_combout\ : std_logic;
SIGNAL \INST_COUNT|Equal2~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT[15]~1_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~2_combout\ : std_logic;
SIGNAL \INST_COUNT|Add3~1_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~3_combout\ : std_logic;
SIGNAL \INST_COUNT|CARRY~0_combout\ : std_logic;
SIGNAL \INST_COUNT|Add3~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CNT~0_combout\ : std_logic;
SIGNAL \INST_ALERT|Equal0~0_combout\ : std_logic;
SIGNAL \INST_COUNT|CARRY~1_combout\ : std_logic;
SIGNAL \INST_COUNT|CARRY~2_combout\ : std_logic;
SIGNAL \INST_COUNT|CARRY~q\ : std_logic;
SIGNAL \INST_ALERT|BEEP~0_combout\ : std_logic;
SIGNAL \CLK_DISP~input_o\ : std_logic;
SIGNAL \CLK_DISP~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST_COUNT|READ_EN~0_combout\ : std_logic;
SIGNAL \INST_COUNT|READ_EN~q\ : std_logic;
SIGNAL \INST_LED_DISP|VAR~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|VAR[0]~1_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Equal1~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT[3]~1_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT[3]~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT[3]~4_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT[3]~5_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT[3]~6_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~13_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT[3]~7_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~14_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~15_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~16_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~2_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~3_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT[3]~8_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~9_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~17_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~18_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~19_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~10_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~11_combout\ : std_logic;
SIGNAL \INST_LED_DISP|DOUT_OCT~12_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Mux6~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Mux5~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Mux4~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Mux3~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Mux2~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Mux1~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|Mux0~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|SEL2LED[0]~1_combout\ : std_logic;
SIGNAL \INST_LED_DISP|SEL2LED~0_combout\ : std_logic;
SIGNAL \INST_DIV_FREQ|CLK_OUT_TEMP\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_COUNT|CNT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INST_LED_DISP|VAR\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_LED_DISP|SEL2LED\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INST_LED_DISP|DOUT_OCT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_LED_DISP|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \INST_LED_DISP|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK_IN_1HZ <= CLK_IN_1HZ;
ww_CLK_DISP <= CLK_DISP;
ww_TEST_CLK <= TEST_CLK;
ww_MEASURE_CLK <= MEASURE_CLK;
ww_CHOOSE <= CHOOSE;
ww_DATA_RANGE <= DATA_RANGE;
BEEP <= ww_BEEP;
RANGE_DISP <= ww_RANGE_DISP;
DATA2LED <= ww_DATA2LED;
SEL2LED <= ww_SEL2LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK_DISP~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_DISP~input_o\);

\INST_SEL_SIGNAL|CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_SEL_SIGNAL|CLK~combout\);
\INST_LED_DISP|ALT_INV_Mux0~0_combout\ <= NOT \INST_LED_DISP|Mux0~0_combout\;
\INST_LED_DISP|ALT_INV_Mux1~0_combout\ <= NOT \INST_LED_DISP|Mux1~0_combout\;
\INST_LED_DISP|ALT_INV_Mux2~0_combout\ <= NOT \INST_LED_DISP|Mux2~0_combout\;
\INST_LED_DISP|ALT_INV_Mux3~0_combout\ <= NOT \INST_LED_DISP|Mux3~0_combout\;
\INST_LED_DISP|ALT_INV_Mux4~0_combout\ <= NOT \INST_LED_DISP|Mux4~0_combout\;
\INST_LED_DISP|ALT_INV_Mux5~0_combout\ <= NOT \INST_LED_DISP|Mux5~0_combout\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;

-- Location: IOOBUF_X24_Y0_N2
\BEEP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_ALERT|BEEP~0_combout\,
	devoe => ww_devoe,
	o => \BEEP~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\RANGE_DISP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_RANGE~input_o\,
	devoe => ww_devoe,
	o => \RANGE_DISP~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\DATA2LED[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DATA2LED[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\DATA2LED[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DATA2LED[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\DATA2LED[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DATA2LED[2]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\DATA2LED[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DATA2LED[3]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\DATA2LED[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DATA2LED[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\DATA2LED[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DATA2LED[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\DATA2LED[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DATA2LED[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\SEL2LED[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|SEL2LED\(0),
	devoe => ww_devoe,
	o => \SEL2LED[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\SEL2LED[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|SEL2LED\(1),
	devoe => ww_devoe,
	o => \SEL2LED[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\SEL2LED[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_LED_DISP|SEL2LED\(2),
	devoe => ww_devoe,
	o => \SEL2LED[2]~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\DATA_RANGE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_RANGE,
	o => \DATA_RANGE~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\TEST_CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TEST_CLK,
	o => \TEST_CLK~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\MEASURE_CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEASURE_CLK,
	o => \MEASURE_CLK~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\CHOOSE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CHOOSE,
	o => \CHOOSE~input_o\);

-- Location: LCCOMB_X15_Y30_N24
\INST_SEL_SIGNAL|CLK\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_SEL_SIGNAL|CLK~combout\ = LCELL((\CHOOSE~input_o\ & ((\MEASURE_CLK~input_o\))) # (!\CHOOSE~input_o\ & (\TEST_CLK~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_CLK~input_o\,
	datac => \MEASURE_CLK~input_o\,
	datad => \CHOOSE~input_o\,
	combout => \INST_SEL_SIGNAL|CLK~combout\);

-- Location: CLKCTRL_G14
\INST_SEL_SIGNAL|CLK~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST_SEL_SIGNAL|CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\);

-- Location: IOIBUF_X33_Y12_N8
\CLK_IN_1HZ~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_IN_1HZ,
	o => \CLK_IN_1HZ~input_o\);

-- Location: LCCOMB_X25_Y12_N20
\INST_DIV_FREQ|CLK_OUT_TEMP[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_DIV_FREQ|CLK_OUT_TEMP[0]~0_combout\ = !\INST_DIV_FREQ|CLK_OUT_TEMP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	combout => \INST_DIV_FREQ|CLK_OUT_TEMP[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G19
\RST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X25_Y12_N21
\INST_DIV_FREQ|CLK_OUT_TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN_1HZ~input_o\,
	d => \INST_DIV_FREQ|CLK_OUT_TEMP[0]~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIV_FREQ|CLK_OUT_TEMP\(0));

-- Location: LCCOMB_X25_Y12_N14
\INST_COUNT|CNT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~4_combout\ = (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & !\INST_COUNT|CNT\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|CNT\(12),
	combout => \INST_COUNT|CNT~4_combout\);

-- Location: LCCOMB_X25_Y12_N8
\INST_COUNT|CNT~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~18_combout\ = (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & !\INST_COUNT|CNT\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|CNT\(8),
	combout => \INST_COUNT|CNT~18_combout\);

-- Location: LCCOMB_X24_Y12_N24
\INST_COUNT|CNT~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~13_combout\ = (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & !\INST_COUNT|CNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|CNT\(4),
	combout => \INST_COUNT|CNT~13_combout\);

-- Location: LCCOMB_X24_Y12_N28
\INST_COUNT|CNT~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~9_combout\ = (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & !\INST_COUNT|CNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|CNT\(0),
	combout => \INST_COUNT|CNT~9_combout\);

-- Location: LCCOMB_X24_Y12_N14
\INST_COUNT|CNT[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT[0]~feeder_combout\ = \INST_COUNT|CNT~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_COUNT|CNT~9_combout\,
	combout => \INST_COUNT|CNT[0]~feeder_combout\);

-- Location: FF_X24_Y12_N15
\INST_COUNT|CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(0));

-- Location: LCCOMB_X24_Y12_N30
\INST_COUNT|CNT~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~7_combout\ = (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & (\INST_COUNT|Equal0~0_combout\ & (\INST_COUNT|CNT\(0) $ (\INST_COUNT|CNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(0),
	datab => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datac => \INST_COUNT|CNT\(1),
	datad => \INST_COUNT|Equal0~0_combout\,
	combout => \INST_COUNT|CNT~7_combout\);

-- Location: FF_X24_Y12_N31
\INST_COUNT|CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~7_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(1));

-- Location: LCCOMB_X24_Y12_N8
\INST_COUNT|CNT~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~6_combout\ = (!\INST_COUNT|CNT[3]~5_combout\ & (\INST_COUNT|CNT\(2) $ (((\INST_COUNT|CNT\(0) & \INST_COUNT|CNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(0),
	datab => \INST_COUNT|CNT\(1),
	datac => \INST_COUNT|CNT\(2),
	datad => \INST_COUNT|CNT[3]~5_combout\,
	combout => \INST_COUNT|CNT~6_combout\);

-- Location: FF_X24_Y12_N9
\INST_COUNT|CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(2));

-- Location: LCCOMB_X24_Y12_N6
\INST_COUNT|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Add0~0_combout\ = \INST_COUNT|CNT\(3) $ (((\INST_COUNT|CNT\(2) & (\INST_COUNT|CNT\(0) & \INST_COUNT|CNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(2),
	datab => \INST_COUNT|CNT\(3),
	datac => \INST_COUNT|CNT\(0),
	datad => \INST_COUNT|CNT\(1),
	combout => \INST_COUNT|Add0~0_combout\);

-- Location: LCCOMB_X24_Y12_N0
\INST_COUNT|CNT~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~8_combout\ = (\INST_COUNT|Add0~0_combout\ & (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & \INST_COUNT|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|Add0~0_combout\,
	datab => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|Equal0~0_combout\,
	combout => \INST_COUNT|CNT~8_combout\);

-- Location: FF_X24_Y12_N1
\INST_COUNT|CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(3));

-- Location: LCCOMB_X24_Y12_N20
\INST_COUNT|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Equal0~0_combout\ = (\INST_COUNT|CNT\(1)) # ((\INST_COUNT|CNT\(2)) # ((!\INST_COUNT|CNT\(3)) # (!\INST_COUNT|CNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(1),
	datab => \INST_COUNT|CNT\(2),
	datac => \INST_COUNT|CNT\(0),
	datad => \INST_COUNT|CNT\(3),
	combout => \INST_COUNT|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y12_N16
\INST_COUNT|CNT[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT[3]~5_combout\ = (!\INST_COUNT|Equal0~0_combout\) # (!\INST_DIV_FREQ|CLK_OUT_TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|Equal0~0_combout\,
	combout => \INST_COUNT|CNT[3]~5_combout\);

-- Location: FF_X24_Y12_N29
\INST_COUNT|CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	asdata => \INST_COUNT|CNT~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \INST_COUNT|CNT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(4));

-- Location: LCCOMB_X24_Y12_N4
\INST_COUNT|CNT~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~11_combout\ = (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & (\INST_COUNT|Equal1~0_combout\ & (\INST_COUNT|CNT\(4) $ (\INST_COUNT|CNT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(4),
	datab => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datac => \INST_COUNT|CNT\(5),
	datad => \INST_COUNT|Equal1~0_combout\,
	combout => \INST_COUNT|CNT~11_combout\);

-- Location: FF_X24_Y12_N5
\INST_COUNT|CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~11_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(5));

-- Location: LCCOMB_X24_Y12_N12
\INST_COUNT|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Add1~0_combout\ = \INST_COUNT|CNT\(6) $ (((\INST_COUNT|CNT\(5) & \INST_COUNT|CNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(5),
	datac => \INST_COUNT|CNT\(6),
	datad => \INST_COUNT|CNT\(4),
	combout => \INST_COUNT|Add1~0_combout\);

-- Location: LCCOMB_X24_Y12_N22
\INST_COUNT|CNT~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~10_combout\ = (\INST_COUNT|Add1~0_combout\ & (\INST_COUNT|Equal1~0_combout\ & \INST_DIV_FREQ|CLK_OUT_TEMP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|Add1~0_combout\,
	datab => \INST_COUNT|Equal1~0_combout\,
	datac => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	combout => \INST_COUNT|CNT~10_combout\);

-- Location: FF_X24_Y12_N23
\INST_COUNT|CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~10_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(6));

-- Location: LCCOMB_X24_Y12_N2
\INST_COUNT|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Add1~1_combout\ = \INST_COUNT|CNT\(7) $ (((\INST_COUNT|CNT\(5) & (\INST_COUNT|CNT\(6) & \INST_COUNT|CNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(5),
	datab => \INST_COUNT|CNT\(6),
	datac => \INST_COUNT|CNT\(7),
	datad => \INST_COUNT|CNT\(4),
	combout => \INST_COUNT|Add1~1_combout\);

-- Location: LCCOMB_X24_Y12_N18
\INST_COUNT|CNT~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~12_combout\ = (\INST_COUNT|Equal1~0_combout\ & (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & \INST_COUNT|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_COUNT|Equal1~0_combout\,
	datac => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|Add1~1_combout\,
	combout => \INST_COUNT|CNT~12_combout\);

-- Location: FF_X24_Y12_N19
\INST_COUNT|CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(7));

-- Location: LCCOMB_X24_Y12_N26
\INST_COUNT|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Equal1~0_combout\ = (\INST_COUNT|CNT\(6)) # (((\INST_COUNT|CNT\(5)) # (!\INST_COUNT|CNT\(4))) # (!\INST_COUNT|CNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(6),
	datab => \INST_COUNT|CNT\(7),
	datac => \INST_COUNT|CNT\(5),
	datad => \INST_COUNT|CNT\(4),
	combout => \INST_COUNT|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y12_N28
\INST_COUNT|CNT[11]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT[11]~15_combout\ = ((!\INST_COUNT|Equal1~0_combout\ & !\INST_COUNT|Equal0~0_combout\)) # (!\INST_DIV_FREQ|CLK_OUT_TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datac => \INST_COUNT|Equal1~0_combout\,
	datad => \INST_COUNT|Equal0~0_combout\,
	combout => \INST_COUNT|CNT[11]~15_combout\);

-- Location: FF_X25_Y12_N17
\INST_COUNT|CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	asdata => \INST_COUNT|CNT~18_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \INST_COUNT|CNT[11]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(8));

-- Location: LCCOMB_X25_Y12_N4
\INST_COUNT|CNT~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~16_combout\ = (\INST_COUNT|Equal2~0_combout\ & (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & (\INST_COUNT|CNT\(9) $ (\INST_COUNT|CNT\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|Equal2~0_combout\,
	datab => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datac => \INST_COUNT|CNT\(9),
	datad => \INST_COUNT|CNT\(8),
	combout => \INST_COUNT|CNT~16_combout\);

-- Location: FF_X25_Y12_N5
\INST_COUNT|CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[11]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(9));

-- Location: LCCOMB_X25_Y12_N16
\INST_COUNT|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Add2~0_combout\ = \INST_COUNT|CNT\(10) $ (((\INST_COUNT|CNT\(9) & \INST_COUNT|CNT\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(10),
	datab => \INST_COUNT|CNT\(9),
	datac => \INST_COUNT|CNT\(8),
	combout => \INST_COUNT|Add2~0_combout\);

-- Location: LCCOMB_X25_Y12_N30
\INST_COUNT|CNT~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~14_combout\ = (\INST_COUNT|Add2~0_combout\ & (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & \INST_COUNT|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|Add2~0_combout\,
	datac => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|Equal2~0_combout\,
	combout => \INST_COUNT|CNT~14_combout\);

-- Location: FF_X25_Y12_N31
\INST_COUNT|CNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[11]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(10));

-- Location: LCCOMB_X25_Y12_N10
\INST_COUNT|Add2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Add2~1_combout\ = \INST_COUNT|CNT\(11) $ (((\INST_COUNT|CNT\(8) & (\INST_COUNT|CNT\(9) & \INST_COUNT|CNT\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(11),
	datab => \INST_COUNT|CNT\(8),
	datac => \INST_COUNT|CNT\(9),
	datad => \INST_COUNT|CNT\(10),
	combout => \INST_COUNT|Add2~1_combout\);

-- Location: LCCOMB_X25_Y12_N22
\INST_COUNT|CNT~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~17_combout\ = (\INST_COUNT|Equal2~0_combout\ & (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & \INST_COUNT|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_COUNT|Equal2~0_combout\,
	datac => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datad => \INST_COUNT|Add2~1_combout\,
	combout => \INST_COUNT|CNT~17_combout\);

-- Location: FF_X25_Y12_N23
\INST_COUNT|CNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~17_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[11]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(11));

-- Location: LCCOMB_X25_Y12_N18
\INST_COUNT|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Equal2~0_combout\ = (\INST_COUNT|CNT\(10)) # ((\INST_COUNT|CNT\(9)) # ((!\INST_COUNT|CNT\(8)) # (!\INST_COUNT|CNT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(10),
	datab => \INST_COUNT|CNT\(9),
	datac => \INST_COUNT|CNT\(11),
	datad => \INST_COUNT|CNT\(8),
	combout => \INST_COUNT|Equal2~0_combout\);

-- Location: LCCOMB_X26_Y12_N18
\INST_COUNT|CNT[15]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT[15]~1_combout\ = ((!\INST_COUNT|Equal2~0_combout\ & (!\INST_COUNT|Equal1~0_combout\ & !\INST_COUNT|Equal0~0_combout\))) # (!\INST_DIV_FREQ|CLK_OUT_TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	datab => \INST_COUNT|Equal2~0_combout\,
	datac => \INST_COUNT|Equal1~0_combout\,
	datad => \INST_COUNT|Equal0~0_combout\,
	combout => \INST_COUNT|CNT[15]~1_combout\);

-- Location: FF_X26_Y12_N25
\INST_COUNT|CNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	asdata => \INST_COUNT|CNT~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \INST_COUNT|CNT[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(12));

-- Location: LCCOMB_X26_Y12_N8
\INST_COUNT|CNT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~2_combout\ = (!\INST_COUNT|CARRY~0_combout\ & (\INST_DIV_FREQ|CLK_OUT_TEMP\(0) & (\INST_COUNT|CNT\(12) $ (\INST_COUNT|CNT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CARRY~0_combout\,
	datab => \INST_COUNT|CNT\(12),
	datac => \INST_COUNT|CNT\(13),
	datad => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	combout => \INST_COUNT|CNT~2_combout\);

-- Location: FF_X26_Y12_N9
\INST_COUNT|CNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(13));

-- Location: LCCOMB_X25_Y12_N0
\INST_COUNT|Add3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Add3~1_combout\ = \INST_COUNT|CNT\(15) $ (((\INST_COUNT|CNT\(14) & (\INST_COUNT|CNT\(12) & \INST_COUNT|CNT\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(14),
	datab => \INST_COUNT|CNT\(12),
	datac => \INST_COUNT|CNT\(13),
	datad => \INST_COUNT|CNT\(15),
	combout => \INST_COUNT|Add3~1_combout\);

-- Location: LCCOMB_X26_Y12_N10
\INST_COUNT|CNT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~3_combout\ = (!\INST_COUNT|CARRY~0_combout\ & (\INST_COUNT|Add3~1_combout\ & \INST_DIV_FREQ|CLK_OUT_TEMP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CARRY~0_combout\,
	datac => \INST_COUNT|Add3~1_combout\,
	datad => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	combout => \INST_COUNT|CNT~3_combout\);

-- Location: FF_X26_Y12_N11
\INST_COUNT|CNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(15));

-- Location: LCCOMB_X26_Y12_N12
\INST_COUNT|CARRY~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CARRY~0_combout\ = (\INST_COUNT|CNT\(15) & (!\INST_COUNT|CNT\(13) & (!\INST_COUNT|CNT\(14) & \INST_COUNT|CNT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(15),
	datab => \INST_COUNT|CNT\(13),
	datac => \INST_COUNT|CNT\(14),
	datad => \INST_COUNT|CNT\(12),
	combout => \INST_COUNT|CARRY~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\INST_COUNT|Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|Add3~0_combout\ = \INST_COUNT|CNT\(14) $ (((\INST_COUNT|CNT\(13) & \INST_COUNT|CNT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(14),
	datac => \INST_COUNT|CNT\(13),
	datad => \INST_COUNT|CNT\(12),
	combout => \INST_COUNT|Add3~0_combout\);

-- Location: LCCOMB_X26_Y12_N30
\INST_COUNT|CNT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CNT~0_combout\ = (!\INST_COUNT|CARRY~0_combout\ & (\INST_COUNT|Add3~0_combout\ & \INST_DIV_FREQ|CLK_OUT_TEMP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CARRY~0_combout\,
	datac => \INST_COUNT|Add3~0_combout\,
	datad => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	combout => \INST_COUNT|CNT~0_combout\);

-- Location: FF_X26_Y12_N31
\INST_COUNT|CNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CNT~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	ena => \INST_COUNT|CNT[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CNT\(14));

-- Location: LCCOMB_X26_Y12_N22
\INST_ALERT|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_ALERT|Equal0~0_combout\ = (\INST_COUNT|CNT\(14)) # ((\INST_COUNT|CNT\(12)) # ((\INST_COUNT|CNT\(13)) # (\INST_COUNT|CNT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(14),
	datab => \INST_COUNT|CNT\(12),
	datac => \INST_COUNT|CNT\(13),
	datad => \INST_COUNT|CNT\(15),
	combout => \INST_ALERT|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y12_N12
\INST_COUNT|CARRY~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CARRY~1_combout\ = (!\INST_COUNT|Equal1~0_combout\ & (!\INST_COUNT|Equal2~0_combout\ & (\INST_COUNT|CARRY~0_combout\ & !\INST_COUNT|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|Equal1~0_combout\,
	datab => \INST_COUNT|Equal2~0_combout\,
	datac => \INST_COUNT|CARRY~0_combout\,
	datad => \INST_COUNT|Equal0~0_combout\,
	combout => \INST_COUNT|CARRY~1_combout\);

-- Location: LCCOMB_X26_Y12_N16
\INST_COUNT|CARRY~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|CARRY~2_combout\ = (\INST_COUNT|CARRY~q\) # ((\INST_COUNT|CARRY~1_combout\ & \INST_DIV_FREQ|CLK_OUT_TEMP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CARRY~1_combout\,
	datac => \INST_COUNT|CARRY~q\,
	datad => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	combout => \INST_COUNT|CARRY~2_combout\);

-- Location: FF_X26_Y12_N17
\INST_COUNT|CARRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	d => \INST_COUNT|CARRY~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|CARRY~q\);

-- Location: LCCOMB_X26_Y12_N24
\INST_ALERT|BEEP~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_ALERT|BEEP~0_combout\ = (\DATA_RANGE~input_o\ & ((\INST_COUNT|CARRY~q\))) # (!\DATA_RANGE~input_o\ & (\INST_ALERT|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_RANGE~input_o\,
	datab => \INST_ALERT|Equal0~0_combout\,
	datad => \INST_COUNT|CARRY~q\,
	combout => \INST_ALERT|BEEP~0_combout\);

-- Location: IOIBUF_X16_Y0_N15
\CLK_DISP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_DISP,
	o => \CLK_DISP~input_o\);

-- Location: CLKCTRL_G17
\CLK_DISP~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_DISP~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_DISP~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y12_N14
\INST_COUNT|READ_EN~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_COUNT|READ_EN~0_combout\ = !\INST_DIV_FREQ|CLK_OUT_TEMP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_DIV_FREQ|CLK_OUT_TEMP\(0),
	combout => \INST_COUNT|READ_EN~0_combout\);

-- Location: FF_X27_Y12_N3
\INST_COUNT|READ_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_SEL_SIGNAL|CLK~clkctrl_outclk\,
	asdata => \INST_COUNT|READ_EN~0_combout\,
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_COUNT|READ_EN~q\);

-- Location: LCCOMB_X26_Y12_N4
\INST_LED_DISP|VAR~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|VAR~0_combout\ = (\INST_LED_DISP|VAR\(0) & !\INST_LED_DISP|VAR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|VAR\(0),
	datad => \INST_LED_DISP|VAR\(1),
	combout => \INST_LED_DISP|VAR~0_combout\);

-- Location: LCCOMB_X27_Y12_N4
\INST_LED_DISP|VAR[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|VAR[0]~1_combout\ = !\INST_LED_DISP|VAR~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_LED_DISP|VAR~0_combout\,
	combout => \INST_LED_DISP|VAR[0]~1_combout\);

-- Location: FF_X27_Y12_N5
\INST_LED_DISP|VAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	d => \INST_LED_DISP|VAR[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|VAR\(0));

-- Location: LCCOMB_X27_Y12_N24
\INST_LED_DISP|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Equal1~0_combout\ = \INST_LED_DISP|VAR\(1) $ (\INST_LED_DISP|VAR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_LED_DISP|VAR\(1),
	datad => \INST_LED_DISP|VAR\(0),
	combout => \INST_LED_DISP|Equal1~0_combout\);

-- Location: FF_X27_Y12_N31
\INST_LED_DISP|VAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	asdata => \INST_LED_DISP|Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|VAR\(1));

-- Location: LCCOMB_X27_Y12_N22
\INST_LED_DISP|DOUT_OCT[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT[3]~1_combout\ = (\INST_LED_DISP|VAR\(1) & (((!\INST_LED_DISP|VAR\(0))))) # (!\INST_LED_DISP|VAR\(1) & (\INST_LED_DISP|VAR\(0) & ((\DATA_RANGE~input_o\) # (!\INST_COUNT|READ_EN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_RANGE~input_o\,
	datab => \INST_COUNT|READ_EN~q\,
	datac => \INST_LED_DISP|VAR\(1),
	datad => \INST_LED_DISP|VAR\(0),
	combout => \INST_LED_DISP|DOUT_OCT[3]~1_combout\);

-- Location: LCCOMB_X27_Y12_N16
\INST_LED_DISP|DOUT_OCT[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT[3]~0_combout\ = (\INST_LED_DISP|VAR\(1) & ((\DATA_RANGE~input_o\ & (\INST_LED_DISP|VAR\(0) & \INST_COUNT|READ_EN~q\)) # (!\DATA_RANGE~input_o\ & (!\INST_LED_DISP|VAR\(0))))) # (!\INST_LED_DISP|VAR\(1) & ((\DATA_RANGE~input_o\ & 
-- ((\INST_LED_DISP|VAR\(0)) # (\INST_COUNT|READ_EN~q\))) # (!\DATA_RANGE~input_o\ & (\INST_LED_DISP|VAR\(0) & \INST_COUNT|READ_EN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|VAR\(1),
	datab => \DATA_RANGE~input_o\,
	datac => \INST_LED_DISP|VAR\(0),
	datad => \INST_COUNT|READ_EN~q\,
	combout => \INST_LED_DISP|DOUT_OCT[3]~0_combout\);

-- Location: LCCOMB_X27_Y12_N26
\INST_LED_DISP|DOUT_OCT[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT[3]~4_combout\ = (\INST_LED_DISP|Equal1~0_combout\ & (((\INST_COUNT|READ_EN~q\ & \INST_ALERT|Equal0~0_combout\)))) # (!\INST_LED_DISP|Equal1~0_combout\ & (\INST_COUNT|CARRY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CARRY~q\,
	datab => \INST_LED_DISP|Equal1~0_combout\,
	datac => \INST_COUNT|READ_EN~q\,
	datad => \INST_ALERT|Equal0~0_combout\,
	combout => \INST_LED_DISP|DOUT_OCT[3]~4_combout\);

-- Location: LCCOMB_X27_Y12_N28
\INST_LED_DISP|DOUT_OCT[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT[3]~5_combout\ = (\INST_ALERT|Equal0~0_combout\) # (!\INST_COUNT|READ_EN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_COUNT|READ_EN~q\,
	datad => \INST_ALERT|Equal0~0_combout\,
	combout => \INST_LED_DISP|DOUT_OCT[3]~5_combout\);

-- Location: LCCOMB_X27_Y12_N0
\INST_LED_DISP|DOUT_OCT[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT[3]~6_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & (\INST_LED_DISP|DOUT_OCT[3]~0_combout\)) # (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & (\INST_LED_DISP|DOUT_OCT[3]~4_combout\)) # 
-- (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datab => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	datac => \INST_LED_DISP|DOUT_OCT[3]~4_combout\,
	datad => \INST_LED_DISP|DOUT_OCT[3]~5_combout\,
	combout => \INST_LED_DISP|DOUT_OCT[3]~6_combout\);

-- Location: LCCOMB_X27_Y12_N2
\INST_LED_DISP|DOUT_OCT~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~13_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_COUNT|CNT\(6)))) # (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & (\INST_COUNT|CNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(2),
	datab => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	datad => \INST_COUNT|CNT\(6),
	combout => \INST_LED_DISP|DOUT_OCT~13_combout\);

-- Location: LCCOMB_X27_Y12_N30
\INST_LED_DISP|DOUT_OCT[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT[3]~7_combout\ = (\INST_LED_DISP|VAR\(0) & ((\INST_LED_DISP|VAR\(1) & ((\INST_ALERT|Equal0~0_combout\))) # (!\INST_LED_DISP|VAR\(1) & (\INST_COUNT|CARRY~q\)))) # (!\INST_LED_DISP|VAR\(0) & (((\INST_ALERT|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CARRY~q\,
	datab => \INST_LED_DISP|VAR\(0),
	datac => \INST_LED_DISP|VAR\(1),
	datad => \INST_ALERT|Equal0~0_combout\,
	combout => \INST_LED_DISP|DOUT_OCT[3]~7_combout\);

-- Location: LCCOMB_X26_Y12_N2
\INST_LED_DISP|DOUT_OCT~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~14_combout\ = (\INST_COUNT|READ_EN~q\ & ((\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_COUNT|CNT\(10)))) # (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & (\INST_COUNT|CNT\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(14),
	datab => \INST_COUNT|CNT\(10),
	datac => \INST_COUNT|READ_EN~q\,
	datad => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~14_combout\);

-- Location: LCCOMB_X27_Y12_N10
\INST_LED_DISP|DOUT_OCT~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~15_combout\ = (\INST_LED_DISP|DOUT_OCT~14_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~6_combout\ & (!\INST_LED_DISP|DOUT_OCT[3]~7_combout\)) # (!\INST_LED_DISP|DOUT_OCT[3]~6_combout\ & ((!\INST_COUNT|CARRY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~7_combout\,
	datab => \INST_LED_DISP|DOUT_OCT[3]~6_combout\,
	datac => \INST_COUNT|CARRY~q\,
	datad => \INST_LED_DISP|DOUT_OCT~14_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~15_combout\);

-- Location: LCCOMB_X27_Y12_N12
\INST_LED_DISP|DOUT_OCT~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~16_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & (((\INST_LED_DISP|DOUT_OCT~15_combout\)))) # (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & (!\INST_LED_DISP|DOUT_OCT[3]~6_combout\ & (\INST_LED_DISP|DOUT_OCT~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datab => \INST_LED_DISP|DOUT_OCT[3]~6_combout\,
	datac => \INST_LED_DISP|DOUT_OCT~13_combout\,
	datad => \INST_LED_DISP|DOUT_OCT~15_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~16_combout\);

-- Location: FF_X27_Y12_N13
\INST_LED_DISP|DOUT_OCT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	d => \INST_LED_DISP|DOUT_OCT~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|DOUT_OCT\(2));

-- Location: LCCOMB_X26_Y12_N0
\INST_LED_DISP|DOUT_OCT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~2_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & (((\INST_LED_DISP|DOUT_OCT[3]~1_combout\)))) # (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & (\INST_COUNT|CNT\(12))) # 
-- (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & ((\INST_COUNT|CNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(12),
	datab => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	datac => \INST_COUNT|CNT\(0),
	datad => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~2_combout\);

-- Location: LCCOMB_X26_Y12_N6
\INST_LED_DISP|DOUT_OCT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~3_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_LED_DISP|DOUT_OCT~2_combout\ & ((\INST_COUNT|CNT\(8)))) # (!\INST_LED_DISP|DOUT_OCT~2_combout\ & (\INST_COUNT|CNT\(4))))) # (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & 
-- (((\INST_LED_DISP|DOUT_OCT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	datab => \INST_COUNT|CNT\(4),
	datac => \INST_COUNT|CNT\(8),
	datad => \INST_LED_DISP|DOUT_OCT~2_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~3_combout\);

-- Location: LCCOMB_X27_Y12_N18
\INST_LED_DISP|DOUT_OCT[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT[3]~8_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~6_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~7_combout\))) # (!\INST_LED_DISP|DOUT_OCT[3]~6_combout\ & (\INST_COUNT|CARRY~q\)))) # 
-- (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & (((\INST_LED_DISP|DOUT_OCT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CARRY~q\,
	datab => \INST_LED_DISP|DOUT_OCT[3]~7_combout\,
	datac => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datad => \INST_LED_DISP|DOUT_OCT[3]~6_combout\,
	combout => \INST_LED_DISP|DOUT_OCT[3]~8_combout\);

-- Location: LCCOMB_X27_Y12_N20
\INST_LED_DISP|DOUT_OCT~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~9_combout\ = (\INST_LED_DISP|DOUT_OCT~3_combout\ & (!\INST_LED_DISP|DOUT_OCT[3]~8_combout\ & ((\INST_COUNT|READ_EN~q\) # (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datab => \INST_COUNT|READ_EN~q\,
	datac => \INST_LED_DISP|DOUT_OCT~3_combout\,
	datad => \INST_LED_DISP|DOUT_OCT[3]~8_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~9_combout\);

-- Location: FF_X27_Y12_N21
\INST_LED_DISP|DOUT_OCT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	d => \INST_LED_DISP|DOUT_OCT~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|DOUT_OCT\(0));

-- Location: LCCOMB_X26_Y12_N20
\INST_LED_DISP|DOUT_OCT~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~17_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & (((\INST_LED_DISP|DOUT_OCT[3]~1_combout\)))) # (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & (\INST_COUNT|CNT\(15))) # 
-- (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & ((\INST_COUNT|CNT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(15),
	datab => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	datac => \INST_COUNT|CNT\(3),
	datad => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~17_combout\);

-- Location: LCCOMB_X26_Y12_N26
\INST_LED_DISP|DOUT_OCT~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~18_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_LED_DISP|DOUT_OCT~17_combout\ & (\INST_COUNT|CNT\(11))) # (!\INST_LED_DISP|DOUT_OCT~17_combout\ & ((\INST_COUNT|CNT\(7)))))) # (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & 
-- (((\INST_LED_DISP|DOUT_OCT~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	datab => \INST_COUNT|CNT\(11),
	datac => \INST_COUNT|CNT\(7),
	datad => \INST_LED_DISP|DOUT_OCT~17_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~18_combout\);

-- Location: LCCOMB_X27_Y12_N14
\INST_LED_DISP|DOUT_OCT~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~19_combout\ = (\INST_LED_DISP|DOUT_OCT~18_combout\ & (!\INST_LED_DISP|DOUT_OCT[3]~8_combout\ & ((\INST_COUNT|READ_EN~q\) # (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datab => \INST_COUNT|READ_EN~q\,
	datac => \INST_LED_DISP|DOUT_OCT~18_combout\,
	datad => \INST_LED_DISP|DOUT_OCT[3]~8_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~19_combout\);

-- Location: FF_X27_Y12_N15
\INST_LED_DISP|DOUT_OCT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	d => \INST_LED_DISP|DOUT_OCT~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|DOUT_OCT\(3));

-- Location: LCCOMB_X26_Y12_N28
\INST_LED_DISP|DOUT_OCT~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~10_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & (((\INST_LED_DISP|DOUT_OCT[3]~0_combout\)))) # (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & ((\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & (\INST_COUNT|CNT\(5))) # 
-- (!\INST_LED_DISP|DOUT_OCT[3]~0_combout\ & ((\INST_COUNT|CNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(5),
	datab => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datac => \INST_COUNT|CNT\(1),
	datad => \INST_LED_DISP|DOUT_OCT[3]~0_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~10_combout\);

-- Location: LCCOMB_X27_Y12_N8
\INST_LED_DISP|DOUT_OCT~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~11_combout\ = (\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & ((\INST_LED_DISP|DOUT_OCT~10_combout\ & ((\INST_COUNT|CNT\(9)))) # (!\INST_LED_DISP|DOUT_OCT~10_combout\ & (\INST_COUNT|CNT\(13))))) # (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\ & 
-- (((\INST_LED_DISP|DOUT_OCT~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_COUNT|CNT\(13),
	datab => \INST_COUNT|CNT\(9),
	datac => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datad => \INST_LED_DISP|DOUT_OCT~10_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~11_combout\);

-- Location: LCCOMB_X27_Y12_N6
\INST_LED_DISP|DOUT_OCT~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|DOUT_OCT~12_combout\ = (\INST_LED_DISP|DOUT_OCT~11_combout\ & (!\INST_LED_DISP|DOUT_OCT[3]~8_combout\ & ((\INST_COUNT|READ_EN~q\) # (!\INST_LED_DISP|DOUT_OCT[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT[3]~1_combout\,
	datab => \INST_COUNT|READ_EN~q\,
	datac => \INST_LED_DISP|DOUT_OCT~11_combout\,
	datad => \INST_LED_DISP|DOUT_OCT[3]~8_combout\,
	combout => \INST_LED_DISP|DOUT_OCT~12_combout\);

-- Location: FF_X27_Y12_N7
\INST_LED_DISP|DOUT_OCT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	d => \INST_LED_DISP|DOUT_OCT~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|DOUT_OCT\(1));

-- Location: LCCOMB_X32_Y13_N0
\INST_LED_DISP|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Mux6~0_combout\ = (\INST_LED_DISP|DOUT_OCT\(2) & (!\INST_LED_DISP|DOUT_OCT\(3) & ((!\INST_LED_DISP|DOUT_OCT\(1)) # (!\INST_LED_DISP|DOUT_OCT\(0))))) # (!\INST_LED_DISP|DOUT_OCT\(2) & ((\INST_LED_DISP|DOUT_OCT\(3) $ 
-- (\INST_LED_DISP|DOUT_OCT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT\(2),
	datab => \INST_LED_DISP|DOUT_OCT\(0),
	datac => \INST_LED_DISP|DOUT_OCT\(3),
	datad => \INST_LED_DISP|DOUT_OCT\(1),
	combout => \INST_LED_DISP|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y13_N30
\INST_LED_DISP|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Mux5~0_combout\ = (\INST_LED_DISP|DOUT_OCT\(2) & ((\INST_LED_DISP|DOUT_OCT\(3)) # ((\INST_LED_DISP|DOUT_OCT\(0) & \INST_LED_DISP|DOUT_OCT\(1))))) # (!\INST_LED_DISP|DOUT_OCT\(2) & ((\INST_LED_DISP|DOUT_OCT\(1)) # 
-- ((\INST_LED_DISP|DOUT_OCT\(0) & !\INST_LED_DISP|DOUT_OCT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT\(2),
	datab => \INST_LED_DISP|DOUT_OCT\(0),
	datac => \INST_LED_DISP|DOUT_OCT\(3),
	datad => \INST_LED_DISP|DOUT_OCT\(1),
	combout => \INST_LED_DISP|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y13_N4
\INST_LED_DISP|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Mux4~0_combout\ = (\INST_LED_DISP|DOUT_OCT\(0)) # ((\INST_LED_DISP|DOUT_OCT\(1) & ((\INST_LED_DISP|DOUT_OCT\(3)))) # (!\INST_LED_DISP|DOUT_OCT\(1) & (\INST_LED_DISP|DOUT_OCT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT\(2),
	datab => \INST_LED_DISP|DOUT_OCT\(0),
	datac => \INST_LED_DISP|DOUT_OCT\(3),
	datad => \INST_LED_DISP|DOUT_OCT\(1),
	combout => \INST_LED_DISP|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y13_N2
\INST_LED_DISP|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Mux3~0_combout\ = (\INST_LED_DISP|DOUT_OCT\(1) & ((\INST_LED_DISP|DOUT_OCT\(3)) # ((\INST_LED_DISP|DOUT_OCT\(2) & \INST_LED_DISP|DOUT_OCT\(0))))) # (!\INST_LED_DISP|DOUT_OCT\(1) & (\INST_LED_DISP|DOUT_OCT\(2) $ 
-- (((\INST_LED_DISP|DOUT_OCT\(0) & !\INST_LED_DISP|DOUT_OCT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT\(2),
	datab => \INST_LED_DISP|DOUT_OCT\(0),
	datac => \INST_LED_DISP|DOUT_OCT\(3),
	datad => \INST_LED_DISP|DOUT_OCT\(1),
	combout => \INST_LED_DISP|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y13_N20
\INST_LED_DISP|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Mux2~0_combout\ = (\INST_LED_DISP|DOUT_OCT\(2) & (((\INST_LED_DISP|DOUT_OCT\(3))))) # (!\INST_LED_DISP|DOUT_OCT\(2) & (\INST_LED_DISP|DOUT_OCT\(1) & ((\INST_LED_DISP|DOUT_OCT\(3)) # (!\INST_LED_DISP|DOUT_OCT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT\(2),
	datab => \INST_LED_DISP|DOUT_OCT\(0),
	datac => \INST_LED_DISP|DOUT_OCT\(3),
	datad => \INST_LED_DISP|DOUT_OCT\(1),
	combout => \INST_LED_DISP|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y13_N22
\INST_LED_DISP|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Mux1~0_combout\ = (\INST_LED_DISP|DOUT_OCT\(2) & ((\INST_LED_DISP|DOUT_OCT\(3)) # (\INST_LED_DISP|DOUT_OCT\(0) $ (\INST_LED_DISP|DOUT_OCT\(1))))) # (!\INST_LED_DISP|DOUT_OCT\(2) & (((\INST_LED_DISP|DOUT_OCT\(3) & 
-- \INST_LED_DISP|DOUT_OCT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT\(2),
	datab => \INST_LED_DISP|DOUT_OCT\(0),
	datac => \INST_LED_DISP|DOUT_OCT\(3),
	datad => \INST_LED_DISP|DOUT_OCT\(1),
	combout => \INST_LED_DISP|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y13_N12
\INST_LED_DISP|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|Mux0~0_combout\ = (\INST_LED_DISP|DOUT_OCT\(1) & (((\INST_LED_DISP|DOUT_OCT\(3))))) # (!\INST_LED_DISP|DOUT_OCT\(1) & (\INST_LED_DISP|DOUT_OCT\(2) $ (((\INST_LED_DISP|DOUT_OCT\(0) & !\INST_LED_DISP|DOUT_OCT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|DOUT_OCT\(2),
	datab => \INST_LED_DISP|DOUT_OCT\(0),
	datac => \INST_LED_DISP|DOUT_OCT\(3),
	datad => \INST_LED_DISP|DOUT_OCT\(1),
	combout => \INST_LED_DISP|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y12_N24
\INST_LED_DISP|SEL2LED[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|SEL2LED[0]~1_combout\ = !\INST_LED_DISP|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_LED_DISP|Equal1~0_combout\,
	combout => \INST_LED_DISP|SEL2LED[0]~1_combout\);

-- Location: FF_X29_Y12_N25
\INST_LED_DISP|SEL2LED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	d => \INST_LED_DISP|SEL2LED[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|SEL2LED\(0));

-- Location: FF_X27_Y12_N29
\INST_LED_DISP|SEL2LED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	asdata => \INST_LED_DISP|VAR~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|SEL2LED\(1));

-- Location: LCCOMB_X29_Y12_N26
\INST_LED_DISP|SEL2LED~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \INST_LED_DISP|SEL2LED~0_combout\ = (\INST_LED_DISP|VAR\(1) & !\INST_LED_DISP|VAR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_LED_DISP|VAR\(1),
	datad => \INST_LED_DISP|VAR\(0),
	combout => \INST_LED_DISP|SEL2LED~0_combout\);

-- Location: FF_X29_Y12_N27
\INST_LED_DISP|SEL2LED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DISP~inputclkctrl_outclk\,
	d => \INST_LED_DISP|SEL2LED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_LED_DISP|SEL2LED\(2));

ww_BEEP <= \BEEP~output_o\;

ww_RANGE_DISP <= \RANGE_DISP~output_o\;

ww_DATA2LED(0) <= \DATA2LED[0]~output_o\;

ww_DATA2LED(1) <= \DATA2LED[1]~output_o\;

ww_DATA2LED(2) <= \DATA2LED[2]~output_o\;

ww_DATA2LED(3) <= \DATA2LED[3]~output_o\;

ww_DATA2LED(4) <= \DATA2LED[4]~output_o\;

ww_DATA2LED(5) <= \DATA2LED[5]~output_o\;

ww_DATA2LED(6) <= \DATA2LED[6]~output_o\;

ww_SEL2LED(0) <= \SEL2LED[0]~output_o\;

ww_SEL2LED(1) <= \SEL2LED[1]~output_o\;

ww_SEL2LED(2) <= \SEL2LED[2]~output_o\;
END structure;


