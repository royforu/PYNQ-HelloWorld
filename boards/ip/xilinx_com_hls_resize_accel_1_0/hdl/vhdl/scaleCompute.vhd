-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity scaleCompute is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    currindex : IN STD_LOGIC_VECTOR (31 downto 0);
    inscale_V : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (41 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of scaleCompute is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv22_0 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";
    constant ap_const_lv42_200000 : STD_LOGIC_VECTOR (41 downto 0) := "000000000000000000001000000000000000000000";
    constant ap_const_lv71_7FFFFC000000000000 : STD_LOGIC_VECTOR (70 downto 0) := "11111111111111111111100000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv32_46 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000110";

    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal grp_fu_58_p2 : STD_LOGIC_VECTOR (70 downto 0);
    signal p_Val2_1_reg_89 : STD_LOGIC_VECTOR (70 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_fu_32_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Val2_s_fu_36_p3 : STD_LOGIC_VECTOR (41 downto 0);
    signal r_V_fu_44_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal grp_fu_58_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_2_fu_64_p2 : STD_LOGIC_VECTOR (70 downto 0);
    signal grp_fu_58_ce : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;
    signal currindex_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal inscale_V_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_int_reg : STD_LOGIC_VECTOR (41 downto 0);
    signal grp_fu_58_p00 : STD_LOGIC_VECTOR (70 downto 0);

    component resize_accel_mul_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (41 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (70 downto 0) );
    end component;



begin
    resize_accel_mul_cud_U19 : component resize_accel_mul_cud
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 42,
        dout_WIDTH => 71)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_58_p0,
        din1 => r_V_fu_44_p2,
        ce => grp_fu_58_ce,
        dout => grp_fu_58_p2);





    ap_ce_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_ce_reg <= ap_ce;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce_reg)) then
                ap_return_int_reg <= p_Val2_2_fu_64_p2(70 downto 29);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                currindex_int_reg <= currindex;
                inscale_V_int_reg <= inscale_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                p_Val2_1_reg_89 <= grp_fu_58_p2;
            end if;
        end if;
    end process;
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(p_Val2_2_fu_64_p2, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= p_Val2_2_fu_64_p2(70 downto 29);
        end if; 
    end process;


    grp_fu_58_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_58_ce <= ap_const_logic_1;
        else 
            grp_fu_58_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_58_p0 <= grp_fu_58_p00(32 - 1 downto 0);
    grp_fu_58_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inscale_V_int_reg),71));
    p_Val2_2_fu_64_p2 <= std_logic_vector(unsigned(p_Val2_1_reg_89) + unsigned(ap_const_lv71_7FFFFC000000000000));
    p_Val2_s_fu_36_p3 <= (tmp_fu_32_p1 & ap_const_lv22_0);
    r_V_fu_44_p2 <= (p_Val2_s_fu_36_p3 or ap_const_lv42_200000);
    tmp_fu_32_p1 <= currindex_int_reg(20 - 1 downto 0);
end behav;
