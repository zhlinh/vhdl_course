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
-- Generated on "05/10/2015 20:34:17"
                                                            
-- Vhdl Test Bench template for design  :  CHKSEQ
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CHKSEQ_vhd_tst IS
END CHKSEQ_vhd_tst;
ARCHITECTURE CHKSEQ_arch OF CHKSEQ_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DIN : STD_LOGIC;
SIGNAL DOUT : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
COMPONENT CHKSEQ
	PORT (
	CLK : IN STD_LOGIC;
	DIN : IN STD_LOGIC;
	DOUT : BUFFER STD_LOGIC;
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CHKSEQ
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DIN => DIN,
	DOUT => DOUT,
	RESET => RESET
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END CHKSEQ_arch;
