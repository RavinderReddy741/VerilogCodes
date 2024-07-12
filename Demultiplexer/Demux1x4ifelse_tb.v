`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 21:56:24
// Design Name: 
// Module Name: Demux1x4ifelse_tb
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


module Demux1x4ifelse_tb();
reg in;
reg [1:0]sel;
wire y0,y1,y2,y3;
Demux1x4ifelse dut1(y0,y1,y2,y3,sel,in);
initial
begin
$monitor("y0 = %0b,y1 = %b,y2 = %0b,y3 = %0b , sel = %0b,in = %0b",y0,y1,y2,y3,sel,in);
sel = 2'b00;in = 1'b0;
#10;
sel = 2'b00;in = 1'b1;
#10;
sel = 2'b01;in = 1'b0;
#10;
sel = 2'b01;in = 1'b1;
#10;
sel = 2'b10;in = 1'b0;
#10;
sel = 2'b10;in = 1'b1;
#10;
sel = 2'b11;in = 1'b0;
#10;
sel = 2'b11;in = 1'b1;
#10;
$finish;
end
endmodule
