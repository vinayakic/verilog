`timescale 1ns/1ps
module AND_GATE(x,y,z);
  input x,y;
  output z;
  assign z= x&y;
endmodule