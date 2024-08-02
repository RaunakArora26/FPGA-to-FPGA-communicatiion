`timescale 1ns / 1ps

module D_FF_tb();

reg D=0,mclk=0,load=0,reset;
wire Q,Not_Q;

D_FlipFlop dut(.D(D),.mclk(mclk),.load(load),.reset(reset),.Q(Q),.Not_Q(Not_Q));

always#2 mclk = ~mclk;

initial begin
    reset = 1;
    #10;
    reset = 0;
    D = 1 ;
    load = 1;
    #5;
    D = 0;
    #5;
    load = 0;
    D = 1;
    #10;
    reset = 1;
    
    $finish;  

end


endmodule
