`timescale 1ns / 1ps


module Sixteen_X_four_decoder( );

reg [3:0] A;
wire [15:0] Y;
reg En;
integer i;

Four_one_tree_decoder dut(.A(A),.Y(Y),.En(En));

initial begin

for(i=0;i<16;i=i+1)
begin
    En=1;
    {A}=i;
    #10;
    
end
$finish;
end


endmodule
