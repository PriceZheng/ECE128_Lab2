`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 02:03:34
// Design Name: 
// Module Name: SSLED
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SSLED(
    input [1:0] i0, i1, i2, i3, s,
    output reg [6:0] seg
);

wire [3:0] t; 


Mux_41_4 mux_inst (
    .i0(i0), 
    .i1(i1), 
    .i2(i2), 
    .i3(i3), 
    .s(s), 
    .y(t) 
);


always @(t) begin
    case(t)
        4'b0000: seg = 7'b1000000;
        4'b0001: seg = 7'b1111001;
        4'b0010: seg = 7'b0100100;
        4'b0011: seg = 7'b0110000;
        4'b0100: seg = 7'b0011001;
        4'b0101: seg = 7'b0010010; 
        4'b0110: seg = 7'b0000010;
        4'b0111: seg = 7'b1111000;
        4'b1000: seg = 7'b0000000;
        4'b1001: seg = 7'b0010000;
        default: seg = 7'b1111111;
    endcase
end

endmodule

