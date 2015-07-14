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
-- Generated on "07/05/2015 10:58:13"

-- Vhdl Test Bench template for design  :  IMG_LSB
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.mytype.all;
USE std.textio.all;
USE ieee.std_logic_textio.all;

ENTITY IMG_LSB_vhd_tst IS
END IMG_LSB_vhd_tst;
ARCHITECTURE IMG_LSB_arch OF IMG_LSB_vhd_tst IS
-- constants
-- signals
FILE INTEXT_R: TEXT IS IN "INTEXT_R.txt";
FILE INTEXT_G: TEXT IS IN "INTEXT_G.txt";
FILE INTEXT_B: TEXT IS IN "INTEXT_B.txt";

FILE OUTTEXT_R: TEXT IS OUT "OUTTEXT_R.txt";
FILE OUTTEXT_G: TEXT IS OUT "OUTTEXT_G.txt";
FILE OUTTEXT_B: TEXT IS OUT "OUTTEXT_B.txt";
SIGNAL A_COL : COLOR:=4;
SIGNAL A_ROW : COLOR:=0;
SIGNAL B_COL : COLOR:=10;
SIGNAL B_ROW : COLOR:=0;
SIGNAL C_COL : COLOR:=16;
SIGNAL C_ROW : COLOR:=0;
SIGNAL B_IN : COLOR;
SIGNAL B_OUT : COLOR;
SIGNAL CLK : STD_LOGIC;
SIGNAL DETECT_RESULT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G_IN : COLOR;
SIGNAL G_OUT : COLOR;
SIGNAL R_IN : COLOR;
SIGNAL R_OUT : COLOR;
SIGNAL RESET : STD_LOGIC;
SIGNAL SEL : STD_LOGIC:='1';

CONSTANT CLK_PERIOD:TIME:=10 NS;

COMPONENT IMG_LSB
	PORT (
	A_COL : IN COLOR;
	A_ROW : IN COLOR;
	B_COL : IN COLOR;
	B_IN : IN COLOR;
	B_OUT : BUFFER COLOR;
	B_ROW : IN COLOR;
	C_COL : IN COLOR;
	C_ROW : IN COLOR;
	CLK : IN STD_LOGIC;
	DETECT_RESULT : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	G_IN : IN COLOR;
	G_OUT : BUFFER COLOR;
	R_IN : IN COLOR;
	R_OUT : BUFFER COLOR;
	RESET : IN STD_LOGIC;
	SEL : IN STD_LOGIC
	);
END COMPONENT;


BEGIN
	i1 : IMG_LSB
	PORT MAP (
-- list connections between master ports and signals
	A_COL => A_COL,
	A_ROW => A_ROW,
	B_COL => B_COL,
	B_IN => B_IN,
	B_OUT => B_OUT,
	B_ROW => B_ROW,
	C_COL => C_COL,
	C_ROW => C_ROW,
	CLK => CLK,
	DETECT_RESULT => DETECT_RESULT,
	G_IN => G_IN,
	G_OUT => G_OUT,
	R_IN => R_IN,
	R_OUT => R_OUT,
	RESET => RESET,
	SEL => SEL
	);
init : PROCESS
-- variable declarations
BEGIN
    --只作为赋初值使用
    RESET<='1';
    WAIT FOR (CLK_PERIOD/4)*3;
    RESET<='0';
-- code that executes only once
    WAIT;
END PROCESS init;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
    VARIABLE INLINE_R: LINE;
    VARIABLE INLINE_G: LINE;
    VARIABLE INLINE_B: LINE;
    VARIABLE OUTLINE_R : LINE;
    VARIABLE OUTLINE_G : LINE;
    VARIABLE OUTLINE_B : LINE;
    VARIABLE INR_V,ING_V,INB_V,OUTR_V,OUTG_V,OUTB_V: COLOR;
    VARIABLE INCOL: INTEGER RANGE 0 TO 256 :=0;
    VARIABLE I: INTEGER RANGE 0 TO 9:=0;
    CONSTANT DELAY: INTEGER:=4;
    VARIABLE OUTCOL: INTEGER RANGE 0 TO 256 :=0;
    VARIABLE OUTROW: INTEGER RANGE 0 TO 256 :=0;
BEGIN
-- code executes for every event on sensitivity list
    CLK<='0';
    WAIT FOR CLK_PERIOD/2;
    CLK<='1';
    --读入数据
    IF(NOT ENDFILE(INTEXT_R)) THEN
        IF(INCOL=0) THEN
            READLINE(INTEXT_R,INLINE_R);
        END IF;
        READ(INLINE_R,INR_V);
        R_IN<=INR_V;
    END IF;

    IF(NOT ENDFILE(INTEXT_G)) THEN
        IF(INCOL=0) THEN
            READLINE(INTEXT_G,INLINE_G);
        END IF;
        READ(INLINE_G,ING_V);
        G_IN<=ING_V;
    END IF;

    IF(NOT ENDFILE(INTEXT_B)) THEN
        IF(INCOL=0) THEN
            READLINE(INTEXT_B,INLINE_B);
        END IF;
        READ(INLINE_B,INB_V);
        B_IN<=INB_V;
    END IF;

    --写数据
    --延迟3个时钟周期
    IF (I<DELAY) THEN
        I:=I+1;
    ELSE
        WRITE(OUTLINE_R,R_OUT);
        --以TAB分隔，VHDL定义的emum里tab就为HT
        WRITE(OUTLINE_R,HT);
        WRITE(OUTLINE_G,G_OUT);
        WRITE(OUTLINE_G,HT);
        WRITE(OUTLINE_B,B_OUT);
        WRITE(OUTLINE_B,HT);
        IF(OUTCOL=255 AND OUTROW<=255) THEN
            OUTROW:=OUTROW+1;
            WRITELINE(OUTTEXT_R,OUTLINE_R);
            WRITELINE(OUTTEXT_G,OUTLINE_G);
            WRITELINE(OUTTEXT_B,OUTLINE_B);
        END IF;

        IF(OUTCOL<=255) THEN
            OUTCOL:=OUTCOL+1;
        END IF;
        IF(OUTCOL=256) THEN
            OUTCOL:=0;
        END IF;
    END IF;



    IF(INCOL<=255) THEN
          INCOL:=INCOL+1;
    END IF;
    IF(INCOL=256) THEN
          INCOL:=0;
    END IF;

    WAIT FOR CLK_PERIOD/2;
END PROCESS always;
END IMG_LSB_arch;
