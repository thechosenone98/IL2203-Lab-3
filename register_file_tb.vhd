library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
--use ieee.numeric_std_unsigned.all;
USE ieee.std_logic_unsigned.all;
use work.all; 

entity register_file_tb is 
end register_file_tb; 

architecture tb of register_file_tb is

    function chr(sl: std_logic) return character is
        variable c: character;
        begin
          case sl is
             when 'U' => c:= 'U';
             when 'X' => c:= 'X';
             when '0' => c:= '0';
             when '1' => c:= '1';
             when 'Z' => c:= 'Z';
             when 'W' => c:= 'W';
             when 'L' => c:= 'L';
             when 'H' => c:= 'H';
             when '-' => c:= '-';
          end case;
        return c;
       end chr;

    function str(slv: std_logic_vector) return string is
        variable result : string (1 to slv'length);
        variable r : integer;
      begin
        r := 1;
        for i in slv'range loop
           result(r) := chr(slv(i));
           r := r + 1;
        end loop;
        return result;
      end str;


    function createVectorAlternate(size : POSITIVE) return STD_LOGIC_VECTOR is
        variable temp : STD_LOGIC_VECTOR(size - 1 downto 0);
      begin
        for i in 0 to size - 1 loop
          if (i mod 2 = 0) then
            temp(i) := '0';
          else
            temp(i) := '1';
          end if;
        end loop;
        return temp;
      end function;

    constant clk_hz : integer := 100e6;
    constant clk_period : time := 1 sec / clk_hz;

    
    constant N : integer:= 32;
    constant M : integer:= 3;
    
    signal test_vec : std_logic_vector(N-1 downto 0) := createVectorAlternate(N);
    
    signal wd: std_logic_vector(N-1 downto 0) := (others => '0');
    signal WAddr, RA, RB: std_logic_vector(M-1 downto 0) := (others => '0');
    signal QA, QB: std_logic_vector(N-1 downto 0) := (others => '0'); 
    signal clk, readA, readB, reset, write: std_logic := '0';

begin
    clk <= not clk after clk_period / 2;

    RF: entity work.register_file(behave)
    generic map(
        N => N,
        M => M
        )
    port map(
        wd=>wd,
        WAddr=>WAddr,
        ra=>ra,
        rb=>rb,
        QA=>QA,
        QB=>QB,
        clk=>clk,
        readA=>readA,
        readB=>readB,
        reset=>reset,
        write=>write
        );
        
    process
    begin
        --Reset the register file
        reset <='1';
        wait until rising_edge(clk);
        reset <='0';
        write <= '1';
        wait until rising_edge(clk);
        --Write to every address possible (alt. between 1010... and 0101...)
        for i in 0 to 2**M-1 loop
            WAddr <= std_logic_vector(to_unsigned(i, WAddr'length));
            if i mod 2 = 0 then
                wd <= test_vec;
            else
                wd <= not test_vec;
            end if;
            wait until rising_edge(clk);
        end loop;

        --Read back from memory and assert that everything is OK
        readA <= '1';
        readB <= '1';
        for j in 0 to 2**M-1 loop
            --wait until rising_edge(clk);
            RA <= std_logic_vector(to_unsigned(j, RA'length));
            RB <= std_logic_vector(to_unsigned(j, RB'length));
            wait until rising_edge(clk);
            wait until falling_edge(clk);
            if j mod 2 = 0 then
                assert QA = test_vec and QB = test_vec
                    report "Error on memory block " & Integer'image(j) & ". Should be " & str(test_vec) & " but is " & str(QA)
                    severity warning;
            else
                assert QA = not test_vec and QB = not test_vec
                    report "Error on memory block" & Integer'image(j) & ". Should be " & str(not test_vec) & " but is " & str(QA)
                    severity warning;
            end if;
        end loop;
    end process; 
end tb;
