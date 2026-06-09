`timescale 1ns / 1ps

module mux_2_1(
    input a, b, s,
    output out
    );
    
    assign out = s ? b : a;
    
endmodule
