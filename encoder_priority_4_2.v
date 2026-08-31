`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 14:04:26
// Design Name: 
// Module Name: encoder_priority_4_2
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


module encoder_priority_4_2(input [3:0]din,output reg [1:0]y

    );
    always@(*)begin
    
   if(din[3])
   y=2'b11;
   
   else if(din[2])
   y=2'b10;
   
   else if(din[1])
   y=2'b01;
   
   else if(din[0])
   y=2'b00;
   
   else
   y=2'b00;
 
    end

 
endmodule
