module half_adder(input A, input B, output C1, output S);
  xor (S, A, B);
  and (C1, A, B);
endmodule
