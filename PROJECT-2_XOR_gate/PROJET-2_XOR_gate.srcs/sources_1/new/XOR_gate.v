`timescale 1ns / 1ps

module XOR_gate(
    input Sw1,
    input Sw0,
    output led
    );
    
    //First way
    //assign led = Sw1 ^ Sw0;
    
    //Secound way
    assign led = ~Sw1&Sw0 | Sw1&~Sw0;
    
//    //Third way
//    module XOR_gate(
//        input Sw1,
//        input Sw0,
//        output reg led
//        );
        
//        always@(*)
//        begin
//            if(Sw1) begin
//                if(Sw0) 
//                    led = 0;
//                else
//                    led = 1;
//            end
//            else    begin
//                if(Sw0)
//                    led = 1;
//                else 
//                    led = 0;
//           end
//        end
      
//    endmodule

    
endmodule
