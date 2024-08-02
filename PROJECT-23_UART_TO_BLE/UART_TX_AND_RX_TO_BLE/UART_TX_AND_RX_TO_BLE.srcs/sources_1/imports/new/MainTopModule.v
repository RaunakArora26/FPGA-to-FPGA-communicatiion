`timescale 1ns / 1ps


module Seven_seg(
    input [7:0] o_byte,
    input mclk,
    output [3:0] an,
    output [6:0] seg
);
    
    wire clk_out;
    wire [1:0] counter_out;
    wire [3:0] mux_out;
    wire [3:0] ones,tens;
    wire [1:0] hundreds;
    
    parameter zeros = 4'b0000;
    

    
    Binary_to_BCD L1(o_byte,ones,tens,hundreds);
    fourXone_mux L4(ones,tens,hundreds,zeros,counter_out,mux_out);
    SlowClock L2(mclk,clk_out);
    twobitcounter L3(clk_out,counter_out);  
    decoder L5(counter_out,an);
    binarytoSevenSeg L6(mux_out,seg);
    
    
  
endmodule
