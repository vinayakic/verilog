module adder(a,b,cin, cout, sum); //defining one bit adder module
input a,b,cin;
output cout,sum;
assign cout= a&cin + a&b+b&cin ;
assign sum= a^b^cin;
endmodule


module ripplecarry(A0,A1,A2,A3,B0,B1,B2,B3,S0,S1,S2,S3,C0,C1,C2,C3,C4);
  input A0,A1,A2,A3;
  input B0,B1,B2,B3;
  input C0; //carry input
  output C1, C2 ,C3,C4; //carry output 
  output S0,S1,S2,S3; //sum output 
  
  adder m1(.a(A0) , .b(B0), .cin(C0) , .cout(C1) , .sum(S0) ); 
  adder m2(.a(A1) , .b(B1), .cin(C1) , .cout(C2) , .sum(S1) ); 
  adder m3(.a(A2) , .b(B2), .cin(C2) , .cout(C3) , .sum(S2) ); 
  adder m4(.a(A3) , .b(B3), .cin(C3) , .cout(C4) , .sum(S3) ); 
 
  
  
endmodule
