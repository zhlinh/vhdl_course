--LSB_DETECT entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY LSB_DETECT IS
    PORT(ENABLE: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         Y_IN: IN COLOR;
         RESULT: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY LSB_DETECT;
ARCHITECTURE ART1 OF LSB_DETECT IS
    TYPE A_STATETYPE IS (SA1,SA2,SA3,SA4,SA5,SA6);
    TYPE B_STATETYPE IS (SB1,SB2,SB3,SB4,SB5,SB6);
    TYPE C_STATETYPE IS (SC1,SC2,SC3,SC4,SC5,SC6);
    SIGNAL A_PRESENT_STATE,A_NEXT_STATE: A_STATETYPE;
    SIGNAL B_PRESENT_STATE,B_NEXT_STATE: B_STATETYPE;
    SIGNAL C_PRESENT_STATE,C_NEXT_STATE: C_STATETYPE;
    SIGNAL DIN: STD_LOGIC;
BEGIN
    COMB_PROCESS_1: PROCESS(DIN,A_PRESENT_STATE)
    BEGIN
        CASE A_PRESENT_STATE IS
            WHEN SA1=> RESULT(0)<='0';
                IF DIN='0' THEN
                    A_NEXT_STATE<=SA2;
                ELSE
                    A_NEXT_STATE<=SA1;
                END IF;
            WHEN SA2=> RESULT(0)<='0';
                IF DIN='0' THEN
                    A_NEXT_STATE<=SA2;
                ELSE
                    A_NEXT_STATE<=SA3;
                END IF;
            WHEN SA3=> RESULT(0)<='0';
                IF DIN='0' THEN
                    A_NEXT_STATE<=SA2;
                ELSE
                    A_NEXT_STATE<=SA4;
                END IF;
            WHEN SA4=> RESULT(0)<='0';
                IF DIN='0' THEN
                    A_NEXT_STATE<=SA5;
                ELSE
                    A_NEXT_STATE<=SA1;
                END IF;
            WHEN SA5=> RESULT(0)<='0';
                IF DIN='0' THEN
                    A_NEXT_STATE<=SA2;
                ELSE
                    A_NEXT_STATE<=SA6;
                END IF;
            WHEN SA6=> RESULT(0)<='1';
                IF DIN='0' THEN
                    A_NEXT_STATE<=SA2;
                ELSE
                    A_NEXT_STATE<=SA1;
                END IF;
        END CASE;
    END PROCESS;

    COMB_PROCESS_2: PROCESS(DIN,B_PRESENT_STATE)
    BEGIN
        CASE B_PRESENT_STATE IS
            WHEN SB1=> RESULT(1)<='0';
                IF DIN='0' THEN
                    B_NEXT_STATE<=SB1;
                ELSE
                    B_NEXT_STATE<=SB2;
                END IF;
            WHEN SB2=> RESULT(1)<='0';
                IF DIN='0' THEN
                    B_NEXT_STATE<=SB3;
                ELSE
                    B_NEXT_STATE<=SB2;
                END IF;
            WHEN SB3=> RESULT(1)<='0';
                IF DIN='0' THEN
                    B_NEXT_STATE<=SB1;
                ELSE
                    B_NEXT_STATE<=SB4;
                END IF;
            WHEN SB4=> RESULT(1)<='0';
                IF DIN='0' THEN
                    B_NEXT_STATE<=SB5;
                ELSE
                    B_NEXT_STATE<=SB2;
                END IF;
            WHEN SB5=> RESULT(1)<='0';
                IF DIN='0' THEN
                    B_NEXT_STATE<=SB1;
                ELSE
                    B_NEXT_STATE<=SB6;
                END IF;
            WHEN SB6=> RESULT(1)<='1';
                IF DIN='0' THEN
                    B_NEXT_STATE<=SB1;
                ELSE
                    B_NEXT_STATE<=SB2;
                END IF;
        END CASE;
    END PROCESS;

    COMB_PROCESS_3: PROCESS(DIN,C_PRESENT_STATE)
    BEGIN
        CASE C_PRESENT_STATE IS
            WHEN SC1=> RESULT(2)<='0';
                IF DIN='0' THEN
                    C_NEXT_STATE<=SC1;
                ELSE
                    C_NEXT_STATE<=SC2;
                END IF;
            WHEN SC2=> RESULT(2)<='0';
                IF DIN='0' THEN
                    C_NEXT_STATE<=SC1;
                ELSE
                    C_NEXT_STATE<=SC3;
                END IF;
            WHEN SC3=> RESULT(2)<='0';
                IF DIN='0' THEN
                    C_NEXT_STATE<=SC4;
                ELSE
                    C_NEXT_STATE<=SC3;
                END IF;
            WHEN SC4=> RESULT(2)<='0';
                IF DIN='0' THEN
                    C_NEXT_STATE<=SC5;
                ELSE
                    C_NEXT_STATE<=SC2;
                END IF;
            WHEN SC5=> RESULT(2)<='0';
                IF DIN='0' THEN
                    C_NEXT_STATE<=SC1;
                ELSE
                    C_NEXT_STATE<=SC6;
                END IF;
            WHEN SC6=> RESULT(2)<='1';
                IF DIN='0' THEN
                    C_NEXT_STATE<=SC1;
                ELSE
                    C_NEXT_STATE<=SC2;
                END IF;
        END CASE;
    END PROCESS;

    DATA_IN: PROCESS(Y_IN)
    VARIABLE GREY_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
    BEGIN
        -- 取出灰度的8 bit 数据
        GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN, 8);
        -- 取出LSB 位
        DIN<=GREY_REM(0);
    END PROCESS;

    CLK_PROCESS: PROCESS(CLK,RESET,ENABLE)
    BEGIN
        IF(RESET='1'OR ENABLE='0') THEN
            A_PRESENT_STATE<=SA1;
            B_PRESENT_STATE<=SB1;
            C_PRESENT_STATE<=SC1;
        ELSIF(CLK'EVENT AND CLK='1') THEN
            A_PRESENT_STATE<=A_NEXT_STATE;
            B_PRESENT_STATE<=B_NEXT_STATE;
            C_PRESENT_STATE<=C_NEXT_STATE;
        END IF;
    END PROCESS;
END ARCHITECTURE;


