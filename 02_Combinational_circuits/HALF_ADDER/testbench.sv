`timescale 1ns/1ps
module testbench;
  reg a,b;
  wire s,c;
  HALF_ADDER dut(a,b,s,c);
  initial 
    begin 
      $display("a b|s c");
      
       
      a=0 ;  b=0; #1 
      $display("%b %b|%b %b", a , b ,s ,c);
      
        a=0 ;  b=1; #1 
      $display("%b %b|%b %b", a , b ,s ,c);
      
        a=1 ;  b=0; #1 
      $display("%b %b|%b %b", a , b ,s ,c);
      
        a=1 ;  b=1; #1 
      $display("%b %b|%b %b", a , b ,s ,c);
    
    end
endmodule 