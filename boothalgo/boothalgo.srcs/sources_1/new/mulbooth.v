`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2019 22:59:22
// Design Name: 
// Module Name: mulbooth
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

module mulbooth(
    out
    );
    output[7:0] out;
    reg[3:0] ac=0;
    reg[3:0] qr=4'b1001;
    reg[3:0] br=4'b1010;
    reg[3:0] br1=0;
    reg[7:0] acqr=0;
    reg [1:0] qn=0;
    integer sc=0;
    initial 
        begin
            br1[3:0] = ~br + 1'b1;
            qn[1:0]={qr[0],1'b0};
            acqr[7:0]={ac[3:0],qr[3:0]};
            for(sc=0 ; sc<4 ; sc=sc+1) begin
                if(qn==2)begin
                    acqr[7:4]=acqr[7:4]+br1[3:0];
                end
                else if(qn==1)begin
                    acqr[7:4]=acqr[7:4]+br[3:0];
                end
                qn[1:0]=acqr[1:0];
                acqr[7:0]={acqr[7],acqr[7:1]};  
            end
            if(acqr[7]>0)begin
                acqr=~acqr+1'b1;
            end
        end
    assign out=acqr;
endmodule


/*
module mulbooth(
    out
    );
    output[9:0] out;
    reg[4:0] ac=0;
    reg[4:0] qr=5'b10011;
    reg[4:0] br=5'b10111;
    reg[4:0] br1=0;
    reg[9:0] acqr=0;
    reg [1:0] qn=0;
    integer sc=0;
    initial 
        begin
            br1[4:0] = ~br + 1'b1;
            qn[1:0]={qr[0],1'b0};
            acqr[9:0]={ac[4:0],qr[4:0]};
            for(sc=0 ; sc<5 ; sc=sc+1) begin
                if(qn==2)begin
                    acqr[9:5]=acqr[9:5]+br1[4:0];
                end
                else if(qn==1)begin
                    acqr[9:5]=acqr[9:5]+br[4:0];
                end
                qn[1:0]=acqr[1:0];
                acqr[9:0]={acqr[9],acqr[9:1]};  
            end
            if(acqr[9]>0)begin
                acqr=~acqr+1'b1;
            end
        end
    assign out=acqr;
endmodule
*/