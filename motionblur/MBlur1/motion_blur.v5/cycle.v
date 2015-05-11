// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   jb914@EEWS104A-020
//  Generated date: Mon May 11 12:58:32 2015
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



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [89:0] regs_regs_2_1_sva;
    reg [89:0] regs_regs_1_1_sva;
    reg [89:0] regs_regs_0_1_sva;
    reg [1:0] FRAME_io_read_offset_rsc_d_svs;
    reg equal_tmp;
    reg equal_tmp_1;
    reg equal_tmp_2;
    reg g_x_2_1_lpi_1_dfm;
    reg [89:0] regs_regs_2_1_sva_1;
    reg [89:0] regs_regs_0_1_sva_1;
    reg [9:0] ACC1_3_if_2_and_cse_sva;
    reg [14:0] ACC2_5_acc_1_psp_sva;
    reg [9:0] ACC1_3_if_2_and_4_cse_sva;
    reg [14:0] ACC2_5_acc_2_psp_sva;
    reg [9:0] ACC1_3_if_2_and_8_cse_sva;
    reg [14:0] ACC2_5_acc_3_psp_sva;
    reg absmax_slc_svs;
    reg [9:0] absmax_absmax_return_3_lpi_1_dfm;
    reg absmax_1_slc_svs;
    reg [9:0] absmax_absmax_return_4_lpi_1_dfm;
    reg absmax_2_slc_svs;
    reg [9:0] absmax_absmax_return_5_lpi_1_dfm;
    reg [9:0] regs_regs_slc_regs_regs_3_17_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_1_3_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_1_4_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_18_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_1_6_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_1_7_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_19_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_1_1_itm;
    reg [9:0] regs_regs_slc_regs_regs_3_1_itm;
    reg [29:0] regs_regs_3_1_sva_sg2;
    reg [29:0] regs_regs_3_1_sva_2;
    reg [29:0] regs_regs_3_1_sva_1_sg2;
    reg [29:0] regs_regs_3_1_sva_3;

    begin : core_rlpExit
      forever begin : core_rlp
        // C-Step 0 of Loop 'core_rlp'
        regs_regs_2_1_sva = 90'b0;
        regs_regs_1_1_sva = 90'b0;
        regs_regs_3_1_sva_2 = 30'b0;
        regs_regs_3_1_sva_sg2 = 30'b0;
        regs_regs_0_1_sva = 90'b0;
        begin : mainExit
          forever begin : main
            // C-Step 0 of Loop 'main'
            regs_regs_3_1_sva_3 = regs_regs_2_1_sva[29:0];
            regs_regs_3_1_sva_1_sg2 = regs_regs_2_1_sva[89:60];
            regs_regs_2_1_sva_1 = regs_regs_1_1_sva;
            regs_regs_slc_regs_regs_3_17_itm = regs_regs_2_1_sva[59:50];
            regs_regs_slc_regs_regs_3_1_3_itm = regs_regs_3_1_sva_sg2[29:20];
            regs_regs_slc_regs_regs_3_1_4_itm = regs_regs_3_1_sva_2[29:20];
            regs_regs_slc_regs_regs_3_18_itm = regs_regs_2_1_sva[49:40];
            regs_regs_slc_regs_regs_3_1_6_itm = regs_regs_3_1_sva_sg2[19:10];
            regs_regs_slc_regs_regs_3_1_7_itm = regs_regs_3_1_sva_2[19:10];
            regs_regs_slc_regs_regs_3_19_itm = regs_regs_2_1_sva[39:30];
            regs_regs_slc_regs_regs_3_1_1_itm = regs_regs_3_1_sva_sg2[9:0];
            regs_regs_slc_regs_regs_3_1_itm = regs_regs_3_1_sva_2[9:0];
            regs_regs_1_1_sva = regs_regs_0_1_sva;
            regs_regs_2_1_sva = regs_regs_2_1_sva_1;
            regs_regs_3_1_sva_2 = regs_regs_3_1_sva_3;
            regs_regs_3_1_sva_sg2 = regs_regs_3_1_sva_1_sg2;
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
            absmax_absmax_return_5_lpi_1_dfm = 10'b0;
            absmax_absmax_return_4_lpi_1_dfm = 10'b0;
            absmax_absmax_return_3_lpi_1_dfm = 10'b0;
            FRAME_io_read_offset_rsc_d_svs = offset_rsc_mgc_in_wire_d;
            equal_tmp = (FRAME_io_read_offset_rsc_d_svs[0]) & (~ (FRAME_io_read_offset_rsc_d_svs[1]));
            equal_tmp_1 = (FRAME_io_read_offset_rsc_d_svs[1]) & (~ (FRAME_io_read_offset_rsc_d_svs[0]));
            equal_tmp_2 = (FRAME_io_read_offset_rsc_d_svs[1]) & (FRAME_io_read_offset_rsc_d_svs[0]);
            g_x_2_1_lpi_1_dfm = ~(equal_tmp | equal_tmp_1 | equal_tmp_2);
            regs_regs_0_1_sva_1 = vin_rsc_mgc_in_wire_d[89:0];
            ACC1_3_if_2_and_cse_sva = (regs_regs_2_1_sva_1[29:20]) & ({{9{equal_tmp_1}},
                equal_tmp_1});
            ACC2_5_acc_1_psp_sva = conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13({(conv_u2u_10_11(ACC1_3_if_2_and_cse_sva)
                + conv_u2u_9_11((regs_regs_0_1_sva_1[29:21]) & ({{8{equal_tmp_2}},
                equal_tmp_2}))) , ((regs_regs_0_1_sva_1[20]) & equal_tmp_2)}) + conv_u2u_11_13(conv_u2u_10_11(ACC1_3_if_2_and_cse_sva)
                + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_4_itm & ({{9{equal_tmp}},
                equal_tmp})))) + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[59:50])
                & ({{9{equal_tmp_2}}, equal_tmp_2})) + conv_u2u_10_11((regs_regs_2_1_sva_1[59:50])
                & ({{9{equal_tmp_1}}, equal_tmp_1}))) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_3_17_itm
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((regs_regs_0_1_sva_1[89:80])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm}))))) + conv_u2u_13_15(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[89:80])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})) + conv_u2u_10_11(regs_regs_2_1_sva_1[89:80]))
                + conv_u2u_11_12(conv_u2u_10_11((regs_regs_3_1_sva_1_sg2[29:20])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_3_itm
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[29:20])
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((regs_regs_3_1_sva_3[29:20])
                & ({{9{equal_tmp_2}}, equal_tmp_2}))) + conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva_1[29:20])
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_4_itm
                & ({{9{equal_tmp_2}}, equal_tmp_2})))));
            ACC1_3_if_2_and_4_cse_sva = (regs_regs_2_1_sva_1[19:10]) & ({{9{equal_tmp_1}},
                equal_tmp_1});
            ACC2_5_acc_2_psp_sva = conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13({(conv_u2u_10_11(ACC1_3_if_2_and_4_cse_sva)
                + conv_u2u_9_11((regs_regs_0_1_sva_1[19:11]) & ({{8{equal_tmp_2}},
                equal_tmp_2}))) , ((regs_regs_0_1_sva_1[10]) & equal_tmp_2)}) + conv_u2u_11_13(conv_u2u_10_11(ACC1_3_if_2_and_4_cse_sva)
                + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_7_itm & ({{9{equal_tmp}},
                equal_tmp})))) + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[49:40])
                & ({{9{equal_tmp_2}}, equal_tmp_2})) + conv_u2u_10_11((regs_regs_2_1_sva_1[49:40])
                & ({{9{equal_tmp_1}}, equal_tmp_1}))) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_3_18_itm
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((regs_regs_0_1_sva_1[79:70])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm}))))) + conv_u2u_13_15(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[79:70])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})) + conv_u2u_10_11(regs_regs_2_1_sva_1[79:70]))
                + conv_u2u_11_12(conv_u2u_10_11((regs_regs_3_1_sva_1_sg2[19:10])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_6_itm
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[19:10])
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((regs_regs_3_1_sva_3[19:10])
                & ({{9{equal_tmp_2}}, equal_tmp_2}))) + conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva_1[19:10])
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_7_itm
                & ({{9{equal_tmp_2}}, equal_tmp_2})))));
            ACC1_3_if_2_and_8_cse_sva = (regs_regs_2_1_sva_1[9:0]) & ({{9{equal_tmp_1}},
                equal_tmp_1});
            ACC2_5_acc_3_psp_sva = conv_u2u_14_15(conv_u2u_13_14(conv_u2u_12_13({(conv_u2u_10_11(ACC1_3_if_2_and_8_cse_sva)
                + conv_u2u_9_11((regs_regs_0_1_sva_1[9:1]) & ({{8{equal_tmp_2}},
                equal_tmp_2}))) , ((regs_regs_0_1_sva_1[0]) & equal_tmp_2)}) + conv_u2u_11_13(conv_u2u_10_11(ACC1_3_if_2_and_8_cse_sva)
                + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_itm & ({{9{equal_tmp}},
                equal_tmp})))) + conv_u2u_12_14(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[39:30])
                & ({{9{equal_tmp_2}}, equal_tmp_2})) + conv_u2u_10_11((regs_regs_2_1_sva_1[39:30])
                & ({{9{equal_tmp_1}}, equal_tmp_1}))) + conv_u2u_11_12(conv_u2u_10_11(regs_regs_slc_regs_regs_3_19_itm
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((regs_regs_0_1_sva_1[69:60])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm}))))) + conv_u2u_13_15(conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[69:60])
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})) + conv_u2u_10_11(regs_regs_2_1_sva_1[69:60]))
                + conv_u2u_11_12(conv_u2u_10_11((regs_regs_3_1_sva_1_sg2[9:0]) &
                ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_1_itm
                & ({{9{g_x_2_1_lpi_1_dfm}}, g_x_2_1_lpi_1_dfm})))) + conv_u2u_12_13(conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva[9:0])
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11((regs_regs_3_1_sva_3[9:0])
                & ({{9{equal_tmp_2}}, equal_tmp_2}))) + conv_u2u_11_12(conv_u2u_10_11((regs_regs_0_1_sva_1[9:0])
                & ({{9{equal_tmp}}, equal_tmp})) + conv_u2u_10_11(regs_regs_slc_regs_regs_3_1_itm
                & ({{9{equal_tmp_2}}, equal_tmp_2})))));
            absmax_slc_svs = readslicef_5_1_4(((~ (ACC2_5_acc_1_psp_sva[14:10]))
                + 5'b1));
            if ( absmax_slc_svs ) begin
            end
            else begin
              absmax_absmax_return_3_lpi_1_dfm = (ACC2_5_acc_1_psp_sva[9:0]) & (signext_10_1(readslicef_11_1_10((({1'b1
                  , (~ (ACC2_5_acc_1_psp_sva[9:0]))}) + 11'b1))));
            end
            absmax_1_slc_svs = readslicef_5_1_4(((~ (ACC2_5_acc_2_psp_sva[14:10]))
                + 5'b1));
            if ( absmax_1_slc_svs ) begin
            end
            else begin
              absmax_absmax_return_4_lpi_1_dfm = (ACC2_5_acc_2_psp_sva[9:0]) & (signext_10_1(readslicef_11_1_10((({1'b1
                  , (~ (ACC2_5_acc_2_psp_sva[9:0]))}) + 11'b1))));
            end
            absmax_2_slc_svs = readslicef_5_1_4(((~ (ACC2_5_acc_3_psp_sva[14:10]))
                + 5'b1));
            if ( absmax_2_slc_svs ) begin
            end
            else begin
              absmax_absmax_return_5_lpi_1_dfm = (ACC2_5_acc_3_psp_sva[9:0]) & (signext_10_1(readslicef_11_1_10((({1'b1
                  , (~ (ACC2_5_acc_3_psp_sva[9:0]))}) + 11'b1))));
            end
            vout_rsc_mgc_out_stdreg_d <= {(absmax_absmax_return_3_lpi_1_dfm | ({{9{absmax_slc_svs}},
                absmax_slc_svs})) , (absmax_absmax_return_5_lpi_1_dfm | ({{9{absmax_2_slc_svs}},
                absmax_2_slc_svs})) , (absmax_absmax_return_4_lpi_1_dfm | ({{9{absmax_1_slc_svs}},
                absmax_1_slc_svs}))};
            regs_regs_0_1_sva = regs_regs_0_1_sva_1;
          end
        end
      end
    end
    regs_regs_3_1_sva_3 = 30'b0;
    regs_regs_3_1_sva_1_sg2 = 30'b0;
    regs_regs_3_1_sva_2 = 30'b0;
    regs_regs_3_1_sva_sg2 = 30'b0;
    regs_regs_slc_regs_regs_3_1_itm = 10'b0;
    regs_regs_slc_regs_regs_3_1_1_itm = 10'b0;
    regs_regs_slc_regs_regs_3_19_itm = 10'b0;
    regs_regs_slc_regs_regs_3_1_7_itm = 10'b0;
    regs_regs_slc_regs_regs_3_1_6_itm = 10'b0;
    regs_regs_slc_regs_regs_3_18_itm = 10'b0;
    regs_regs_slc_regs_regs_3_1_4_itm = 10'b0;
    regs_regs_slc_regs_regs_3_1_3_itm = 10'b0;
    regs_regs_slc_regs_regs_3_17_itm = 10'b0;
    absmax_absmax_return_5_lpi_1_dfm = 10'b0;
    absmax_2_slc_svs = 1'b0;
    absmax_absmax_return_4_lpi_1_dfm = 10'b0;
    absmax_1_slc_svs = 1'b0;
    absmax_absmax_return_3_lpi_1_dfm = 10'b0;
    absmax_slc_svs = 1'b0;
    ACC2_5_acc_3_psp_sva = 15'b0;
    ACC1_3_if_2_and_8_cse_sva = 10'b0;
    ACC2_5_acc_2_psp_sva = 15'b0;
    ACC1_3_if_2_and_4_cse_sva = 10'b0;
    ACC2_5_acc_1_psp_sva = 15'b0;
    ACC1_3_if_2_and_cse_sva = 10'b0;
    regs_regs_0_1_sva_1 = 90'b0;
    regs_regs_2_1_sva_1 = 90'b0;
    g_x_2_1_lpi_1_dfm = 1'b0;
    equal_tmp_2 = 1'b0;
    equal_tmp_1 = 1'b0;
    equal_tmp = 1'b0;
    FRAME_io_read_offset_rsc_d_svs = 2'b0;
    regs_regs_0_1_sva = 90'b0;
    regs_regs_1_1_sva = 90'b0;
    regs_regs_2_1_sva = 90'b0;
    vout_rsc_mgc_out_stdreg_d <= 30'b0;
  end


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
  end
  endfunction


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
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


  function  [12:0] conv_u2u_12_13 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_13 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [12:0] conv_u2u_11_13 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_13 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [13:0] conv_u2u_12_14 ;
    input [11:0]  vector ;
  begin
    conv_u2u_12_14 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [14:0] conv_u2u_13_15 ;
    input [12:0]  vector ;
  begin
    conv_u2u_13_15 = {{2{1'b0}}, vector};
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



