`timescale 1ns / 1ps

module Ripple_carray_Adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );
    wire [2:0] w;
    
    Full_adder F1(A[0],B[0],Cin,S[0],w[0]);
    Full_adder F2(A[1],B[1],w[0],S[1],w[1]);
    Full_adder F3(A[2],B[2],w[1],S[2],w[2]);
    Full_adder F4(A[3],B[3],w[2],S[3],Cout);
    
    
    
    
    
endmodule
