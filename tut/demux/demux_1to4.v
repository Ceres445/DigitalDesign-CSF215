module demux_1to4 (
  input wire [1:0] C,
  input wire Input,
  output wire [3:0] O
);

// assign O[0] = (C == 2'b00) ? Input : 1'b0;
// assign O[1] = (C == 2'b01) ? Input : 1'b0;
// assign O[2] = (C == 2'b10) ? Input : 1'b0;
// assign O[3] = (C == 2'b11) ? Input : 1'b0;

endmodule
