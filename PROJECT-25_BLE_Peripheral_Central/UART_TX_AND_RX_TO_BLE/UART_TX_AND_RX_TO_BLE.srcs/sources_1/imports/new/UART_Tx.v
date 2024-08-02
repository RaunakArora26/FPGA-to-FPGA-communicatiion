`timescale 1ns / 1ps


module UART_Tx#(
    parameter clk_per_bits = 868
    ) 
    (
    input [7:0] data_byte,
    input data_available,
    input mclk,
    output Tx,
    output active,
    output done
    );
    
    localparam IDLE = 2'b00;
    localparam START = 2'b01;
    localparam READ_BIT = 2'b10;
    localparam STOP = 2'b11;
    
    reg [1:0] r_states = IDLE;
    reg [15:0] r_counter = 16'b0;
    reg r_done = 0;
    reg r_Tx = 1;
    reg [2:0] r_index = 0;
    reg r_active = 0;
    
    reg [7:0] r_data_byte = 0;
    
    always@(posedge mclk)
    begin
        case(r_states)
            IDLE:
                begin
                    r_done <= 0;
                    r_active <= 0;
                    r_index <= 0;
                    r_Tx = 1;
                    r_counter <= 0;
                    r_data_byte <= 0;
                    
                    if(data_available == 1'b1)
                        begin
                            r_data_byte <= data_byte;
                            r_active <= 1;                            
                            r_states <= START;
                        end
                    else 
                        r_states <= IDLE;    
                end
            START:
                 begin
                    
                    r_Tx = 0;
                    
                    if(r_counter < (clk_per_bits-1))
                    begin
                        r_counter <= r_counter + 1;
                        r_states <= START;
                    end
                    else 
                    begin
                        r_counter <= 0;
                        r_states <= READ_BIT;    
                    end
                 end
             READ_BIT:
                    begin
                        r_Tx <= r_data_byte[r_index];
                        if(r_counter < (clk_per_bits-1))
                        begin
                            r_counter <= r_counter + 1;
                            r_states <= READ_BIT;
                        end
                        else
                        begin
                            r_counter <= 0;
                            if(r_index < 7)
                            begin
                                r_index <= r_index + 1;
                                r_states <= READ_BIT;
                            end
                            else begin
                                r_index <= 0;
                                r_states <= STOP;
                                end
                        end
                     end
            STOP:
                begin
                    
                    r_Tx = 1;
                
                    if(r_counter < (clk_per_bits-1))
                    begin
                        r_counter <= r_counter + 1;
                        r_states <= STOP;
                    end
                    else 
                    begin
                        r_counter <= 0;
                        r_done = 1'b1;
                        r_active <= 0;
                        r_states <= IDLE;    
                    end
            
                end
        endcase
    
    end
    
    assign Tx = r_Tx;
    assign active = r_active;
    assign done = r_done;
    
    
    
    
endmodule
