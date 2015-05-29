--Scanner Entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY SCANNER IS
    PORT ( CLK_SCAN : IN  STD_LOGIC;
			  RESET: IN STD_LOGIC;
           DIN12 : IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
           NUM : OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
           SEL : OUT  STD_LOGIC_VECTOR (1 DOWNTO 0));
END ENTITY SCANNER;

ARCHITECTURE ART1 OF SCANNER IS
	SIGNAL SEL_REG : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN 
	PROCESS(SEL_REG)
	BEGIN
		SEL <= SEL_REG;		
	END PROCESS;
	PROCESS(CLK_SCAN,RESET)
	BEGIN
		IF(RESET='0') THEN
			SEL_REG <= "00";
		ELSIF(CLK_SCAN'EVENT AND CLK_SCAN='1') THEN
			IF (SEL_REG = "11") THEN
				SEL_REG <= "01";
			ELSE
				SEL_REG <= SEL_REG + 1;
			END IF;
		END IF;
	END PROCESS;
  
	PROCESS(SEL_REG)
	BEGIN
		CASE(SEL_REG) IS
			WHEN "01" => 
				NUM <= DIN12(3 DOWNTO 0);
			WHEN "10" =>
				NUM <= DIN12(7 DOWNTO 4);
			WHEN "11" =>
				NUM <= DIN12(11 DOWNTO 8);
			WHEN OTHERS =>
				NUM <= (OTHERS=> '0');
		END CASE;
	END PROCESS;
END ARCHITECTURE ART1;