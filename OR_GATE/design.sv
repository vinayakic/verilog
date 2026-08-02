`timescale 1ns/1ps
module OR_GATE(A,B,z);
  input A,B;
  output z;
  assign z= A|B;
endmodule