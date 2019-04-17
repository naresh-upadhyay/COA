`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 09:56:22
// Design Name: 
// Module Name: rcadder
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


module rcadder(
    input wire[3:0] a1,b1,
    input ci,
    output wire[3:0] s1,
    output cf
    );
    wire[2:0] carr;
    fulladder f1(.a(a1[0]),.b(b1[0]),.cin(ci),.s(s1[0]),.c(carr[0]));
    fulladder f2(.a(a1[1]),.b(b1[1]),.cin(carr[0]),.s(s1[1]),.c(carr[1]));
    fulladder f3(.a(a1[2]),.b(b1[2]),.cin(carr[1]),.s(s1[2]),.c(carr[2]));
    fulladder f4(.a(a1[3]),.b(b1[3]),.cin(carr[2]),.s(s1[3]),.c(cf));
    
endmodule
