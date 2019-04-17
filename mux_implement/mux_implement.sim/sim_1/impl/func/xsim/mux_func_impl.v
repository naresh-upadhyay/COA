// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Feb 17 17:48:38 2019
// Host        : King-Upadhyay running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Naresh/mux_implement/mux_implement.sim/sim_1/impl/func/xsim/mux_func_impl.v
// Design      : mux
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "c9836cd3" *) 
(* NotValidForBitStream *)
module mux
   (ps0,
    ps1,
    in1,
    in2,
    in3,
    in4,
    out);
  input ps0;
  input ps1;
  input in1;
  input in2;
  input in3;
  input in4;
  output out;

  wire in1;
  wire in1_IBUF;
  wire in2;
  wire in2_IBUF;
  wire in3;
  wire in3_IBUF;
  wire in4;
  wire in4_IBUF;
  wire out;
  wire out_OBUF;
  wire ps0;
  wire ps0_IBUF;
  wire ps1;
  wire ps1_IBUF;

  IBUF in1_IBUF_inst
       (.I(in1),
        .O(in1_IBUF));
  IBUF in2_IBUF_inst
       (.I(in2),
        .O(in2_IBUF));
  IBUF in3_IBUF_inst
       (.I(in3),
        .O(in3_IBUF));
  IBUF in4_IBUF_inst
       (.I(in4),
        .O(in4_IBUF));
  OBUF out_OBUF_inst
       (.I(out_OBUF),
        .O(out));
  LUT6 #(
    .INIT(64'hAAF0FFCCAAF000CC)) 
    out_OBUF_inst_i_1
       (.I0(in4_IBUF),
        .I1(in1_IBUF),
        .I2(in2_IBUF),
        .I3(ps1_IBUF),
        .I4(ps0_IBUF),
        .I5(in3_IBUF),
        .O(out_OBUF));
  IBUF ps0_IBUF_inst
       (.I(ps0),
        .O(ps0_IBUF));
  IBUF ps1_IBUF_inst
       (.I(ps1),
        .O(ps1_IBUF));
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
