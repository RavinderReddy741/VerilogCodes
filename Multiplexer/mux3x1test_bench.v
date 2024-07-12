`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 22:01:26
// Design Name: 
// Module Name: mux3x1test_bench
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


module mux3x1test_bench();
reg i0,i1,i2;
reg [1:0]sel;
wire out;
mux3x1 dut(out,i0,i1,i2,sel);
initial
begin
$monitor("i0=%b,i1 = %b,i2 = %b,sel = %b,out = %b",i0,i1,i2,sel,out);
i0 = 1'b0;i1 = 1'b1;i2 = 1'b0;sel = 2'b00;
#10;
i0 = 1'b1;i1 = 1'b0;i2 = 1'b0;sel = 2'b10;
#10;
i0 = 1'b0;i1 = 1'b1;i2 = 1'b0;sel = 2'b11;
#10;
i0 = 1'b1;i1 = 1'b1;i2 = 1'b1;sel = 2'b01;
#10;
i0 = 1'b1;i1 = 1'b1;i2 = 1'b1;sel = 2'b00;
#10;
i0 = 1'b0;i1 = 1'b0;i2 = 1'b0;sel = 2'b00;
#10;
$finish;
end
endmodule
