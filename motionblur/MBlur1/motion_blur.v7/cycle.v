// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   jb914@EEWS104A-020
//  Generated date: Mon May 11 13:05:16 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    motion_blur_core
// ------------------------------------------------------------------


module motion_blur_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [149:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [29:0] regs_regs_1_sg1_sva;
    reg [29:0] regs_regs_0_sg1_sva;
    reg [9:0] regs_regs_slc_regs_regs_2_sg1_2_itm;
    reg [9:0] regs_regs_slc_regs_regs_2_sg1_1_itm;
    reg [9:0] regs_regs_slc_regs_regs_2_sg1_6_itm;
    reg [9:0] regs_regs_slc_regs_regs_2_sg1_5_itm;
    reg [9:0] regs_regs_slc_regs_regs_2_sg1_4_itm;
    reg [9:0] regs_regs_slc_regs_regs_2_sg1_3_itm;

    begin : core_rlpExit
      forever begin : core_rlp
        // C-Step 0 of Loop 'core_rlp'
        regs_regs_1_sg1_sva = 30'b0;
        regs_regs_0_sg1_sva = 30'b0;
        begin : mainExit
          forever begin : main
            // C-Step 0 of Loop 'main'
            regs_regs_slc_regs_regs_2_sg1_2_itm = regs_regs_1_sg1_sva[29:20];
            regs_regs_slc_regs_regs_2_sg1_1_itm = regs_regs_1_sg1_sva[29:20];
            regs_regs_slc_regs_regs_2_sg1_6_itm = regs_regs_1_sg1_sva[9:0];
            regs_regs_slc_regs_regs_2_sg1_5_itm = regs_regs_1_sg1_sva[9:0];
            regs_regs_slc_regs_regs_2_sg1_4_itm = regs_regs_1_sg1_sva[19:10];
            regs_regs_slc_regs_regs_2_sg1_3_itm = regs_regs_1_sg1_sva[19:10];
            regs_regs_1_sg1_sva = regs_regs_0_sg1_sva;
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
            vout_rsc_mgc_out_stdreg_d <= {(regs_regs_slc_regs_regs_2_sg1_2_itm &
                (signext_10_1(readslicef_11_1_10((({1'b1 , (~ regs_regs_slc_regs_regs_2_sg1_1_itm)})
                + 11'b1))))) , (regs_regs_slc_regs_regs_2_sg1_6_itm & (signext_10_1(readslicef_11_1_10((({1'b1
                , (~ regs_regs_slc_regs_regs_2_sg1_5_itm)}) + 11'b1))))) , (regs_regs_slc_regs_regs_2_sg1_4_itm
                & (signext_10_1(readslicef_11_1_10((({1'b1 , (~ regs_regs_slc_regs_regs_2_sg1_3_itm)})
                + 11'b1)))))};
            regs_regs_0_sg1_sva = vin_rsc_mgc_in_wire_d[89:60];
          end
        end
      end
    end
    regs_regs_slc_regs_regs_2_sg1_3_itm = 10'b0;
    regs_regs_slc_regs_regs_2_sg1_4_itm = 10'b0;
    regs_regs_slc_regs_regs_2_sg1_5_itm = 10'b0;
    regs_regs_slc_regs_regs_2_sg1_6_itm = 10'b0;
    regs_regs_slc_regs_regs_2_sg1_1_itm = 10'b0;
    regs_regs_slc_regs_regs_2_sg1_2_itm = 10'b0;
    regs_regs_0_sg1_sva = 30'b0;
    regs_regs_1_sg1_sva = 30'b0;
    vout_rsc_mgc_out_stdreg_d <= 30'b0;
  end


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

endmodule

// ------------------------------------------------------------------
//  Design Unit:    motion_blur
//  Generated from file(s):
//    4) $PROJECT_HOME/motionblur1.c
// ------------------------------------------------------------------


module motion_blur (
  vin_rsc_z, vout_rsc_z, clk, en, arst_n
);
  input [149:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [149:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


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
  motion_blur_core motion_blur_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule



