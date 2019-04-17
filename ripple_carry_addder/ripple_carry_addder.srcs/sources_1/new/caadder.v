`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 10:27:44
// Design Name: 
// Module Name: caadder
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
`include "fulladder.v"
module caadder(
   input[3:0] add1,
   input[3:0] add2,
   output[3:0] result,
   output cout
    );
    
    wire[4:0] w_c;
    wire [3:0] w_sum,w_p,w_g;
    
    fulladder fulladder_bit0(
      .a(add1[0]),
      .b(add2[0]),
      .cin(w_c[0]),
      .s(w_sum[0]),
      .c()
      );
      
      fulladder fulladder_bit1(
            .a(add1[1]),
            .b(add2[1]),
            .cin(w_c[1]),
            .s(w_sum[1]),
            .c()
            );
            
       fulladder fulladder_bit2(
                  .a(add1[2]),
                  .b(add2[2]),
                  .cin(w_c[2]),
                  .s(w_sum[2]),
                  .c()
                  );
                  
                  
      fulladder fulladder_bit3(
                        .a(add1[3]),
                        .b(add2[3]),
                        .cin(w_c[3]),
                        .s(w_sum[3]),
                        .c()
                        );
       // g=a*b                 
       assign w_g[0]= add1[0]&add2[0];
       assign w_g[1]= add1[1]&add2[1];
       assign w_g[2]= add1[2]&add2[2];
       assign w_g[3]= add1[3]&add2[3];
       
       //  p=a+b
              assign w_p[0]= add1[0]|add2[0];
              assign w_p[1]= add1[1]|add2[1];
              assign w_p[2]= add1[2]|add2[2];
              assign w_p[3]= add1[3]|add2[3];
              
              
        // carry terms      
               assign w_c[0]= 1'b0;
               assign w_c[1]= w_g[0]|(w_p[0]&w_c[0]);
               assign w_c[2]= w_g[1]|(w_p[1]&w_c[1]);
               assign w_c[3]=w_g[2]|(w_p[2]&w_c[2]); 
             assign cout=w_g[3]|(w_p[3]&w_c[3]);
             
       assign result={w_c[4],w_sum};
             
endmodule
