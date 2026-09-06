`timescale 1ns/1ps 
module testbench;
  reg i1,i3, i0,i2,s0,s1;
  wire out;
  mux_4to1 dut (i0 , i1,i2,i3, s0,s1,out); 
  initial
    begin 
      $display("s0 s1 | output");
      i0=0 ;i1=1 ;i2=0 ;i3=1 ; 
         s0 = 0 ;s1=0;
     #1 $display("%b  %b  | %b" , s0 , s1 , out);
      
          s0 = 0 ;s1=1;
     #1 $display("%b  %b  | %b" , s0 , s1 , out);
      
          s0 = 1 ;s1=0;
     #1 $display("%b  %b  | %b" , s0 , s1 , out);
      
          s0 = 1 ;s1=1;
     #1 $display("%b  %b  | %b" , s0 , s1 , out);
      
      
    end 
endmodule
