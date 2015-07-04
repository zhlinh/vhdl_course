LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.MYTYPE.ALL;
ENTITY RGB2YUV IS
    PORT(ENABLE: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         R_IN: IN MATRIX;
         G_IN: IN MATRIX;
         B_IN: IN MATRIX;
         Y_OUT: OUT MATRIX;
         U_OUT: OUT MATRIX;
         V_OUT: OUT MATRIX;
         FINISHED: OUT STD_LOGIC);
END ENTITY RGB2YUV;
ARCHITECTURE ART1 OF RGB2YUV IS
    VARIABLE R:INTEGER;
    VARIABLE G:INTEGER;
    VARIABLE B:INTEGER;
    VARIABLE Y_REG: MATRIX;
    VARIABLE U_REG: MATRIX;
    VARIABLE V_REG: MATRIX;
BEGIN
    TRANSFORM: PROCESS(ENABLE)
    BEGIN
        IF(ENABLE'EVENT AND ENABLE='1') THEN
            FOR i IN 0 TO 255 LOOP
                FOR j IN 0 TO 255 LOOP
                    R:=R_IN(i,j);
                    G:=G_IN(i,j);
                    B:=B_IN(i,j);
                    Y_REG(i,j):=(299*R + 587*G + 114*B)/1000;
                    U_REG(i,j):=(-147*R - 289*G + 436*B)/1000;
                    V_REG(i,j):=(615*R - 515*G - 100*B)/1000;
                END LOOP;
            END LOOP;
        END IF;
    END PROCESS;

    CLOCK: PROCESS(CLK,RESET)
    BEGIN
        IF(RESET='1') THEN
            FINISHED<='0';
        ELSIF(CLK'EVENT AND CLK='1') THEN
            Y_OUT<=Y_REG;
            U_OUT<=U_REG;
            V_OUT<=V_REG;
            FINISHED<='1';
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
