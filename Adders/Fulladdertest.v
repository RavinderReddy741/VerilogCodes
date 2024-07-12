`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2023 22:20:21
// Design Name: 
// Module Name: Fulladdertest
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


module Fulladdertest();
reg a,b,c;
wire sum,carry;
Fulladder dut(sum,carry,a,b,c);
initial
begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
#10;
a = 1'b0;
b = 1'b0;
c = 1'b1;
#10;
a = 1'b0;
b = 1'b1;
c = 1'b0;
#10;
a = 1'b0;
b = 1'b1;
c = 1'b1;
#10;
a = 1'b1;
b = 1'b0;
c = 1'b0;
#10;
a = 1'b1;
b = 1'b0;
c = 1'b1;
#10;
a = 1'b1;
b = 1'b1;
c = 1'b0;
#10;
a = 1'b1;
b = 1'b1;
c = 1'b1;
#10;
$finish;
end
endmodule
