// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   rbw14@EEWS104A-005
//  Generated date: Fri May 01 16:30:11 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    sharpen_core
// ------------------------------------------------------------------


module sharpen_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [269:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire [15:0] ACC3_acc_2_tmp;
  wire [16:0] nl_ACC3_acc_2_tmp;
  wire [1:0] SHIFT_mux_13_tmp;
  wire or_dcpl_3;
  wire or_dcpl_4;
  wire and_dcpl;
  wire or_dcpl_13;
  reg [15:0] red_lpi_1;
  reg [15:0] green_lpi_1;
  reg [15:0] blue_lpi_1;
  reg [15:0] bluearray_1_lpi_1;
  reg [15:0] bluearray_0_lpi_1;
  reg [15:0] bluearray_2_lpi_1;
  reg [15:0] greenarray_1_lpi_1;
  reg [15:0] greenarray_0_lpi_1;
  reg [15:0] greenarray_2_lpi_1;
  reg [15:0] redarray_1_lpi_1;
  reg [15:0] redarray_0_lpi_1;
  reg [15:0] redarray_2_lpi_1;
  reg exit_ACC_GX_1_lpi_1;
  reg exit_SHIFT_lpi_1;
  reg [1:0] FRAME_a_3_lpi_1;
  reg [1:0] FRAME_a_4_lpi_1;
  reg [1:0] FRAME_i_1_lpi_1;
  reg [89:0] regs_regs_1_sva;
  reg [89:0] regs_regs_0_sva;
  reg [89:0] regs_regs_2_sva;
  reg exit_FRAME_1_sva;
  reg [89:0] regs_operator_din_lpi_1_dfm;
  reg exit_ACC_GX_for_sva;
  reg [1:0] FRAME_p_1_lpi_1_dfm_3;
  reg exit_FRAME_lpi_1_dfm_3;
  reg exit_ACC3_lpi_1_dfm_5;
  reg [1:0] SHIFT_i_1_lpi_3;
  wire and_14_cse;
  wire and_11_cse;
  wire [15:0] green_lpi_1_dfm_1;
  wire [15:0] greenarray_2_lpi_1_dfm_1;
  wire [15:0] greenarray_1_lpi_1_dfm_1;
  wire [15:0] greenarray_0_lpi_1_dfm_1;
  wire [15:0] red_lpi_1_dfm_1;
  wire [15:0] redarray_2_lpi_1_dfm_1;
  wire [15:0] redarray_1_lpi_1_dfm_1;
  wire [15:0] redarray_0_lpi_1_dfm_1;
  wire exit_SHIFT_lpi_1_dfm_1;
  wire [15:0] red_sva_2;
  wire [16:0] nl_red_sva_2;
  wire [15:0] green_sva_2;
  wire [16:0] nl_green_sva_2;
  wire exit_ACC_GX_for_sva_mx0;
  wire exit_ACC_GX_1_lpi_1_dfm_1;
  wire [1:0] FRAME_a_4_sva;
  wire [2:0] nl_FRAME_a_4_sva;
  wire [1:0] SHIFT_acc_1_psp;
  wire [2:0] nl_SHIFT_acc_1_psp;
  wire or_18_cse;
  wire or_23_cse;
  wire or_28_cse;
  wire or_6_cse;
  wire exit_ACC_GX_1_sva_1;
  wire or_dcpl;
  wire and_dcpl_21;
  wire not_tmp_14;
  wire and_dcpl_24;
  wire and_dcpl_25;
  wire ACC_GX_and_14_tmp;
  wire exit_ACC3_lpi_1_dfm;
  wire [1:0] FRAME_a_3_sva;
  wire [2:0] nl_FRAME_a_3_sva;
  wire [1:0] FRAME_i_1_sva;
  wire [2:0] nl_FRAME_i_1_sva;
  wire [89:0] regs_operator_slc_regs_regs_cse_sva;
  wire [4:0] ACC_GX_for_acc_16_psp_sva;
  wire [5:0] nl_ACC_GX_for_acc_16_psp_sva;
  wire [1:0] ACC3_acc_itm;
  wire [2:0] nl_ACC3_acc_itm;
  wire [9:0] ACC_GX_for_rshift_itm;
  wire [1:0] ACC_GX_acc_itm;
  wire [2:0] nl_ACC_GX_acc_itm;
  wire [2:0] ACC_GX_for_acc_17_itm;
  wire [3:0] nl_ACC_GX_for_acc_17_itm;
  wire ACC_GX_for_mux_16_itm;
  wire mux_27_itm;
  wire [15:0] AbsAndMax_AbsAndMax_return_1_lpi_1_dfm_mx0;
  wire [15:0] AbsAndMax_AbsAndMax_return_2_lpi_1_dfm_1;
  wire AbsAndMax_1_and_seb;
  wire [15:0] blue_lpi_1_dfm;
  wire [15:0] bluearray_2_lpi_1_dfm;
  wire [15:0] bluearray_1_lpi_1_dfm;
  wire [15:0] bluearray_0_lpi_1_dfm;
  wire exit_ACC3_lpi_1_dfm_5_mx0;
  wire [1:0] FRAME_p_1_sva_1;
  wire [2:0] nl_FRAME_p_1_sva_1;
  wire SHIFT_and_36_cse;
  wire exit_FRAME_lpi_1_dfm;
  wire [15:0] ACC_GX_for_acc_9_ctmp_sva;
  wire [16:0] nl_ACC_GX_for_acc_9_ctmp_sva;
  wire [15:0] ACC_GX_for_acc_5_ctmp_sva;
  wire [16:0] nl_ACC_GX_for_acc_5_ctmp_sva;
  wire [15:0] ACC_GX_for_acc_1_ctmp_sva;
  wire [16:0] nl_ACC_GX_for_acc_1_ctmp_sva;
  wire [1:0] FRAME_p_1_lpi_1_dfm;
  wire exit_FRAME_lpi_1_dfm_3_mx0;
  wire [89:0] regs_operator_din_lpi_1_dfm_mx0;
  wire [6:0] AbsAndMax_1_if_acc_itm;
  wire [7:0] nl_AbsAndMax_1_if_acc_itm;
  wire [6:0] AbsAndMax_2_if_acc_itm;
  wire [7:0] nl_AbsAndMax_2_if_acc_itm;
  wire [1:0] ACC_GX_for_acc_itm;
  wire [2:0] nl_ACC_GX_for_acc_itm;

  wire[15:0] ACC3_mux_nl;
  wire[15:0] ACC3_mux_5_nl;
  wire[15:0] ACC3_mux_6_nl;
  wire[15:0] ACC_GX_for_mux_19_nl;
  wire[9:0] ACC_GX_for_mux_20_nl;
  wire[15:0] ACC_GX_for_mux_17_nl;
  wire[9:0] ACC_GX_for_mux_18_nl;
  wire[15:0] ACC_GX_for_mux_nl;
  wire[0:0] ACC_GX_for_mux_15_nl;
  wire[1:0] mux_3_nl;
  wire[0:0] ACC_GX_mux_35_nl;
  wire[0:0] ACC3_mux_4_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [89:0] nl_ACC_GX_for_rshift_rg_a;
  assign nl_ACC_GX_for_rshift_rg_a = ~ regs_operator_slc_regs_regs_cse_sva;
  wire [6:0] nl_ACC_GX_for_rshift_rg_s;
  assign nl_ACC_GX_for_rshift_rg_s = {(conv_u2u_4_5(ACC_GX_for_acc_16_psp_sva[4:1])
      + 5'b101) , (ACC_GX_for_acc_16_psp_sva[0]) , 1'b0};
  mgc_shift_r #(.width_a(90),
  .signd_a(1),
  .width_s(7),
  .width_z(10)) ACC_GX_for_rshift_rg (
      .a(nl_ACC_GX_for_rshift_rg_a),
      .s(nl_ACC_GX_for_rshift_rg_s),
      .z(ACC_GX_for_rshift_itm)
    );
  assign or_6_cse = or_dcpl_4 | (~ exit_ACC_GX_1_lpi_1) | (ACC3_acc_itm[1]);
  assign or_18_cse = or_dcpl_4 | or_dcpl_13 | (~ (FRAME_a_4_lpi_1[1]));
  assign or_23_cse = or_dcpl_4 | exit_ACC_GX_1_lpi_1 | (~ (FRAME_a_4_lpi_1[0])) |
      (FRAME_a_4_lpi_1[1]);
  assign or_28_cse = or_dcpl_4 | or_dcpl_13 | (FRAME_a_4_lpi_1[1]);
  assign ACC3_mux_nl = MUX_v_16_4_2({redarray_0_lpi_1_dfm_1 , redarray_1_lpi_1_dfm_1
      , redarray_2_lpi_1_dfm_1 , 16'b0}, FRAME_a_3_lpi_1);
  assign nl_red_sva_2 = red_lpi_1_dfm_1 + (ACC3_mux_nl);
  assign red_sva_2 = nl_red_sva_2[15:0];
  assign AbsAndMax_AbsAndMax_return_1_lpi_1_dfm_mx0 = MUX_v_16_2_2({({6'b0 , (ACC3_acc_2_tmp[9:0])})
      , (conv_u2u_15_16(~ (ACC3_acc_2_tmp[14:0])) + 16'b1)}, ACC3_acc_2_tmp[15]);
  assign ACC3_mux_5_nl = MUX_v_16_4_2({bluearray_0_lpi_1_dfm , bluearray_1_lpi_1_dfm
      , bluearray_2_lpi_1_dfm , 16'b0}, FRAME_a_3_lpi_1);
  assign nl_ACC3_acc_2_tmp = blue_lpi_1_dfm + (ACC3_mux_5_nl);
  assign ACC3_acc_2_tmp = nl_ACC3_acc_2_tmp[15:0];
  assign ACC3_mux_6_nl = MUX_v_16_4_2({greenarray_0_lpi_1_dfm_1 , greenarray_1_lpi_1_dfm_1
      , greenarray_2_lpi_1_dfm_1 , 16'b0}, FRAME_a_3_lpi_1);
  assign nl_green_sva_2 = green_lpi_1_dfm_1 + (ACC3_mux_6_nl);
  assign green_sva_2 = nl_green_sva_2[15:0];
  assign AbsAndMax_AbsAndMax_return_2_lpi_1_dfm_1 = MUX1HOT_v_16_3_2({({6'b0 , (green_sva_2[9:0])})
      , (conv_u2u_15_16(~ (green_sva_2[14:0])) + 16'b1) , 16'b1111111111}, {(~((green_sva_2[15])
      | (AbsAndMax_2_if_acc_itm[6]))) , ((green_sva_2[15]) & (~ (AbsAndMax_2_if_acc_itm[6])))
      , (AbsAndMax_2_if_acc_itm[6])});
  assign AbsAndMax_1_and_seb = (AbsAndMax_AbsAndMax_return_1_lpi_1_dfm_mx0[15]) &
      (~ (AbsAndMax_1_if_acc_itm[6]));
  assign nl_AbsAndMax_1_if_acc_itm = conv_s2u_6_7(~ (ACC3_acc_2_tmp[15:10])) + 7'b1;
  assign AbsAndMax_1_if_acc_itm = nl_AbsAndMax_1_if_acc_itm[6:0];
  assign nl_AbsAndMax_2_if_acc_itm = conv_s2u_6_7(~ (green_sva_2[15:10])) + 7'b1;
  assign AbsAndMax_2_if_acc_itm = nl_AbsAndMax_2_if_acc_itm[6:0];
  assign nl_ACC3_acc_itm = FRAME_a_3_sva + 2'b1;
  assign ACC3_acc_itm = nl_ACC3_acc_itm[1:0];
  assign nl_FRAME_a_3_sva = FRAME_a_3_lpi_1 + 2'b1;
  assign FRAME_a_3_sva = nl_FRAME_a_3_sva[1:0];
  assign green_lpi_1_dfm_1 = green_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign greenarray_2_lpi_1_dfm_1 = greenarray_2_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign greenarray_1_lpi_1_dfm_1 = greenarray_1_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign greenarray_0_lpi_1_dfm_1 = greenarray_0_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign blue_lpi_1_dfm = blue_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign bluearray_2_lpi_1_dfm = bluearray_2_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign bluearray_1_lpi_1_dfm = bluearray_1_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign bluearray_0_lpi_1_dfm = bluearray_0_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign red_lpi_1_dfm_1 = red_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign redarray_2_lpi_1_dfm_1 = redarray_2_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign redarray_1_lpi_1_dfm_1 = redarray_1_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign redarray_0_lpi_1_dfm_1 = redarray_0_lpi_1 & (signext_16_1(~ exit_ACC3_lpi_1_dfm));
  assign nl_ACC_GX_for_acc_itm = FRAME_a_4_sva + 2'b1;
  assign ACC_GX_for_acc_itm = nl_ACC_GX_for_acc_itm[1:0];
  assign exit_ACC_GX_for_sva_mx0 = MUX_s_1_2_2({(~ (ACC_GX_for_acc_itm[1])) , exit_ACC_GX_for_sva},
      or_dcpl_3 | (~ exit_SHIFT_lpi_1) | exit_ACC_GX_1_lpi_1);
  assign nl_FRAME_a_4_sva = FRAME_a_4_lpi_1 + 2'b1;
  assign FRAME_a_4_sva = nl_FRAME_a_4_sva[1:0];
  assign exit_ACC_GX_1_lpi_1_dfm_1 = exit_ACC_GX_1_lpi_1 & (~ exit_ACC3_lpi_1_dfm);
  assign exit_SHIFT_lpi_1_dfm_1 = exit_SHIFT_lpi_1 & (~ exit_ACC3_lpi_1_dfm);
  assign exit_ACC3_lpi_1_dfm = exit_ACC3_lpi_1_dfm_5 | exit_FRAME_1_sva;
  assign exit_ACC3_lpi_1_dfm_5_mx0 = MUX_s_1_2_2({(SHIFT_and_36_cse | (~ (FRAME_p_1_sva_1[1])))
      , SHIFT_and_36_cse}, or_6_cse);
  assign nl_FRAME_p_1_sva_1 = conv_u2u_1_2(FRAME_p_1_lpi_1_dfm[0]) + 2'b1;
  assign FRAME_p_1_sva_1 = nl_FRAME_p_1_sva_1[1:0];
  assign SHIFT_and_36_cse = (~ (ACC3_acc_itm[1])) & exit_ACC_GX_1_lpi_1_dfm_1 & exit_SHIFT_lpi_1_dfm_1;
  assign exit_FRAME_lpi_1_dfm = exit_FRAME_lpi_1_dfm_3 & (~ exit_ACC3_lpi_1_dfm);
  assign exit_ACC_GX_1_sva_1 = ~((ACC_GX_for_acc_itm[1]) | (ACC_GX_acc_itm[1]));
  assign ACC_GX_for_mux_19_nl = MUX_v_16_4_2({bluearray_0_lpi_1_dfm , bluearray_1_lpi_1_dfm
      , bluearray_2_lpi_1_dfm , 16'b0}, FRAME_a_4_lpi_1);
  assign ACC_GX_for_mux_20_nl = MUX_v_10_32_2({(~ (regs_operator_slc_regs_regs_cse_sva[9:0]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[11:2])) , (~ (regs_operator_slc_regs_regs_cse_sva[13:4]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[15:6])) , (~ (regs_operator_slc_regs_regs_cse_sva[17:8]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[19:10])) , (~ (regs_operator_slc_regs_regs_cse_sva[21:12]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[23:14])) , (~ (regs_operator_slc_regs_regs_cse_sva[25:16]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[27:18])) , (~ (regs_operator_slc_regs_regs_cse_sva[29:20]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[31:22])) , (~ (regs_operator_slc_regs_regs_cse_sva[33:24]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[35:26])) , (~ (regs_operator_slc_regs_regs_cse_sva[37:28]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[39:30])) , (~ (regs_operator_slc_regs_regs_cse_sva[41:32]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[43:34])) , (~ (regs_operator_slc_regs_regs_cse_sva[45:36]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[47:38])) , (~ (regs_operator_slc_regs_regs_cse_sva[49:40]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[51:42])) , (~ (regs_operator_slc_regs_regs_cse_sva[53:44]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[55:46])) , (~ (regs_operator_slc_regs_regs_cse_sva[57:48]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[59:50])) , (~ (regs_operator_slc_regs_regs_cse_sva[61:52]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[63:54])) , (~ (regs_operator_slc_regs_regs_cse_sva[65:56]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[67:58])) , (~ (regs_operator_slc_regs_regs_cse_sva[69:60]))
      , 10'b0}, ACC_GX_for_acc_16_psp_sva);
  assign nl_ACC_GX_for_acc_9_ctmp_sva = (ACC_GX_for_mux_19_nl) + conv_s2s_11_16((conv_s2s_10_11(ACC_GX_for_mux_20_nl)
      + 11'b1) & ({{10{ACC_GX_for_mux_16_itm}}, ACC_GX_for_mux_16_itm}));
  assign ACC_GX_for_acc_9_ctmp_sva = nl_ACC_GX_for_acc_9_ctmp_sva[15:0];
  assign ACC_GX_for_mux_17_nl = MUX_v_16_4_2({greenarray_0_lpi_1_dfm_1 , greenarray_1_lpi_1_dfm_1
      , greenarray_2_lpi_1_dfm_1 , 16'b0}, FRAME_a_4_lpi_1);
  assign ACC_GX_for_mux_18_nl = MUX_v_10_32_2({(~ (regs_operator_slc_regs_regs_cse_sva[73:64]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[75:66])) , (~ (regs_operator_slc_regs_regs_cse_sva[77:68]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[79:70])) , 10'b0 , (~ (regs_operator_slc_regs_regs_cse_sva[19:10]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[21:12])) , (~ (regs_operator_slc_regs_regs_cse_sva[23:14]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[25:16])) , (~ (regs_operator_slc_regs_regs_cse_sva[27:18]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[29:20])) , (~ (regs_operator_slc_regs_regs_cse_sva[31:22]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[33:24])) , (~ (regs_operator_slc_regs_regs_cse_sva[35:26]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[37:28])) , (~ (regs_operator_slc_regs_regs_cse_sva[39:30]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[41:32])) , (~ (regs_operator_slc_regs_regs_cse_sva[43:34]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[45:36])) , (~ (regs_operator_slc_regs_regs_cse_sva[47:38]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[49:40])) , (~ (regs_operator_slc_regs_regs_cse_sva[51:42]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[53:44])) , (~ (regs_operator_slc_regs_regs_cse_sva[55:46]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[57:48])) , (~ (regs_operator_slc_regs_regs_cse_sva[59:50]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[61:52])) , (~ (regs_operator_slc_regs_regs_cse_sva[63:54]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[65:56])) , (~ (regs_operator_slc_regs_regs_cse_sva[67:58]))
      , (~ (regs_operator_slc_regs_regs_cse_sva[69:60])) , (~ (regs_operator_slc_regs_regs_cse_sva[71:62]))},
      ACC_GX_for_acc_16_psp_sva + 5'b101);
  assign nl_ACC_GX_for_acc_5_ctmp_sva = (ACC_GX_for_mux_17_nl) + conv_s2s_11_16((conv_s2s_10_11(ACC_GX_for_mux_18_nl)
      + 11'b1) & ({{10{ACC_GX_for_mux_16_itm}}, ACC_GX_for_mux_16_itm}));
  assign ACC_GX_for_acc_5_ctmp_sva = nl_ACC_GX_for_acc_5_ctmp_sva[15:0];
  assign ACC_GX_for_mux_nl = MUX_v_16_4_2({redarray_0_lpi_1_dfm_1 , redarray_1_lpi_1_dfm_1
      , redarray_2_lpi_1_dfm_1 , 16'b0}, FRAME_a_4_lpi_1);
  assign ACC_GX_for_mux_15_nl = MUX_s_1_16_2({1'b0 , 1'b1 , 1'b0 , 1'b1 , 1'b1 ,
      1'b1 , 1'b0 , 1'b1 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0},
      conv_u2u_2_4(FRAME_a_4_lpi_1) + ({ACC_GX_for_acc_17_itm , (FRAME_i_1_lpi_1[0])}));
  assign nl_ACC_GX_for_acc_1_ctmp_sva = (ACC_GX_for_mux_nl) + conv_s2s_11_16((conv_s2s_10_11(ACC_GX_for_rshift_itm)
      + 11'b1) & (signext_11_1(ACC_GX_for_mux_15_nl)));
  assign ACC_GX_for_acc_1_ctmp_sva = nl_ACC_GX_for_acc_1_ctmp_sva[15:0];
  assign FRAME_p_1_lpi_1_dfm = FRAME_p_1_lpi_1_dfm_3 & (signext_2_1(~ exit_FRAME_1_sva));
  assign nl_ACC_GX_acc_itm = FRAME_i_1_sva + 2'b1;
  assign ACC_GX_acc_itm = nl_ACC_GX_acc_itm[1:0];
  assign nl_FRAME_i_1_sva = FRAME_i_1_lpi_1 + 2'b1;
  assign FRAME_i_1_sva = nl_FRAME_i_1_sva[1:0];
  assign regs_operator_slc_regs_regs_cse_sva = MUX_v_90_4_2({regs_regs_0_sva , regs_regs_1_sva
      , regs_regs_2_sva , 90'b0}, FRAME_i_1_lpi_1);
  assign nl_ACC_GX_for_acc_16_psp_sva = conv_s2u_3_5({1'b1 , (~ FRAME_a_4_lpi_1)})
      + ({(FRAME_a_4_lpi_1[0]) , 4'b1});
  assign ACC_GX_for_acc_16_psp_sva = nl_ACC_GX_for_acc_16_psp_sva[4:0];
  assign mux_3_nl = MUX_v_2_2_2({2'b10 , SHIFT_i_1_lpi_3}, and_dcpl);
  assign nl_SHIFT_acc_1_psp = (mux_3_nl) + 2'b11;
  assign SHIFT_acc_1_psp = nl_SHIFT_acc_1_psp[1:0];
  assign ACC3_mux_4_nl = MUX_s_1_2_2({(FRAME_p_1_sva_1[1]) , exit_FRAME_lpi_1_dfm},
      ACC3_acc_itm[1]);
  assign ACC_GX_mux_35_nl = MUX_s_1_2_2({exit_FRAME_lpi_1_dfm , (ACC3_mux_4_nl)},
      exit_ACC_GX_1_lpi_1_dfm_1);
  assign exit_FRAME_lpi_1_dfm_3_mx0 = MUX_s_1_2_2({(ACC_GX_mux_35_nl) , exit_FRAME_lpi_1_dfm},
      or_dcpl_4);
  assign regs_operator_din_lpi_1_dfm_mx0 = MUX_v_90_2_2({(vin_rsc_mgc_in_wire_d[89:0])
      , regs_operator_din_lpi_1_dfm}, and_dcpl);
  assign ACC_GX_and_14_tmp = exit_ACC_GX_for_sva_mx0 & (~ exit_ACC_GX_1_lpi_1_dfm_1);
  assign nl_ACC_GX_for_acc_17_itm = conv_u2u_1_3(FRAME_i_1_lpi_1[1]) + conv_u2u_2_3(FRAME_i_1_lpi_1);
  assign ACC_GX_for_acc_17_itm = nl_ACC_GX_for_acc_17_itm[2:0];
  assign ACC_GX_for_mux_16_itm = MUX_s_1_16_2({1'b0 , 1'b1 , 1'b0 , 1'b1 , 1'b1 ,
      1'b1 , 1'b0 , 1'b1 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0},
      ({ACC_GX_for_acc_17_itm , (FRAME_i_1_lpi_1[0])}) + conv_u2u_2_4(FRAME_a_4_lpi_1));
  assign SHIFT_mux_13_tmp = MUX_v_2_2_2({SHIFT_i_1_lpi_3 , 2'b10}, exit_ACC3_lpi_1_dfm);
  assign or_dcpl_3 = exit_FRAME_1_sva | exit_ACC3_lpi_1_dfm_5;
  assign or_dcpl_4 = or_dcpl_3 | (~ exit_SHIFT_lpi_1);
  assign and_dcpl = ~(exit_FRAME_1_sva | exit_ACC3_lpi_1_dfm_5);
  assign and_11_cse = and_dcpl & exit_SHIFT_lpi_1;
  assign or_dcpl_13 = exit_ACC_GX_1_lpi_1 | (FRAME_a_4_lpi_1[0]);
  assign and_14_cse = and_dcpl & exit_SHIFT_lpi_1 & exit_ACC_GX_1_lpi_1;
  assign or_dcpl = ~((exit_ACC_GX_1_sva_1 | exit_ACC_GX_1_lpi_1_dfm_1) & exit_SHIFT_lpi_1_dfm_1);
  assign and_dcpl_21 = exit_ACC_GX_1_sva_1 & (~ exit_ACC_GX_1_lpi_1_dfm_1) & exit_SHIFT_lpi_1_dfm_1;
  assign not_tmp_14 = MUX_s_1_2_2({(SHIFT_acc_1_psp[1]) , (~(exit_ACC_GX_1_lpi_1_dfm_1
      | (~ (ACC_GX_acc_itm[1])) | (~ exit_ACC_GX_for_sva_mx0)))}, exit_SHIFT_lpi_1_dfm_1);
  assign and_dcpl_24 = (~(exit_ACC_GX_for_sva_mx0 & (ACC_GX_acc_itm[1]))) & (~ exit_ACC_GX_1_lpi_1_dfm_1)
      & exit_SHIFT_lpi_1_dfm_1;
  assign mux_27_itm = MUX_s_1_2_2({(SHIFT_acc_1_psp[1]) , ACC_GX_and_14_tmp}, exit_SHIFT_lpi_1_dfm_1);
  assign and_dcpl_25 = (SHIFT_acc_1_psp[1]) & (~ exit_SHIFT_lpi_1_dfm_1);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      FRAME_a_3_lpi_1 <= 2'b0;
      exit_ACC_GX_for_sva <= 1'b0;
      FRAME_a_4_lpi_1 <= 2'b0;
      exit_SHIFT_lpi_1 <= 1'b0;
      exit_ACC_GX_1_lpi_1 <= 1'b0;
      SHIFT_i_1_lpi_3 <= 2'b0;
      bluearray_2_lpi_1 <= 16'b0;
      bluearray_1_lpi_1 <= 16'b0;
      bluearray_0_lpi_1 <= 16'b0;
      greenarray_2_lpi_1 <= 16'b0;
      greenarray_1_lpi_1 <= 16'b0;
      greenarray_0_lpi_1 <= 16'b0;
      redarray_2_lpi_1 <= 16'b0;
      redarray_1_lpi_1 <= 16'b0;
      redarray_0_lpi_1 <= 16'b0;
      blue_lpi_1 <= 16'b0;
      green_lpi_1 <= 16'b0;
      red_lpi_1 <= 16'b0;
      exit_ACC3_lpi_1_dfm_5 <= 1'b0;
      exit_FRAME_1_sva <= 1'b1;
      FRAME_p_1_lpi_1_dfm_3 <= 2'b0;
      FRAME_i_1_lpi_1 <= 2'b0;
      regs_regs_2_sva <= 90'b0;
      regs_regs_1_sva <= 90'b0;
      regs_regs_0_sva <= 90'b0;
      exit_FRAME_lpi_1_dfm_3 <= 1'b0;
      regs_operator_din_lpi_1_dfm <= 90'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({({((MUX_v_10_2_2({(red_sva_2[9:0])
            , ((~ (red_sva_2[9:0])) + 10'b1)}, red_sva_2[15])) | (signext_10_1(readslicef_7_1_6((conv_s2u_6_7(~
            (red_sva_2[15:10])) + 7'b1)))) | (signext_10_6(AbsAndMax_AbsAndMax_return_2_lpi_1_dfm_1[15:10]))
            | ({{9{AbsAndMax_1_and_seb}}, AbsAndMax_1_and_seb})) , ((AbsAndMax_AbsAndMax_return_2_lpi_1_dfm_1[9:0])
            | ({({{4{AbsAndMax_1_and_seb}}, AbsAndMax_1_and_seb}) , ((AbsAndMax_AbsAndMax_return_1_lpi_1_dfm_mx0[14:10])
            & (signext_5_1(~ (AbsAndMax_1_if_acc_itm[6]))))})) , ((AbsAndMax_AbsAndMax_return_1_lpi_1_dfm_mx0[9:0])
            | (signext_10_1(AbsAndMax_1_if_acc_itm[6])))}) , vout_rsc_mgc_out_stdreg_d},
            or_6_cse);
        FRAME_a_3_lpi_1 <= ~((~((MUX_v_2_2_2({FRAME_a_3_sva , FRAME_a_3_lpi_1}, or_dcpl))
            | (signext_2_1((~ exit_ACC_GX_1_lpi_1_dfm_1) & exit_SHIFT_lpi_1_dfm_1
            & (~(or_dcpl | and_dcpl_21)))))) | ({{1{and_dcpl_21}}, and_dcpl_21}));
        exit_ACC_GX_for_sva <= exit_ACC_GX_for_sva_mx0;
        FRAME_a_4_lpi_1 <= ~((~((MUX_v_2_2_2({FRAME_a_4_lpi_1 , FRAME_a_4_sva}, and_dcpl_24))
            | (signext_2_1(~((~((SHIFT_acc_1_psp[1]) | exit_SHIFT_lpi_1_dfm_1)) |
            (exit_ACC_GX_1_lpi_1_dfm_1 & exit_SHIFT_lpi_1_dfm_1) | not_tmp_14 | and_dcpl_24)))))
            | ({{1{not_tmp_14}}, not_tmp_14}));
        exit_SHIFT_lpi_1 <= MUX_s_1_2_2({exit_SHIFT_lpi_1_dfm_1 , (SHIFT_acc_1_psp[1])},
            or_dcpl_4);
        exit_ACC_GX_1_lpi_1 <= MUX_s_1_2_2({(MUX_s_1_2_2({exit_ACC_GX_1_sva_1 , exit_ACC_GX_1_lpi_1_dfm_1},
            exit_ACC_GX_1_lpi_1_dfm_1)) , exit_ACC_GX_1_lpi_1_dfm_1}, or_dcpl_4);
        SHIFT_i_1_lpi_3 <= MUX_v_2_2_2({SHIFT_acc_1_psp , SHIFT_i_1_lpi_3}, and_11_cse);
        bluearray_2_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_9_ctmp_sva , bluearray_2_lpi_1_dfm},
            or_18_cse);
        bluearray_1_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_9_ctmp_sva , bluearray_1_lpi_1_dfm},
            or_23_cse);
        bluearray_0_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_9_ctmp_sva , bluearray_0_lpi_1_dfm},
            or_28_cse);
        greenarray_2_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_5_ctmp_sva , greenarray_2_lpi_1_dfm_1},
            or_18_cse);
        greenarray_1_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_5_ctmp_sva , greenarray_1_lpi_1_dfm_1},
            or_23_cse);
        greenarray_0_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_5_ctmp_sva , greenarray_0_lpi_1_dfm_1},
            or_28_cse);
        redarray_2_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_1_ctmp_sva , redarray_2_lpi_1_dfm_1},
            or_18_cse);
        redarray_1_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_1_ctmp_sva , redarray_1_lpi_1_dfm_1},
            or_23_cse);
        redarray_0_lpi_1 <= MUX_v_16_2_2({ACC_GX_for_acc_1_ctmp_sva , redarray_0_lpi_1_dfm_1},
            or_28_cse);
        blue_lpi_1 <= MUX_v_16_2_2({blue_lpi_1_dfm , ACC3_acc_2_tmp}, and_14_cse);
        green_lpi_1 <= MUX_v_16_2_2({green_lpi_1_dfm_1 , green_sva_2}, and_14_cse);
        red_lpi_1 <= MUX_v_16_2_2({red_lpi_1_dfm_1 , red_sva_2}, and_14_cse);
        exit_ACC3_lpi_1_dfm_5 <= exit_ACC3_lpi_1_dfm_5_mx0;
        exit_FRAME_1_sva <= exit_ACC3_lpi_1_dfm_5_mx0 & exit_FRAME_lpi_1_dfm_3_mx0;
        FRAME_p_1_lpi_1_dfm_3 <= MUX_v_2_2_2({FRAME_p_1_sva_1 , FRAME_p_1_lpi_1_dfm},
            or_6_cse);
        FRAME_i_1_lpi_1 <= ~((~((MUX_v_2_2_2({FRAME_i_1_lpi_1 , FRAME_i_1_sva}, mux_27_itm))
            | (signext_2_1((~(ACC_GX_and_14_tmp & exit_SHIFT_lpi_1_dfm_1)) & (~((~
            mux_27_itm) | and_dcpl_25)))))) | ({{1{and_dcpl_25}}, and_dcpl_25}));
        regs_regs_2_sva <= MUX_v_90_2_2({regs_regs_1_sva , regs_regs_2_sva}, and_11_cse
            | (SHIFT_mux_13_tmp[0]) | (~ (SHIFT_mux_13_tmp[1])));
        regs_regs_1_sva <= MUX_v_90_2_2({regs_regs_0_sva , regs_regs_1_sva}, and_11_cse
            | (~ (SHIFT_mux_13_tmp[0])));
        regs_regs_0_sva <= MUX_v_90_2_2({regs_operator_din_lpi_1_dfm_mx0 , regs_regs_0_sva},
            and_11_cse | (SHIFT_mux_13_tmp[0]) | (SHIFT_mux_13_tmp[1]));
        exit_FRAME_lpi_1_dfm_3 <= exit_FRAME_lpi_1_dfm_3_mx0;
        regs_operator_din_lpi_1_dfm <= regs_operator_din_lpi_1_dfm_mx0;
      end
    end
  end

  function [15:0] MUX_v_16_4_2;
    input [63:0] inputs;
    input [1:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      2'b00 : begin
        result = inputs[63:48];
      end
      2'b01 : begin
        result = inputs[47:32];
      end
      2'b10 : begin
        result = inputs[31:16];
      end
      2'b11 : begin
        result = inputs[15:0];
      end
      default : begin
        result = inputs[63:48];
      end
    endcase
    MUX_v_16_4_2 = result;
  end
  endfunction


  function [15:0] MUX_v_16_2_2;
    input [31:0] inputs;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[31:16];
      end
      1'b1 : begin
        result = inputs[15:0];
      end
      default : begin
        result = inputs[31:16];
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function [15:0] MUX1HOT_v_16_3_2;
    input [47:0] inputs;
    input [2:0] sel;
    reg [15:0] result;
    integer i;
  begin
    result = inputs[0+:16] & {16{sel[0]}};
    for( i = 1; i < 3; i = i + 1 )
      result = result | (inputs[i*16+:16] & {16{sel[i]}});
    MUX1HOT_v_16_3_2 = result;
  end
  endfunction


  function [15:0] signext_16_1;
    input [0:0] vector;
  begin
    signext_16_1= {{15{vector[0]}}, vector};
  end
  endfunction


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


  function [9:0] MUX_v_10_32_2;
    input [319:0] inputs;
    input [4:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      5'b00000 : begin
        result = inputs[319:310];
      end
      5'b00001 : begin
        result = inputs[309:300];
      end
      5'b00010 : begin
        result = inputs[299:290];
      end
      5'b00011 : begin
        result = inputs[289:280];
      end
      5'b00100 : begin
        result = inputs[279:270];
      end
      5'b00101 : begin
        result = inputs[269:260];
      end
      5'b00110 : begin
        result = inputs[259:250];
      end
      5'b00111 : begin
        result = inputs[249:240];
      end
      5'b01000 : begin
        result = inputs[239:230];
      end
      5'b01001 : begin
        result = inputs[229:220];
      end
      5'b01010 : begin
        result = inputs[219:210];
      end
      5'b01011 : begin
        result = inputs[209:200];
      end
      5'b01100 : begin
        result = inputs[199:190];
      end
      5'b01101 : begin
        result = inputs[189:180];
      end
      5'b01110 : begin
        result = inputs[179:170];
      end
      5'b01111 : begin
        result = inputs[169:160];
      end
      5'b10000 : begin
        result = inputs[159:150];
      end
      5'b10001 : begin
        result = inputs[149:140];
      end
      5'b10010 : begin
        result = inputs[139:130];
      end
      5'b10011 : begin
        result = inputs[129:120];
      end
      5'b10100 : begin
        result = inputs[119:110];
      end
      5'b10101 : begin
        result = inputs[109:100];
      end
      5'b10110 : begin
        result = inputs[99:90];
      end
      5'b10111 : begin
        result = inputs[89:80];
      end
      5'b11000 : begin
        result = inputs[79:70];
      end
      5'b11001 : begin
        result = inputs[69:60];
      end
      5'b11010 : begin
        result = inputs[59:50];
      end
      5'b11011 : begin
        result = inputs[49:40];
      end
      5'b11100 : begin
        result = inputs[39:30];
      end
      5'b11101 : begin
        result = inputs[29:20];
      end
      5'b11110 : begin
        result = inputs[19:10];
      end
      5'b11111 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[319:310];
      end
    endcase
    MUX_v_10_32_2 = result;
  end
  endfunction


  function [0:0] MUX_s_1_16_2;
    input [15:0] inputs;
    input [3:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = inputs[15:15];
      end
      4'b0001 : begin
        result = inputs[14:14];
      end
      4'b0010 : begin
        result = inputs[13:13];
      end
      4'b0011 : begin
        result = inputs[12:12];
      end
      4'b0100 : begin
        result = inputs[11:11];
      end
      4'b0101 : begin
        result = inputs[10:10];
      end
      4'b0110 : begin
        result = inputs[9:9];
      end
      4'b0111 : begin
        result = inputs[8:8];
      end
      4'b1000 : begin
        result = inputs[7:7];
      end
      4'b1001 : begin
        result = inputs[6:6];
      end
      4'b1010 : begin
        result = inputs[5:5];
      end
      4'b1011 : begin
        result = inputs[4:4];
      end
      4'b1100 : begin
        result = inputs[3:3];
      end
      4'b1101 : begin
        result = inputs[2:2];
      end
      4'b1110 : begin
        result = inputs[1:1];
      end
      4'b1111 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[15:15];
      end
    endcase
    MUX_s_1_16_2 = result;
  end
  endfunction


  function [10:0] signext_11_1;
    input [0:0] vector;
  begin
    signext_11_1= {{10{vector[0]}}, vector};
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [89:0] MUX_v_90_4_2;
    input [359:0] inputs;
    input [1:0] sel;
    reg [89:0] result;
  begin
    case (sel)
      2'b00 : begin
        result = inputs[359:270];
      end
      2'b01 : begin
        result = inputs[269:180];
      end
      2'b10 : begin
        result = inputs[179:90];
      end
      2'b11 : begin
        result = inputs[89:0];
      end
      default : begin
        result = inputs[359:270];
      end
    endcase
    MUX_v_90_4_2 = result;
  end
  endfunction


  function [1:0] MUX_v_2_2_2;
    input [3:0] inputs;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[3:2];
      end
      1'b1 : begin
        result = inputs[1:0];
      end
      default : begin
        result = inputs[3:2];
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function [89:0] MUX_v_90_2_2;
    input [179:0] inputs;
    input [0:0] sel;
    reg [89:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[179:90];
      end
      1'b1 : begin
        result = inputs[89:0];
      end
      default : begin
        result = inputs[179:90];
      end
    endcase
    MUX_v_90_2_2 = result;
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


  function [0:0] readslicef_7_1_6;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 6;
    readslicef_7_1_6 = tmp[0:0];
  end
  endfunction


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
  end
  endfunction


  function [9:0] signext_10_6;
    input [5:0] vector;
  begin
    signext_10_6= {{4{vector[5]}}, vector};
  end
  endfunction


  function [4:0] signext_5_1;
    input [0:0] vector;
  begin
    signext_5_1= {{4{vector[0]}}, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [15:0] conv_u2u_15_16 ;
    input [14:0]  vector ;
  begin
    conv_u2u_15_16 = {1'b0, vector};
  end
  endfunction


  function  [6:0] conv_s2u_6_7 ;
    input signed [5:0]  vector ;
  begin
    conv_s2u_6_7 = {vector[5], vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [15:0] conv_s2s_11_16 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_16 = {{5{vector[10]}}, vector};
  end
  endfunction


  function signed [10:0] conv_s2s_10_11 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_11 = {vector[9], vector};
  end
  endfunction


  function  [3:0] conv_u2u_2_4 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_4 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [4:0] conv_s2u_3_5 ;
    input signed [2:0]  vector ;
  begin
    conv_s2u_3_5 = {{2{vector[2]}}, vector};
  end
  endfunction


  function  [2:0] conv_u2u_1_3 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_3 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    sharpen
//  Generated from file(s):
//    2) $PROJECT_HOME/sharpen1.c
// ------------------------------------------------------------------


module sharpen (
  vin_rsc_z, vout_rsc_z, clk, en, arst_n
);
  input [269:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [269:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(270)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  sharpen_core sharpen_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule


