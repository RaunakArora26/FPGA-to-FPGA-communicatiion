`timescale 1ns / 1ps



module sequence_detector_tb();

    reg mclk=0;
    reg num;
    wire out;

sequence_detector1 dut(.mclk(mclk),.num(num),.out(out));

always #5 mclk = ~mclk;

initial begin
    num=0;
    #10;
    num=0;
    #10;
    num=1;
    #10;
    num=0;
    #10;
    num=0;
    #10;
    num=1;
    #10;
    num=0;
    #10;
$finish;
end

endmodule
