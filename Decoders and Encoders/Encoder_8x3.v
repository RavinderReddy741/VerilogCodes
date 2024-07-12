`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 23:42:20
// Design Name: 
// Module Name: Encoder_8x3
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


module Encoder_8x3(output reg [2:0]y,input [7:0]s);
always @(*)
begin
case(s)
8'b00000001:y = 3'b000;
8'b00000010:y = 3'b001;
8'b00000100:y = 3'b010;
8'b00001000:y = 3'b011;
8'b00010000:y = 3'b100;
8'b00100000:y = 3'b101;
8'b01000000:y = 3'b110;
8'b10000000:y = 3'b111;
default:y = 3'bxxx;
endcase
end
endmodule
