`timescale 1ns/1ps
module testbench;
  reg x,y;
  wire z;
  AND_GATE dut (x,y,z);
  initial 
    begin
      
      
      $display("x y|z");
     x=0; y=0;
      #1
      $display("%b %b|%b", x ,y ,z);
      
      x=0; y=1;
      #1
      $display("%b %b|%b", x,y ,z);
      
      x=1; y=0;
      #1
      $display("%b %b|%b", x ,y ,z);
      
      x=1; y=1;
      #1
      $display("%b %b|%b", x ,y ,z);
      
      
    end
endmodule