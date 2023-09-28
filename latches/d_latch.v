module d_latch(input En, input D, output reg Q);
  always @(En, D) begin
    if (En) begin
      Q <= D;
    end
  end
endmodule
