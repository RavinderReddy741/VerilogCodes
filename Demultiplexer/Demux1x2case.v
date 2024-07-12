`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 20:50:47
// Design Name: 
// Module Name: Demux1x2case
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


module Demux1x2case(output reg y0,y1,input sel,in);
always @(*)
begin
case(sel)
1'b0 : {y0,y1} = {in,1'b0};
1'b1 : {y1,y0} = {in,1'b0};
endcase
end
endmodule
