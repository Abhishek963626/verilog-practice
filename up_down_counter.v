`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2026 16:23:55
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(input clk,rst,input up_down, output reg [3:0]count

    );
    
    always @(posedge clk)begin
    if (rst)
    count <= 4'b0000;
    else if(up_down)
      count<= count +1'b1;
      else 
         count<= count -1'b1;
         end 
endmodule
