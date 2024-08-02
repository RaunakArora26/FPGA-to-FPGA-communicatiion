`timescale 1ns / 1ps

module slow_timer_check();
reg mclk = 0;
wire clk_out_counter;

Slowtimer#(.Value(1_00_00)) Lx2(.mclk(mclk),.clk_out_counter(clk_out_counter));

always #10 mclk = ~mclk;
initial begin
#1000;
end
endmodule
