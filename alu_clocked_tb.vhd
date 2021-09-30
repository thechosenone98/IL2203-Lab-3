library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity alu_clocked_tb is
end alu_clocked_tb;

architecture sim of alu_clocked_tb is

    constant N : integer := 8;

    constant clk_hz : integer := 100e6;
    constant clk_period : time := 1 sec / clk_hz;

    signal clk, rst : std_logic := '0';
    signal en: std_logic := '1';
    signal A, B, res: std_logic_vector(N-1 downto 0);
    signal Op : std_logic_vector(2 downto 0);
    signal Z_Flag, N_Flag, O_Flag : std_logic;


begin

    clk <= not clk after clk_period / 2;

    DUT : entity work.alu_clocked(structural)
    generic map(
        N => N
    )
    port map (
        A => A,
        B => B,
        Op => Op,
        res => res,
        Z_Flag => Z_Flag,
        N_Flag => N_Flag,
        O_Flag => O_Flag,
        en => en,
        rst => rst,
        clk => clk
    );

    SEQUENCER_PROC : process
    begin
        rst <= '1';
        wait until rising_edge(clk);

        rst <= '0';
        Op <= "111";
        A <= "00000000";
        wait until rising_edge(clk);
        wait for 1 ns;
        assert res = "00000001" report "It failed!" severity failure;

        finish;
    end process;

end architecture;