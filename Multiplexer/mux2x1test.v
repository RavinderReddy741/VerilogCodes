`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 15:13:15
// Design Name: 
// Module Name: mux2x1test
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


module mux2x1test();
wire out;
reg i0,i1,sel;
mux2x1ifelse dut1(out,i0,i1,sel);
initial
begin
$monitor("i0=%b,i1 = %b,sel = %b,out = %b",i0,i1,sel,out);
i0 = 1'b0;i1= 1'b1;sel = 1'b1;
#10;
i0 = 1'b1;i1= 1'b1;sel = 1'b0;
#10;
i0 = 1'b1;i1= 1'b1;sel = 1'b1;
#10;
i0 = 1'b0;i1= 1'b0;sel = 1'b1;
#10;
i0 = 1'b0;i1= 1'b1;sel = 1'bx;
#10;
i0 = 1'b0;i1= 1'b1;sel = 1'b1;
#10;
$finish;
end
endmodule
