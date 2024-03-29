library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity g51_segment_decoder is
	Port( code: in std_logic_vector(3 downto 0);
		  segments: out std_logic_vector(6 downto 0)
	);
end g51_segment_decoder;
architecture transformer of g51_segment_decoder is 
	begin
		segments(0) <= (not code(0) and not code(1) and code(2) and not code(3)) OR 
							(code(0) and not code(1) and not code(2) and not code(3)) OR
							(code(0) and code(1) and not code(2) and code(3)) OR
							(code(0) and not code(1) and code(2) and code(3));

		segments(1) <= (not code(0) and code(1) and code(2)) OR
							(code(0) and code(1) and code(3)) OR
							(not code(0) and code(2) and code(3)) OR
							(code(1) and code(2) and code(3)) OR
							(code(0) and not code(1) and code(2) and not code(3));
							
		segments(2) <= (not code(0) and code(1) and not code(2) and not code(3)) OR
							(not code(0) and code(2) and code(3)) OR
							(code(1) and code(2) and code(3));
		
		segments(3) <= (not code(0) and not code(1) and code(2) and not code(3)) OR 
							(not code(0) and code(1) and not code(2) and code(3)) OR 
							(code(0) and not code(1) and not code(2) and not code(3)) OR 
							(code(0) and code(1) and code(2));
							
		segments(4) <= (code(2) and not code(1) and not code(3)) OR 
							(code(0) and not code(1) and not code(2)) OR
							(code(0) and not code(3));
							
		segments(5) <= (code(0) and not code(1) and code(2) and code(3)) OR
							(code(0) and code(1) and not code(3)) OR
							(code(1) and not code(2) and not code(3)) OR
							(code(0) and not code(2) and not code(3));
							
		segments(6) <= (not code(0) and not code(1) and code(2) and code(3)) OR 
							(code(0) and code(1) and code(2) and not code(3)) OR 
							(not code(1) and not code(2) and not code(3));
							
	end transformer;