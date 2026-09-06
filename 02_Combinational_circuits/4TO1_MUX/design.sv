module mux_4to1(i0 , i1,i2,i3, s0,s1,out);
  input i0 , i1 ,i2, i3 , s0, s1 ;
  output out; 
wire x , y ,z , w ;
assign x=  ~s0 & ~s1 & i0 ;
assign y= ~s0 & s1 &i1 ; 
assign z=s0&~s1&i2; 
assign w= s0&s1&i3; 
 
  
assign out= x|y|z|w ;
  
endmodule 
  