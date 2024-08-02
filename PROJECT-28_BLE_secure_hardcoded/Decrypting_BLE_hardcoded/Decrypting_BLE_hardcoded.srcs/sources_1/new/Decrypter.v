`timescale 1ns / 1ps


module Decrypter(
    input [7:0] Encrypted,
    output [7:0] Normal,
    output  Placeholder    
    );
    
    assign Normal = Encrypted - 1;
    assign Placeholder = 1;
endmodule
