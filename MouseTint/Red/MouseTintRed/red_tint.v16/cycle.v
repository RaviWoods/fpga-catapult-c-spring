// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   jb914@EEWS104A-014
//  Generated date: Wed May 06 13:33:59 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    red_tint_core
// ------------------------------------------------------------------


module red_tint_core (
  clk, en, arst_n, video_in_rsc_mgc_in_wire_d, video_out_rsc_mgc_out_stdreg_d, mouse_xy_rsc_mgc_in_wire_d
);
  input clk;
  input en;
  input arst_n;
  input [29:0] video_in_rsc_mgc_in_wire_d;
  output [29:0] video_out_rsc_mgc_out_stdreg_d;
  reg [29:0] video_out_rsc_mgc_out_stdreg_d;
  input [19:0] mouse_xy_rsc_mgc_in_wire_d;



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [29:0] io_read_video_in_rsc_d_cse_sva;
    reg [7:0] mouse_x_1_sva;
    reg slc_svs;
    reg else_slc_svs;
    reg [8:0] else_else_acc_psp_1_sva;
    reg [7:0] makepos_result_sg1_lpi_dfm;
    reg [1:0] makepos_result_1_lpi_dfm;
    reg [8:0] else_else_acc_2_psp_1_sva;
    reg [7:0] makepos_1_result_sg1_lpi_dfm;
    reg [1:0] makepos_1_result_1_lpi_dfm;
    reg [9:0] redout_lpi_dfm;
    reg [7:0] mux_11;
    reg [1:0] mux_12;

    reg[7:0] else_mux_3_nl;
    reg[1:0] else_mux_4_nl;
    begin : mainExit
      forever begin : main
        // C-Step 0 of Loop 'main'
        begin : waitLoop0Exit
          forever begin : waitLoop0
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop0Exit;
          end
        end
        // C-Step 1 of Loop 'main'
        redout_lpi_dfm = 10'b0;
        makepos_1_result_1_lpi_dfm = 2'b0;
        makepos_1_result_sg1_lpi_dfm = 8'b0;
        makepos_result_1_lpi_dfm = 2'b0;
        makepos_result_sg1_lpi_dfm = 8'b0;
        io_read_video_in_rsc_d_cse_sva = video_in_rsc_mgc_in_wire_d;
        mouse_x_1_sva = mouse_xy_rsc_mgc_in_wire_d[8:1];
        slc_svs = readslicef_9_1_8((conv_u2s_8_9(mouse_x_1_sva) + 9'b111111011));
        if ( slc_svs ) begin
          mux_11 = io_read_video_in_rsc_d_cse_sva[19:12];
          mux_12 = io_read_video_in_rsc_d_cse_sva[11:10];
        end
        else begin
          else_slc_svs = readslicef_9_1_8((({1'b1 , (~ mouse_x_1_sva)}) + 9'b1111001));
          if ( else_slc_svs ) begin
          end
          else begin
            else_else_acc_psp_1_sva = readslicef_10_9_1((conv_u2s_9_10({(io_read_video_in_rsc_d_cse_sva[19:12])
                , 1'b1}) + conv_s2s_9_10({1'b1 , (~ (mouse_x_1_sva[6:0])) , 1'b1})));
            makepos_result_sg1_lpi_dfm = (else_else_acc_psp_1_sva[7:0]) & (signext_8_1(~
                (else_else_acc_psp_1_sva[8])));
            makepos_result_1_lpi_dfm = (io_read_video_in_rsc_d_cse_sva[11:10]) &
                (signext_2_1(~ (else_else_acc_psp_1_sva[8])));
            else_else_acc_2_psp_1_sva = readslicef_10_9_1((conv_u2s_9_10({(io_read_video_in_rsc_d_cse_sva[9:2])
                , 1'b1}) + conv_s2s_9_10({1'b1 , (~ (mouse_x_1_sva[6:0])) , 1'b1})));
            makepos_1_result_sg1_lpi_dfm = (else_else_acc_2_psp_1_sva[7:0]) & (signext_8_1(~
                (else_else_acc_2_psp_1_sva[8])));
            makepos_1_result_1_lpi_dfm = (io_read_video_in_rsc_d_cse_sva[1:0]) &
                (signext_2_1(~ (else_else_acc_2_psp_1_sva[8])));
          end
          redout_lpi_dfm = (io_read_video_in_rsc_d_cse_sva[29:20]) & (signext_10_1(~
              else_slc_svs));
          mux_11 = makepos_result_sg1_lpi_dfm & (signext_8_1(~ else_slc_svs));
          mux_12 = makepos_result_1_lpi_dfm & (signext_2_1(~ else_slc_svs));
        end
        else_mux_3_nl = MUX_v_8_2_2({makepos_1_result_sg1_lpi_dfm , (io_read_video_in_rsc_d_cse_sva[9:2])},
            else_slc_svs);
        else_mux_4_nl = MUX_v_2_2_2({makepos_1_result_1_lpi_dfm , (io_read_video_in_rsc_d_cse_sva[1:0])},
            else_slc_svs);
        video_out_rsc_mgc_out_stdreg_d <= {(redout_lpi_dfm & (signext_10_1(~ slc_svs)))
            , mux_11 , mux_12 , ((else_mux_3_nl) & (signext_8_1(~ slc_svs))) , ((else_mux_4_nl)
            & (signext_2_1(~ slc_svs)))};
      end
    end
    mux_12 = 2'b0;
    mux_11 = 8'b0;
    redout_lpi_dfm = 10'b0;
    makepos_1_result_1_lpi_dfm = 2'b0;
    makepos_1_result_sg1_lpi_dfm = 8'b0;
    else_else_acc_2_psp_1_sva = 9'b0;
    makepos_result_1_lpi_dfm = 2'b0;
    makepos_result_sg1_lpi_dfm = 8'b0;
    else_else_acc_psp_1_sva = 9'b0;
    else_slc_svs = 1'b0;
    slc_svs = 1'b0;
    mouse_x_1_sva = 8'b0;
    io_read_video_in_rsc_d_cse_sva = 30'b0;
    video_out_rsc_mgc_out_stdreg_d <= 30'b0;
  end


  function [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
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


  function [7:0] signext_8_1;
    input [0:0] vector;
  begin
    signext_8_1= {{7{vector[0]}}, vector};
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
  end
  endfunction


  function [7:0] MUX_v_8_2_2;
    input [15:0] inputs;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[15:8];
      end
      1'b1 : begin
        result = inputs[7:0];
      end
      default : begin
        result = inputs[15:8];
      end
    endcase
    MUX_v_8_2_2 = result;
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


  function signed [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 = {1'b0, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_9_10 ;
    input signed [8:0]  vector ;
  begin
    conv_s2s_9_10 = {vector[8], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    red_tint
//  Generated from file(s):
//    3) $PROJECT_HOME/MouseTintRed.c
// ------------------------------------------------------------------


module red_tint (
  video_in_rsc_z, video_out_rsc_z, mouse_xy_rsc_z, clk, en, arst_n
);
  input [29:0] video_in_rsc_z;
  output [29:0] video_out_rsc_z;
  input [19:0] mouse_xy_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [29:0] video_in_rsc_mgc_in_wire_d;
  wire [29:0] video_out_rsc_mgc_out_stdreg_d;
  wire [19:0] mouse_xy_rsc_mgc_in_wire_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(30)) video_in_rsc_mgc_in_wire (
      .d(video_in_rsc_mgc_in_wire_d),
      .z(video_in_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) video_out_rsc_mgc_out_stdreg (
      .d(video_out_rsc_mgc_out_stdreg_d),
      .z(video_out_rsc_z)
    );
  mgc_in_wire #(.rscid(3),
  .width(20)) mouse_xy_rsc_mgc_in_wire (
      .d(mouse_xy_rsc_mgc_in_wire_d),
      .z(mouse_xy_rsc_z)
    );
  red_tint_core red_tint_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .video_in_rsc_mgc_in_wire_d(video_in_rsc_mgc_in_wire_d),
      .video_out_rsc_mgc_out_stdreg_d(video_out_rsc_mgc_out_stdreg_d),
      .mouse_xy_rsc_mgc_in_wire_d(mouse_xy_rsc_mgc_in_wire_d)
    );
endmodule



