`timescale 1ns / 1ps

module J_K_FF_tb();
reg J=0,K=0,mclk=0,reset;
wire Q,Not_Q;

J_K_FlipFlop dut(.J(J),.K(K),.mclk(mclk),.reset(reset),.Q(Q),.Not_Q(Not_Q));

always#2 mclk = ~mclk;

initial begin
    reset = 1;
    #10;
    reset = 0;
    J=1;
    K=0;
    #5;
    J=0;
    K=1;
    #5;
    J=1;
    K=1;
    #10;
    J=0;
    K=0;
    #10;
    reset = 1;
    
    $finish;  

end


endmodule
