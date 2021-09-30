library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.numeric_std_unsigned.all;
USE ieee.std_logic_unsigned.all;
use work.all;

entity register_file is
generic(
    N, M:integer
    );
port(
    wd: in std_logic_vector(N-1 downto 0);
    WAddr, RA, RB: IN std_logic_vector(M-1 downto 0);
    QA, QB : out std_logic_vector(N-1 downto 0); 
    clk, readA, readB, reset, write: in std_logic
);
end register_file; 

architecture behave of register_file is
    type regs_arr is array(0 to 2**M-1) of std_logic_vector(N-1 downto 0);
    signal regs: regs_arr:=(others => (others => '0'));
begin
    process(clk, reset)
    begin
        if reset = '1' then --switch to 1 for testbench
            regs<=(others => (others => '0'));
        elsif rising_edge(clk) then
            if write = '1' then
                regs(to_integer(unsigned(WAddr))) <= WD;
            end if;
        end if;
    end process;
    QA <= regs(to_integer(unsigned(RA))) when readA='1' else (others => '0');
    QB <= regs(to_integer(unsigned(RB))) when readB='1' else (others => '0');
end behave;