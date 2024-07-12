`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 13:25:52
// Design Name: 
// Module Name: mux2x1ifelse
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


module mux2x1ifelse(output reg out,input i0,i1,sel);
always @(i0,i1,sel)
begin
if(sel==0)
out = i0;
else
out = i1;
end
endmodule
