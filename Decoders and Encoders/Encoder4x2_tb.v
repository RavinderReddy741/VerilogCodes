`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 21:04:56
// Design Name: 
// Module Name: Encoder4x2_tb
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

module Encoder4x2_tb();
reg [3:0]s;
wire [1:0]y;
Encoder4x2 dut(y,s);
initial
begin
$monitor("s = %0b y = %0b ",s,y);
s = 4'b0001;
#10;
s = 4'b0010;
#10;
s = 4'b0100;
#10;
s = 4'b1000;
#10;
$finish;
end
endmodule