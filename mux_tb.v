`timescale 1ns / 1ps

module mux_tb(

    );
    
    reg a, b, s;
    wire out;
    
    mux_2_1 dut (.a(a), .b(b), .s(s), .out(out));
    initial begin
    
    $monitor ("a=%b b=%b s=%b out=%b", a, b, s, out);
    
               a=0; b=1; s=0; #10;
               a=0; b=1; s=1; #10;
               a=1; b=0; s=0; #10;
               a=1; b=0; s=1; #10;
               
     $finish;
   end
endmodule
