`timescale 1ns / 1ps

module topper(
    input i_serial_uart,
    input mclk,
    output [3:0] Sender_An,
    output [6:0] Sender_Seg,
    output [3:0] Encrypt_An,
    output [6:0] Encrypt_Seg,
    output Tx_ble_Encry
    );
    
    
    wire i_serial_uart_wire;
    //wire o_byte_encrypt;
    wire o_byte1;
    wire done1;
    //original  messge
    Seven_seg X1(.o_byte(i_serial_uart),.mclk(mclk),.an(Sender_An),.seg(Sender_Seg));//derive display0
    
    //encrypted logic
    //....................................................................................//
    UART_Rx#(.clk_per_bits(868)) Lx0 (.i_serial(i_serial_uart),.mclk(mclk),.o_byte(o_byte1),.done(done1));
    assign i_serial_uart_wire = o_byte1 + 1;
    UART_Tx#(.clk_per_bits(868)) Lx1 (.data_byte(i_serial_uart_wire),.data_available(),.mclk(mclk),.Tx(Tx_ble_Encry),.active(),.done());
    
    //assign i_serial_uart_wire = i_serial_uart + 1; 
       
    
    //....................................................................................//
    
    Seven_seg X2(.o_byte(i_serial_uart_wire),.mclk(mclk),.an(Encrypt_An),.seg(Encrypt_Seg));
    
    
    
    
    
endmodule
