module mux2(a,b,out,s);
input a,b,s;
output out;
wire w1,w2,s_c;
not(s_c,s);
and(w1,a,s_c);
and(w2,b,s);
or(out,w1,w2);
endmodule

