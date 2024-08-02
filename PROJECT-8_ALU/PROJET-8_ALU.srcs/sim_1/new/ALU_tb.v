`timescale 1ns / 1ps


module ALU_tb();

reg [6:0] A,B;
reg [2:0] sel;
wire [6:0] Y;
integer i;

ALU dut(.A(A),.B(B),.sel(sel),.Y(Y));

initial begin
    for(i=0;i<131072;i=i+1)
    begin
        {A,B,sel} = i;
        #10;
    end
    $finish;    
end





endmodule
