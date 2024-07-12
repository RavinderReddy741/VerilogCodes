`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 00:59:00
// Design Name: 
// Module Name: demux1x2
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


module demux1x2(output reg out1,out2,input s,in1);
always @(*)
begin
case(s)
1'b0:{out1,out2} = {in1,1'b0};
1'b1:{out1,out2} = {1'b0,in1};
default:{out1,out2}=2'bxx;
endcase
end
endmodule
