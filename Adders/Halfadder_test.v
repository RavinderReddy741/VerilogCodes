`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2023 00:20:29
// Design Name: 
// Module Name: Halfadder_test
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


module Halfadder_test();
reg a,b;
wire sum,carry;
Halfadderbehav dut(sum,carry,a,b);
initial
begin
a=1'b0;
b=1'b0;
#10;
a=1'b0;
b=1'b1;
#10;
a=1'b1;
b=1'b0;
#10;
a=1'b1;
b=1'b1;
#10;
$finish;
end
endmodule
