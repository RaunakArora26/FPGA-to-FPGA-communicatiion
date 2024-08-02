`timescale 1ns / 1ps


module Encryption_logic(
    input [7:0] a,
    output [7:0] b
    );
    
    assign b = a + 1;
endmodule
