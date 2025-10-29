// Testbench code of the behavioral code for full adder 
`timescale 10ns/ 10ps;
module Testbench_Behavioral_adder();
 $dumpfile("dump.vcd"); $dumpvars;
 reg A,B,Cin;
 wire S,Cout;  
 //Verilog code for the structural full adder 
 Full_Adder_Behavioral_Verilog Behavioral_adder(
    .X1(A),
    .X2(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout) 
   );
 initial begin
   A = 0;
   B = 0;
   Cin = 0;
   #5;
   A = 0;
   B = 0;
   Cin = 1;
   #5;  
   A = 0;
   B = 1;
   Cin = 0;
   #5;
   A = 0;
   B = 1;
   Cin = 1;
   #5;
   A = 1;
   B = 0;
   Cin = 0;
   #5;
   A = 1;
   B = 0;
   Cin = 1;
   #5;
   A = 1;
   B = 1;
   Cin = 0;
   #5;  
   A = 1;
   B = 1;
   Cin = 1;
   #5;  
  end
      
endmodule 
