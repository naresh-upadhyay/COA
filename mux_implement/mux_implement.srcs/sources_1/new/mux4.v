`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 10:24:20
// Design Name: 
// Module Name: mux4
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


module mux4(i1,i2,i3,i4,fout,s0,s1);
input i1,i2,i3,i4,s0,s1;
output fout;
wire m1,m2;
mux2 mux_1(.a(i1),.b(i2),.out(m1),.s(s0));
mux2 mux_2(.a(i3),.b(i4),.out(m2),.s(s0));
mux2 mux_3(.a(m1),.b(m2),.out(fout),.s(s1));

endmodule
