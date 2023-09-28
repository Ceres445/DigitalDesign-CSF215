module sr_nand(input S, input R, output reg Q0, output reg Q1);
  always @(S, R) begin
  if ( (S && !R) || (!S && R)) begin
    Q0 <= R;
    Q1 <= S;
  end
end

endmodule
