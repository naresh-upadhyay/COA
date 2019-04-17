`include "fulladde.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2019 08:28:37
// Design Name: 
// Module Name: tes_bench_halfadd
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


module tesb_fulladd;
    reg bit1=0;
    reg bit2=1;
    reg bit3=2;
    wire sw,cw;
    
    fulladde full_test_b(
        .a(bit1),
        .b(bit2),
        .cin(bit3),
        .sum1(sw),
        .carry1(cw)
    );
    
    initial
        begin
            bit1=1'b0;
            bit2=1'b0;
            bit3=1'b0;
            #30;
            bit1=1'b0;
            bit2=1'b0;
            bit3=1'b1;
            #30;
            bit1=1'b0;
            bit2=1'b1;
            bit3=1'b0;
            #30;
            bit1=1'b0;
            bit2=1'b1;
            bit3=1'b1;
            #10;
            bit1=1'b1;
            bit2=1'b0;
            bit3=1'b0;
            #10;
            bit1=1'b1;
            bit2=1'b0;
            bit3=1'b1;
            #10;
            bit1=1'b1;
            bit2=1'b1;
            bit3=1'b0;
            #10;
            bit1=1'b1;
            bit2=1'b1;
            bit3=1'b1;
            #10;
            
        end    
endmodule
