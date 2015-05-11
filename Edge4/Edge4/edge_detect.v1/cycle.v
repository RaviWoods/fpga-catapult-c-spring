// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   jb914@EEWS104A-020
//  Generated date: Mon May 11 13:29:07 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    edge_detect_core
// ------------------------------------------------------------------


module edge_detect_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [89:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [29:0] regs_regs_1_1_sva;
    reg [29:0] regs_regs_1_sg2_sva;
    reg [89:0] regs_regs_0_sva_1;
    reg absmax_slc_mdf_sva;
    reg absmax_else_slc_svs;
    reg [11:0] absmax_absmax_return_sg1_sva_2;
    reg absmax_1_slc_mdf_sva;
    reg absmax_1_else_slc_svs;
    reg [11:0] absmax_absmax_return_1_sg1_sva_2;
    reg absmax_2_slc_mdf_sva;
    reg absmax_2_else_slc_svs;
    reg [11:0] absmax_absmax_return_2_sg1_sva_2;
    reg [14:0] acc_psp_1_sva;
    reg [4:0] acc_imod_sva;
    reg [2:0] acc_imod_1_sva;
    reg [13:0] FRAME_avg_acc_1_psp_1_sva;
    reg absmax_3_slc_svs;
    reg absmax_3_else_slc_svs;
    reg [2:0] absmax_absmax_return_7_sva_2;
    reg [6:0] absmax_absmax_return_3_sg1_lpi_1_dfm;
    reg [6:0] absmax_absmax_return_3_sg1_lpi_1_dfm_1;
    reg [2:0] absmax_absmax_return_7_lpi_1_dfm_1;
    reg [9:0] ACC2_slc_regs_regs_2_1_itm;
    reg [9:0] ACC2_slc_regs_regs_2_sg2_itm;
    reg [9:0] ACC2_slc_regs_regs_2_1_3_itm;
    reg [9:0] ACC2_slc_regs_regs_2_sg2_3_itm;
    reg [9:0] ACC2_slc_regs_regs_2_1_4_itm;
    reg [9:0] ACC2_slc_regs_regs_2_sg2_4_itm;
    reg FRAME_avg_slc_acc_imod_2_itm_1;
    reg FRAME_avg_slc_acc_imod_3_itm_1;
    reg FRAME_avg_slc_acc_imod_1_itm_1;
    reg FRAME_avg_slc_acc_imod_4_itm_1;
    reg FRAME_avg_slc_acc_imod_itm_1;
    reg FRAME_avg_slc_acc_psp_57_itm_1;
    reg FRAME_avg_slc_acc_psp_58_itm_1;
    reg FRAME_avg_slc_acc_psp_59_itm_1;
    reg FRAME_avg_slc_acc_psp_60_itm_1;
    reg FRAME_avg_slc_acc_psp_61_itm_1;
    reg FRAME_avg_slc_acc_psp_62_itm_1;
    reg FRAME_avg_slc_acc_psp_63_itm_1;
    reg FRAME_avg_slc_acc_psp_45_itm_1;
    reg FRAME_avg_slc_acc_psp_46_itm_1;
    reg FRAME_avg_slc_acc_psp_47_itm_1;
    reg FRAME_avg_slc_acc_psp_48_itm_1;
    reg FRAME_avg_slc_acc_psp_49_itm_1;
    reg FRAME_avg_slc_acc_psp_50_itm_1;
    reg FRAME_avg_slc_acc_psp_35_itm_1;
    reg FRAME_avg_slc_acc_psp_36_itm_1;
    reg FRAME_avg_slc_acc_psp_37_itm_1;
    reg FRAME_avg_slc_acc_psp_38_itm_1;
    reg FRAME_avg_slc_acc_psp_39_itm_1;
    reg FRAME_avg_slc_acc_psp_27_itm_1;
    reg FRAME_avg_slc_acc_psp_28_itm_1;
    reg FRAME_avg_slc_acc_psp_29_itm_1;
    reg FRAME_avg_slc_acc_psp_30_itm_1;
    reg [4:0] FRAME_avg_slc_10_itm_1;
    reg FRAME_avg_slc_acc_psp_21_itm_1;
    reg FRAME_avg_slc_acc_psp_22_itm_1;
    reg FRAME_avg_slc_acc_psp_23_itm_1;
    reg FRAME_avg_slc_acc_imod_6_itm_1;
    reg FRAME_avg_slc_acc_psp_51_itm_1;
    reg FRAME_avg_slc_acc_psp_52_itm_1;
    reg FRAME_avg_slc_acc_psp_53_itm_1;
    reg FRAME_avg_slc_acc_psp_54_itm_1;
    reg FRAME_avg_slc_acc_psp_55_itm_1;
    reg FRAME_avg_slc_acc_psp_56_itm_1;
    reg FRAME_avg_slc_acc_psp_40_itm_1;
    reg FRAME_avg_slc_acc_psp_41_itm_1;
    reg FRAME_avg_slc_acc_psp_42_itm_1;
    reg FRAME_avg_slc_acc_psp_43_itm_1;
    reg FRAME_avg_slc_acc_psp_44_itm_1;
    reg FRAME_avg_slc_acc_psp_31_itm_1;
    reg FRAME_avg_slc_acc_psp_32_itm_1;
    reg FRAME_avg_slc_acc_psp_33_itm_1;
    reg FRAME_avg_slc_acc_psp_34_itm_1;
    reg FRAME_avg_slc_acc_psp_24_itm_1;
    reg FRAME_avg_slc_acc_psp_25_itm_1;
    reg FRAME_avg_slc_acc_psp_26_itm_1;
    reg FRAME_avg_slc_acc_psp_17_itm_1;
    reg FRAME_avg_slc_acc_imod_9_itm_1;
    reg FRAME_avg_slc_acc_imod_10_itm_1;
    reg FRAME_avg_slc_acc_imod_8_itm_1;
    reg FRAME_avg_slc_acc_psp_79_itm_1;
    reg FRAME_avg_slc_acc_imod_5_itm_1;
    reg FRAME_avg_slc_acc_imod_7_itm_1;
    reg main_stage_0_2;
    reg [29:0] regs_regs_0_sva_sg2;
    reg [29:0] regs_regs_0_sva_2;
    reg [11:0] ACC1_if_acc_28_sdt;
    reg [11:0] ACC1_if_acc_42_sdt;
    reg [11:0] ACC1_if_acc_33_sdt;
    reg [11:0] ACC1_if_acc_45_sdt;
    reg [11:0] ACC1_if_acc_38_sdt;
    reg [11:0] ACC1_if_acc_49_sdt;
    reg [10:0] ACC1_if_acc_psp;
    reg [10:0] ACC1_if_acc_46_psp;
    reg [10:0] ACC1_if_acc_50_psp;

    reg[2:0] absmax_3_else_mux_1_nl;
    reg[11:0] absmax_1_mux1h_nl;
    reg[11:0] absmax_2_mux1h_nl;
    reg[11:0] absmax_mux1h_nl;
    begin : core_rlpExit
      forever begin : core_rlp
        // C-Step 0 of Loop 'core_rlp'
        regs_regs_1_1_sva = 30'b0;
        regs_regs_1_sg2_sva = 30'b0;
        regs_regs_0_sva_2 = 30'b0;
        regs_regs_0_sva_sg2 = 30'b0;
        main_stage_0_2 = 1'b0;
        begin : mainExit
          forever begin : main
            // C-Step 0 of Loop 'main'
            ACC2_slc_regs_regs_2_1_itm = regs_regs_1_1_sva[29:20];
            ACC2_slc_regs_regs_2_sg2_itm = regs_regs_1_sg2_sva[29:20];
            ACC2_slc_regs_regs_2_1_3_itm = regs_regs_1_1_sva[19:10];
            ACC2_slc_regs_regs_2_sg2_3_itm = regs_regs_1_sg2_sva[19:10];
            ACC2_slc_regs_regs_2_1_4_itm = regs_regs_1_1_sva[9:0];
            ACC2_slc_regs_regs_2_sg2_4_itm = regs_regs_1_sg2_sva[9:0];
            regs_regs_1_sg2_sva = regs_regs_0_sva_sg2;
            regs_regs_1_1_sva = regs_regs_0_sva_2;
            begin : waitLoop0Exit
              forever begin : waitLoop0
                @(posedge clk or negedge ( arst_n ));
                if ( ~ arst_n )
                  disable core_rlpExit;
                if ( en )
                  disable waitLoop0Exit;
              end
            end
            // C-Step 1 of Loop 'main'
            if ( main_stage_0_2 ) begin
              absmax_absmax_return_3_sg1_lpi_1_dfm = 7'b0;
              absmax_absmax_return_7_sva_2 = 3'b0;
              acc_imod_1_sva = (readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({FRAME_avg_slc_acc_imod_2_itm_1
                  , 1'b1}) + conv_u2u_2_3({(~ FRAME_avg_slc_acc_imod_3_itm_1) , 1'b1}))))
                  , 1'b1}) + conv_u2u_2_4({(~ FRAME_avg_slc_acc_imod_1_itm_1) , (~
                  FRAME_avg_slc_acc_imod_4_itm_1)})))) + ({2'b10 , FRAME_avg_slc_acc_imod_itm_1});
              FRAME_avg_acc_1_psp_1_sva = conv_u2s_13_14({FRAME_avg_slc_acc_psp_57_itm_1
                  , (conv_u2u_9_12({FRAME_avg_slc_acc_psp_46_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_60_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_61_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_62_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_63_itm_1}) + conv_u2u_11_12({FRAME_avg_slc_acc_psp_58_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_35_itm_1 , (readslicef_9_8_1((conv_u2u_8_9({FRAME_avg_slc_acc_psp_36_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_37_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_38_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_39_itm_1 , 1'b1}) + conv_u2u_8_9({(readslicef_8_7_1((({FRAME_avg_slc_acc_psp_27_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_28_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_29_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_30_itm_1 , 1'b1}) + conv_u2u_7_8({(readslicef_7_6_1((conv_u2u_6_7({FRAME_avg_slc_10_itm_1
                  , 1'b1}) + conv_u2u_6_7({FRAME_avg_slc_acc_psp_21_itm_1 , 1'b0
                  , FRAME_avg_slc_acc_psp_22_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_23_itm_1
                  , FRAME_avg_slc_acc_imod_6_itm_1})))) , (acc_imod_1_sva[1])}))))
                  , (~ (readslicef_3_1_2((({1'b1 , (acc_imod_1_sva[0]) , 1'b1}) +
                  conv_u2s_2_3({(~ (acc_imod_1_sva[1])) , (~ (acc_imod_1_sva[2]))})))))}))))})
                  + conv_u2u_11_12({FRAME_avg_slc_acc_psp_45_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_59_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_47_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_48_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_49_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_50_itm_1}))})
                  + conv_s2s_13_14(conv_u2s_12_13({FRAME_avg_slc_acc_psp_51_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_52_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_53_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_54_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_55_itm_1
                  , 1'b0 , ({{1{FRAME_avg_slc_acc_psp_56_itm_1}}, FRAME_avg_slc_acc_psp_56_itm_1})})
                  + conv_s2s_11_13(conv_u2s_10_11({FRAME_avg_slc_acc_psp_40_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_41_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_42_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_43_itm_1 , 1'b0 , ({{1{FRAME_avg_slc_acc_psp_44_itm_1}},
                  FRAME_avg_slc_acc_psp_44_itm_1})}) + conv_s2s_9_11(readslicef_10_9_1((conv_u2s_9_10({FRAME_avg_slc_acc_psp_31_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_32_itm_1 , 1'b0 , FRAME_avg_slc_acc_psp_33_itm_1
                  , 1'b0 , ({{1{FRAME_avg_slc_acc_psp_34_itm_1}}, FRAME_avg_slc_acc_psp_34_itm_1})
                  , 1'b1}) + conv_s2s_8_10({(readslicef_8_7_1((conv_u2s_7_8({FRAME_avg_slc_acc_psp_24_itm_1
                  , 1'b0 , FRAME_avg_slc_acc_psp_25_itm_1 , 1'b0 , ({{1{FRAME_avg_slc_acc_psp_26_itm_1}},
                  FRAME_avg_slc_acc_psp_26_itm_1}) , 1'b1}) + conv_s2s_5_8({(readslicef_5_4_1((conv_u2s_4_5({2'b11
                  , FRAME_avg_slc_acc_psp_17_itm_1 , 1'b1}) + ({(readslicef_5_4_1((conv_u2u_4_5({(~
                  FRAME_avg_slc_acc_imod_9_itm_1) , 1'b1 , (~ FRAME_avg_slc_acc_imod_10_itm_1)
                  , 1'b1}) + conv_u2u_3_5({FRAME_avg_slc_acc_imod_8_itm_1 , FRAME_avg_slc_acc_psp_79_itm_1
                  , 1'b1})))) , FRAME_avg_slc_acc_imod_5_itm_1})))) , FRAME_avg_slc_acc_imod_7_itm_1}))))
                  , (~ (acc_imod_1_sva[2]))}))))));
              absmax_3_slc_svs = readslicef_4_1_3(((~ (FRAME_avg_acc_1_psp_1_sva[13:10]))
                  + 4'b1));
              if ( absmax_3_slc_svs ) begin
              end
              else begin
                absmax_3_else_slc_svs = readslicef_14_1_13(((~ FRAME_avg_acc_1_psp_1_sva)
                    + 14'b1));
                if ( absmax_3_else_slc_svs ) begin
                end
                else begin
                  absmax_absmax_return_7_sva_2 = (~ (FRAME_avg_acc_1_psp_1_sva[2:0]))
                      + 3'b1;
                end
                absmax_absmax_return_3_sg1_lpi_1_dfm = (FRAME_avg_acc_1_psp_1_sva[9:3])
                    & ({{6{absmax_3_else_slc_svs}}, absmax_3_else_slc_svs});
              end
              absmax_absmax_return_3_sg1_lpi_1_dfm_1 = absmax_absmax_return_3_sg1_lpi_1_dfm
                  | ({{6{absmax_3_slc_svs}}, absmax_3_slc_svs});
              absmax_3_else_mux_1_nl = MUX_v_3_2_2({absmax_absmax_return_7_sva_2
                  , (FRAME_avg_acc_1_psp_1_sva[2:0])}, absmax_3_else_slc_svs);
              absmax_absmax_return_7_lpi_1_dfm_1 = (absmax_3_else_mux_1_nl) | ({{2{absmax_3_slc_svs}},
                  absmax_3_slc_svs});
              vout_rsc_mgc_out_stdreg_d <= {absmax_absmax_return_3_sg1_lpi_1_dfm_1
                  , absmax_absmax_return_7_lpi_1_dfm_1 , absmax_absmax_return_3_sg1_lpi_1_dfm_1
                  , absmax_absmax_return_7_lpi_1_dfm_1 , absmax_absmax_return_3_sg1_lpi_1_dfm_1
                  , absmax_absmax_return_7_lpi_1_dfm_1};
            end
            absmax_2_else_slc_svs = 1'b0;
            absmax_1_else_slc_svs = 1'b0;
            absmax_else_slc_svs = 1'b0;
            absmax_absmax_return_2_sg1_sva_2 = 12'b0;
            absmax_absmax_return_1_sg1_sva_2 = 12'b0;
            absmax_absmax_return_sg1_sva_2 = 12'b0;
            regs_regs_0_sva_1 = vin_rsc_mgc_in_wire_d;
            ACC1_if_acc_28_sdt = conv_u2u_11_12(conv_u2u_10_11(~ ACC2_slc_regs_regs_2_1_itm)
                + conv_u2u_10_11(~ (regs_regs_0_sva_1[29:20]))) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_0_sva_1[89:80])
                + conv_u2u_10_11(ACC2_slc_regs_regs_2_sg2_itm));
            ACC1_if_acc_42_sdt = conv_u2u_10_12(~ (regs_regs_0_sva_2[29:20])) + conv_u2u_10_12(regs_regs_0_sva_sg2[29:20])
                + conv_u2u_11_12(ACC1_if_acc_28_sdt[11:1]);
            ACC1_if_acc_psp = (ACC1_if_acc_42_sdt[11:1]) + 11'b10000000001;
            ACC1_if_acc_33_sdt = conv_u2u_11_12(conv_u2u_10_11(~ ACC2_slc_regs_regs_2_1_3_itm)
                + conv_u2u_10_11(~ (regs_regs_0_sva_1[19:10]))) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_0_sva_1[79:70])
                + conv_u2u_10_11(ACC2_slc_regs_regs_2_sg2_3_itm));
            ACC1_if_acc_45_sdt = conv_u2u_10_12(~ (regs_regs_0_sva_2[19:10])) + conv_u2u_10_12(regs_regs_0_sva_sg2[19:10])
                + conv_u2u_11_12(ACC1_if_acc_33_sdt[11:1]);
            ACC1_if_acc_46_psp = (ACC1_if_acc_45_sdt[11:1]) + 11'b10000000001;
            ACC1_if_acc_38_sdt = conv_u2u_11_12(conv_u2u_10_11(~ ACC2_slc_regs_regs_2_1_4_itm)
                + conv_u2u_10_11(~ (regs_regs_0_sva_1[9:0]))) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_0_sva_1[69:60])
                + conv_u2u_10_11(ACC2_slc_regs_regs_2_sg2_4_itm));
            ACC1_if_acc_49_sdt = conv_u2u_10_12(~ (regs_regs_0_sva_2[9:0])) + conv_u2u_10_12(regs_regs_0_sva_sg2[9:0])
                + conv_u2u_11_12(ACC1_if_acc_38_sdt[11:1]);
            ACC1_if_acc_50_psp = (ACC1_if_acc_49_sdt[11:1]) + 11'b10000000001;
            absmax_slc_mdf_sva = readslicef_5_1_4((conv_s2s_4_5(~ (ACC1_if_acc_psp[10:7]))
                + 5'b1));
            if ( absmax_slc_mdf_sva ) begin
            end
            else begin
              absmax_else_slc_svs = readslicef_14_1_13((conv_s2s_13_14({(~ ACC1_if_acc_psp)
                  , (~ (ACC1_if_acc_42_sdt[0])) , (~ (ACC1_if_acc_28_sdt[0]))}) +
                  14'b1));
              if ( absmax_else_slc_svs ) begin
              end
              else begin
                absmax_absmax_return_sg1_sva_2 = ({(~ (ACC1_if_acc_psp[9:0])) , (~
                    (ACC1_if_acc_42_sdt[0])) , (~ (ACC1_if_acc_28_sdt[0]))}) + 12'b1;
              end
            end
            absmax_1_slc_mdf_sva = readslicef_5_1_4((conv_s2s_4_5(~ (ACC1_if_acc_46_psp[10:7]))
                + 5'b1));
            if ( absmax_1_slc_mdf_sva ) begin
            end
            else begin
              absmax_1_else_slc_svs = readslicef_14_1_13((conv_s2s_13_14({(~ ACC1_if_acc_46_psp)
                  , (~ (ACC1_if_acc_45_sdt[0])) , (~ (ACC1_if_acc_33_sdt[0]))}) +
                  14'b1));
              if ( absmax_1_else_slc_svs ) begin
              end
              else begin
                absmax_absmax_return_1_sg1_sva_2 = ({(~ (ACC1_if_acc_46_psp[9:0]))
                    , (~ (ACC1_if_acc_45_sdt[0])) , (~ (ACC1_if_acc_33_sdt[0]))})
                    + 12'b1;
              end
            end
            absmax_2_slc_mdf_sva = readslicef_5_1_4((conv_s2s_4_5(~ (ACC1_if_acc_50_psp[10:7]))
                + 5'b1));
            if ( absmax_2_slc_mdf_sva ) begin
            end
            else begin
              absmax_2_else_slc_svs = readslicef_14_1_13((conv_s2s_13_14({(~ ACC1_if_acc_50_psp)
                  , (~ (ACC1_if_acc_49_sdt[0])) , (~ (ACC1_if_acc_38_sdt[0]))}) +
                  14'b1));
              if ( absmax_2_else_slc_svs ) begin
              end
              else begin
                absmax_absmax_return_2_sg1_sva_2 = ({(~ (ACC1_if_acc_50_psp[9:0]))
                    , (~ (ACC1_if_acc_49_sdt[0])) , (~ (ACC1_if_acc_38_sdt[0]))})
                    + 12'b1;
              end
            end
            absmax_1_mux1h_nl = MUX1HOT_v_12_3_2({absmax_absmax_return_1_sg1_sva_2
                , ({3'b0, {(ACC1_if_acc_46_psp[6:0]) , (ACC1_if_acc_45_sdt[0]) ,
                (ACC1_if_acc_33_sdt[0])}}) , 12'b111111111}, {(~(absmax_1_else_slc_svs
                | absmax_1_slc_mdf_sva)) , (absmax_1_else_slc_svs & (~ absmax_1_slc_mdf_sva))
                , absmax_1_slc_mdf_sva});
            absmax_2_mux1h_nl = MUX1HOT_v_12_3_2({absmax_absmax_return_2_sg1_sva_2
                , ({3'b0, {(ACC1_if_acc_50_psp[6:0]) , (ACC1_if_acc_49_sdt[0]) ,
                (ACC1_if_acc_38_sdt[0])}}) , 12'b111111111}, {(~(absmax_2_else_slc_svs
                | absmax_2_slc_mdf_sva)) , (absmax_2_else_slc_svs & (~ absmax_2_slc_mdf_sva))
                , absmax_2_slc_mdf_sva});
            absmax_mux1h_nl = MUX1HOT_v_12_3_2({absmax_absmax_return_sg1_sva_2 ,
                ({3'b0, {(ACC1_if_acc_psp[6:0]) , (ACC1_if_acc_42_sdt[0]) , (ACC1_if_acc_28_sdt[0])}})
                , 12'b111111111}, {(~(absmax_else_slc_svs | absmax_slc_mdf_sva))
                , (absmax_else_slc_svs & (~ absmax_slc_mdf_sva)) , absmax_slc_mdf_sva});
            acc_psp_1_sva = conv_u2u_14_15(conv_u2u_13_14({(absmax_1_mux1h_nl) ,
                absmax_1_slc_mdf_sva}) + conv_u2u_13_14({(absmax_2_mux1h_nl) , absmax_2_slc_mdf_sva}))
                + conv_u2u_13_15({(absmax_mux1h_nl) , absmax_slc_mdf_sva});
            acc_imod_sva = conv_u2s_4_5(readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
                (acc_psp_1_sva[1])) , 1'b1}) + conv_u2u_2_3({(acc_psp_1_sva[2]) ,
                (~ (acc_psp_1_sva[11]))})))) , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
                (acc_psp_1_sva[3])) , 1'b1}) + conv_u2u_2_3({(acc_psp_1_sva[4]) ,
                (acc_psp_1_sva[10])})))) , (~ (acc_psp_1_sva[13]))})))) , 1'b1})
                + conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
                (acc_psp_1_sva[5])) , 1'b1}) + conv_u2u_2_3({(acc_psp_1_sva[6]) ,
                (~ (acc_psp_1_sva[9]))})))) , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
                (acc_psp_1_sva[7])) , 1'b1}) + conv_u2u_2_3({(acc_psp_1_sva[8]) ,
                1'b1})))) , (acc_psp_1_sva[12])})))) , (acc_psp_1_sva[14])})))) +
                conv_s2s_4_5({3'b100 , (acc_psp_1_sva[0])});
            regs_regs_0_sva_2 = regs_regs_0_sva_1[29:0];
            regs_regs_0_sva_sg2 = regs_regs_0_sva_1[89:60];
            FRAME_avg_slc_acc_imod_2_itm_1 = acc_imod_sva[2];
            FRAME_avg_slc_acc_imod_3_itm_1 = acc_imod_sva[3];
            FRAME_avg_slc_acc_imod_1_itm_1 = acc_imod_sva[1];
            FRAME_avg_slc_acc_imod_4_itm_1 = acc_imod_sva[4];
            FRAME_avg_slc_acc_imod_itm_1 = acc_imod_sva[0];
            FRAME_avg_slc_acc_psp_57_itm_1 = acc_psp_1_sva[14];
            FRAME_avg_slc_acc_psp_58_itm_1 = acc_psp_1_sva[14];
            FRAME_avg_slc_acc_psp_59_itm_1 = acc_psp_1_sva[14];
            FRAME_avg_slc_acc_psp_60_itm_1 = acc_psp_1_sva[14];
            FRAME_avg_slc_acc_psp_61_itm_1 = acc_psp_1_sva[14];
            FRAME_avg_slc_acc_psp_62_itm_1 = acc_psp_1_sva[14];
            FRAME_avg_slc_acc_psp_63_itm_1 = acc_psp_1_sva[14];
            FRAME_avg_slc_acc_psp_45_itm_1 = acc_psp_1_sva[12];
            FRAME_avg_slc_acc_psp_46_itm_1 = acc_psp_1_sva[12];
            FRAME_avg_slc_acc_psp_47_itm_1 = acc_psp_1_sva[12];
            FRAME_avg_slc_acc_psp_48_itm_1 = acc_psp_1_sva[12];
            FRAME_avg_slc_acc_psp_49_itm_1 = acc_psp_1_sva[12];
            FRAME_avg_slc_acc_psp_50_itm_1 = acc_psp_1_sva[12];
            FRAME_avg_slc_acc_psp_35_itm_1 = acc_psp_1_sva[10];
            FRAME_avg_slc_acc_psp_36_itm_1 = acc_psp_1_sva[10];
            FRAME_avg_slc_acc_psp_37_itm_1 = acc_psp_1_sva[10];
            FRAME_avg_slc_acc_psp_38_itm_1 = acc_psp_1_sva[10];
            FRAME_avg_slc_acc_psp_39_itm_1 = acc_psp_1_sva[10];
            FRAME_avg_slc_acc_psp_27_itm_1 = acc_psp_1_sva[8];
            FRAME_avg_slc_acc_psp_28_itm_1 = acc_psp_1_sva[8];
            FRAME_avg_slc_acc_psp_29_itm_1 = acc_psp_1_sva[8];
            FRAME_avg_slc_acc_psp_30_itm_1 = acc_psp_1_sva[8];
            FRAME_avg_slc_10_itm_1 = readslicef_6_5_1((conv_u2u_5_6({(acc_psp_1_sva[5])
                , 1'b0 , (signext_2_1(acc_psp_1_sva[5])) , 1'b1}) + conv_u2u_4_6({(acc_psp_1_sva[4:2])
                , (acc_psp_1_sva[4])})));
            FRAME_avg_slc_acc_psp_21_itm_1 = acc_psp_1_sva[6];
            FRAME_avg_slc_acc_psp_22_itm_1 = acc_psp_1_sva[6];
            FRAME_avg_slc_acc_psp_23_itm_1 = acc_psp_1_sva[6];
            FRAME_avg_slc_acc_imod_6_itm_1 = acc_imod_sva[2];
            FRAME_avg_slc_acc_psp_51_itm_1 = acc_psp_1_sva[13];
            FRAME_avg_slc_acc_psp_52_itm_1 = acc_psp_1_sva[13];
            FRAME_avg_slc_acc_psp_53_itm_1 = acc_psp_1_sva[13];
            FRAME_avg_slc_acc_psp_54_itm_1 = acc_psp_1_sva[13];
            FRAME_avg_slc_acc_psp_55_itm_1 = acc_psp_1_sva[13];
            FRAME_avg_slc_acc_psp_56_itm_1 = acc_psp_1_sva[13];
            FRAME_avg_slc_acc_psp_40_itm_1 = acc_psp_1_sva[11];
            FRAME_avg_slc_acc_psp_41_itm_1 = acc_psp_1_sva[11];
            FRAME_avg_slc_acc_psp_42_itm_1 = acc_psp_1_sva[11];
            FRAME_avg_slc_acc_psp_43_itm_1 = acc_psp_1_sva[11];
            FRAME_avg_slc_acc_psp_44_itm_1 = acc_psp_1_sva[11];
            FRAME_avg_slc_acc_psp_31_itm_1 = acc_psp_1_sva[9];
            FRAME_avg_slc_acc_psp_32_itm_1 = acc_psp_1_sva[9];
            FRAME_avg_slc_acc_psp_33_itm_1 = acc_psp_1_sva[9];
            FRAME_avg_slc_acc_psp_34_itm_1 = acc_psp_1_sva[9];
            FRAME_avg_slc_acc_psp_24_itm_1 = acc_psp_1_sva[7];
            FRAME_avg_slc_acc_psp_25_itm_1 = acc_psp_1_sva[7];
            FRAME_avg_slc_acc_psp_26_itm_1 = acc_psp_1_sva[7];
            FRAME_avg_slc_acc_psp_17_itm_1 = acc_psp_1_sva[3];
            FRAME_avg_slc_acc_imod_9_itm_1 = acc_imod_sva[4];
            FRAME_avg_slc_acc_imod_10_itm_1 = acc_imod_sva[4];
            FRAME_avg_slc_acc_imod_8_itm_1 = acc_imod_sva[3];
            FRAME_avg_slc_acc_psp_79_itm_1 = acc_psp_1_sva[1];
            FRAME_avg_slc_acc_imod_5_itm_1 = acc_imod_sva[1];
            FRAME_avg_slc_acc_imod_7_itm_1 = acc_imod_sva[3];
            main_stage_0_2 = 1'b1;
          end
        end
      end
    end
    ACC1_if_acc_50_psp = 11'b0;
    ACC1_if_acc_46_psp = 11'b0;
    ACC1_if_acc_psp = 11'b0;
    ACC1_if_acc_49_sdt = 12'b0;
    ACC1_if_acc_38_sdt = 12'b0;
    ACC1_if_acc_45_sdt = 12'b0;
    ACC1_if_acc_33_sdt = 12'b0;
    ACC1_if_acc_42_sdt = 12'b0;
    ACC1_if_acc_28_sdt = 12'b0;
    regs_regs_0_sva_2 = 30'b0;
    regs_regs_0_sva_sg2 = 30'b0;
    main_stage_0_2 = 1'b0;
    FRAME_avg_slc_acc_imod_7_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_5_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_79_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_8_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_10_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_9_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_17_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_26_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_25_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_24_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_34_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_33_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_32_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_31_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_44_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_43_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_42_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_41_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_40_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_56_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_55_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_54_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_53_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_52_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_51_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_6_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_23_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_22_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_21_itm_1 = 1'b0;
    FRAME_avg_slc_10_itm_1 = 5'b0;
    FRAME_avg_slc_acc_psp_30_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_29_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_28_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_27_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_39_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_38_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_37_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_36_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_35_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_50_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_49_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_48_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_47_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_46_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_45_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_63_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_62_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_61_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_60_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_59_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_58_itm_1 = 1'b0;
    FRAME_avg_slc_acc_psp_57_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_4_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_1_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_3_itm_1 = 1'b0;
    FRAME_avg_slc_acc_imod_2_itm_1 = 1'b0;
    ACC2_slc_regs_regs_2_sg2_4_itm = 10'b0;
    ACC2_slc_regs_regs_2_1_4_itm = 10'b0;
    ACC2_slc_regs_regs_2_sg2_3_itm = 10'b0;
    ACC2_slc_regs_regs_2_1_3_itm = 10'b0;
    ACC2_slc_regs_regs_2_sg2_itm = 10'b0;
    ACC2_slc_regs_regs_2_1_itm = 10'b0;
    absmax_absmax_return_7_lpi_1_dfm_1 = 3'b0;
    absmax_absmax_return_3_sg1_lpi_1_dfm_1 = 7'b0;
    absmax_absmax_return_3_sg1_lpi_1_dfm = 7'b0;
    absmax_absmax_return_7_sva_2 = 3'b0;
    absmax_3_else_slc_svs = 1'b0;
    absmax_3_slc_svs = 1'b0;
    FRAME_avg_acc_1_psp_1_sva = 14'b0;
    acc_imod_1_sva = 3'b0;
    acc_imod_sva = 5'b0;
    acc_psp_1_sva = 15'b0;
    absmax_absmax_return_2_sg1_sva_2 = 12'b0;
    absmax_2_else_slc_svs = 1'b0;
    absmax_2_slc_mdf_sva = 1'b0;
    absmax_absmax_return_1_sg1_sva_2 = 12'b0;
    absmax_1_else_slc_svs = 1'b0;
    absmax_1_slc_mdf_sva = 1'b0;
    absmax_absmax_return_sg1_sva_2 = 12'b0;
    absmax_else_slc_svs = 1'b0;
    absmax_slc_mdf_sva = 1'b0;
    regs_regs_0_sva_1 = 90'b0;
    regs_regs_1_sg2_sva = 30'b0;
    regs_regs_1_1_sva = 30'b0;
    vout_rsc_mgc_out_stdreg_d <= 30'b0;
  end


  function [2:0] readslicef_4_3_1;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_4_3_1 = tmp[2:0];
  end
  endfunction


  function [1:0] readslicef_3_2_1;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_3_2_1 = tmp[1:0];
  end
  endfunction


  function [7:0] readslicef_9_8_1;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_9_8_1 = tmp[7:0];
  end
  endfunction


  function [6:0] readslicef_8_7_1;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_8_7_1 = tmp[6:0];
  end
  endfunction


  function [5:0] readslicef_7_6_1;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_7_6_1 = tmp[5:0];
  end
  endfunction


  function [0:0] readslicef_3_1_2;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 2;
    readslicef_3_1_2 = tmp[0:0];
  end
  endfunction


  function [8:0] readslicef_10_9_1;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_10_9_1 = tmp[8:0];
  end
  endfunction


  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
  end
  endfunction


  function [0:0] readslicef_4_1_3;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 3;
    readslicef_4_1_3 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_14_1_13;
    input [13:0] vector;
    reg [13:0] tmp;
  begin
    tmp = vector >> 13;
    readslicef_14_1_13 = tmp[0:0];
  end
  endfunction


  function [2:0] MUX_v_3_2_2;
    input [5:0] inputs;
    input [0:0] sel;
    reg [2:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[5:3];
      end
      1'b1 : begin
        result = inputs[2:0];
      end
      default : begin
        result = inputs[5:3];
      end
    endcase
    MUX_v_3_2_2 = result;
  end
  endfunction


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [11:0] MUX1HOT_v_12_3_2;
    input [35:0] inputs;
    input [2:0] sel;
    reg [11:0] result;
    integer i;
  begin
    result = inputs[0+:12] & {12{sel[0]}};
    for( i = 1; i < 3; i = i + 1 )
      result = result | (inputs[i*12+:12] & {12{sel[i]}});
    MUX1HOT_v_12_3_2 = result;
  end
  endfunction


  function [4:0] readslicef_6_5_1;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_6_5_1 = tmp[4:0];
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_2_4 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_4 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [13:0] conv_u2s_13_14 ;
    input [12:0]  vector ;
  begin
    conv_u2s_13_14 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_9_12 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_12 = {{3{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction


  function  [6:0] conv_u2u_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_7 = {1'b0, vector};
  end
  endfunction


  function signed [2:0] conv_u2s_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_3 = {1'b0, vector};
  end
  endfunction


  function signed [13:0] conv_s2s_13_14 ;
    input signed [12:0]  vector ;
  begin
    conv_s2s_13_14 = {vector[12], vector};
  end
  endfunction


  function signed [12:0] conv_u2s_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2s_12_13 = {1'b0, vector};
  end
  endfunction


  function signed [12:0] conv_s2s_11_13 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_13 = {{2{vector[10]}}, vector};
  end
  endfunction


  function signed [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 = {1'b0, vector};
  end
  endfunction


  function signed [10:0] conv_s2s_9_11 ;
    input signed [8:0]  vector ;
  begin
    conv_s2s_9_11 = {{2{vector[8]}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_8_10 ;
    input signed [7:0]  vector ;
  begin
    conv_s2s_8_10 = {{2{vector[7]}}, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_8 = {1'b0, vector};
  end
  endfunction


  function signed [7:0] conv_s2s_5_8 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_8 = {{3{vector[4]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_10_12 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_12 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [4:0] conv_s2s_4_5 ;
    input signed [3:0]  vector ;
  begin
    conv_s2s_4_5 = {vector[3], vector};
  end
  endfunction


  function  [14:0] conv_u2u_14_15 ;
    input [13:0]  vector ;
  begin
    conv_u2u_14_15 = {1'b0, vector};
  end
  endfunction


  function  [13:0] conv_u2u_13_14 ;
    input [12:0]  vector ;
  begin
    conv_u2u_13_14 = {1'b0, vector};
  end
  endfunction


  function  [14:0] conv_u2u_13_15 ;
    input [12:0]  vector ;
  begin
    conv_u2u_13_15 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_u2u_4_6 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_6 = {{2{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    edge_detect
//  Generated from file(s):
//    3) $PROJECT_HOME/edge_detection.c
// ------------------------------------------------------------------


module edge_detect (
  vin_rsc_z, vout_rsc_z, clk, en, arst_n
);
  input [89:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [89:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(90)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  edge_detect_core edge_detect_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule


