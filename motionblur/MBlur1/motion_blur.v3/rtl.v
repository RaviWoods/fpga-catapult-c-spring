// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   jb914@EEWS104A-020
//  Generated date: Mon May 11 12:45:32 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    motion_blur_core
// ------------------------------------------------------------------


module motion_blur_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d, offset_rsc_mgc_in_wire_d
);
  input clk;
  input en;
  input arst_n;
  input [149:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;
  input [1:0] offset_rsc_mgc_in_wire_d;


  // Interconnect Declarations
  reg absmax_else_slc_svs;
  reg absmax_1_else_slc_svs;
  reg absmax_2_else_slc_svs;
  reg [9:0] regs_regs_slc_regs_regs_3_1_3_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_20_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_1_1_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_1_6_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_21_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_1_4_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_1_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_22_itm;
  reg [9:0] regs_regs_slc_regs_regs_3_1_7_itm;
  reg [6:0] FRAME_acc_25_itm_1;
  wire [7:0] nl_FRAME_acc_25_itm_1;
  reg [2:0] absmax_slc_absmax_absmax_return_10_itm_1;
  reg [3:0] FRAME_slc_acc_imod_1_itm_1;
  reg absmax_slc_absmax_absmax_return_8_itm_1;
  reg [5:0] FRAME_acc_32_itm_1;
  wire [6:0] nl_FRAME_acc_32_itm_1;
  reg [2:0] absmax_2_slc_absmax_absmax_return_2_10_itm_1;
  reg [3:0] FRAME_slc_acc_imod_2_1_itm_1;
  reg absmax_2_slc_absmax_absmax_return_2_8_itm_1;
  reg [5:0] FRAME_acc_39_itm_1;
  wire [6:0] nl_FRAME_acc_39_itm_1;
  reg [2:0] absmax_1_slc_absmax_absmax_return_1_10_itm_1;
  reg [3:0] FRAME_slc_acc_imod_4_1_itm_1;
  reg absmax_1_slc_absmax_absmax_return_1_8_itm_1;
  reg main_stage_0_2;
  reg [59:0] regs_regs_3_1_sva_3;
  reg [3:0] FRAME_acc_27_itm_1_sg1;
  wire [4:0] nl_FRAME_acc_27_itm_1_sg1;
  reg FRAME_acc_27_itm_2;
  reg [3:0] FRAME_acc_34_itm_1_sg1;
  wire [4:0] nl_FRAME_acc_34_itm_1_sg1;
  reg FRAME_acc_34_itm_2;
  reg [3:0] FRAME_acc_41_itm_1_sg1;
  wire [4:0] nl_FRAME_acc_41_itm_1_sg1;
  reg FRAME_acc_41_itm_2;
  wire [15:0] blue_2_sva_1;
  wire [16:0] nl_blue_2_sva_1;
  wire [15:0] green_2_sva_1;
  wire [16:0] nl_green_2_sva_1;
  wire [15:0] red_2_sva_1;
  wire [16:0] nl_red_2_sva_1;
  reg [89:0] reg_regs_regs_2_1_sva_1_cse;
  reg [89:0] reg_regs_regs_0_1_sva_cse;
  wire [6:0] absmax_2_if_acc_itm;
  wire [7:0] nl_absmax_2_if_acc_itm;
  wire [6:0] absmax_1_if_acc_itm;
  wire [7:0] nl_absmax_1_if_acc_itm;
  wire [6:0] absmax_if_acc_itm;
  wire [7:0] nl_absmax_if_acc_itm;
  wire absmax_else_slc_svs_mx0;
  wire absmax_1_else_slc_svs_mx0;
  wire absmax_2_else_slc_svs_mx0;
  wire equal_tmp;
  wire equal_tmp_1;
  wire equal_tmp_2;
  wire [9:0] absmax_absmax_return_4_lpi_1_dfm_1;
  wire [6:0] acc_imod_4_sva;
  wire [7:0] nl_acc_imod_4_sva;
  wire [3:0] FRAME_acc_40_sdt;
  wire [4:0] nl_FRAME_acc_40_sdt;
  wire [9:0] absmax_absmax_return_5_lpi_1_dfm_1;
  wire [6:0] acc_imod_2_sva;
  wire [7:0] nl_acc_imod_2_sva;
  wire [3:0] FRAME_acc_33_sdt;
  wire [4:0] nl_FRAME_acc_33_sdt;
  wire [9:0] absmax_absmax_return_3_lpi_1_dfm_1;
  wire [6:0] acc_imod_sva;
  wire [7:0] nl_acc_imod_sva;
  wire [3:0] FRAME_acc_26_sdt;
  wire [4:0] nl_FRAME_acc_26_sdt;
  wire [4:0] FRAME_acc_18_sdt;
  wire [5:0] nl_FRAME_acc_18_sdt;
  wire [4:0] FRAME_acc_13_sdt;
  wire [5:0] nl_FRAME_acc_13_sdt;
  wire [4:0] FRAME_acc_8_sdt;
  wire [5:0] nl_FRAME_acc_8_sdt;
  wire FRAME_nor_itm;

  wire[9:0] absmax_1_else_mux_nl;
  wire[9:0] absmax_2_else_mux_nl;
  wire[9:0] absmax_else_mux_nl;

  // Interconnect Declarations for Component Instantiations 
  assign absmax_else_slc_svs_mx0 = MUX_s_1_2_2({(readslicef_17_1_16((conv_s2s_16_17(~
      red_2_sva_1) + 17'b1))) , absmax_else_slc_svs}, absmax_if_acc_itm[6]);
  assign nl_red_2_sva_1 = conv_u2u_14_16(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[59:50])
      & ({{9{FRAME_nor_itm}}, FRAME_nor_itm})) + conv_u2u_10_11(reg_regs_regs_2_1_sva_1_cse[59:50]))
      + conv_u2u_11_12(conv_u2u_10_11((regs_regs_3_1_sva_3[59:50]) & ({{9{FRAME_nor_itm}},
      FRAME_nor_itm})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_3_itm & ({{9{FRAME_nor_itm}},
      FRAME_nor_itm})))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((vin_rsc_mgc_in_wire_d[89:80])
      & ({{9{FRAME_nor_itm}}, FRAME_nor_itm})) + conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[89:80])
      & ({{9{equal_tmp}}, equal_tmp}))) + conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_2_1_sva_1_cse[89:80])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_20_itm
      & ({{9{equal_tmp_2}}, equal_tmp_2}))))) + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11((vin_rsc_mgc_in_wire_d[29:20])
      & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[29:20])
      & ({{9{equal_tmp_2}}, equal_tmp_2}))) + conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[29:20])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_1_itm
      & ({{9{equal_tmp_2}}, equal_tmp_2}))))) + conv_s2u_14_16(conv_s2s_12_14(conv_s2s_11_12({1'b1
      , (~ regs_regs_slc_regs_regs_3_1_1_itm)}) + conv_u2s_11_12({((reg_regs_regs_2_1_sva_1_cse[29:20])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) , 1'b1})) + conv_u2s_12_14({(conv_u2u_10_11((regs_regs_3_1_sva_3[29:20])
      & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_9_11((vin_rsc_mgc_in_wire_d[29:21])
      & ({{8{equal_tmp_2}}, equal_tmp_2}))) , ((vin_rsc_mgc_in_wire_d[20]) & equal_tmp_2)}));
  assign red_2_sva_1 = nl_red_2_sva_1[15:0];
  assign absmax_1_else_slc_svs_mx0 = MUX_s_1_2_2({(readslicef_17_1_16((conv_s2s_16_17(~
      green_2_sva_1) + 17'b1))) , absmax_1_else_slc_svs}, absmax_1_if_acc_itm[6]);
  assign nl_green_2_sva_1 = conv_u2u_14_16(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[49:40])
      & ({{9{FRAME_nor_itm}}, FRAME_nor_itm})) + conv_u2u_10_11(reg_regs_regs_2_1_sva_1_cse[49:40]))
      + conv_u2u_11_12(conv_u2u_10_11((regs_regs_3_1_sva_3[49:40]) & ({{9{FRAME_nor_itm}},
      FRAME_nor_itm})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_6_itm & ({{9{FRAME_nor_itm}},
      FRAME_nor_itm})))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((vin_rsc_mgc_in_wire_d[79:70])
      & ({{9{FRAME_nor_itm}}, FRAME_nor_itm})) + conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[79:70])
      & ({{9{equal_tmp}}, equal_tmp}))) + conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_2_1_sva_1_cse[79:70])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_21_itm
      & ({{9{equal_tmp_2}}, equal_tmp_2}))))) + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11((vin_rsc_mgc_in_wire_d[19:10])
      & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[19:10])
      & ({{9{equal_tmp_2}}, equal_tmp_2}))) + conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[19:10])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_4_itm
      & ({{9{equal_tmp_2}}, equal_tmp_2}))))) + conv_s2u_14_16(conv_s2s_12_14(conv_s2s_11_12({1'b1
      , (~ regs_regs_slc_regs_regs_3_1_4_itm)}) + conv_u2s_11_12({((reg_regs_regs_2_1_sva_1_cse[19:10])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) , 1'b1})) + conv_u2s_12_14({(conv_u2u_10_11((regs_regs_3_1_sva_3[19:10])
      & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_9_11((vin_rsc_mgc_in_wire_d[19:11])
      & ({{8{equal_tmp_2}}, equal_tmp_2}))) , ((vin_rsc_mgc_in_wire_d[10]) & equal_tmp_2)}));
  assign green_2_sva_1 = nl_green_2_sva_1[15:0];
  assign absmax_2_else_slc_svs_mx0 = MUX_s_1_2_2({(readslicef_17_1_16((conv_s2s_16_17(~
      blue_2_sva_1) + 17'b1))) , absmax_2_else_slc_svs}, absmax_2_if_acc_itm[6]);
  assign nl_blue_2_sva_1 = conv_u2u_14_16(conv_u2u_13_14(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[39:30])
      & ({{9{FRAME_nor_itm}}, FRAME_nor_itm})) + conv_u2u_10_11(reg_regs_regs_2_1_sva_1_cse[39:30]))
      + conv_u2u_11_12(conv_u2u_10_11((regs_regs_3_1_sva_3[39:30]) & ({{9{FRAME_nor_itm}},
      FRAME_nor_itm})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_itm & ({{9{FRAME_nor_itm}},
      FRAME_nor_itm})))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((vin_rsc_mgc_in_wire_d[69:60])
      & ({{9{FRAME_nor_itm}}, FRAME_nor_itm})) + conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[69:60])
      & ({{9{equal_tmp}}, equal_tmp}))) + conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_2_1_sva_1_cse[69:60])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_22_itm
      & ({{9{equal_tmp_2}}, equal_tmp_2}))))) + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11((vin_rsc_mgc_in_wire_d[9:0])
      & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[9:0])
      & ({{9{equal_tmp_2}}, equal_tmp_2}))) + conv_u2u_11_12(conv_u2u_10_11((reg_regs_regs_0_1_sva_cse[9:0])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_7_itm
      & ({{9{equal_tmp_2}}, equal_tmp_2}))))) + conv_s2u_14_16(conv_s2s_12_14(conv_s2s_11_12({1'b1
      , (~ regs_regs_slc_regs_regs_3_1_7_itm)}) + conv_u2s_11_12({((reg_regs_regs_2_1_sva_1_cse[9:0])
      & ({{9{equal_tmp_1}}, equal_tmp_1})) , 1'b1})) + conv_u2s_12_14({(conv_u2u_10_11((regs_regs_3_1_sva_3[9:0])
      & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_9_11((vin_rsc_mgc_in_wire_d[9:1])
      & ({{8{equal_tmp_2}}, equal_tmp_2}))) , ((vin_rsc_mgc_in_wire_d[0]) & equal_tmp_2)}));
  assign blue_2_sva_1 = nl_blue_2_sva_1[15:0];
  assign nl_absmax_2_if_acc_itm = conv_s2u_6_7(~ (blue_2_sva_1[15:10])) + 7'b1;
  assign absmax_2_if_acc_itm = nl_absmax_2_if_acc_itm[6:0];
  assign nl_absmax_1_if_acc_itm = conv_s2u_6_7(~ (green_2_sva_1[15:10])) + 7'b1;
  assign absmax_1_if_acc_itm = nl_absmax_1_if_acc_itm[6:0];
  assign nl_absmax_if_acc_itm = conv_s2u_6_7(~ (red_2_sva_1[15:10])) + 7'b1;
  assign absmax_if_acc_itm = nl_absmax_if_acc_itm[6:0];
  assign equal_tmp = (offset_rsc_mgc_in_wire_d[0]) & (~ (offset_rsc_mgc_in_wire_d[1]));
  assign equal_tmp_1 = (offset_rsc_mgc_in_wire_d[1]) & (~ (offset_rsc_mgc_in_wire_d[0]));
  assign equal_tmp_2 = (offset_rsc_mgc_in_wire_d[1]) & (offset_rsc_mgc_in_wire_d[0]);
  assign absmax_1_else_mux_nl = MUX_v_10_2_2({((~ (green_2_sva_1[9:0])) + 10'b1)
      , (green_2_sva_1[9:0])}, absmax_1_else_slc_svs_mx0);
  assign absmax_absmax_return_4_lpi_1_dfm_1 = (absmax_1_else_mux_nl) | (signext_10_1(absmax_1_if_acc_itm[6]));
  assign nl_acc_imod_4_sva = ({1'b1 , (conv_s2u_4_5(FRAME_acc_18_sdt[4:1]) + 5'b10001)
      , (FRAME_acc_18_sdt[0])}) + conv_u2s_6_7(conv_u2u_5_6({(conv_u2u_3_4(absmax_absmax_return_4_lpi_1_dfm_1[9:7])
      + conv_u2u_3_4({(~ (absmax_absmax_return_4_lpi_1_dfm_1[4])) , 2'b11})) , (~
      (absmax_absmax_return_4_lpi_1_dfm_1[4]))}) + conv_u2u_5_6(conv_u2u_4_5({(absmax_absmax_return_4_lpi_1_dfm_1[5])
      , (absmax_absmax_return_4_lpi_1_dfm_1[9:7])}) + conv_u2u_4_5({3'b111 , (~ (absmax_absmax_return_4_lpi_1_dfm_1[5]))})));
  assign acc_imod_4_sva = nl_acc_imod_4_sva[6:0];
  assign nl_FRAME_acc_40_sdt = ({(~ (acc_imod_4_sva[4])) , 2'b11 , (~ (acc_imod_4_sva[4]))})
      + conv_s2u_2_4(~ (acc_imod_4_sva[6:5]));
  assign FRAME_acc_40_sdt = nl_FRAME_acc_40_sdt[3:0];
  assign absmax_2_else_mux_nl = MUX_v_10_2_2({((~ (blue_2_sva_1[9:0])) + 10'b1) ,
      (blue_2_sva_1[9:0])}, absmax_2_else_slc_svs_mx0);
  assign absmax_absmax_return_5_lpi_1_dfm_1 = (absmax_2_else_mux_nl) | (signext_10_1(absmax_2_if_acc_itm[6]));
  assign nl_acc_imod_2_sva = ({1'b1 , (conv_s2u_4_5(FRAME_acc_13_sdt[4:1]) + 5'b10001)
      , (FRAME_acc_13_sdt[0])}) + conv_u2s_6_7(conv_u2u_5_6({(conv_u2u_3_4(absmax_absmax_return_5_lpi_1_dfm_1[9:7])
      + conv_u2u_3_4({(~ (absmax_absmax_return_5_lpi_1_dfm_1[4])) , 2'b11})) , (~
      (absmax_absmax_return_5_lpi_1_dfm_1[4]))}) + conv_u2u_5_6(conv_u2u_4_5({(absmax_absmax_return_5_lpi_1_dfm_1[5])
      , (absmax_absmax_return_5_lpi_1_dfm_1[9:7])}) + conv_u2u_4_5({3'b111 , (~ (absmax_absmax_return_5_lpi_1_dfm_1[5]))})));
  assign acc_imod_2_sva = nl_acc_imod_2_sva[6:0];
  assign nl_FRAME_acc_33_sdt = ({(~ (acc_imod_2_sva[4])) , 2'b11 , (~ (acc_imod_2_sva[4]))})
      + conv_s2u_2_4(~ (acc_imod_2_sva[6:5]));
  assign FRAME_acc_33_sdt = nl_FRAME_acc_33_sdt[3:0];
  assign absmax_else_mux_nl = MUX_v_10_2_2({((~ (red_2_sva_1[9:0])) + 10'b1) , (red_2_sva_1[9:0])},
      absmax_else_slc_svs_mx0);
  assign absmax_absmax_return_3_lpi_1_dfm_1 = (absmax_else_mux_nl) | (signext_10_1(absmax_if_acc_itm[6]));
  assign nl_acc_imod_sva = ({1'b1 , (conv_s2u_4_5(FRAME_acc_8_sdt[4:1]) + 5'b10001)
      , (FRAME_acc_8_sdt[0])}) + conv_u2s_6_7(conv_u2u_5_6({(conv_u2u_3_4(absmax_absmax_return_3_lpi_1_dfm_1[9:7])
      + conv_u2u_3_4({(~ (absmax_absmax_return_3_lpi_1_dfm_1[4])) , 2'b11})) , (~
      (absmax_absmax_return_3_lpi_1_dfm_1[4]))}) + conv_u2u_5_6(conv_u2u_4_5({(absmax_absmax_return_3_lpi_1_dfm_1[5])
      , (absmax_absmax_return_3_lpi_1_dfm_1[9:7])}) + conv_u2u_4_5({3'b111 , (~ (absmax_absmax_return_3_lpi_1_dfm_1[5]))})));
  assign acc_imod_sva = nl_acc_imod_sva[6:0];
  assign nl_FRAME_acc_26_sdt = ({(~ (acc_imod_sva[4])) , 2'b11 , (~ (acc_imod_sva[4]))})
      + conv_s2u_2_4(~ (acc_imod_sva[6:5]));
  assign FRAME_acc_26_sdt = nl_FRAME_acc_26_sdt[3:0];
  assign nl_FRAME_acc_18_sdt = ({(absmax_absmax_return_4_lpi_1_dfm_1[6]) , 1'b0 ,
      (absmax_absmax_return_4_lpi_1_dfm_1[6]) , 1'b0 , (absmax_absmax_return_4_lpi_1_dfm_1[6])})
      + conv_u2s_4_5(absmax_absmax_return_4_lpi_1_dfm_1[3:0]);
  assign FRAME_acc_18_sdt = nl_FRAME_acc_18_sdt[4:0];
  assign nl_FRAME_acc_13_sdt = ({(absmax_absmax_return_5_lpi_1_dfm_1[6]) , 1'b0 ,
      (absmax_absmax_return_5_lpi_1_dfm_1[6]) , 1'b0 , (absmax_absmax_return_5_lpi_1_dfm_1[6])})
      + conv_u2s_4_5(absmax_absmax_return_5_lpi_1_dfm_1[3:0]);
  assign FRAME_acc_13_sdt = nl_FRAME_acc_13_sdt[4:0];
  assign nl_FRAME_acc_8_sdt = ({(absmax_absmax_return_3_lpi_1_dfm_1[6]) , 1'b0 ,
      (absmax_absmax_return_3_lpi_1_dfm_1[6]) , 1'b0 , (absmax_absmax_return_3_lpi_1_dfm_1[6])})
      + conv_u2s_4_5(absmax_absmax_return_3_lpi_1_dfm_1[3:0]);
  assign FRAME_acc_8_sdt = nl_FRAME_acc_8_sdt[4:0];
  assign FRAME_nor_itm = ~(equal_tmp | equal_tmp_1 | equal_tmp_2);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      FRAME_acc_25_itm_1 <= 7'b0;
      absmax_slc_absmax_absmax_return_10_itm_1 <= 3'b0;
      FRAME_acc_27_itm_1_sg1 <= 4'b0;
      FRAME_acc_27_itm_2 <= 1'b0;
      FRAME_slc_acc_imod_1_itm_1 <= 4'b0;
      absmax_slc_absmax_absmax_return_8_itm_1 <= 1'b0;
      FRAME_acc_32_itm_1 <= 6'b0;
      absmax_2_slc_absmax_absmax_return_2_10_itm_1 <= 3'b0;
      FRAME_acc_34_itm_1_sg1 <= 4'b0;
      FRAME_acc_34_itm_2 <= 1'b0;
      FRAME_slc_acc_imod_2_1_itm_1 <= 4'b0;
      absmax_2_slc_absmax_absmax_return_2_8_itm_1 <= 1'b0;
      FRAME_acc_39_itm_1 <= 6'b0;
      absmax_1_slc_absmax_absmax_return_1_10_itm_1 <= 3'b0;
      FRAME_acc_41_itm_1_sg1 <= 4'b0;
      FRAME_acc_41_itm_2 <= 1'b0;
      FRAME_slc_acc_imod_4_1_itm_1 <= 4'b0;
      absmax_1_slc_absmax_absmax_return_1_8_itm_1 <= 1'b0;
      absmax_else_slc_svs <= 1'b0;
      absmax_1_else_slc_svs <= 1'b0;
      absmax_2_else_slc_svs <= 1'b0;
      reg_regs_regs_0_1_sva_cse <= 90'b0;
      reg_regs_regs_2_1_sva_1_cse <= 90'b0;
      regs_regs_3_1_sva_3 <= 60'b0;
      regs_regs_slc_regs_regs_3_1_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_22_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_1_7_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_1_6_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_21_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_1_4_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_1_3_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_20_itm <= 10'b0;
      regs_regs_slc_regs_regs_3_1_1_itm <= 10'b0;
      main_stage_0_2 <= 1'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({vout_rsc_mgc_out_stdreg_d , ({(signext_10_7(FRAME_acc_25_itm_1
            + conv_s2s_5_7(conv_u2s_3_5(absmax_slc_absmax_absmax_return_10_itm_1)
            + conv_s2s_2_5(conv_s2s_1_2(readslicef_6_1_5((conv_u2s_5_6({FRAME_acc_27_itm_1_sg1
            , FRAME_acc_27_itm_2}) + conv_s2s_5_6({1'b1 , FRAME_slc_acc_imod_1_itm_1}))))
            + conv_u2s_1_2(absmax_slc_absmax_absmax_return_8_itm_1))))) , 4'b0 ,
            (FRAME_acc_32_itm_1 + conv_s2u_5_6(conv_u2s_3_5(absmax_2_slc_absmax_absmax_return_2_10_itm_1)
            + conv_s2s_2_5(conv_s2s_1_2(readslicef_6_1_5((conv_u2s_5_6({FRAME_acc_34_itm_1_sg1
            , FRAME_acc_34_itm_2}) + conv_s2s_5_6({1'b1 , FRAME_slc_acc_imod_2_1_itm_1}))))
            + conv_u2s_1_2(absmax_2_slc_absmax_absmax_return_2_8_itm_1)))) , 4'b0
            , (FRAME_acc_39_itm_1 + conv_s2u_5_6(conv_u2s_3_5(absmax_1_slc_absmax_absmax_return_1_10_itm_1)
            + conv_s2s_2_5(conv_s2s_1_2(readslicef_6_1_5((conv_u2s_5_6({FRAME_acc_41_itm_1_sg1
            , FRAME_acc_41_itm_2}) + conv_s2s_5_6({1'b1 , FRAME_slc_acc_imod_4_1_itm_1}))))
            + conv_u2s_1_2(absmax_1_slc_absmax_absmax_return_1_8_itm_1))))})}, main_stage_0_2);
        FRAME_acc_25_itm_1 <= nl_FRAME_acc_25_itm_1[6:0];
        absmax_slc_absmax_absmax_return_10_itm_1 <= absmax_absmax_return_3_lpi_1_dfm_1[9:7];
        FRAME_acc_27_itm_1_sg1 <= nl_FRAME_acc_27_itm_1_sg1[3:0];
        FRAME_acc_27_itm_2 <= FRAME_acc_26_sdt[0];
        FRAME_slc_acc_imod_1_itm_1 <= acc_imod_sva[3:0];
        absmax_slc_absmax_absmax_return_8_itm_1 <= absmax_absmax_return_3_lpi_1_dfm_1[5];
        FRAME_acc_32_itm_1 <= nl_FRAME_acc_32_itm_1[5:0];
        absmax_2_slc_absmax_absmax_return_2_10_itm_1 <= absmax_absmax_return_5_lpi_1_dfm_1[9:7];
        FRAME_acc_34_itm_1_sg1 <= nl_FRAME_acc_34_itm_1_sg1[3:0];
        FRAME_acc_34_itm_2 <= FRAME_acc_33_sdt[0];
        FRAME_slc_acc_imod_2_1_itm_1 <= acc_imod_2_sva[3:0];
        absmax_2_slc_absmax_absmax_return_2_8_itm_1 <= absmax_absmax_return_5_lpi_1_dfm_1[5];
        FRAME_acc_39_itm_1 <= nl_FRAME_acc_39_itm_1[5:0];
        absmax_1_slc_absmax_absmax_return_1_10_itm_1 <= absmax_absmax_return_4_lpi_1_dfm_1[9:7];
        FRAME_acc_41_itm_1_sg1 <= nl_FRAME_acc_41_itm_1_sg1[3:0];
        FRAME_acc_41_itm_2 <= FRAME_acc_40_sdt[0];
        FRAME_slc_acc_imod_4_1_itm_1 <= acc_imod_4_sva[3:0];
        absmax_1_slc_absmax_absmax_return_1_8_itm_1 <= absmax_absmax_return_4_lpi_1_dfm_1[5];
        absmax_else_slc_svs <= absmax_else_slc_svs_mx0;
        absmax_1_else_slc_svs <= absmax_1_else_slc_svs_mx0;
        absmax_2_else_slc_svs <= absmax_2_else_slc_svs_mx0;
        reg_regs_regs_0_1_sva_cse <= vin_rsc_mgc_in_wire_d[89:0];
        reg_regs_regs_2_1_sva_1_cse <= reg_regs_regs_0_1_sva_cse;
        regs_regs_3_1_sva_3 <= reg_regs_regs_2_1_sva_1_cse[59:0];
        regs_regs_slc_regs_regs_3_1_itm <= regs_regs_3_1_sva_3[39:30];
        regs_regs_slc_regs_regs_3_22_itm <= reg_regs_regs_2_1_sva_1_cse[69:60];
        regs_regs_slc_regs_regs_3_1_7_itm <= regs_regs_3_1_sva_3[9:0];
        regs_regs_slc_regs_regs_3_1_6_itm <= regs_regs_3_1_sva_3[49:40];
        regs_regs_slc_regs_regs_3_21_itm <= reg_regs_regs_2_1_sva_1_cse[79:70];
        regs_regs_slc_regs_regs_3_1_4_itm <= regs_regs_3_1_sva_3[19:10];
        regs_regs_slc_regs_regs_3_1_3_itm <= regs_regs_3_1_sva_3[59:50];
        regs_regs_slc_regs_regs_3_20_itm <= reg_regs_regs_2_1_sva_1_cse[89:80];
        regs_regs_slc_regs_regs_3_1_1_itm <= regs_regs_3_1_sva_3[29:20];
        main_stage_0_2 <= 1'b1;
      end
    end
  end
  assign nl_FRAME_acc_25_itm_1  = conv_u2s_5_7({(absmax_absmax_return_3_lpi_1_dfm_1[9:6])
      , (absmax_absmax_return_3_lpi_1_dfm_1[4])}) + conv_s2s_3_7(conv_u2s_2_3(conv_u2u_1_2(absmax_absmax_return_3_lpi_1_dfm_1[6])
      + conv_u2u_1_2(acc_imod_sva[4])) + conv_s2s_2_3(acc_imod_sva[6:5]));
  assign nl_FRAME_acc_27_itm_1_sg1  = ({(acc_imod_sva[6:5]) , 2'b1}) + conv_u2u_3_4({(FRAME_acc_26_sdt[3])
      , 1'b1 , (FRAME_acc_26_sdt[1])});
  assign nl_FRAME_acc_32_itm_1  = conv_u2s_5_6({(absmax_absmax_return_5_lpi_1_dfm_1[9:6])
      , (absmax_absmax_return_5_lpi_1_dfm_1[4])}) + conv_s2s_3_6(conv_u2s_2_3(conv_u2u_1_2(absmax_absmax_return_5_lpi_1_dfm_1[6])
      + conv_u2u_1_2(acc_imod_2_sva[4])) + conv_s2s_2_3(acc_imod_2_sva[6:5]));
  assign nl_FRAME_acc_34_itm_1_sg1  = ({(acc_imod_2_sva[6:5]) , 2'b1}) + conv_u2u_3_4({(FRAME_acc_33_sdt[3])
      , 1'b1 , (FRAME_acc_33_sdt[1])});
  assign nl_FRAME_acc_39_itm_1  = conv_u2s_5_6({(absmax_absmax_return_4_lpi_1_dfm_1[9:6])
      , (absmax_absmax_return_4_lpi_1_dfm_1[4])}) + conv_s2s_3_6(conv_u2s_2_3(conv_u2u_1_2(absmax_absmax_return_4_lpi_1_dfm_1[6])
      + conv_u2u_1_2(acc_imod_4_sva[4])) + conv_s2s_2_3(acc_imod_4_sva[6:5]));
  assign nl_FRAME_acc_41_itm_1_sg1  = ({(acc_imod_4_sva[6:5]) , 2'b1}) + conv_u2u_3_4({(FRAME_acc_40_sdt[3])
      , 1'b1 , (FRAME_acc_40_sdt[1])});

  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function [0:0] readslicef_17_1_16;
    input [16:0] vector;
    reg [16:0] tmp;
  begin
    tmp = vector >> 16;
    readslicef_17_1_16 = tmp[0:0];
  end
  endfunction


  function [9:0] MUX_v_10_2_2;
    input [19:0] inputs;
    input [0:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[19:10];
      end
      1'b1 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[19:10];
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
  end
  endfunction


  function [29:0] MUX_v_30_2_2;
    input [59:0] inputs;
    input [0:0] sel;
    reg [29:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[59:30];
      end
      1'b1 : begin
        result = inputs[29:0];
      end
      default : begin
        result = inputs[59:30];
      end
    endcase
    MUX_v_30_2_2 = result;
  end
  endfunction


  function [0:0] readslicef_6_1_5;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 5;
    readslicef_6_1_5 = tmp[0:0];
  end
  endfunction


  function [9:0] signext_10_7;
    input [6:0] vector;
  begin
    signext_10_7= {{3{vector[6]}}, vector};
  end
  endfunction


  function signed [16:0] conv_s2s_16_17 ;
    input signed [15:0]  vector ;
  begin
    conv_s2s_16_17 = {vector[15], vector};
  end
  endfunction


  function  [15:0] conv_u2u_14_16 ;
    input [13:0]  vector ;
  begin
    conv_u2u_14_16 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [13:0] conv_u2u_13_14 ;
    input [12:0]  vector ;
  begin
    conv_u2u_13_14 = {1'b0, vector};
  end
  endfunction


  function  [12:0] conv_u2u_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_13 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [13:0] conv_u2u_12_14 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_14 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [15:0] conv_s2u_14_16 ;
    input signed [13:0]  vector ;
  begin
    conv_s2u_14_16 = {{2{vector[13]}}, vector};
  end
  endfunction


  function signed [13:0] conv_s2s_12_14 ;
    input signed [11:0]  vector ;
  begin
    conv_s2s_12_14 = {{2{vector[11]}}, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_12 = {vector[10], vector};
  end
  endfunction


  function signed [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 = {1'b0, vector};
  end
  endfunction


  function signed [13:0] conv_u2s_12_14 ;
    input [11:0]  vector ;
  begin
    conv_u2s_12_14 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [6:0] conv_s2u_6_7 ;
    input signed [5:0]  vector ;
  begin
    conv_s2u_6_7 = {vector[5], vector};
  end
  endfunction


  function  [4:0] conv_s2u_4_5 ;
    input signed [3:0]  vector ;
  begin
    conv_s2u_4_5 = {vector[3], vector};
  end
  endfunction


  function signed [6:0] conv_u2s_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2s_6_7 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_s2u_2_4 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_4 = {{2{vector[1]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_5_7 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_7 = {{2{vector[4]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2s_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [4:0] conv_s2s_2_5 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_5 = {{3{vector[1]}}, vector};
  end
  endfunction


  function signed [1:0] conv_s2s_1_2 ;
    input signed [0:0]  vector ;
  begin
    conv_s2s_1_2 = {vector[0], vector};
  end
  endfunction


  function signed [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 = {1'b0, vector};
  end
  endfunction


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
  end
  endfunction


  function signed [1:0] conv_u2s_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_2 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_s2u_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2u_5_6 = {vector[4], vector};
  end
  endfunction


  function signed [6:0] conv_u2s_5_7 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_7 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_3_7 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_7 = {{4{vector[2]}}, vector};
  end
  endfunction


  function signed [2:0] conv_u2s_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_3 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [2:0] conv_s2s_2_3 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_3 = {vector[1], vector};
  end
  endfunction


  function signed [5:0] conv_s2s_3_6 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_6 = {{3{vector[2]}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    motion_blur
//  Generated from file(s):
//    4) $PROJECT_HOME/motionblur1.c
// ------------------------------------------------------------------


module motion_blur (
  vin_rsc_z, vout_rsc_z, offset_rsc_z, clk, en, arst_n
);
  input [149:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input [1:0] offset_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [149:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;
  wire [1:0] offset_rsc_mgc_in_wire_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(150)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  mgc_in_wire #(.rscid(3),
  .width(2)) offset_rsc_mgc_in_wire (
      .d(offset_rsc_mgc_in_wire_d),
      .z(offset_rsc_z)
    );
  motion_blur_core motion_blur_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d),
      .offset_rsc_mgc_in_wire_d(offset_rsc_mgc_in_wire_d)
    );
endmodule


