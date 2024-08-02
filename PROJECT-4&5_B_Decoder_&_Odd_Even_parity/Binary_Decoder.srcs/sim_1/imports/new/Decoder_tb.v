`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 15:30:15
// Design Name: 
// Module Name: Decoder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Decoder_tb( );

reg [1:0] A;
wire [3:0] Y;
reg En;
integer i;

Decoder_two_to_four_behav dut(.A(A),.Y(Y),.En(En));

initial begin

for(i=0;i<8;i=i+1)
begin
    {A,En}=i;
    #10;
    
end
$finish;
end


endmodule
