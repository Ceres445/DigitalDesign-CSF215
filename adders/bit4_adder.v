`include "full_adder.v"
module bit4_adder(input [3:0]A, input [3:0]B, input C0, output [3:0]O, output C1);
  wire W1, W2, W3, W4;
  full_adder fa1(A[0], B[0], C0, W1, O[0]);
  full_adder fa2(A[1], B[1], W1, W2, O[1]);
  full_adder fa3(A[2], B[2], W2, W3, O[2]);
  full_adder fa4(A[3], B[3], W3, C1, O[3]);
endmodule
