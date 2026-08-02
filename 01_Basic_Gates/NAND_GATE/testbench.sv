`timescale 1ns/1ps
module testbench; 
  reg a,b; 
  wire y; 
  NAND_GATE dut(a,b,y);
  initial 
     begin 
       $display("a b|y");
       a=0; b=0;
       #1  $display("%b %b|%b", a,b,y);
       a=0; b=1;
       #1 $display("%b %b|%b", a,b, y);
        a=1; b=0;
       #1 $display("%b %b|%b", a,b, y);
         a=1; b=1;
       #1 $display("%b %b|%b", a,b, y);
     end
  
endmodule
       