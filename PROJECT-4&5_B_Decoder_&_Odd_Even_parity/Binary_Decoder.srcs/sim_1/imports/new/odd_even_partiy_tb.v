`timescale 1ns / 1ps

module odd_even_partiy_tb();

reg [3:0] A;
wire Y_odd,Y_even;
integer i;

odd_even_parity_Fn dut(.A(A),.Y_odd(Y_odd),.Y_even(Y_even));
initial begin

    for(i=0;i<16;i=i+1)
    begin
        {A}=i;
        #10;
    end
    $finish;
end



endmodule
