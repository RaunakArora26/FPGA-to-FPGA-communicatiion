`timescale 1ns / 1ps


module MainTopModule(
    input load_btn,
    input reset,    
    input mclk,
    output [3:0] an,
    output [6:0] seg
    );
    
    wire clk_out;
    wire [7:0] sw;
    wire [1:0] counter_out;
    wire [3:0] mux_out;
    wire [3:0] ones,tens,hundreds;
    parameter zeros = 4'b0000;
    
    wire button_deb;
    Debouncer U0(mclk,load_btn,button_deb);
    
    wire [7:0] Q;
    
    
    DFlipFlop D0(mclk,reset,button_deb,Q[1],Q[0]);
    DFlipFlop D1(mclk,reset,button_deb,Q[2],Q[1]);
    DFlipFlop D2(mclk,reset,button_deb,Q[3],Q[2]);
    DFlipFlop D3(mclk,reset,button_deb,Q[4],Q[3]);
    DFlipFlop D4(mclk,reset,button_deb,Q[5],Q[4]);
    DFlipFlop D5(mclk,reset,button_deb,Q[6],Q[5]);
    DFlipFlop D6(mclk,reset,button_deb,Q[7],Q[6]);
    DFlipFlop D7(mclk,reset,button_deb,~(Q[7]^Q[5]^Q[4]^Q[3]),Q[7]);
    
    
    
    
    Binary_to_BCD L1(Q,ones,tens,hundreds);
    fourXone_mux L4(ones,tens,hundreds,zeros,counter_out,mux_out);
    SlowClock L2(mclk,clk_out);
    twobitcounter L3(clk_out,counter_out);  
    decoder L5(counter_out,an);
    binarytoSevenSeg L6(mux_out,seg);

endmodule
