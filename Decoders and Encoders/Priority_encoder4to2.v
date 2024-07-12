`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 22:31:12
// Design Name: 
// Module Name: Priority_encoder4to2
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


module Priority_encoder4to2(output reg[1:0]y,input [3:0]D,input en);
always @(*)
begin
if(en==1'b1)
begin
if(D[3] == 1'b1)
y = 2'b11;
else if(D[2] == 1'b1)
y = 2'b10;
else if(D[1] == 1'b1)
y = 2'b01;
else
y = 2'b00;
end
else
y = 2'bzz;
end
endmodule
