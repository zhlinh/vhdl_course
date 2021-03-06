--Alert
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALERT IS
PORT(	DATA_RANGE	:IN STD_LOGIC;
		CARRY_LABEL	:IN STD_LOGIC;
		D1_IN			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		D2_IN			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		D3_IN			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		D4_IN			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);

		D1_OUT		:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		D2_OUT		:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		D3_OUT		:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		BEEP			:OUT STD_LOGIC;
		RANGE_DISP	:OUT STD_LOGIC);

END ENTITY ALERT;

ARCHITECTURE ART1 OF ALERT IS
	BEGIN
		PROCESS(DATA_RANGE,D1_IN,D2_IN,D3_IN)
			BEGIN
			
			IF (DATA_RANGE='0') THEN
				IF	(D4_IN /= "0000")THEN
					D1_OUT <= "0000";
					D2_OUT <= "0000";
					D3_OUT <= "0000";			
					RANGE_DISP <= '0';
					BEEP <= '1';
				ELSE
					D1_OUT <= D1_IN;
					D2_OUT <= D2_IN;
					D3_OUT <= D3_IN;
					RANGE_DISP <= '0';				
					BEEP <= '0';
				END IF;

			ELSE	
				IF (CARRY_LABEL = '1') THEN
					D1_OUT <= "0000";
					D2_OUT <= "0000";
					D3_OUT <= "0000";
					RANGE_DISP <= '1';
					BEEP <= '1';
				ELSE
					D1_OUT <= D2_IN;
					D2_OUT <= D3_IN;
					D3_OUT <= D4_IN;
					RANGE_DISP <= '1';				
					BEEP <= '0';					
				END IF;		
			END IF;		
			
		END PROCESS;
END ARCHITECTURE ART1;
