`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2019 15:45:44
// Design Name: 
// Module Name: test_dflip
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

`include "dflipflop.v"
module test_dflip;
    reg d=0;
    reg c=0;
    wire q1,q2;
    dflipflop f1(d,c,q1,q2);
    initial 
       begin
        d=1'b0;
        c=1'b0;
        #10;
        d=1'b0;
        c=1'b1;
        #10;
        d=1'b1;
        c=1'b0;
        #10;
        d=1'b1;
        c=1'b1;
        #10;
        end        
endmodule
