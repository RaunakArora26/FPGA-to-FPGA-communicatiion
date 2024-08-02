`timescale 1ns / 1ps


module tb();

reg a;
wire b;

test dut(.a(a),.b(b));

initial begin
#100;

$finish;

end
endmodule
