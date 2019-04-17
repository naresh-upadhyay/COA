`include "halfadders.v"
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


module tes_bench_halfadd;
    reg bit1=0;
    reg bit2=1;
    wire sw,cw;
    
    halfadd half_test_b(
        .x(bit1),
        .y(bit2),
        .s(sw),
        .c(cw)
    );
    
    initial
        begin
            bit1=1'b0;
            bit2=1'b0;
            #30;
            bit1=1'b1;
            bit2=1'b0;
            #30;
            bit1=1'b1;
            bit2=1'b1;
            #30;
            bit1=1'b1;
            bit2=1'b0;
            #10;
            
        end    
endmodule
