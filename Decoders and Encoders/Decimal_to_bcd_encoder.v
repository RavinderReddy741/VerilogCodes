`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 16:20:41
// Design Name: 
// Module Name: Decimal_to_bcd_Encoder
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


module Decimal_to_bcd_Encoder(output reg [3:0]y,input [9:0]a);
always @(*)
begin
if(a == 10'b0000000001)
y = 4'b0000;
else if(a ==10'b0000000010)
y = 4'b0001;
else if(a ==10'b0000000100)
y = 4'b0010;
else if(a ==10'b0000001000)
y = 4'b0011;
else if(a ==10'b0000010000)
y = 4'b0100;
else if(a ==10'b0000100000)
y = 4'b0101;
else if(a ==10'b0001000000)
y = 4'b0110;
else if(a ==10'b0010000000)
y = 4'b0111;
else if(a ==10'b0100000000)
y = 4'b1000;
else if(a ==10'b1000000000)
y = 4'b1001;
else
y = 4'b0000;
end
endmodule
