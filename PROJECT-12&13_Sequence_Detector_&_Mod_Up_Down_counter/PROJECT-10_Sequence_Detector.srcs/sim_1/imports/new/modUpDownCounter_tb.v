`timescale 1ns / 1ps



module modUpDownCounter_tb();

    reg mclk=0;
    reg up=0;
    reg down=0;
    wire [2:0] count;

mod_five_up_down_counter dut(.mclk(mclk),.up(up),.down(down),.count(count));

always #5 mclk = ~mclk;

initial begin
    up=0;
    #10;
    down=1;
    #10;
    down=0;
    #10;
    up=1;
    #10;
    up=1;
    #10;
    up=1;
    #10;
    up=1;
    #10;
    down=0;
    #10;
$finish;
end

endmodule

