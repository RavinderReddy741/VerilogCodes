`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 00:45:00
// Design Name: 
// Module Name: carryskipadder_test
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


module carryskipadder_test();
reg [3:0]A;
reg [3:0]B;
reg C;
wire [3:0]SUM;
wire CARRY;
Carry_Skip_Adder dut(CARRY,SUM,A,B,C);
initial
begin
A = 4'b0000;B = 4'b1110;C = 1'b1;
#10;
A = 4'b0110;B = 4'b1010;C = 1'b1;
#10;
A = 4'b1111;B = 4'b1111;C = 1'b0;
#10;
A = 4'b1111;B = 4'b1111;C = 1'b1;
#10;
A = 4'b1010;B = 4'b0101;C = 1'b1;
#10;
A = 4'b1010;B = 4'b0101;C = 1'b0;
#10;
A = 4'b1010;B = 4'b1110;C = 1'b1;
#10;
$finish;
end
endmodule
