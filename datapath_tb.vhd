library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity datapath_tb is
end datapath_tb;

architecture sim of datapath_tb is

    constant N : integer := 12;
    constant M : integer := 3;

    constant clk_hz : integer := 100e6;
    constant clk_period : time := 1 sec / clk_hz;

    signal offset : std_logic_vector(11 downto 0);
    signal bypassA, bypassB : std_logic;
    signal reset, ie, oe, en, write, readA, readB : std_logic;
    signal clk :std_logic := '1';
    signal Z_Flag, O_Flag, N_Flag, clk_out : std_logic;
    signal Op : std_logic_vector(2 downto 0);
    signal WAddr, ra, rb : std_logic_vector(M-1 downto 0);
    signal input : std_logic_vector(N-1 downto 0);
    signal output : std_logic_vector(N-1 downto 0);

begin

    clk <= not clk after clk_period / 2;

    DUT : entity work.datapath(behave)
    generic map(
        N => N,
        M => M
    )
    port map (
        clk => clk,
        reset => reset,
        offset => offset,
        bypassA => bypassA,
        bypassB => bypassB,
        ie => ie,
        en => en,
        oe => oe,
        write => write,
        readA => readA,
        readB => readB,
        Z_Flag => Z_Flag,
        O_Flag => O_Flag,
        clk_out => clk_out,
        Op => Op,
        input => input,
        output => output,
        WAddr => WAddr,
        ra => ra,
        rb => rb
    );

    SEQUENCER_PROC : process
    begin

        --BRANCH INSTRUCTION START
        oe <= '1';
        en <= '1';
        reset <= '1';
        wait until rising_edge(clk);
        reset <= '0';
        WAddr <= (others => '1');
        write <= '1';
        ie <= '1';
        input <= "000000000010";
        wait until rising_edge(clk);
        WAddr <= (others => '0');
        write <= '0';
        ie <= '0';
        wait until rising_edge(clk);
        bypassB <= '1';
        bypassA <= '0';
        Op <= "000";
        offset <= "000000000010";
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait for 2 ns;
        assert output = "000000000100" report "It failed!" severity failure;
        --BRANCH INSTRUCTION END

        --LDI INSTRUCTION START
        bypassB <= '0';
        bypassA <= '1';
        Op <= "110";
        offset <= "000000000011";
        wait until rising_edge(clk);
        wait for 2 ns;
        assert output = "000000000011" report "It failed!" severity failure;
        write <= '1';
        WAddr <= "000";
        ie <= '0';
        wait until rising_edge(clk);
        wait for 2 ns;
        --LDI INSTRUCTION END

        finish;
    end process;

end architecture;