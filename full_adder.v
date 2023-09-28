`include "half_adder.v"
module full_adder(input A, input B, input C0, output C1, output S);
  wire CMID;
  half_adder h1(A, B, CMID, W1);
  half_adder h2(C0, W1,  W2, S);
  or o1(C1, CMID, W2);
endmodule
