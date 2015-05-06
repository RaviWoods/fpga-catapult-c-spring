-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.126 Production Release
--  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
-- 
--  Generated by:   rbw14@EEWS104A-005
--  Generated date: Tue May 05 13:48:15 2015
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    red_tint_core
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.red_tint_mux_pkg.ALL;


ENTITY red_tint_core IS
  PORT(
    clk : IN STD_LOGIC;
    en : IN STD_LOGIC;
    arst_n : IN STD_LOGIC;
    video_in_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (29 DOWNTO 0);
    video_out_rsc_mgc_out_stdreg_d : OUT STD_LOGIC_VECTOR (29 DOWNTO 0);
    mouse_xy_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (19 DOWNTO 0)
  );
END red_tint_core;

ARCHITECTURE v1 OF red_tint_core IS
  -- Default Constants

BEGIN
  -- Default Constant Signal Assignments

  core : PROCESS
    -- Interconnect Declarations
    VARIABLE mouse_x_2_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE acc_2_psp_sva : STD_LOGIC_VECTOR (6 DOWNTO 0);
    VARIABLE io_read_video_in_rsc_d_1_cse_sva : STD_LOGIC_VECTOR (29 DOWNTO 0);
    VARIABLE acc_psp_sva_sg1 : STD_LOGIC_VECTOR (10 DOWNTO 0);
    VARIABLE acc_psp_sva_1 : STD_LOGIC;
    VARIABLE acc_1_psp_sva_sg1 : STD_LOGIC_VECTOR (10 DOWNTO 0);
    VARIABLE acc_1_psp_sva_1 : STD_LOGIC;

    VARIABLE makepos_mux_1_nl : STD_LOGIC_VECTOR (9 DOWNTO 0);
    VARIABLE makepos_1_mux_1_nl : STD_LOGIC_VECTOR (9 DOWNTO 0);
  BEGIN
    main : LOOP
      -- C-Step 0 of Loop 'main'
      WAIT UNTIL (clk'EVENT AND ( clk = '1' ) AND ( ( en = '1' ) ) ) OR ( arst_n
          = '0' );
      EXIT main WHEN ( arst_n = '0' );
      -- C-Step 1 of Loop 'main'
      mouse_x_2_sva := mouse_xy_rsc_mgc_in_wire_d(8 DOWNTO 0);
      acc_2_psp_sva := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(mouse_x_2_sva(8 DOWNTO
          2)) + UNSIGNED(mouse_x_2_sva(6 DOWNTO 0)), 7));
      io_read_video_in_rsc_d_1_cse_sva := video_in_rsc_mgc_in_wire_d;
      acc_psp_sva_1 := readindex(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'((io_read_video_in_rsc_d_1_cse_sva(10))
          & '1') + CONV_UNSIGNED(CONV_SIGNED('1', 1), 2), 2)), 1);
      acc_psp_sva_sg1 := readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED((io_read_video_in_rsc_d_1_cse_sva(19
          DOWNTO 11)) & TO_STDLOGICVECTOR('1')), 12) + CONV_UNSIGNED(SIGNED((NOT
          acc_2_psp_sva) & (NOT (mouse_x_2_sva(1 DOWNTO 0))) & TO_STDLOGICVECTOR('1')),
          12), 12)), 1, 11);
      acc_1_psp_sva_1 := readindex(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'((io_read_video_in_rsc_d_1_cse_sva(0))
          & '1') + CONV_UNSIGNED(CONV_SIGNED('1', 1), 2), 2)), 1);
      acc_1_psp_sva_sg1 := readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED((io_read_video_in_rsc_d_1_cse_sva(9
          DOWNTO 1)) & TO_STDLOGICVECTOR('1')), 12) + CONV_UNSIGNED(SIGNED((NOT acc_2_psp_sva)
          & (NOT (mouse_x_2_sva(1 DOWNTO 0))) & TO_STDLOGICVECTOR('1')), 12), 12)),
          1, 11);
      makepos_mux_1_nl := MUX_v_10_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
          (acc_psp_sva_sg1(10)), 1),10)) & ((acc_psp_sva_sg1(8 DOWNTO 0)) & TO_STDLOGICVECTOR(acc_psp_sva_1)),
          readindex(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED((NOT acc_psp_sva_sg1) & TO_STDLOGICVECTOR(NOT
          acc_psp_sva_1)) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 12), 12)), 11));
      makepos_1_mux_1_nl := MUX_v_10_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
          (acc_1_psp_sva_sg1(10)), 1),10)) & ((acc_1_psp_sva_sg1(8 DOWNTO 0)) & TO_STDLOGICVECTOR(acc_1_psp_sva_1)),
          readindex(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED((NOT acc_1_psp_sva_sg1) &
          TO_STDLOGICVECTOR(NOT acc_1_psp_sva_1)) + CONV_SIGNED(CONV_UNSIGNED('1',
          1), 12), 12)), 11));
      video_out_rsc_mgc_out_stdreg_d <= (io_read_video_in_rsc_d_1_cse_sva(29 DOWNTO
          20)) & (makepos_mux_1_nl) & (makepos_1_mux_1_nl);
    END LOOP main;

    acc_1_psp_sva_1 := '0';
    acc_1_psp_sva_sg1 := STD_LOGIC_VECTOR'("00000000000");
    acc_psp_sva_1 := '0';
    acc_psp_sva_sg1 := STD_LOGIC_VECTOR'("00000000000");
    io_read_video_in_rsc_d_1_cse_sva := STD_LOGIC_VECTOR'("000000000000000000000000000000");
    acc_2_psp_sva := STD_LOGIC_VECTOR'("0000000");
    mouse_x_2_sva := STD_LOGIC_VECTOR'("000000000");
    video_out_rsc_mgc_out_stdreg_d <= STD_LOGIC_VECTOR'("000000000000000000000000000000");
  END PROCESS core;

