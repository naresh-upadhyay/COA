`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2019 15:29:20
// Design Name: 
// Module Name: dflipflop
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


module dflipflop(input D,input clk,output Q1,output Q2);
   wire w1,w2,w3;
   assign Q1=1'b0;
   assign Q2=1'b1;
   not(w1,D);
   and(w2,clk,w1);
   and(w3,clk,D);
   nor(Q1,w2,Q2);
   nor(Q2,w3,Q1);
   
endmodule
