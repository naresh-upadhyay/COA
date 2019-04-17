`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2019 01:06:59
// Design Name: 
// Module Name: multi_most_hw
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


module multi_most_hw(
    out
    );
    output[7:0] out;
    reg [7:0] mt=8'b00001001;
    reg [7:0] mr=8'b00001001;
    reg [7:0] prod=0;
    reg [7:0] alu=0;
    integer ct=0;
    initial 
        begin
            for(ct=0; ct<4 ; ct=ct+1) begin
                 alu[7:0]=mt[7:0]+prod[7:0];
                 if(mr[0]>0)begin 
                    prod[7:0]=alu[7:0];
                 end
                 mr[7:0]=mr[7:0]>>1;
                 mt[7:0]=mt[7:0]<<1;

            end
        end
   assign out=prod;
endmodule
