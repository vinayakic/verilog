`timescale 1ns/1ps
module NOR_GATE(a,b,y);
  input a,b;
  output y;
  assign y= a ~| b;
endmodule