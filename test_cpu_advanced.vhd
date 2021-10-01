library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;    -- defines "+", "-" and "*" for std_logic_vectors to be unsigned
use ieee.std_logic_arith.all;       -- defines conv_std_logic_vector and conv_integer
use std.TEXTIO.all;
library modelsim_lib;
use work.micro_assembly_code.all; -- defines all assembly instruction codes used by the processor
use modelsim_lib.util.all;          -- defines the spy_signal procedure

entity cpu_tb is
end cpu_tb;

architecture test_cpu_advanced of cpu_tb is
  component cpu
    generic(N:integer;
            M:integer);
    port(clk,reset:IN std_logic;
         Din:IN std_logic_vector(N-1 downto 0);
         address:OUT std_logic_vector(N-1 downto 0);
         Dout:OUT std_logic_vector(N-1 downto 0);
         RW:OUT std_logic);
  end component;
  constant N:integer:=16;
  constant M:integer:=3;
  signal clk,reset:std_logic:='0';
  signal Din:std_logic_vector(N-1 downto 0);
  signal address:std_logic_vector(N-1 downto 0);
  signal Dout,mem_Dout:std_logic_vector(N-1 downto 0);
  signal RW:std_logic;
  signal rden,wren:std_logic;
  
  -- global test procedures
   procedure wait_for(N:integer) is
   begin
     for i in 1 to N loop
       wait on clk until clk='1';
     end loop;
   end wait_for;
   -- Register instructions
   procedure i(signal instr:OUT instruction; op:instruction_code;wr_reg,rd_reg1,rd_reg2:reg_code) is
   begin
      Instr<=op & wr_reg & rd_reg1 & rd_reg2 & "000";
      wait_for(4);
   end i;
   -- LDI
   procedure i(signal instr:OUT instruction; op:instruction_code;wr_reg:reg_code;imm:immediate) is
   begin
      Instr<=op & wr_reg & imm;
      wait_for(4);
   end i;
    -- Branch instructions
   procedure i(signal instr:OUT instruction; op:instruction_code; immediate:integer) is
   begin
      Instr<=op & conv_std_logic_vector(immediate,12);
      wait_for(4);
   end i;
      
	-- test_signals in Modelsim (i.e., spy_signals)
	signal t_upc:std_logic_vector(1 downto 0);
	type rf_type is array(0 to 7) of std_logic_vector(N-1 downto 0);
	signal t_rf_mem:rf_type;
  	signal t_z,t_n,t_o:std_logic;

