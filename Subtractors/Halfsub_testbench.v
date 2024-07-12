`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 23:46:18
// Design Name: 
// Module Name: Halfsub_testbench
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


module Halfsub_testbench();
reg a,b;
wire Difference,Borrow;
Half_subtractorbeha dut(Difference,Borrow,a,b);
initial
begin
$monitor($time,"  a = %b , b = %b , Difference = %b,Borrow = %b",a,b,Difference,Borrow);
 a= 1'b0;b=1'b0;
 #10
 a= 1'b0;b=1'b1;
 #10
 a= 1'b1;b=1'b0;
 #10
 a= 1'b1;b=1'b1;
 #10
 $finish;
 end
endmodule
