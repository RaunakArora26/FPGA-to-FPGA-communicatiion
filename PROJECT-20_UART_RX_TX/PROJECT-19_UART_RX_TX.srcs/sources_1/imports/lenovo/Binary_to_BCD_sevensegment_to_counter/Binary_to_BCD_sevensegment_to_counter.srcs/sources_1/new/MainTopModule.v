`timescale 1ns / 1ps


module MainTopModule(
    input i_serial,
    //input i_serial_ble,
    //input [7:0] sw,
    input mclk,
    output [3:0] an,
    output [6:0] seg,
//    output [3:0] an1,
//    output [6:0] seg1,
    output Tx
    //output Tx_plus_one
    );
    
    wire clk_out;
    //wire [7:0] sw;
    wire [1:0] counter_out;
    wire [3:0] mux_out;
    wire [3:0] ones,tens;
    wire [1:0] hundreds;
    
    parameter zeros = 4'b0000;
    wire [7:0] o_byte;
    wire [7:0] o_byte_plus_one;
    wire done;
    
//    wire clk_out1;
//    //wire [7:0] sw;
//    wire [1:0] counter_out1;
//    wire [3:0] mux_out1;
//    wire [3:0] ones1,tens1;
//    wire [1:0] hundreds1;
        
//    parameter zeros1 = 4'b0000;
//    wire [7:0] o_byte1;
//    wire [7:0] o_byte_plus_one;
//    wire done1;
    
    
    UART_Rx#(.clk_per_bits(868)) L0 (.i_serial(i_serial),.mclk(mclk),.o_byte(o_byte),.done(done));//just change i_serial to uart_ble_rx
    UART_Tx#(.clk_per_bits(868)) L9 (.data_byte(o_byte_plus_one),.data_available(done),.mclk(mclk),.Tx(Tx),.active(),.done());
    
    assign o_byte_plus_one = o_byte + 8'b0000_0001;
    //assign Tx_plus_one = i_serial_ble;
    //assign Tx = i_serial;
    
    Binary_to_BCD L1(o_byte,ones,tens,hundreds);
    fourXone_mux L4(ones,tens,hundreds,zeros,counter_out,mux_out);
    SlowClock L2(mclk,clk_out);
    twobitcounter L3(clk_out,counter_out);  
    decoder L5(counter_out,an);
    binarytoSevenSeg L6(mux_out,seg);
    
    
//    UART_Rx#(.clk_per_bits(868)) Lx0 (.i_serial(i_serial),.mclk(mclk),.o_byte(o_byte1),.done(done1));
    
//    Binary_to_BCD Lx1(o_byte1,ones1,tens1,hundreds1);
//    fourXone_mux Lx4(ones1,tens1,hundreds1,zeros1,counter_out1,mux_out1);
//    SlowClock Lx2(mclk,clk_out1);
//    twobitcounter Lx3(clk_out1,counter_out1);  
//    decoder Lx5(counter_out1,an1);
//    binarytoSevenSeg Lx6(mux_out1,seg1);
    
endmodule
