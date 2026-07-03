-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_w2_ROMdEe is 
    generic(
             DataWidth     : integer := 24; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 9
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of myproject_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_27_11_5_3_0_config2_mult_s_w2_ROMdEe is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "010001000000000000001011", 1 => "110011000000000000111100", 2 => "100000000000000000000000", 3 => "010000000000000000000000", 
    4 => "000000000000000000100000", 5 => "100101011000000000100000", 6 => "000000000000100000001000", 7 => "010000101000100000000000", 
    8 => "101001100000000000110100");



attribute syn_rom_style : string;

attribute syn_rom_style of mem0 : signal is "block_rom"; 
attribute ROM_STYLE : string;

attribute ROM_STYLE of mem0 : signal is "block";

begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

