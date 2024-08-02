`timescale 1ns / 10ps



module UART_Rx#(
    parameter clk_per_bits = 868
    )
    (
    input mclk,
    input i_serial,
    output [7:0] o_byte,
    output done
    );
 
localparam IDLE = 2'b00;
localparam START = 2'b01;
localparam READ_BIT = 2'b10;
localparam STOP = 2'b11;

reg [1:0] r_state = IDLE;
reg [10:0] r_count = 9'b0;
reg [2:0] r_index = 3'b0;
reg r_done = 1'b0;
reg [7:0] r_byte = 7'b0;


always@(posedge mclk)
begin
    case(r_state)
        IDLE:
            begin
                r_done <= 0;
                r_index <= 0;
                r_count <= 0;

                if(i_serial == 1'b0)
                    r_state <= START;
                else 
                    r_state <= IDLE;
            end
        START:
             begin
                if(r_count == (clk_per_bits-1)/2)
                    begin
                        if(i_serial == 1'b0)
                            begin
                                r_count <= 0;
                                r_state <= READ_BIT;
                            end
                        else 
                            r_state <= IDLE;    
                    end 
                else 
                    begin
                        r_count <= r_count + 1;
                        r_state <=  START;
                    end
             end  
        READ_BIT:
                begin
                    if(r_count < (clk_per_bits-1))
                    begin
                        r_count <= r_count + 1;
                        r_state <= READ_BIT;
                    end
                    else 
                        begin
                            r_count <= 0;
                            r_byte[r_index] <= i_serial;
                            
                            if(r_index < 7)
                                begin
                                    r_index <= r_index + 1;
                                    r_state <= READ_BIT;
                                end
                            else 
                                begin
                                    r_index <= 0;
                                    r_state <= STOP;
                                end
                        end
                end 
        STOP:
            begin
                if(r_count < (clk_per_bits-1))
                begin
                    r_count <= r_count + 1;
                    r_state <= STOP;
                end
                else 
                begin
                    r_done = 1'b1;
                    r_count <= 0;
                    r_state <= IDLE;    
                end
            end
       default:
              r_state <= IDLE;    
              
    endcase

end

assign o_byte = r_byte;
assign done = r_done;

 
endmodule