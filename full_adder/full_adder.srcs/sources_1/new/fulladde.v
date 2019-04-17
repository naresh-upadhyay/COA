`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2019 09:10:24
// Design Name: 
// Module Name: fulladde
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


module fulladde(
    input a,b,cin,
    output sum1,carry1
    );
    assign sum1=((a^b)^cin);
    assign carry1=((a^b)&cin)|(a&b);
endmodule
