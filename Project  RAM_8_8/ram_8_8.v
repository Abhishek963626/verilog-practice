`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2026 20:41:46
// Design Name: 
// Module Name: ram_8_8
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


module ram_8_8(input clk,rst,wr_enb,input [3:0]wr_addr,input [7:0]data_in,rd_enb,input[3:0]rd_addr,output reg [7:0]data_out

    );
    reg [7:0]mem [7:0];
    integer i; 
    always@(posedge clk or rst)
     begin
     if(rst)
     for(i=0;i<7;i=i+1)
     mem[i]<=0;
    
     else
     if(wr_enb==0)
     data_out<=mem[rd_addr];
     end
    
endmodule
