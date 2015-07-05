LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.MYTYPE.ALL;
ENTITY RGB2YUV IS
    PORT(RESET: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         R_IN: IN COLOR;
         G_IN: IN COLOR;
         B_IN: IN COLOR;
         Y_OUT: OUT COLOR;
         U_OUT: OUT COLOR;
         V_OUT: OUT COLOR);
END ENTITY RGB2YUV;
ARCHITECTURE ART1 OF RGB2YUV IS
    SIGNAL Y_REG: COLOR;
    SIGNAL U_REG: COLOR;
    SIGNAL V_REG: COLOR;
BEGIN
    TRANSFORM: PROCESS(R_IN,G_IN,B_IN)
    VARIABLE TEMP: INTEGER RANGE -512 TO 512;
    BEGIN
        TEMP:=(299*R_IN + 587*G_IN + 114*B_IN)/1000;
        --调整
        IF(TEMP<16) THEN
            Y_REG<=16;
        ELSIF(TEMP>255) THEN
            Y_REG<=255;
        ELSE
            Y_REG<=TEMP;
        END IF;
        TEMP:=(-147*R_IN - 289*G_IN + 436*B_IN)/1000;
        --调整
        IF(TEMP<0) THEN
            U_REG<=0;
        ELSIF(TEMP>255) THEN
            U_REG<=255;
        ELSE
            U_REG<=TEMP;
        END IF;
        TEMP:=(615*R_IN - 515*G_IN - 100*B_IN)/1000;
        --调整
        IF(TEMP<0) THEN
            V_REG<=0;
        ELSIF(TEMP>255) THEN
            V_REG<=255;
        ELSE
            V_REG<=TEMP;
        END IF;
    END PROCESS;

    CLOCK: PROCESS(CLK,RESET)
    BEGIN
        IF(RESET='1') THEN
            Y_OUT<=0;
            U_OUT<=0;
            V_OUT<=0;
        ELSIF(CLK'EVENT AND CLK='1') THEN
            Y_OUT<=Y_REG;
            U_OUT<=U_REG;
            V_OUT<=V_REG;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
