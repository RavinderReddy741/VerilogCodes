`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 13:06:06
// Design Name: 
// Module Name: mux_testbench
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


module mux_testbench();
wire y;
reg i0,i1,sel;
mux2x1 dut(y,i0,i1,sel);
initial
begin
$monitor("i0=%b,i1 = %b,sel = %b,y = %b",i0,i1,sel,y);
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
i0 = 1'b0;i1= 1'b1;sel = 1'b1z;
#10;
$finish;
end
endmodule
