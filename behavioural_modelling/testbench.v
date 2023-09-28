`include "mux_4to1.v"
module testbench ();
    //inputs
    reg [3:0] t_in;
    reg [1:0] t_select;

    //outputs
    wire out;

    mux_4to1 a(t_in[0],t_in[1],t_in[2],t_in[3],t_select,out);
    initial begin
        $dumpvars(0,testbench);

              t_in = 4'b0010; t_select = 2'b01;
          #10 t_in = 4'b1010; t_select = 2'b11;
          #10 t_in = 4'b1011; t_select = 2'b10;
          #10 t_in = 4'b1110; t_select = 2'b00;
              t_in = 4'b0010; t_select = 2'b01;
              t_in = 4'b0010; t_select = 2'b01;
          #10 t_in = 4'b1010; t_select = 2'b11;
          #10 t_in = 4'b1011; t_select = 2'b10;
          #10 t_in = 4'b1110; t_select = 2'b00;
          #10 t_in = 4'b1010; t_select = 2'b11;
          #10 t_in = 4'b1011; t_select = 2'b10;
          #10 t_in = 4'b1110; t_select = 2'b00;
          #10 t_in = 4'b1010; t_select = 2'b11;
          #10 t_in = 4'b1011; t_select = 2'b10;
          #10 t_in = 4'b1110; t_select = 2'b00;
        #10 $finish;
    end

    initial begin
        $monitor("time : %d in = %b select = %b  out = %b",$time,t_in,t_select,out);
    end
endmodule