begin
   	-- Clock and reset generation
   	clk<=not(clk) after 10 ns;
   	reset<='0', '1' after 5 ns, '0' after 16 ns;

	spy_process: process -- Spy process connects signals inside the hierarchy to signals in the test_bench (simulator dependent - only works in Modelsim)
	begin
		init_signal_spy("/cpu_tb/dut/upc","/t_upc",1);
		init_signal_spy("/cpu_tb/dut/datapath/register_file/regs","/t_rf_mem",1);
		--init_signal_spy("/cpu_tb/dut/z_flag","/t_z",1);
		--init_signal_spy("/cpu_tb/dut/n_flag","/t_n",1);
		--init_signal_spy("/cpu_tb/dut/o_flag","/t_o",1);
		init_signal_spy("/cpu_tb/dut/Z_Flag_Latched","/t_z",1);
		init_signal_spy("/cpu_tb/dut/N_Flag_Latched","/t_n",1);
		init_signal_spy("/cpu_tb/dut/O_Flag_Latched","/t_o",1);
		wait;
	end process spy_process;


   	DUT:cpu generic map(N=>N,M=>M)
		   port map(clk=>clk,
					reset=>reset,
					Din=>Din,
					address=>address,
					Dout=>Dout,
					RW=>RW);
   					rden<=RW;
   					wren<=not(RW);

	test_all_instructions: process
		procedure test_ST(signal instr:OUT instruction;  wr_reg,rd_reg:integer) is
		begin
			Instr<= I_ST & NU & conv_std_logic_vector(wr_reg,3) & conv_std_logic_vector(rd_reg,3) & NU;
			wait_for(2);
			wait for 1 ps;
			assert(Dout=t_rf_mem(rd_Reg)) report "I_ST: Dout has the wrong value" severity failure;
			assert(t_uPC="10") report "I_ST: Dout is set in the wrong clock cycle" severity failure;
			wait_for(2); -- skip PC+1
			wait for 1 ps;
			assert(Address=t_rf_mem(wr_reg)) report "I_ST: Address has the wrong value" severity failure;
			assert(wren='1') report "I_ST: RW has the wrong value" severity failure;
			--wait_for(1); -- FI
		end test_ST;
		procedure test_LD(signal instr:OUT instruction; wr_reg,rd_reg:integer) is
		begin
			Instr<=I_LD & NU & conv_std_logic_vector(wr_reg,3) & conv_std_logic_vector(rd_reg,3) & NU;
			wait_for(2); 
			wait for 2 ns;
			assert(Address=t_rf_mem(wr_Reg)) report "I_LD: Address has the wrong value" severity failure;
			assert(t_uPC="10") report "I_LD: Address is set in the wrong clock cycle" severity failure;
			assert(rden='1') report "I_LD: RW has the wrong value" severity failure;
			wait_for(1);
			Instr<="1010101010101010"; -- fake memory response
			wait_for(1); -- skip PC+1
			wait for 2 ns;
			assert(t_rf_mem(rd_reg)="1010101010101010") report "I_LD: Loaded Data has the wrong value" severity failure;
			--wait_for(1); -- FI
		end test_LD;
	begin
		wait until reset='1';
		wait until reset='0';
		assert(t_uPC="00") report "Reset does not work" severity failure;
		assert(address="0000000000000000") report "Memory Address reset does not work" severity failure;
		assert(false) report "test_reset OK" severity note;
		i(Din,I_LDI,R0,"000000001");
		assert(t_rf_mem(0)="000000000000001") report "I_LDI does not work" severity failure;
		assert(address="0000000000000001") report "R7 - PC Address increment does not work";
		report "I_LDI works OK";
		i(Din,I_LDI,R1,"100000001");
		assert(t_rf_mem(1)="1111111100000001") report "I_LDI sign extension does not work" severity failure;
		report "I_LDI sign extension works OK";

		i(Din,I_ADD,R2,R1,R0);
		assert(t_rf_mem(2)="1111111100000010") report "I_ADD does not work" severity failure;
		report "I_ADD works OK";
		i(Din,I_SUB,R3,R2,R1);
		assert(t_rf_mem(3)="0000000000000001") report "SUB does not work" severity failure;
		report "SUB works OK";
		test_ST(Din,1,0);
		report "I_ST works OK";

		i(Din,I_NOT,R4,R3,R0); 
		assert(t_rf_mem(4)="1111111111111110") report "NOT does not work" severity failure;
		report "NOT works OK";
		i(Din,I_OR,R5,R4,R3);
		assert(t_rf_mem(5)="1111111111111111") report "OR does not work" severity failure;
		report "OR works OK";
		i(Din,I_AND,R6,R5,R2);
		assert(t_rf_mem(6)="1111111100000010") report "AND does not work" severity failure;
		report "AND works OK";
		i(Din,I_XOR,R6,R6,R5);
		assert(t_rf_mem(6)="0000000011111101") report "XOR does not work" severity failure;
		report "XOR works OK";
		test_LD(Din,4,0);
		report "I_LD works OK";

		-- At this point, Z=0, N=0, O=0
		i(Din,I_BRZ,-15);
		assert(t_rf_mem(7)="0000000000001011") report "Z=0:I_BRZ does not work" severity failure;
		report "I_BRZ with Z=0 works OK";
		i(Din,I_BRN,15);
		assert(t_rf_mem(7)="0000000000001100") report "N=0:I_BRN does not work" severity failure;
		report "I_BRN with N=0 works OK";
		i(Din,I_BRO,-15);
		assert(t_rf_mem(7)="0000000000001101") report "O=0:I_BRO does not work" severity failure;
		report "I_BRO with O=0 works OK";

		-- Create Z=1
		i(Din,I_XOR,R0,R0,R0);
		assert(t_z='1') report "XOR Setting Z=1 does not work" severity failure;		
		report "XOR Setting Z=1 works";
		i(Din,I_BRZ,-15);
		assert(t_rf_mem(7)="1111111111111111") report "Z=1:I_BRZ does not work" severity failure;
		report "I_BRZ with negative offset works OK";
		i(Din,I_BRZ,+15);
		assert(t_rf_mem(7)="0000000000001110") report "Z=1:I_BRZ does not work" severity failure;
		report "I_BRZ with posititve offset works OK";

		-- Create Z=0, N=1
		i(Din,I_XOR,R0,R5,R0);
		assert(t_n='1') report "Setting N=1 does not work" severity failure;		
		report "XOR Setting N=1 works";
		i(Din,I_BRN,-15);
		assert(t_rf_mem(7)="0000000000000000") report "N=1:I_BRN does not work" severity failure;
		report "I_BRN with negative address works OK";
		i(Din,I_BRN,+15);
		assert(t_rf_mem(7)="000000000001111") report "N=1:I_BRN does not work" severity failure;
		report "I_BRN with positive address works OK";

		-- Create O=1
		i(Din,I_LDI,R0,"011111111");
		i(Din,I_ADD,R0,R0,R0);
		i(Din,I_ADD,R0,R0,R0);
		i(Din,I_ADD,R0,R0,R0);
		i(Din,I_ADD,R0,R0,R0);
		i(Din,I_ADD,R0,R0,R0);
		i(Din,I_ADD,R0,R0,R0);
		i(Din,I_ADD,R0,R0,R0);
		i(Din,I_ADD,R0,R0,R0);
		assert(t_o='1') report "I_ADD setting O=1 does not work";
		report "I_ADD setting O=1 works OK";
		i(Din,I_BRO,-15);
		assert(t_rf_mem(7)="0000000000001001") report "O=1:I_BRO does not work" severity failure;
		report "I_BRO with negative address works OK";
		i(Din,I_BRO,15);
		assert(t_rf_mem(7)="0000000000011000") report "O=1:I_BRO does not work" severity failure;
		report "I_BRO with positive address works OK";

		i(Din,I_BRA,-15);
		assert(t_rf_mem(7)="0000000000001001") report "I_BRA does not work" severity failure;
		report "I_BRA with negative address works OK";
		i(Din,I_BRA,57);
		assert(t_rf_mem(7)="0000000001000010") report "I_BRA does not work" severity failure;
		report "I_BRA with positive address works OK";
		wait on clk until clk='1';
		report "CPU passes all tests.";
		assert(false) report "Ending Simulation." severity failure;
	end process;

end test_cpu_advanced;