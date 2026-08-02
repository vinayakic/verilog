`timescale 1ns/1ps
module testbench; 
  reg a; 
  wire y ; 
  NOT_GATE dut (a ,y);
  initial 
     begin 
       $display("a|y");
       a=0;
     #1  $display("%b|%b", a ,y);
       a=1;
       #1 $display("%b|%b", a, y);
       end
endmodule
       