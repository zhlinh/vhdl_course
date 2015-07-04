LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY LSB_DETECT IS
    PORT(ENABLE: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         Y_IN: IN MATRIX;
         RESULT: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
         ALL_FINISHED: BUFFER STD_LOGIC);
END ENTITY LSB_DETECT;
ARCHITECTURE ART1 OF LSB_DETECT IS
    TYPE STATETYPE IS (S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15);
    SIGNAL PRESENT_STATE,NEXT_STATE: STATETYPE;
    VARIABLE GREY_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
    VARIABLE DIN: STD_LOGIC;
    VARIABLE I: INTEGER;
    VARIABLE J: INTEGER;
BEGIN
    COMB_PROCESS_1: PROCESS(DIN,PRESENT_STATE)
    BEGIN
        CASE PRESENT_STATE IS
            WHEN S1=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S3;
					 END IF;
            WHEN S2=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S4;
					 END IF;
            WHEN S3=>IF DIN='0' THEN
                    NEXT_STATE<=S5;
                ELSE
                    NEXT_STATE<=S6;
					 END IF;
            WHEN S4=>IF DIN='0' THEN
                    NEXT_STATE<=S5;
                ELSE
                    NEXT_STATE<=S7;
					 END IF;
            WHEN S5=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S8;
					 END IF;
            WHEN S6=>IF DIN='0' THEN
                    NEXT_STATE<=S9;
                ELSE
                    NEXT_STATE<=S6;
					 END IF;
            WHEN S7=>IF DIN='0' THEN
                    NEXT_STATE<=S10;
                ELSE
                    NEXT_STATE<=S6;
					 END IF;
            WHEN S8=>IF DIN='0' THEN
                    NEXT_STATE<=S11;
                ELSE
                    NEXT_STATE<=S7;
					 END IF;
            WHEN S9=>IF DIN='0' THEN
                    NEXT_STATE<=S12;
                ELSE
                    NEXT_STATE<=S8;
					 END IF;
            WHEN S10=>IF DIN='0' THEN
                    NEXT_STATE<=S12;
                ELSE
                    NEXT_STATE<=S13;
					 END IF;
            WHEN S11=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S14;
					 END IF;
            WHEN S12=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S15;
					 END IF;
            WHEN S13=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S3;
					 END IF;
            WHEN S14=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S3;
					 END IF;
            WHEN S15=>IF DIN='0' THEN
                    NEXT_STATE<=S2;
                ELSE
                    NEXT_STATE<=S3;
					 END IF;
        END CASE;
    END PROCESS;

    COMB_PROCESS_2: PROCESS(PRESENT_STATE)
    BEGIN
        CASE PRESENT_STATE IS
            WHEN S13=>RESULT<="01";
            WHEN S14=>RESULT<="10";
            WHEN S15=>RESULT<="11";
            WHEN OTHERS=>RESULT<="00";
        END CASE;
    END PROCESS;

    CLK_PROCESS: PROCESS(CLK,RESET)
    BEGIN
        IF(RESET='1') THEN
            PRESENT_STATE<=S1;
            NEXT_STATE<=S1;
            I:=0;
            J:=0;
        ELSIF(CLK'EVENT AND CLK='1') THEN
            IF(ENABLE='1') THEN
                IF(J<=255) THEN
                    J:=J+1;
                ELSIF(I<=255) THEN
                    J:=0;
                    I:=I+1;
                ELSE
                    ALL_FINISHED<='1';
                END IF;
                IF(ALL_FINISHED/='1') THEN
                    -- 取出灰度的8 bit 数据
                    GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN(I, J), 8);
                    -- 取出LSB 位
                    DIN:=GREY_REM(0);
                    PRESENT_STATE<=NEXT_STATE;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;


