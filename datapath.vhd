library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is 
generic(
    N, M : integer
    );
port(
    clk, reset, ie, oe, en, write, readA, readB : in std_logic;
    Z_Flag, O_Flag, N_Flag, clk_out : out std_logic;
    Op : in std_logic_vector(2 downto 0); 
    WAddr, ra, rb : in std_logic_vector(M-1 downto 0);
    input : in std_logic_vector(N-1 downto 0);
    output : out std_logic_vector(N-1 downto 0) 
    );
end datapath;

architecture behave of datapath is 
signal sum_tmp, A_QA, B_QB,mux : std_logic_vector(N-1 downto 0) := (others => '0'); 
--signal Z_Flag_tmp, O_Flag_tmp, N_Flag_tmp : std_logic;
begin
    RF: entity work.register_file(behave)
    generic map(
        N => N,
        M => M
        )
    port map(
        wd => mux,
        WAddr => WAddr,
        ra => ra,
        rb => rb,
        QA => A_QA,
        QB => B_QB,
        clk => clk,
        readA => readA,
        readB => readB,
        reset => reset,
        write => write
        );
        
    ALU_clocked: entity work.alu_clocked(structural)
    generic map(
        N => N
    )
    port map (
        A  => A_QA,
        B  => B_QB,
        Op => Op,
        clk => clk,
        rst => reset,
        en => en,
        res => sum_tmp,
        Z_Flag => Z_Flag,
        N_Flag => N_Flag,
        O_Flag => O_Flag
    );
    -- input mux
    mux <= input when ie='1' else sum_tmp; 
    --output enable
    output <= sum_tmp when oe='1' else (others=>'Z');
    clk_out <= clk;
end behave;