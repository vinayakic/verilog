`timescale 1ns/1ps 
module testbench;
  reg A0,A1,A2,A3,B0,B1,B2,B3,C0 ;
  wire C1, C2 ,C3,C4,S0,S1,S2,S3;
  ripplecarry dut(A0,A1,A2,A3,B0,B1,B2,B3,S0,S1,S2,S3,C0,C1,C2,C3,C4);
  initial 
    begin
      A0= 0;
      A1=1;
      A2=0;
      A3=1;
      B0=0;
      B1=1;
      B2=1;
      B3=1;
      C0=1;
      
       #10;
      $display("S = %b%b%b%b, C4 = %b", S3,S2,S1,S0,C4); 
      
      
      
    end
endmodule