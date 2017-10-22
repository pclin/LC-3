-- ALU (Arithmetic and Logic Unit)
-- 4 bits only

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY alu IS
	PORT(	
		A   : IN std_logic_vector(3 DOWNTO 0);
		B   : IN std_logic_vector(3 DOWNTO 0);
		Sel : IN std_logic_vector(2 DOWNTO 0);
		Ans : OUT std_logic_vector(7 DOWNTO 0)  
	);
END alu;

ARCHITECTURE rtl OF alu IS
BEGIN			   
	PROCESS(A, B, Sel)
	BEGIN
		CASE Sel IS
			WHEN "000" =>
				Ans <= "0000" & (A + B);
			WHEN "001" =>
				Ans <= "0000" & (A + (not B) + 1);
			WHEN "010" =>
				Ans <= "0000" & (A and B);
			WHEN "011" =>
				Ans <= "0000" & (A or B);
			WHEN "100" =>
				Ans <= A * B;
			WHEN OTHERS =>	 --������0
				Ans <= (OTHERS => '0');
			END CASE;
	END PROCESS;
END rtl;
