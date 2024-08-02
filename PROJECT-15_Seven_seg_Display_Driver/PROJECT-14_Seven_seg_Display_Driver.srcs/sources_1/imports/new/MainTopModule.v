`timescale 1ns / 1ps


module MainTopModule(
    input [15:0] sw,
    input mclk,
    output [3:0] an,
    output [6:0] seg
    );
    
    wire clk_out;
    wire [1:0] counter_out;
    wire [3:0] mux_out;
    wire [3:0] ones,tens;
    wire [3:0] hundreds;
    wire [3:0] thousands;
    wire done;
    
    Binary_to_BCD L1(sw,ones,tens,hundreds,thousands);
    fourXone_mux L4(ones,tens,hundreds,thousands,counter_out,mux_out);
    SlowClock L2(mclk,clk_out);
    twobitcounter L3(clk_out,counter_out);  
    decoder L5(counter_out,an);
    binarytoSevenSeg L6(mux_out,seg);
    
    

    
endmodule
