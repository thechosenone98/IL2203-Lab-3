library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.micro_assembly_code.all;

entity monster_cpu is
    generic(N : integer := 16;
            M : integer := 3);
    port (
        clk : in std_logic;
        reset : in std_logic;
        Din : in std_logic_vector(N-1 downto 0);
        address, Dout : out std_logic_vector(N-1 downto 0);
        RW : out std_logic;
        test_alu : out std_logic_vector(15 downto 0); --TESTING
        Z_Flag_test, N_Flag_test, O_Flag_test : out std_logic
    );
end monster_cpu;

architecture behave of monster_cpu is

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
    signal Z_Flag, N_Flag, O_Flag : std_logic;
    signal Z_Flag_Latched, N_Flag_Latched, O_Flag_Latched : std_logic;
    signal output_alu : std_logic_vector(N-1 downto 0);
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
        N_Flag => N_Flag,
        O_Flag => O_Flag,
        clk_out => clk_out,
        Op => Op,
        input => Din,
        output => output_alu,
        WAddr => WAddr,
        ra => ra,
        rb => rb
    );

    --TESTING
    test_alu <= output_alu;
    Z_Flag_test <= Z_Flag_Latched;
    N_Flag_test <= N_Flag_Latched;
    O_Flag_test <= O_Flag_Latched;

    MICROCODE_FSM : process(clk, reset)
    begin
        if(reset = '1') then
            upc <= "00";
            address <= (others => '0');
            Dout <= (others => '0');
            instr_reg <= (others => '0');
            Z_Flag_Latched <= '0';
            N_Flag_Latched <= '0';
            O_Flag_Latched <= '0';
            bypassA <= '0';
            bypassB <= '0';
            offset <= (others => '0');
            RW <= '1';
            ie <= '0';
            oe <= '0';
            readA <= '0';
            readB <= '0';
            write <= '0';
            WAddr <= (others => '0');
            ra <= (others => '0');
            rb <= (others => '0');
            en_alu <= '0';
            Op <= "000";
        elsif rising_edge(clk) then
            RW <= '1';
            oe <= '1';
            case upc is
                when "00" =>
                    instr_reg <= Din;
                    case Din(15 downto 12) is
                        when I_ADD =>
                            -- ENABLE WRITE
                            write <= '1';
                            -- ENABLE ALU
                            en_alu <= '1';
                            -- ENABLE READ_A AND READ_B
                            readA <= '1';
                            readB <= '1';
                            -- SET RA REGISTER
                            ra <= Din(8 downto 6);
                            -- SET RB REGISTER
                            rb <= Din(5 downto 3);
                            --SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            -- SET OP CODE
                            Op <= "000";
                            --INPUT ENABLE
                            ie <= '0';
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_SUB =>
                            -- ENABLE WRITE
                            write <= '1';
                            -- ENABLE ALU
                            en_alu <= '1';
                            -- ENABLE READ_A AND READ_B
                            readA <= '1';
                            readB <= '1';
                            -- SET RA REGISTER
                            ra <= Din(8 downto 6);
                            -- SET RB REGISTER
                            rb <= Din(5 downto 3);
                            --SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            -- SET OP CODE
                            Op <= "001";
                            --INPUT ENABLE
                            ie <= '0';
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_AND =>
                            -- ENABLE WRITE
                            write <= '1';
                            -- ENABLE ALU
                            en_alu <= '1';
                            -- ENABLE READ_A AND READ_B
                            readA <= '1';
                            readB <= '1';
                            -- SET RA REGISTER
                            ra <= Din(8 downto 6);
                            -- SET RB REGISTER
                            rb <= Din(5 downto 3);
                            --SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            -- SET OP CODE
                            Op <= "010";
                            --INPUT ENABLE
                            ie <= '0';
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_OR =>
                            -- ENABLE WRITE
                            write <= '1';
                            -- ENABLE ALU
                            en_alu <= '1';
                            -- ENABLE READ_A AND READ_B
                            readA <= '1';
                            readB <= '1';
                            -- SET RA REGISTER
                            ra <= Din(8 downto 6);
                            -- SET RB REGISTER
                            rb <= Din(5 downto 3);
                            --SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            -- SET OP CODE
                            Op <= "011";
                            --INPUT ENABLE
                            ie <= '0';
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_XOR =>
                            -- ENABLE WRITE
                            write <= '1';
                            -- ENABLE ALU
                            en_alu <= '1';
                            -- ENABLE READ_A AND READ_B
                            readA <= '1';
                            readB <= '1';
                            -- SET RA REGISTER
                            ra <= Din(8 downto 6);
                            -- SET RB REGISTER
                            rb <= Din(5 downto 3);
                            --SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            -- SET OP CODE
                            Op <= "100";
                            --INPUT ENABLE
                            ie <= '0';
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_NOT =>
                            -- ENABLE WRITE
                            write <= '1';
                            -- SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and DISABLE READ_B
                            readA <= '1';
                            readB <= '0';
                            --RA REGISTER
                            ra <= Din(8 downto 6);
                            --OP CODE
                            Op <= "101";
                            --INPUT ENABLE
                            ie <= '0';
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_MOV =>
                            --ENABLE WRITE
                            write <= '1';
                            -- SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE READ_A and DISABLE READ_B
                            readA <= '1';
                            readB <= '0';
                            --RA REGISTER
                            ra <= Din(8 downto 6);
                            --OP CODE
                            Op <= "110";
                            --INPUT ENABLE
                            ie <= '0';
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_NOP =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE WRITE
                            write <= '1';
                            --INPUT ENABLE
                            ie <= '0';
                            --INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_LD =>
                            --DISABLE WRITE
                            write <= '0';
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE THE OUTPUT
                            oe <= '1';
                            --ENABLE READ_A and DISABLE READ_B
                            readA <= '1';
                            readB <= '0';
                            --RA REGISTER
                            ra <= Din(8 downto 6);
                            --OP CODE
                            Op <= "110";
                            --DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_ST =>
                            --DISABLE WRITE
                            write <= '0';
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE THE OUTPUT
                            oe <= '1';
                            --ENABLE READ_A and DISABLE READ_B
                            readA <= '1';
                            readB <= '0';
                            --RA REGISTER
                            ra <= Din(5 downto 3);
                            --OP CODE
                            Op <= "110";
                            --DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when I_LDI =>
                            --ENABLE WRITE
                            write <= '1';
                            -- SET WRITE ADDRESS
                            WAddr <= Din(11 downto 9);
                            --ENABLE ALU
                            en_alu <= '1';
                            --DISABLE READ_A and READ_B
                            readA <= '0';
                            readB <= '0';
                            --OP CODE
                            Op <= "110";
                            --INPUT ENABLE
                            ie <= '0';
                            --ENABLE BYPASS_A and DISABLE BYPASS_B
                            bypassA <= '1';
                            bypassB <= '0';
                            --SET DATA
                            offset <= std_logic_vector(resize(signed(Din(8 downto 0)), offset'length));
                        when I_BRZ =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE WRITE
                            write <= '1';
                            --INPUT ENABLE
                            ie <= '0';
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                            if (Z_Flag_Latched = '1') then
                                -- ENABLE BYPASS_B AND DISABLE BYPASS_A
                                bypassB <= '1';
                                bypassA <= '0';
                                -- SET OP CODE
                                Op <= "000";
                                --SET OFFSET
                                offset <= std_logic_vector(resize(signed(Din(11 downto 0)), offset'length));
                            else
                                -- INCREMENT PC
                                bypassB <= '1';
                                bypassA <= '0';
                                Op <= "111";
                            end if;
                        when I_BRN =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE WRITE
                            write <= '1';
                            --INPUT ENABLE
                            ie <= '0';
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                            if (N_Flag_Latched = '1') then
                                -- ENABLE BYPASS_B AND DISABLE BYPASS_A
                                bypassB <= '1';
                                bypassA <= '0';
                                -- SET OP CODE
                                Op <= "000";
                                --SET OFFSET
                                offset <= std_logic_vector(resize(signed(Din(11 downto 0)), offset'length));
                            else
                                -- INCREMENT PC
                                bypassB <= '1';
                                bypassA <= '0';
                                Op <= "111";
                            end if;
                        when I_BRO =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE WRITE
                            write <= '1';
                            --INPUT ENABLE
                            ie <= '0';
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                            if (O_Flag_Latched = '1') then
                                -- ENABLE BYPASS_B AND DISABLE BYPASS_A
                                bypassB <= '1';
                                bypassA <= '0';
                                -- SET OP CODE
                                Op <= "000";
                                --SET OFFSET
                                offset <= std_logic_vector(resize(signed(Din(11 downto 0)), offset'length));
                            else
                                -- INCREMENT PC
                                bypassB <= '1';
                                bypassA <= '0';
                                Op <= "111";
                            end if;
                        when I_BRA =>
                            --ENABLE ALU
                            en_alu <= '1';
                            --ENABLE WRITE
                            write <= '1';
                            --INPUT ENABLE
                            ie <= '0';
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                            -- ENABLE BYPASS_B AND DISABLE BYPASS_A
                            bypassB <= '1';
                            bypassA <= '0';
                            -- SET OP CODE
                            Op <= "000";
                            --SET OFFSET
                            offset <= std_logic_vector(resize(signed(Din(11 downto 0)), offset'length));
                        when others =>
                            -- DISABLE EVERYTHING (NOP)
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                            ra <= Rx;
                            rb <= Rx;
                    end case;
                when "01" =>
                    case instr_reg(15 downto 12) is
                        when I_ADD =>
                            --LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            --INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_SUB =>
                            -- LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            -- INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_AND =>
                            -- LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            -- INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_OR =>
                            --LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            --INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_XOR =>
                            --LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            --INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_NOT =>
                            -- LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            -- INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_MOV =>
                            -- LATCH FLAGS
                            Z_Flag_Latched <= Z_Flag;
                            N_Flag_Latched <= N_Flag;
                            O_Flag_Latched <= O_Flag;
                            -- INCREMENT PC
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                            -- SET WRITE ADDRESS TO PC REGISTER
                            WAddr <= R7;
                        when I_NOP =>
                            -- SET ADDRESS REGISTER TO NEW PC
                            address <= output_alu;
                            -- DISABLE EVERYTHING (NOP)
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                            ra <= Rx;
                            rb <= Rx;
                        when I_LD =>
                            -- ADDRESS = R2
                            address <= output_alu;
                            -- INCREMENT PC
                            WAddr <= R7;
                            write <= '1';
                            ie <= '0';
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                        when I_ST =>
                            -- WRITE R2 TO DOUT
                            Dout <= output_alu;
                            -- INCREMENT PC
                            WAddr <= R7;
                            write <= '1';
                            ie <= '0';
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                        when I_LDI =>
                            -- INCREMENT PC
                            WAddr <= R7;
                            bypassB <= '1';
                            bypassA <= '0';
                            Op <= "111";
                        when I_BRZ | I_BRN | I_BRO | I_BRA =>
                            -- SET ADDRESS REGISTER TO NEW PC
                            address <= output_alu;
                            --DISABLE EVERYTHING
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                        when others =>
                            --DISABLE EVERYTHING
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                    end case;
                when "10" =>
                    case instr_reg(15 downto 12) is
                        when I_ADD | I_SUB | I_AND | I_OR | I_XOR | I_NOT | I_LDI | I_MOV =>
                            -- SET ADDRESS REGISTER TO NEW PC
                            address <= output_alu;
                            -- DISABLE EVERYTHING (NOP)
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                            ra <= Rx;
                            rb <= Rx;
                        when I_LD =>
                            ie <= '1';
                            WAddr <= instr_reg(11 downto 9);
                            -- DISABLE EVERYTHING EXCEPT WRITE TO REGISTER
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            bypassA <= '0';
                            bypassB <= '0';
                            oe <= '0';
                            ra <= Rx;
                            rb <= Rx;
                        when I_ST =>
                            -- DISABLE WRITE
                            write <= '0';
                            -- RA REGISTER
                            ra <= instr_reg(8 downto 6);
                            -- SET OP CODE
                            Op <= "110";
                            -- DISABLE BYPASSES
                            bypassA <= '0';
                            bypassB <= '0';
                        when others =>
                            -- DISABLE EVERYTHING (NOP)
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                            ra <= Rx;
                            rb <= Rx;
                    end case;
                when "11" =>
                    case instr_reg(15 downto 12) is
                        when I_ST =>
                            RW <= '0';
                            --ADDRESS = R1
                            address <= output_alu;
                            --DISABLE EVERYTHING (NOP)
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                            ra <= Rx;
                            rb <= Rx;
                        when others =>
                            --DISABLE EVERYTHING (NOP)
                            readA <= '0';
                            readB <= '0';
                            en_alu <= '0';
                            write <= '0';
                            WAddr <= Rx;
                            bypassA <= '0';
                            bypassB <= '0';
                            ie <= '0';
                            oe <= '0';
                            ra <= Rx;
                            rb <= Rx;
                    end case;
                    upc <= "00";
                when others =>
                    upc <= "00";
            end case;
            upc <= upc + 1;
        end if;
    end process;
end architecture;