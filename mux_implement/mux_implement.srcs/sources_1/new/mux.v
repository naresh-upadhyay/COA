`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 09:57:02
// Design Name: 
// Module Name: mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux(
    input ps0,ps1,
    input in1,in2,in3,in4,
    output out
    );
    wire[1:0]s1;
    wire[3:0]w;
    not(s1[0],ps0);
    not(s1[1],ps1);
    assign w[0]=in1&s1[0]&s1[1];
    assign w[1]=in2&ps0&s1[1];
    assign w[2]=in3&ps1&s1[0];
    assign w[3]=in4&ps0&ps1;
    assign out=w[0]|w[1]|w[2]|w[3];
endmodule


module mux14_tb;
wire tout;
reg ta, tb, tc, td, ts1, ts0;
mux4 multi4x_inst( .in1(ta), .in2(tb), .in3(tc), .in4(td), .ps0(ts0), .ps1(ts1), .out(tout) );
initial
begin
// p1
ta = 1'b1;
tb = 1'b0;
tc = 1'b1;
td = 1'b1;
ts0 = 1'b0;
ts1 = 1'b1;
#20 //p2
ta = 1'b0;
tb = 1'b1;
tc = 1'b0;
td = 1'b0;
ts0 = 1'b0;
ts1 = 1'b1;
#20 //p3
ta = 1'b0;
tb = 1'b0;
tc = 1'b1;
td = 1'b0;
ts0 = 1'b1;
ts1 = 1'b0;
#20 //p4
ta = 1'b0;
tb = 1'b0;
tc = 1'b0;
td = 1'b1;
ts0 = 1'b1;
ts1 = 1'b1;
#20 //p5
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
