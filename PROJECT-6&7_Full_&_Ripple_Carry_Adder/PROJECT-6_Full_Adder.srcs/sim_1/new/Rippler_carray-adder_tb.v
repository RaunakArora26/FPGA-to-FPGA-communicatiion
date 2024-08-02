`timescale 1ns / 1ps


module Rippler_carray_adder_tb();

reg [3:0] A,B;
reg Cin;
wire [3:0] S;
wire Cout;
integer i;

Ripple_carray_Adder dut(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

initial begin
    for(i=0;i<512;i=i+1)
    begin
        {A,B,Cin} = i;
        #10;    
    end
    $finish;

end

endmodule
