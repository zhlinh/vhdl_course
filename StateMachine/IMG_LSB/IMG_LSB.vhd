--Top-Level Entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--使用自定义程序包
USE WORK.MYTYPE.ALL;
ENTITY IMG_LSB IS
    PORT(CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         R_IN: IN COLOR;
         G_IN: IN COLOR;
         B_IN: IN COLOR;

         SEL: IN STD_LOGIC;

         A_COL: IN COLOR;
         A_ROW: IN COLOR;
         B_COL: IN COLOR;
         B_ROW: IN COLOR;
         C_COL: IN COLOR;
         C_ROW: IN COLOR;

         R_OUT: OUT COLOR;
         G_OUT: OUT COLOR;
         B_OUT: OUT COLOR;

         DETECT_RESULT: OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END ENTITY IMG_LSB;
ARCHITECTURE ART OF IMG_LSB IS
    COMPONENT RGB2YUV
        PORT(RESET: IN STD_LOGIC;
             CLK: IN STD_LOGIC;
             R_IN: IN COLOR;
             G_IN: IN COLOR;
             B_IN: IN COLOR;
             Y_OUT: OUT COLOR;
             U_OUT: OUT COLOR;
             V_OUT: OUT COLOR);
    END COMPONENT;

    COMPONENT CHOOSE
        PORT(RESET: IN STD_LOGIC;
             CLK: IN STD_LOGIC;
             SEL: IN STD_LOGIC;
             TO_INSERT: OUT STD_LOGIC;
             TO_DETECT: OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT LSB_INSERT
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
    END COMPONENT;

    COMPONENT YUV2RGB
        PORT(CLK: IN STD_LOGIC;
             RESET: IN STD_LOGIC;
             FIXED_Y_IN: IN COLOR;
             U_IN: IN COLOR;
             V_IN: IN COLOR;
             R_OUT: OUT COLOR;
             G_OUT: OUT COLOR;
             B_OUT: OUT COLOR);
    END COMPONENT;

    COMPONENT LSB_DETECT
        PORT(ENABLE: IN STD_LOGIC;
             CLK: IN STD_LOGIC;
             RESET: IN STD_LOGIC;
             Y_IN: IN COLOR;
             RESULT: OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
    END COMPONENT;

    SIGNAL Y_MID1: COLOR;
    SIGNAL U_MID1: COLOR;
    SIGNAL V_MID1: COLOR;

    SIGNAL TOIN_MID2: STD_LOGIC;
    SIGNAL TODE_MID2: STD_LOGIC;

    SIGNAL FIX_Y_MID3: COLOR;
    SIGNAL U_MID3: COLOR;
    SIGNAL V_MID3: COLOR;

BEGIN
INST_RGB2YUV: RGB2YUV PORT MAP(
        CLK=>CLK,
        RESET=>RESET,
        R_IN=>R_IN,
        B_IN=>B_IN,
        G_IN=>G_IN,
        Y_OUT=>Y_MID1,
        U_OUT=>U_MID1,
        V_OUT=>V_MID1
    );
INST_CHOOSE: CHOOSE PORT MAP(
        CLK=>CLK,
        RESET=>RESET,
        SEL=>SEL,
        TO_INSERT=>TOIN_MID2,
        TO_DETECT=>TODE_MID2
    );
INST_LSB_INSERT: LSB_INSERT PORT MAP(
        CLK=>CLK,
        RESET=>RESET,
        ENABLE=>TOIN_MID2,
        Y_IN=>Y_MID1,
        U_IN=>U_MID1,
        V_IN=>V_MID1,
        A_COL=>A_COL,
        A_ROW=>A_ROW,
        B_COL=>B_COL,
        B_ROW=>B_ROW,
        C_COL=>C_COL,
        C_ROW=>C_ROW,
        FIXED_Y_OUT=>FIX_Y_MID3,
        U_OUT=>U_MID3,
        V_OUT=>V_MID3
    );
INST_YUV2RGB: YUV2RGB PORT MAP(
        CLK=>CLK,
        RESET=>RESET,
        FIXED_Y_IN=>FIX_Y_MID3,
        U_IN=>U_MID3,
        V_IN=>V_MID3,
        R_OUT=>R_OUT,
        G_OUT=>G_OUT,
        B_OUT=>B_OUT
    );
INST_LSB_DETECT: LSB_DETECT PORT MAP(
        CLK=>CLK,
        RESET=>RESET,
        ENABLE=>TODE_MID2,
        Y_IN=>Y_MID1,
        RESULT=>DETECT_RESULT
    );
END ARCHITECTURE ART;
