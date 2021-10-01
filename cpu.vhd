library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.numeric_std_unsigned.all;
use work.micro_assembly_code.all;

entity cpu is
    generic(N,M:integer);
    port (
        clk : in std_logic;
        reset : in std_logic;
        Din : in std_logic_vector(N-1 downto 0);
        address, Dout : out std_logic_vector(N-1 downto 0);
        RW : out std_logic
    );
end cpu;

architecture behave of cpu is
    signal instr_reg: std_logic_vector(15 downto 0) := (others => '0');
    signal upc : std_logic_vector(1 downto 0);
    
    --Datapath signals
    signal ie, oe : std_logic;
    signal Op : std_logic_vector(2 downto 0);
    signal bypassA, bypassB : std_logic;
    signal readA, readB, write : std_logic;
    signal ra, rb : std_logic_vector(M-1 downto 0);
    signal WAddr : std_logic_vector(M-1 downto 0);
    signal offset : std_logic_vector(11 downto 0);
    signal Z_Flag, N_Flag, O_Flag, Flag : std_logic;
    signal Z_Flag_Latched, N_Flag_Latched, O_Flag_Latched : std_logic;
    signal output_tmp : std_logic_vector(N-1 downto 0);
    signal clk_out : std_logic;
    signal en_alu : std_logic;
begin

    DATAPATH : entity work.datapath(behave)
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
        en => en_alu,
        oe => oe,
        write => write,
        readA => readA,
        readB => readB,
        Z_Flag => Z_Flag,
        O_Flag => O_Flag,
        clk_out => clk_out,
        Op => Op,
        input => Din,
        output => output_tmp,
        WAddr => WAddr,
        ra => ra,
        rb => rb
    );

    MICROCODE_FSM : process(clk, reset)
    begin
        if(reset = '1') then
            upc <= "00";
        elsif rising_edge(clk) then
            case upc is
                when "00" =>
                    instr_reg <= Din;
                    case Din(15 downto 12) is
                        when I_ADD =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and READ_B
                            readA <= '1';
                            readB <= '1';
                            --RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            --RB REGISTER
                            rb <= instr_reg(5 downto 3);
                            --OP CODE
                            Op <= (others => '0');
                            --DISABLE BYPASS
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_SUB =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and READ_B
                            readA <= '1';
                            readB <= '1';
                            --RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            --RB REGISTER
                            rb <= instr_reg(5 downto 3);
                            --OP CODE
                            Op <= "001";
                        when I_AND =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and READ_B
                            readA <= '1';
                            readB <= '1';
                            --RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            --RB REGISTER
                            rb <= instr_reg(5 downto 3);
                            --OP CODE
                            Op <= "010";
                        when I_OR =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and READ_B
                            readA <= '1';
                            readB <= '1';
                            --RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            --RB REGISTER
                            rb <= instr_reg(5 downto 3);
                            --OP CODE
                            Op <= "011";
                        when I_XOR =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and READ_B
                            readA <= '1';
                            readB <= '1';
                            --RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            --RB REGISTER
                            rb <= instr_reg(5 downto 3);
                            --OP CODE
                            Op <= "100";
                        when I_NOT =>
                            --ENABLE ALU
                            --ENABLE READ_A and DISABLE READ_B
                            readA <= '1';
                            readB <= '0';
                            en_alu <= '1';
                            --RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            --OP CODE
                            Op <= "101";
                        when I_MOV =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and DISABLE READ_B
                            readA <= '1';
                            readB <= '0';
                            --RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            --OP CODE
                            Op <= "110";
                        when I_NOP =>
                            --DISABLE ALU
                            en_alu <= '0';
                            --DISABLE READ_A and DISABLE READ_B
                            readA <= '0';
                            readB <= '0';
                        when I_LD =>
                        when I_ST =>
                        when I_LDI =>
                            --ENABLE ALU
                            en_alu <= '1';
                        when I_NOT_USED =>
                            --DISABLE ALU
                            en_alu <= '0';
                            --ENABLE READ_A and READ_B
                            readA <= '0';
                            readB <= '0';
                        when I_BRZ =>
                            --ENABLE ALU
                            en_alu <= '1';
                        when I_BRN =>
                            --ENABLE ALU
                            en_alu <= '1';
                        when I_BRO =>
                            --ENABLE ALU
                            en_alu <= '1';
                        when I_BRA =>
                            --ENABLE ALU
                            en_alu <= '1';
                        when others =>
                            --DISABLE EVERYTHING
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            ie <= '0';
                            oe <= '0';
                    end case;
                when "01" =>
                    case instr_reg(15 downto 12) is
                        when I_ADD =>
                            --LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            --ENABLE WRITE
                            write <= '1';
                            --SET WRITE ADDRESS
                            WAddr <= instr_reg(11 downto 9);
                            --INPUT ENABLE
                            ie <= '0';
                            --ENABLE BYPASS_B
                            bypassB <= '1';
                            Op <= "111";
                        when others =>
                            --DISABLE EVERYTHING
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            ie <= '0';
                            oe <= '0';
                    end case;
                when "10" =>
                    case instr_reg(15 downto 12) is
                        when I_ADD =>
                            --SET WRITE ADRESS TO PC REGISTER
                            WAddr <= R7;
                        when others =>
                            --DISABLE EVERYTHING
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            ie <= '0';
                            oe <= '0';
                    end case;
                when "11" =>
                        upc <= "00";
                when others =>
                        upc <= "00";

            end case;
            upc <= upc + 1;
        end if;
    end process;
end architecture;