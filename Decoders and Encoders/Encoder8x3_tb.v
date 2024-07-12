`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 23:46:40
// Design Name: 
// Module Name: Encoder8x3_tb
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


module Encoder8x3_tb();
reg [7:0]s;
wire [2:0]y;
Encoder_8x3 dut(y,s);
initial
begin
$monitor("y = %0b , s = %0b ",y,s);
s = 8'b00000001;
#10;
s = 8'b00000010;
#10;
s = 8'b00000100;
#10;
s = 8'b00001000;
#10;
s = 8'b00010000;
#10;
s = 8'b00100000;
#10;
s = 8'b01000000;
#10;
s = 8'b10000000;
#10;
s = 8'b01010010;
#10;
$finish;
end
endmodule
