`timescale 1ns/1ps
module testbench;
  reg A,B;
  wire z;
  OR_GATE dut (A,B,z);
  initial 
    begin
      
      
      $display("A B|z");
      A=0; B=0;
      #1
      $display("%b %b|%b", A ,B ,z);
      
      A=0; B=1;
      #1
      $display("%b %b|%b", A ,B ,z);
      
      A=1; B=0;
      #1
      $display("%b %b|%b", A ,B ,z);
      
      A=1; B=1;
      #1
      $display("%b %b|%b", A ,B ,z);
      
      
    end
endmodule