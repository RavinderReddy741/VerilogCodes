`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 20:53:43
// Design Name: 
// Module Name: Demux1x2_tb
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


module Demux1x2_tb();
wire y0,y1;
reg sel,in;
Demux1x2case dut(y0,y1,sel,in);
initial
begin
$monitor("y0 = %0b,y1 = %0b,sel  = %0b,in  = %0b",y0,y1,sel,in);
sel = 0;in = 0;
#10;
sel = 0;in = 1;
#10;
sel = 1;in = 0;
#10;
sel = 1;in = 1;
#10;
$finish;
end
endmodule
