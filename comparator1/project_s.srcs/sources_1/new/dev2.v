`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2019 11:00:10
// Design Name: 
// Module Name: dev2
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

`include "dev.v"
module dev2(input[1:0]x,input[1:0]y,output ot

    );
    wire r,s;
    dev d1(x[0],y[0],r);
    dev d2(x[1],y[1],s);
    and(ot,r,s);
endmodule
