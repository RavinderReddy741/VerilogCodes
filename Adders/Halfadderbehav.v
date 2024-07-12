`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2023 00:02:16
// Design Name: 
// Module Name: Halfadderbehav
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


module Halfadderbehav(output sum,carry,input a,b);
reg sum,carry;
wire a,b;
always @(a,b)
  begin
    if(a ==0 && b ==0)
    begin
    sum=0;carry =0;
    end
    else if(a ==0 && b==1)
    begin
    sum=1;carry=0;
    end
    else if(a==1 && b==0)
    begin
    sum=1;carry =0;
    end
    else if(a==1 && b==1)
    begin
    sum=0;carry=1;
    end
    else
    begin
    sum=1'bx;carry =1'bx;
    end
 end   
endmodule
