module sr_nor(input S, input R, output reg Q0, output reg Q1);
  always @(S, R) begin
  if ( (S && !R) || (!S && R)) begin
    Q0 <= S;
    Q1 <= R;
  end
end

endmodule
