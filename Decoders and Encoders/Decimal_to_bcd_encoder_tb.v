`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 18:30:31
// Design Name: 
// Module Name: Decimal_to_bcd_encoder_tb
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


module Decimal_to_bcd_encoder_tb();
reg [9:0]a;
wire [3:0]y;
Decimal_to_bcd_Encoder dut12(y,a);
initial
begin
$monitor("input = %0b,output = %0b",a,y);
a = 10'b0000000001;
#10;
a = 10'b0000000010;
#10;
a = 10'b0000000100;
#10;
a = 10'b0000001000;
#10;
a = 10'b0000010000;
#10;
a = 10'b0000100000;
#10;
a = 10'b0001000000;
#10;
a = 10'b0010000000;
#10;
a = 10'b0100000000;
#10;
a = 10'b1000000000;
#10;
a = 10'b0010101010;
#10
$finish;
end
endmodule
