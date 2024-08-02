`timescale 1ns / 1ps

module check_bcd();

reg [15:0] sw;
wire [3:0] an;
wire [6:0] seg;


MainTopModule dut(.sw(sw),.an(an),.seg(seg));
initial begin
    sw = 'b00000111111111;
    #10;
end

endmodule
