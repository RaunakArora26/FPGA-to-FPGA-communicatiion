`timescale 1ns / 1ps

module odd_even_parity_Fn(
    input [3:0] A,
    input Y_odd,
    input Y_even
    );
    
    wire [15:0] w;
    reg En=1'b1;
    Four_one_tree_decoder UU1(A,w,En);
    
    or J1(Y_odd,w[1],w[2],w[4],w[7],w[8],w[11],w[13],w[14]);
    or J2(Y_even,w[0],w[3],w[5],w[6],w[9],w[10],w[12],w[15]);
    
endmodule
