`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 20:57:21
// Design Name: 
// Module Name: Encoder4x2
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


module Encoder4x2(output reg [1:0]y,input [3:0]s);

always @(*)
begin
case(s)
4'b0001:y = 2'b00;
4'b0010:y = 2'b01;
4'b0100:y = 2'b10;
4'b1000:y = 2'b11;
endcase
end
endmodule
