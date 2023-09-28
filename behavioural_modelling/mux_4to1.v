module mux_4to1(input  in_1, input in_2, input in_3, input in_4,input [1:0] select,output reg out);
  always @ (in_1, in_2, in_3, in_4, select) begin
    case (select)
      2'b00: out = in_1;
      2'b01: out = in_2;
      2'b10: out = in_3;
      2'b11: out = in_4;
    endcase
  end
endmodule
