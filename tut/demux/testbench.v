`include "demux_1to4.v"
module testbench ();
    //inputs
    reg [1:0] C;
    reg  I;

    //outputs
    wire [3:0]out;

    demux_1to4 a( C, I, out );
    initial begin
        $dumpvars(0,testbench);

          C = 2'b00; I = 1'b0; #1;
          C = 2'b00; I = 1'b1; #1;
          C = 2'b01; I = 1'b0; #1;
          C = 2'b01; I = 1'b1; #1;
          C = 2'b10; I = 1'b0; #1;
          C = 2'b10; I = 1'b1; #1;
          C = 2'b11; I = 1'b0; #1;
          C = 2'b11; I = 1'b1; #1;
    end

    initial begin
        $monitor("time : %d in = %b select = %b  out = %b",$time, C, I, out);
    end
endmodule
