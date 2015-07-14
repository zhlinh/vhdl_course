--LSB_INSERT entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY LSB_INSERT IS
    PORT(ENABLE: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         Y_IN: IN COLOR;
         U_IN: IN COLOR;
         V_IN: IN COLOR;

         A_COL: IN COLOR;
         A_ROW: IN COLOR;

         B_COL: IN COLOR;
         B_ROW: IN COLOR;

         C_COL: IN COLOR;
         C_ROW: IN COLOR;

         FIXED_Y_OUT: OUT COLOR;
         U_OUT: OUT COLOR;
         V_OUT: OUT COLOR);
END ENTITY LSB_INSERT;
ARCHITECTURE ART1 OF LSB_INSERT IS
    CONSTANT SEQ1: STD_LOGIC_VECTOR(0 TO 4):="01101";
    CONSTANT SEQ2: STD_LOGIC_VECTOR(0 TO 4):="10101";
    CONSTANT SEQ3: STD_LOGIC_VECTOR(0 TO 4):="11001";

    SIGNAL AA: INTEGER RANGE 0 TO 65535;
    SIGNAL BB: INTEGER RANGE 0 TO 65535;
    SIGNAL CC: INTEGER RANGE 0 TO 65535;
BEGIN
    COMPUTE: PROCESS(A_ROW,A_COL,B_ROW,B_COL,C_ROW,C_COL)
    BEGIN
        AA<=256*A_ROW+A_COL+1;
        BB<=256*B_ROW+B_COL+1;
        CC<=256*C_ROW+C_COL+1;
    END PROCESS;

    CLOCK: PROCESS(CLK,RESET,ENABLE)
        VARIABLE FIXED_Y_REM: COLOR;
        VARIABLE GREY_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
        VARIABLE SEQ1_I: INTEGER RANGE 0 TO 9;
        VARIABLE SEQ2_I: INTEGER RANGE 0 TO 9;
        VARIABLE SEQ3_I: INTEGER RANGE 0 TO 9;
        --COUNT的范围是256*256
        VARIABLE COUNT: INTEGER RANGE 0 TO 65536;
    BEGIN
        IF(RESET='1' OR ENABLE='0') THEN
            COUNT:=0;
            SEQ1_I:=0;
            SEQ2_I:=0;
            SEQ3_I:=0;
            FIXED_Y_OUT<=0;
            U_OUT<=0;
            V_OUT<=0;
        ELSIF(COUNT=65536) THEN
            FIXED_Y_OUT<=0;
            U_OUT<=0;
            V_OUT<=0;
        ELSIF(CLK'EVENT AND CLK='1') THEN
            IF( (COUNT>=AA) AND (COUNT<=AA+SEQ1'HIGH)) THEN
                -- 取出灰度的8 bit 数据
                GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN, 8);
                -- 更改 LSB位
                GREY_REM(0):= SEQ1(SEQ1_I);
                SEQ1_I:=SEQ1_I+1;
                -- 将更改输出
                FIXED_Y_REM:= CONV_INTEGER(UNSIGNED(GREY_REM));
                FIXED_Y_OUT<= FIXED_Y_REM;
            ELSIF( (COUNT>=BB) AND (COUNT<=BB+SEQ2'HIGH)) THEN
                -- 取出灰度的8 bit 数据
                GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN, 8);
                -- 更改 LSB位
                GREY_REM(0):= SEQ2(SEQ2_I);
                SEQ2_I:=SEQ2_I+1;
                -- 将更改输出
                FIXED_Y_REM:= CONV_INTEGER(UNSIGNED(GREY_REM));
                FIXED_Y_OUT<= FIXED_Y_REM;
            ELSIF( (COUNT>=CC) AND (COUNT<=CC+SEQ3'HIGH)) THEN
                -- 取出灰度的8 bit 数据
                GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN, 8);
                -- 更改 LSB位
                GREY_REM(0):= SEQ3(SEQ3_I);
                SEQ3_I:=SEQ3_I+1;
                -- 将更改输出
                FIXED_Y_REM:= CONV_INTEGER(UNSIGNED(GREY_REM));
                FIXED_Y_OUT<= FIXED_Y_REM;
            ELSE
                FIXED_Y_OUT<=Y_IN;
            END IF;
            U_OUT<=U_IN;
            V_OUT<=V_IN;
            COUNT:=COUNT+1;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
