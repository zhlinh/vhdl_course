--RGB2YUV entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.MYTYPE.ALL;
ENTITY RGB2YUV IS
    PORT(RESET: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         ENABLE: IN STD_LOGIC;
         R_IN: IN COLOR;
         G_IN: IN COLOR;
         B_IN: IN COLOR;
         Y_OUT: OUT COLOR;
         U_OUT: OUT COLOR;
         V_OUT: OUT COLOR);
END ENTITY RGB2YUV;
ARCHITECTURE ART1 OF RGB2YUV IS
BEGIN
    CLOCK: PROCESS(CLK,RESET,ENABLE)
		  VARIABLE Y_REG: COLOR;
		  VARIABLE U_REG: COLOR;
		  VARIABLE V_REG: COLOR;
        VARIABLE TEMP: INTEGER RANGE -512 TO 512;
    BEGIN
        IF(RESET='1' OR ENABLE='0') THEN
            Y_OUT<=0;
            U_OUT<=0;
            V_OUT<=0;
        ELSIF(CLK'EVENT AND CLK='1') THEN
            TEMP:=(299*R_IN + 587*G_IN + 114*B_IN)/1000;
            --调整
            IF(TEMP<0) THEN
                Y_REG:=0;
            ELSIF(TEMP>255) THEN
                Y_REG:=255;
            ELSE
                Y_REG:=TEMP;
            END IF;
            TEMP:=(-169*R_IN - 331*G_IN + 500*B_IN)/1000 + 128;
            --调整
            IF(TEMP<0) THEN
                U_REG:=0;
            ELSIF(TEMP>255) THEN
                U_REG:=255;
            ELSE
                U_REG:=TEMP;
            END IF;
            TEMP:=(500*R_IN - 419*G_IN - 81*B_IN)/1000 + 128;
            --调整
            IF(TEMP<0) THEN
                V_REG:=0;
            ELSIF(TEMP>255) THEN
                V_REG:=255;
            ELSE
                V_REG:=TEMP;
            END IF;
				Y_OUT<=Y_REG;
            U_OUT<=U_REG;
            V_OUT<=V_REG;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