END v1;

-- ------------------------------------------------------------------
--  Design Unit:    red_tint
--  Generated from file(s):
--    2) $PROJECT_HOME/edge3.c
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.red_tint_mux_pkg.ALL;


ENTITY red_tint IS
  PORT(
    video_in_rsc_z : IN STD_LOGIC_VECTOR (29 DOWNTO 0);
    video_out_rsc_z : OUT STD_LOGIC_VECTOR (29 DOWNTO 0);
    mouse_xy_rsc_z : IN STD_LOGIC_VECTOR (19 DOWNTO 0);
    clk : IN STD_LOGIC;
    en : IN STD_LOGIC;
    arst_n : IN STD_LOGIC
  );
END red_tint;

ARCHITECTURE v1 OF red_tint IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL video_in_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL video_out_rsc_mgc_out_stdreg_d : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL mouse_xy_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (19 DOWNTO 0);

  SIGNAL video_in_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL video_in_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (29 DOWNTO 0);

  SIGNAL video_out_rsc_mgc_out_stdreg_d_1 : STD_LOGIC_VECTOR (29 DOWNTO 0);
  SIGNAL video_out_rsc_mgc_out_stdreg_z : STD_LOGIC_VECTOR (29 DOWNTO 0);

  SIGNAL mouse_xy_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (19 DOWNTO 0);
  SIGNAL mouse_xy_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (19 DOWNTO 0);

  COMPONENT red_tint_core
    PORT(
      clk : IN STD_LOGIC;
      en : IN STD_LOGIC;
      arst_n : IN STD_LOGIC;
      video_in_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (29 DOWNTO 0);
      video_out_rsc_mgc_out_stdreg_d : OUT STD_LOGIC_VECTOR (29 DOWNTO 0);
      mouse_xy_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (19 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL red_tint_core_inst_video_in_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (29 DOWNTO
      0);
  SIGNAL red_tint_core_inst_video_out_rsc_mgc_out_stdreg_d : STD_LOGIC_VECTOR (29
      DOWNTO 0);
  SIGNAL red_tint_core_inst_mouse_xy_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (19 DOWNTO
      0);

BEGIN
  -- Default Constant Signal Assignments

  video_in_rsc_mgc_in_wire : mgc_hls.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 1,
      width => 30
      )
    PORT MAP(
      d => video_in_rsc_mgc_in_wire_d_1,
      z => video_in_rsc_mgc_in_wire_z
    );
  video_in_rsc_mgc_in_wire_d <= video_in_rsc_mgc_in_wire_d_1;
  video_in_rsc_mgc_in_wire_z <= video_in_rsc_z;

  video_out_rsc_mgc_out_stdreg : mgc_hls.mgc_ioport_comps.mgc_out_stdreg
    GENERIC MAP(
      rscid => 2,
      width => 30
      )
    PORT MAP(
      d => video_out_rsc_mgc_out_stdreg_d_1,
      z => video_out_rsc_mgc_out_stdreg_z
    );
  video_out_rsc_mgc_out_stdreg_d_1 <= video_out_rsc_mgc_out_stdreg_d;
  video_out_rsc_z <= video_out_rsc_mgc_out_stdreg_z;

  mouse_xy_rsc_mgc_in_wire : mgc_hls.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 3,
      width => 20
      )
    PORT MAP(
      d => mouse_xy_rsc_mgc_in_wire_d_1,
      z => mouse_xy_rsc_mgc_in_wire_z
    );
  mouse_xy_rsc_mgc_in_wire_d <= mouse_xy_rsc_mgc_in_wire_d_1;
  mouse_xy_rsc_mgc_in_wire_z <= mouse_xy_rsc_z;

  red_tint_core_inst : red_tint_core
    PORT MAP(
      clk => clk,
      en => en,
      arst_n => arst_n,
      video_in_rsc_mgc_in_wire_d => red_tint_core_inst_video_in_rsc_mgc_in_wire_d,
      video_out_rsc_mgc_out_stdreg_d => red_tint_core_inst_video_out_rsc_mgc_out_stdreg_d,
      mouse_xy_rsc_mgc_in_wire_d => red_tint_core_inst_mouse_xy_rsc_mgc_in_wire_d
    );
  red_tint_core_inst_video_in_rsc_mgc_in_wire_d <= video_in_rsc_mgc_in_wire_d;
  video_out_rsc_mgc_out_stdreg_d <= red_tint_core_inst_video_out_rsc_mgc_out_stdreg_d;
  red_tint_core_inst_mouse_xy_rsc_mgc_in_wire_d <= mouse_xy_rsc_mgc_in_wire_d;

END v1;


