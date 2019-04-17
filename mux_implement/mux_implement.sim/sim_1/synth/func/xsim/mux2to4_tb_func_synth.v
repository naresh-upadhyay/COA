// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 26 22:42:31 2019
// Host        : King-Upadhyay running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Naresh/mux_implement/mux_implement.sim/sim_1/synth/func/xsim/mux2to4_tb_func_synth.v
// Design      : mux4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux2
   (fout_OBUF,
    i1_IBUF,
    i2_IBUF,
    s1_IBUF,
    i3_IBUF,
    s0_IBUF,
    i4_IBUF);
  output fout_OBUF;
  input i1_IBUF;
  input i2_IBUF;
  input s1_IBUF;
  input i3_IBUF;
  input s0_IBUF;
  input i4_IBUF;

  wire fout_OBUF;
  wire i1_IBUF;
  wire i2_IBUF;
  wire i3_IBUF;
  wire i4_IBUF;
  wire s0_IBUF;
  wire s1_IBUF;

  LUT6 #(
    .INIT(64'hFCFCFA0A0C0CFA0A)) 
    out
       (.I0(i1_IBUF),
        .I1(i2_IBUF),
        .I2(s1_IBUF),
        .I3(i3_IBUF),
        .I4(s0_IBUF),
        .I5(i4_IBUF),
        .O(fout_OBUF));
endmodule

(* NotValidForBitStream *)
module mux4
   (i1,
    i2,
    i3,
    i4,
    fout,
    s0,
    s1);
  input i1;
  input i2;
  input i3;
  input i4;
  output fout;
  input s0;
  input s1;

  wire fout;
  wire fout_OBUF;
  wire i1;
  wire i1_IBUF;
  wire i2;
  wire i2_IBUF;
  wire i3;
  wire i3_IBUF;
  wire i4;
  wire i4_IBUF;
  wire s0;
  wire s0_IBUF;
  wire s1;
  wire s1_IBUF;

  OBUF fout_OBUF_inst
       (.I(fout_OBUF),
        .O(fout));
  IBUF i1_IBUF_inst
       (.I(i1),
        .O(i1_IBUF));
  IBUF i2_IBUF_inst
       (.I(i2),
        .O(i2_IBUF));
  IBUF i3_IBUF_inst
       (.I(i3),
        .O(i3_IBUF));
  IBUF i4_IBUF_inst
       (.I(i4),
        .O(i4_IBUF));
  mux2 mux_3
       (.fout_OBUF(fout_OBUF),
        .i1_IBUF(i1_IBUF),
        .i2_IBUF(i2_IBUF),
        .i3_IBUF(i3_IBUF),
        .i4_IBUF(i4_IBUF),
        .s0_IBUF(s0_IBUF),
        .s1_IBUF(s1_IBUF));
  IBUF s0_IBUF_inst
       (.I(s0),
        .O(s0_IBUF));
  IBUF s1_IBUF_inst
       (.I(s1),
        .O(s1_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
