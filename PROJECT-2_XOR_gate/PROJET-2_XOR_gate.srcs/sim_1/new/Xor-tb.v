`timescale 1ns / 1ps

module Xor_tb();

reg Sw0,Sw1;
wire led;

XOR_gate dut(.Sw1(Sw1),.Sw0(Sw0),.led(led));

initial begin
    Sw0 = 0;
    Sw1 = 0;
    #10;
    Sw0 = 1;
    Sw1 = 0;
    #10;
    Sw0 = 0;
    Sw1 = 1;
    #10;
    Sw0 = 1;
    Sw1 = 1;
    #10;
    
    $finish;
end



endmodule
