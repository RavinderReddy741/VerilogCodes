`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2023 23:38:11
// Design Name: 
// Module Name: Half_subtractorbeha
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


module Half_subtractorbeha(Difference,Borrow,a,b);
output reg Difference,Borrow;
input a,b;
always @(*)
begin
Difference = a^b;
Borrow = ~a & b;
end
endmodule
