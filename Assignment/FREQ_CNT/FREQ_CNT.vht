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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to
-- suit user's needs .Comments are provided in each section to help the user
-- fill out necessary details.
-- ***************************************************************************
-- Generated on "06/12/2015 16:38:32"

-- Vhdl Test Bench template for design  :  FREQ_CNT
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FREQ_CNT_vhd_tst IS
END FREQ_CNT_vhd_tst;
ARCHITECTURE FREQ_CNT_arch OF FREQ_CNT_vhd_tst IS
-- constants
-- Clock period definitions
CONSTANT CLK_IN_1HZ_PERIOD : TIME := 1000 MS;
CONSTANT CLK_DISP_PERIOD : TIME := 1 MS;
CONSTANT TEST_CLK_PERIOD : TIME := 2 MS;
CONSTANT MEASURE_CLK_PERIOD : TIME := 0.314159265357 MS;

-- signals
SIGNAL BEEP : STD_LOGIC;
SIGNAL CHOOSE : STD_LOGIC;
SIGNAL CLK_DISP : STD_LOGIC;
SIGNAL CLK_IN_1HZ : STD_LOGIC;
SIGNAL DATA2LED : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DATA_RANGE : STD_LOGIC;
SIGNAL MEASURE_CLK : STD_LOGIC;
SIGNAL RANGE_DISP : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL SEL2LED : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL TEST_CLK : STD_LOGIC;
COMPONENT FREQ_CNT
	PORT (
	BEEP : BUFFER STD_LOGIC;
	CHOOSE : IN STD_LOGIC;
	CLK_DISP : IN STD_LOGIC;
	CLK_IN_1HZ : IN STD_LOGIC;
	DATA2LED : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	DATA_RANGE : IN STD_LOGIC;
	MEASURE_CLK : IN STD_LOGIC;
	RANGE_DISP : BUFFER STD_LOGIC;
	RST : IN STD_LOGIC;
	SEL2LED : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	TEST_CLK : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FREQ_CNT
	PORT MAP (
-- list connections between master ports and signals
	BEEP => BEEP,
	CHOOSE => CHOOSE,
	CLK_DISP => CLK_DISP,
	CLK_IN_1HZ => CLK_IN_1HZ,
	DATA2LED => DATA2LED,
	DATA_RANGE => DATA_RANGE,
	MEASURE_CLK => MEASURE_CLK,
	RANGE_DISP => RANGE_DISP,
	RST => RST,
	SEL2LED => SEL2LED,
	TEST_CLK => TEST_CLK
	);

-- clock process definitions
CLK_IN_1HZ_PROCESS :PROCESS
BEGIN
    CLK_IN_1HZ <= '0';
    WAIT FOR CLK_IN_1HZ_PERIOD/2;
    CLK_IN_1HZ <= '1';
    WAIT FOR CLK_IN_1HZ_PERIOD/2;
END PROCESS;

CLK_DISP_PROCESS :PROCESS
BEGIN
    CLK_DISP <= '0';
    WAIT FOR CLK_DISP_PERIOD/2;
    CLK_DISP <= '1';
    WAIT FOR CLK_DISP_PERIOD/2;
END PROCESS;

TEST_CLK_PROCESS :PROCESS
BEGIN
    TEST_CLK <= '0';
    WAIT FOR TEST_CLK_PERIOD/2;
    TEST_CLK <= '1';
    WAIT FOR TEST_CLK_PERIOD/2;
END PROCESS;

MEASURE_CLK_PROCESS :PROCESS
BEGIN
    MEASURE_CLK <= '0';
    WAIT FOR MEASURE_CLK_PERIOD/2;
    MEASURE_CLK <= '1';
    WAIT FOR MEASURE_CLK_PERIOD/2;
END PROCESS;

-- stimulus process
STIM_PROC: PROCESS
BEGIN
    RST <= '1';
    WAIT FOR 2000MS;
    RST <= '0';
    WAIT;
END PROCESS;
END FREQ_CNT_ARCH;
