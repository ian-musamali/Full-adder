// Behavioral code for Full Adder
// Adds three 1-bit inputs: X1, X2, and Cin
// Produces a 1-bit sum (S) and a 1-bit carry-out (Cout)

module Full_Adder_Behavioral_Verilog(
  input X1, X2, Cin,  // Inputs: two bits to add (X1, X2) and carry-in (Cin)
  output S, Cout       // Outputs: Sum (S) and Carry-out (Cout)
);

  // 'temp' is a 2-bit register used to temporarily store the addition result.
  // We need 2 bits because adding three 1-bit values can produce a 2-bit result (max = 3 = 2'b11).
  reg [1:0] temp;

  // 'always @(*)' means this block runs automatically whenever any input changes.
  // The asterisk (*) tells the simulator to monitor all signals used inside the block.
  // This makes it a purely combinational block (no clock or memory involved).
  always @(*)
  begin
    // Concatenate 1'b0 in front of each 1-bit input to make them 2-bit values.
    // This prevents overflow and allows proper addition.
    // Example: if X1=1, it becomes {1'b0,1'b1} = 2'b01
    // Add them all together and store in 'temp'.
    temp = {1'b0, X1} + {1'b0, X2} + {1'b0, Cin};
  end

  // 'assign' connects continuous logic to outputs.
  // 'temp[0]' is the least significant bit (sum output).
  assign S = temp[0];

  // 'temp[1]' is the most significant bit (carry-out output).
  assign Cout = temp[1];

endmodule
