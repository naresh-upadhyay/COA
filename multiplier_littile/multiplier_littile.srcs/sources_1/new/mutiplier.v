`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2019 16:07:57
// Design Name: 
// Module Name: mutiplier
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


module mutiplier(
        out
    );
    reg [3:0]mt=4'b1000;
    reg [3:0]mr=4'b1001;
    output [7:0]out;
    reg[3:0] alu=0;
    reg[7:0] pdblock=0;
    integer count=0;

    initial
        begin
            pdblock[3:0]=mr[3:0];
            for(count=0; count<4; count =count+1)begin 
                alu[3:0]=mt[3:0]+pdblock[7:4];
                if(pdblock[0]>0)begin
                    pdblock[7:4]=alu[3:0];
                end
                pdblock[7:0]=pdblock[7:0]>>1;

            end
        end
    assign out=pdblock[7:0];
endmodule
