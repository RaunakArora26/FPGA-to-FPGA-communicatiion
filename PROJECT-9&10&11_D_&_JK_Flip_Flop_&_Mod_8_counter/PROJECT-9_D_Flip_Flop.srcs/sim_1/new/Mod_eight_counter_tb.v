`timescale 1ns / 1ps


module Mod_eight_counter_tb();

reg mclk = 0, up;
wire [2:0] count;
integer i;

Mod_Eight_up_Counter dut(.mclk(mclk),.up(up),.Count(count));

always#2 mclk = ~mclk;

initial begin
    for(i=0;i<20;i=i+1)
    begin
        up = 1;
        #10;
    end
    $finish;


end


endmodule
