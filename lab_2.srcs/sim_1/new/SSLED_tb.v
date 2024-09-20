`timescale 1ns / 1ps

module SSLED_tb;
    reg [1:0] i0, i1, i2, i3;
    reg [1:0] s;
    wire [6:0] seg;
    SSLED uut (
        .i0(i0), 
        .i1(i1), 
        .i2(i2), 
        .i3(i3), 
        .s(s), 
        .seg(seg)
    );
    initial begin
        i0 = 2'b00;
        i1 = 2'b01;
        i2 = 2'b10;
        i3 = 2'b11;
        s = 2'b00;
        #10; s = 2'b00; i0 = 2'b00; i1 = 2'b01; i2 = 2'b10; i3 = 2'b11;
        #10;s = 2'b00; i0 = 2'b01; i1 = 2'b10; i2 = 2'b11; i3 = 2'b00;
        #10;s = 2'b00; i0 = 2'b10; i1 = 2'b11; i2 = 2'b00; i3 = 2'b01;
        #10;s = 2'b01; i0 = 2'b00; i1 = 2'b01; i2 = 2'b10; i3 = 2'b11;
        #10;s = 2'b01; i0 = 2'b01; i1 = 2'b10; i2 = 2'b11; i3 = 2'b00;
        #10;s = 2'b01; i0 = 2'b10; i1 = 2'b11; i2 = 2'b00; i3 = 2'b01;
        #10;s = 2'b10; i0 = 2'b00; i1 = 2'b01; i2 = 2'b10; i3 = 2'b11;
        #10;s = 2'b10; i0 = 2'b01; i1 = 2'b10; i2 = 2'b11; i3 = 2'b00;
        #10;s = 2'b10; i0 = 2'b10; i1 = 2'b11; i2 = 2'b00; i3 = 2'b01;
        #10;s = 2'b11; i0 = 2'b00; i1 = 2'b01; i2 = 2'b10; i3 = 2'b11;
        #10;s = 2'b11; i0 = 2'b01; i1 = 2'b10; i2 = 2'b11; i3 = 2'b00;
        #10;s = 2'b11; i0 = 2'b10; i1 = 2'b11; i2 = 2'b00; i3 = 2'b01;
        #10;
        $stop;
    end
endmodule