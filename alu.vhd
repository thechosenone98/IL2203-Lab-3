library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std_unsigned.all;

entity alu is
    generic (
        N : integer := 7
    );
    port (
        A, B : in std_logic_vector(N-1 downto 0);
        Op : in std_logic_vector(2 downto 0);
        Sum : buffer std_logic_vector(N-1 downto 0);
        Z_Flag, N_Flag, O_Flag, en : out std_logic
    );
end alu;

architecture behave of alu is

    function and_reduct(slv : in std_logic_vector) return std_logic is
        variable res_v : std_logic := '1';  -- Null slv vector will also return '1'
      begin
        for i in slv'range loop
          res_v := res_v and slv(i);
        end loop;
        return res_v;
      end function;

begin
    process(A, B, Op)
    begin
        case Op is
            when "000" => Sum <= std_logic_vector(signed(A)+signed(B));
            when "001" => Sum <= std_logic_vector(signed(A)-signed(B));
            when "010" => Sum <= A AND B;
            when "011" => Sum <= A OR B;
            when "100" => Sum <= A XOR B;
            when "101" => Sum <= NOT A;
            when "110" => Sum <= A;
            when "111" => Sum <= A + 1;
            when others => Sum <= (others => '0');
        end case;
    end process;
    Z_Flag <= and_reduct(NOT Sum);
    N_Flag <= Sum(N-1);
    -- Overflow occurs when either adding two positive and getting a negative (001),
    -- Adding two negative and getting a positive (110),
    -- Subtracting a negative from a positive and getting a negative (011),
    -- Subtracting a positive from a negative and getting a positive (100)
    O_Flag <= '1' when ((Op = "000") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "001")) else
              '1' when ((Op = "000") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "110")) else
              '1' when ((Op = "001") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "011")) else
              '1' when ((Op = "001") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "100")) else
              '0';
end architecture;