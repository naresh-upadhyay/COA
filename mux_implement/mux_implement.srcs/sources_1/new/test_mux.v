
module mux2to4_tb;
wire tout;
reg ta, tb, tc, td, ts1, ts0;
mux4 multi2to4x_inst( .i1(ta), .i2(tb), .i3(tc), .i4(td), .s0(ts0), .s1(ts1), .fout(tout) );
initial
begin
// p1
ta = 1'b1;
tb = 1'b0;
tc = 1'b1;
td = 1'b1;
ts0 = 1'b0;
ts1 = 1'b1;
#20; //p2
ta = 1'b0;
tb = 1'b1;
tc = 1'b0;
td = 1'b0;
ts0 = 1'b0;
ts1 = 1'b1;
#20; //p3
ta = 1'b0;
tb = 1'b0;
tc = 1'b1;
td = 1'b0;
ts0 = 1'b1;
ts1 = 1'b0;
#20; //p4
ta = 1'b0;
tb = 1'b0;
tc = 1'b0;
td = 1'b1;
ts0 = 1'b1;
ts1 = 1'b1;
#20; //p5
ta = 1'b1;
tb = 1'b0;
tc = 1'b0;
td = 1'b0;
ts0 = 1'b0;
ts1 = 1'b0;

$dumpfile("power_test.vcd");
$dumpvars();

end
endmodule