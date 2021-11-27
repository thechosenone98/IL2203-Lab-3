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
        Z_Flag, N_Flag, O_Flag : out std_logic;
        en : in std_logic
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

      signal sum_tmp : std_logic_vector(N-1 downto 0);

begin
    process(A, B, Op)
    begin
        case Op is
            when "000" => sum_tmp <= std_logic_vector(signed(A)+signed(B));
            when "001" => sum_tmp <= std_logic_vector(signed(A)-signed(B));
            when "010" => sum_tmp <= A AND B;
            when "011" => sum_tmp <= A OR B;
            when "100" => sum_tmp <= A XOR B;
            when "101" => sum_tmp <= NOT A;
            when "110" => sum_tmp <= A;
            when "111" => sum_tmp <= A + 1;
            when others => sum_tmp <= (others => '0');
        end case;
    end process;
    Sum <= sum_tmp when (en = '1') else (others => '0');
    Z_Flag <= and_reduct(NOT Sum) when (en = '1') else '0';
    N_Flag <= Sum(N-1) when (en = '1') else '0';
    -- Overflow occurs when either adding two positive and getting a negative (001),
    -- Adding two negative and getting a positive (110),
    -- Subtracting a negative from a positive and getting a negative (011),
    -- Subtracting a positive from a negative and getting a positive (100)
    O_Flag <= '1' when ((en = '1') AND (Op = "000") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "001")) else
              '1' when ((en = '1') AND (Op = "000") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "110")) else
              '1' when ((en = '1') AND (Op = "001") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "011")) else
              '1' when ((en = '1') AND (Op = "001") AND (std_logic_vector'(A(N-1) & B(N-1) & Sum(N-1)) = "100")) else
              '0';
end architecture;