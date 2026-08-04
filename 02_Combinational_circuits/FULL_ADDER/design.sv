`timescale 1ns/1ps
module FULL_ADDER(a, b ,cin , cout , s);
  input a , b, cin ; 
  output cout , s;
  assign cout = (a&cin | a&b | b&cin);
  assign s= (a^b^cin);
endmodule 