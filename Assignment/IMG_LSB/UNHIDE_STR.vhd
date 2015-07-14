--UNHIDE_STR entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY UNHIDE_STR IS
    PORT(CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         ENABLE: IN STD_LOGIC;
         R_IN: IN COLOR;
         G_IN: IN COLOR;
         B_IN: IN COLOR;
         XX: IN COLOR;
         YY: IN COLOR;
         ZZ: IN INTEGER RANGE 0 TO 2;
         STR_LEN: IN INTEGER RANGE 0 TO 8192;
         CHAR_OUT: OUT CHARACTER);
END ENTITY UNHIDE_STR;
ARCHITECTURE ART1 OF UNHIDE_STR IS
    SIGNAL INDEX: INTEGER RANGE 0 TO 65535;
    SIGNAL LEN: INTEGER RANGE 0 TO 65535;
BEGIN
    COMPUTE: PROCESS(XX,YY,STR_LEN)
    BEGIN
        INDEX<=256*XX+YY+1;
        LEN<= 8 * STR_LEN;
    END PROCESS;

    CLOCK: PROCESS(CLK,RESET,ENABLE)
        VARIABLE FIXED_REM: COLOR;
        VARIABLE COLOR_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
        --COUNT的范围是256*256
        VARIABLE COUNT: INTEGER RANGE 0 TO 65536;
        VARIABLE CHAR_I: INTEGER RANGE 0 TO 8;
        --STR_I的范围65535/8
        VARIABLE CHAR_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
    BEGIN
        IF(RESET='1' OR ENABLE='0') THEN
            CHAR_OUT<=CHARACTER'VAL(0);
            COUNT:=0;
            CHAR_I:=0;
        ELSIF(COUNT=65536) THEN
            CHAR_OUT<=CHARACTER'VAL(0);
        ELSIF(CLK'EVENT AND CLK='1') THEN
            COUNT:=COUNT+1;
            IF( (COUNT>=INDEX) AND (COUNT<INDEX+LEN)) THEN
                -- 取出8 bit 数据
                IF(ZZ=0) THEN
                    COLOR_REM := CONV_STD_LOGIC_VECTOR(R_IN, 8);
                ELSIF(ZZ=1) THEN
                    COLOR_REM := CONV_STD_LOGIC_VECTOR(G_IN, 8);
                ELSE
                    COLOR_REM := CONV_STD_LOGIC_VECTOR(B_IN, 8);
                END IF;
                -- 取出LSB位
                CHAR_REM(CHAR_I):=COLOR_REM(0);
                IF(CHAR_I=7) THEN
                    -- 将CHAR输出
                    CHAR_OUT<=CONV_TO_CHAR(CHAR_REM);
                END IF;
                IF(CHAR_I<=7) THEN
                    CHAR_I:=CHAR_I+1;
                END IF;
                IF(CHAR_I=8) THEN
                    CHAR_I:=0;
                END IF;
            ELSE
                CHAR_OUT<=CHARACTER'VAL(0);
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;

