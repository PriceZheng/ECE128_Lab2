`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 03:16:55
// Design Name: 
// Module Name: Mux_41_4
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


module Mux_41_4(
    input [1:0] i0, i1, i2, i3,
    input [1:0] s,
    output reg [3:0] y
);

always @(*) begin
    case(s)
        2'b00: y = {2'b00, i0};
        2'b01: y = {2'b00, i1};
        2'b10: y = {2'b00, i2};
        2'b11: y = {2'b00, i3};
        default: y = 4'b0000;
    endcase
end

endmodule
