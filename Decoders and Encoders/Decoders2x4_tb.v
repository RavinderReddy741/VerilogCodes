`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 21:27:29
// Design Name: 
// Module Name: Decoders2x4_tb
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


module Decoders2x4_tb();
wire [3:0]y;
reg enable,s0,s1;
Decoder dut(y,s0,s1,enable);
initial
begin
enable = 1;{s1,s0} = 2'b00;
#10;
enable = 1;{s1,s0} = 2'b01;
#10;
enable = 1;{s1,s0} = 2'b10;
#10;
enable = 1;{s1,s0} = 2'b11;
#10;
$finish;
end
endmodule
