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
-- Generated on "05/27/2015 22:52:52"
                                                            
-- Vhdl Test Bench template for design  :  LED_CNT
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LED_CNT_vhd_tst IS
END LED_CNT_vhd_tst;
ARCHITECTURE LED_CNT_arch OF LED_CNT_vhd_tst IS
-- constants
CONSTANT CLK_PERIOD : TIME := 30 us;
CONSTANT CLKDSP_PERIOD : TIME := 10 us;                                                  
-- signals                                                   
SIGNAL CLK : STD_LOGIC:='0';
SIGNAL CLKDSP : STD_LOGIC:='0';
SIGNAL DOUT : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RESET : STD_LOGIC:='0';
SIGNAL SEL : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT LED_CNT
	PORT (
	CLK : IN STD_LOGIC;
	CLKDSP : IN STD_LOGIC;
	DOUT : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RESET : IN STD_LOGIC;
	SEL : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LED_CNT
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLKDSP => CLKDSP,
	DOUT => DOUT,
	RESET => RESET,
	SEL => SEL
	);                                                                                                                                        
 -- Clock process definitions
   CLK_PROCESS :PROCESS
   BEGIN
		CLK <= '0';
		WAIT FOR CLK_PERIOD/2;
		CLK <= '1';
		WAIT FOR CLK_PERIOD/2;
   END PROCESS;
   CLKDSP_PROCESS :PROCESS
   BEGIN
		CLKDSP <= '0';
		WAIT FOR CLKDSP_PERIOD/2;
		CLKDSP <= '1';
		WAIT FOR CLKDSP_PERIOD/2;
   END PROCESS;
   RESET <= '0','1' AFTER 12 us;                                      
END LED_CNT_arch;
