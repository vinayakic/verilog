`timescale 1ns/1ps
module testbench;
  reg a,b, cin ;
  wire s, cout;
  FULL_ADDER dut(a,b , cin , s , cout);
  initial 
    begin 
      
      $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
      
      //output waveform 
      
      $display("a b cin|s cout");
      
       
      a=0 ;  b=0; cin=0; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
      
       
      a=0 ;  b=0; cin=1	; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
       
      a=0 ;  b=1; cin=0; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
       
      a=0 ;  b=1; cin=1; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
       
      a=1 ;  b=0; cin=0; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
       
      a=1 ;  b=0; cin=1; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
       
      a=1 ;  b=1; cin=0; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
       
      a=1 ;  b=1; cin=1; #1 
      $display("%b %b %b  |%b  %b", a , b , cin ,s ,cout);
      
      
        
 
      
     
    end
endmodule 