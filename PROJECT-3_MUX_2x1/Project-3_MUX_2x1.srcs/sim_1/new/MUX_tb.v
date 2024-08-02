`timescale 1ns / 1ps


module MUX_tb();

reg i0,i1,sel;
wire y;
integer i;

MUX dut(.i0(i0),.i1(i1),.sel(sel),.y(y));

initial begin

    for(i=0;i<8;i=i+1)
    begin
        {i0,i1,sel} = i;
        #10;
    end
$finish;
end


endmodule
