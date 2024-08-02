`timescale 1ns / 1ps

module GPIO(
    input sw,
    output led
    );
    
    assign led = sw;//data flow modeling
    
    
//    module GPIO(//behavioral modeling
//        input sw,
//        output reg led
//        );
        
//    always@(*)
//    begin
//        sw = led;    
//    end
      
endmodule
