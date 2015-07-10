--HIDE_STR entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY HIDE_STR IS
    PORT(CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         ENABLE: IN STD_LOGIC;
         R_IN: IN COLOR;
         G_IN: IN COLOR;
         B_IN: IN COLOR;
         XX: IN COLOR;
         YY: IN COLOR;
         ZZ: IN INTEGER RANGE 0 TO 2;
         --VHDL中string的下标从1开始
         STR: IN STRING(1 TO 20);
         HR_OUT: OUT COLOR;
         HG_OUT: OUT COLOR;
         HB_OUT: OUT COLOR);
END ENTITY HIDE_STR;
ARCHITECTURE ART1 OF HIDE_STR IS
    SIGNAL INDEX: INTEGER RANGE 0 TO 65535;
    SIGNAL LEN: INTEGER RANGE 0 TO 65535;
BEGIN
    COMPUTE: PROCESS(XX,YY,STR)
    BEGIN
        INDEX<=YY+1+256*XX;
        LEN<= 8 * STR'LENGTH;
    END PROCESS;

    CLOCK: PROCESS(CLK,RESET,ENABLE)
        VARIABLE FIXED_REM: COLOR;
        VARIABLE COLOR_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
        --COUNT的范围是256*256
        VARIABLE COUNT: INTEGER RANGE 0 TO 65536;
        VARIABLE CHAR_I: INTEGER RANGE 0 TO 8;
        --STR_I的范围65535/8
        VARIABLE STR_I: INTEGER RANGE 1 TO 8192;
        VARIABLE CHAR_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
    BEGIN
        IF(RESET='1' OR ENABLE='0') THEN
            HR_OUT<=0;
            HG_OUT<=0;
            HB_OUT<=0;
            COUNT:=0;
            CHAR_I:=0;
            --VHDL中string的下标从1开始
            STR_I:=1;
        ELSIF(COUNT=65536) THEN
            HR_OUT<=0;
            HG_OUT<=0;
            HB_OUT<=0;
        ELSIF(CLK'EVENT AND CLK='1') THEN
            COUNT:=COUNT+1;
            IF(ZZ=0) THEN
                IF( (COUNT>=INDEX) AND (COUNT<INDEX+LEN)) THEN
                    -- 取出8 bit 数据
                    COLOR_REM := CONV_STD_LOGIC_VECTOR(R_IN, 8);
                    IF(CHAR_I=0) THEN
                        CHAR_REM:=CONV_TO_VECTOR(STR(STR_I));
                    END IF;
                    -- 更改 LSB位
                    COLOR_REM(0):= CHAR_REM(CHAR_I);
                    -- 将更改输出
                    HR_OUT<= CONV_INTEGER(UNSIGNED(COLOR_REM));
                    IF(CHAR_I<=7) THEN
                        CHAR_I:=CHAR_I+1;
                    END IF;
                    IF(CHAR_I=8) THEN
                        CHAR_I:=0;
                        STR_I:=STR_I+1;
                    END IF;
                ELSE
                    HR_OUT<=R_IN;
                END IF;
                HB_OUT<=B_IN;
                HG_OUT<=G_IN;
            ELSIF(ZZ=1) THEN
                IF( (COUNT>=INDEX) AND (COUNT<INDEX+LEN)) THEN
                    -- 取出8 bit 数据
                    COLOR_REM := CONV_STD_LOGIC_VECTOR(G_IN, 8);
                    IF(CHAR_I=0) THEN
                        CHAR_REM:=CONV_TO_VECTOR(STR(STR_I));
                    END IF;
                    -- 更改 LSB位
                    COLOR_REM(0):= CHAR_REM(CHAR_I);
                    -- 将更改输出
                    HG_OUT<= CONV_INTEGER(UNSIGNED(COLOR_REM));
                    IF(CHAR_I<=7) THEN
                        CHAR_I:=CHAR_I+1;
                    END IF;
                    IF(CHAR_I=8) THEN
                        CHAR_I:=0;
                        STR_I:=STR_I+1;
                    END IF;
                ELSE
                    HG_OUT<=G_IN;
                END IF;
                HR_OUT<=R_IN;
                HB_OUT<=B_IN;
            ELSIF(ZZ=2) THEN
                IF( (COUNT>=INDEX) AND (COUNT<INDEX+LEN)) THEN
                    -- 取出8 bit 数据
                    COLOR_REM := CONV_STD_LOGIC_VECTOR(B_IN, 8);
                    IF(CHAR_I=0) THEN
                        CHAR_REM:=CONV_TO_VECTOR(STR(STR_I));
                    END IF;
                    -- 更改 LSB位
                    COLOR_REM(0):= CHAR_REM(CHAR_I);
                    -- 将更改输出
                    HB_OUT<= CONV_INTEGER(UNSIGNED(COLOR_REM));
                    IF(CHAR_I<=7) THEN
                        CHAR_I:=CHAR_I+1;
                    END IF;
                    IF(CHAR_I=8) THEN
                        CHAR_I:=0;
                        STR_I:=STR_I+1;
                    END IF;
                ELSE
                    HB_OUT<=B_IN;
                END IF;
                HR_OUT<=R_IN;
                HG_OUT<=G_IN;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
