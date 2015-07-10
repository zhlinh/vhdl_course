--YUV2RGB entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY YUV2RGB IS
    PORT(CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         FIXED_Y_IN: IN COLOR;
         U_IN: IN COLOR;
         V_IN: IN COLOR;
         R_OUT: OUT COLOR;
         G_OUT: OUT COLOR;
         B_OUT: OUT COLOR);
END ENTITY YUV2RGB;
ARCHITECTURE ART1 OF YUV2RGB IS
BEGIN
    CLOCK: PROCESS(CLK,RESET)
    VARIABLE R_REG: COLOR;
    VARIABLE G_REG: COLOR;
    VARIABLE B_REG: COLOR;
    VARIABLE TEMP: INTEGER RANGE -512 TO 512;
    BEGIN
        IF(RESET='1') THEN
            R_OUT<=0;
            G_OUT<=0;
            B_OUT<=0;
        ELSIF(CLK'EVENT AND CLK='1') THEN
            TEMP:= FIXED_Y_IN + 113983*(V_IN-128)/100000;
            --调整
            IF(TEMP<0) THEN
                R_REG:=0;
            ELSIF(TEMP>255) THEN
                R_REG:=255;
            ELSE
                R_REG:=TEMP;
            END IF;
            TEMP:=FIXED_Y_IN - 39465*(U_IN-128)/100000 - 58060*(V_IN-128)/100000;
            --调整
            IF(TEMP<0) THEN
                G_REG:=0;
            ELSIF(TEMP>255) THEN
                G_REG:=255;
            ELSE
                G_REG:=TEMP;
            END IF;
            TEMP:=FIXED_Y_IN + 203211*(U_IN-128)/100000;
            --调整
            IF(TEMP<0) THEN
                B_REG:=0;
            ELSIF(TEMP>255) THEN
                B_REG:=255;
            ELSE
                B_REG:=TEMP;
            END IF;
            R_OUT<=R_REG;
            G_OUT<=G_REG;
            B_OUT<=B_REG;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;

