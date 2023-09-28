`include "sr_nand.v"
`include "sr_nor.v"
`include "d_latch.v"
module testbench ();
    //inputs
    reg S;
    reg R;

    //outputs
    wire Q0;
    wire Q1;

    // sr_nand a(S,R,Q0,Q1);
    // sr_nor a(S,R,Q0,Q1);
    d_latch a(S,R,Q0);
    initial begin
        $dumpvars(0,testbench);

        S = 1'b0; R = 1'b0;
        #10 S = 1'b1; R = 1'b0;
        #10 S = 1'b0; R = 1'b1;
        #10 S = 1'b1; R = 1'b1;
        #10 S = 1'b0; R = 1'b0;
        #10 S = 1'b1; R = 1'b0;
        #10 S = 1'b0; R = 1'b1;
    end

    initial begin
        $monitor(" S is En, R is D");
        $monitor("time : %d S = %b R = %b  Q0 = %b Q1 = %b",$time,S,R,Q0,Q1);
    end
endmodule
