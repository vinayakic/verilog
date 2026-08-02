`timescale 1ns/1ps
module NOT_GATE(a,y);
  input a;
  output y;
  assign y= ~a;
endmodule