`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 23:32:09
// Design Name: 
// Module Name: Comaparator_4_bit
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


module Comaparator_4_bit(output reg equal,lesser,greater,input [3:0]a,[3:0]b);
always @(*)
begin
if(a>b)
begin
equal = 1'b0;
lesser = 1'b0;
greater = 1'b1;
end
else if(a<b)
begin
equal = 1'b0;
lesser = 1'b1;
greater = 1'b0;
end
else
begin
equal = 1'b1;
lesser = 1'b0;
greater = 1'b0;
end
end
endmodule
