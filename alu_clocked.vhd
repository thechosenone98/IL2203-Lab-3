library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_clocked is
    generic(
        N : integer := 8
    );
    port (
        A, B : in std_logic_vector(N-1 downto 0);
        Op   : in std_logic_vector(2 downto 0);
        clk  : in std_logic;
        rst  : in std_logic;
        en   : in std_logic;
        res  : out std_logic_vector(N-1 downto 0);
        Z_Flag, N_Flag, O_Flag : out std_logic
    );
end alu_clocked;

architecture structural of alu_clocked is
    signal Sum_clocked : std_logic_vector(N-1 downto 0);
    signal Z_Flag_clocked, N_Flag_clocked, O_Flag_clocked : std_logic;
begin
    ALU : entity work.alu(behave)
    generic map(
        N => N
    )
    port map (
        A => A,
        B => B,
        Sum => Sum_clocked,
        Op => Op,
        Z_Flag => Z_Flag_clocked,
        N_Flag => N_Flag_clocked,
        O_Flag => O_Flag_clocked
    );

    PROC : process(clk, rst)
    begin
        if rst='1' then --switch to 1 for testbench
            res <= (others => '0');
            Z_Flag <= '0';
            N_Flag <= '0';
            O_Flag <= '0';
        elsif rising_edge(clk) and en='1' then
            res <= Sum_clocked;
            Z_Flag <= Z_Flag_clocked;
            N_Flag <= N_Flag_clocked;
            O_Flag <= O_Flag_clocked;
        end if;
    end process;
end architecture;