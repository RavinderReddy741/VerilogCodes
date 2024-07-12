`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 22:38:39
// Design Name: 
// Module Name: Priority_Encoder4to2_tb
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


module Priority_Encoder4to2_tb();
wire [1:0]y;
reg en;
integer i;
reg [3:0]D;
Priority_encoder4to2 dut(y,D,en);
initial
begin
$monitor("enable = %0b,D = %0b,y = %0b",en,D,y);
/*en = 1;D = 4'b0101;
#10;
en = 1'b1; D = 1;
#10;
en = 1'b1; D = 0;
#10;
en = 1'b1; D = 1;
#10;
en = 1'b1; D = 2;
#10;
en = 1'b1; D = 1;
#10;
en = 1'b0; D = 11;
#10;
en = 1'b0; D = 4'b001x;
#10;
$finish;
end*/
en = 1;
for(i = 0;i<=15;i = i+1)
begin
D = i;
#50;
end
en =0;
#500;
$finish;
end
endmodule
