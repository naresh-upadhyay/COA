`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2019 14:05:58
// Design Name: 
// Module Name: halfadders
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


module halfadd(
    input x,y,
    output s,c
    );
    
    assign s=(x&~y)|(~x&y);
    assign c=x&y;
endmodule
