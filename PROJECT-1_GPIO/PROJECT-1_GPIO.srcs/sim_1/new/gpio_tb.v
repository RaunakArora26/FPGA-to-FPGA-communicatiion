`timescale 1ns / 1ps


module gpio_tb();

reg sw;
wire led;

GPIO dut(.sw(sw),.led(led));

initial begin
    sw = 0;
    #10;
    sw = 1;
    #10;
    sw = 0;
    #10;
    sw = 1;
    #10;
    $finish;
end


endmodule
