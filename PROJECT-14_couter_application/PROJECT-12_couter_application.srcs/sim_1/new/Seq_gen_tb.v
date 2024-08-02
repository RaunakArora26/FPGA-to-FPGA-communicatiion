`timescale 1ns / 1ps


module Seq_gen_tb();

    reg mclk=0;
    reg sw;
    reg reset;
    wire [3:0] count;
    
Sequence_Generator dut(.mclk(mclk),.sw(sw),.reset(reset),.count(count));

always #2 mclk = ~mclk;

    initial begin
        reset=0;
        sw=1;
        #3;
        sw=0;
        #5;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=0;
        #3;    
        sw=0;
        #3;    
        sw=0;
        #3;    
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;
        sw=1;
        #3;        
        sw=1;
        #3;
        sw=1;
        #3;
$finish;    
    end

endmodule
