`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2026 16:40:16
// Design Name: 
// Module Name: FIFO_8_8
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


module FIFO_8_8(input clk,rst,wr_enb,rd_enb,input [7:0]data_in, output reg [7:0]data_out, output full,empty

    );
    reg [3:0]wr_ptr;
    reg [3:0]rd_ptr;
    reg [7:0]mem[7:0];
    
    always @(posedge clk)
    if(rst)begin
    wr_ptr<=0;
    rd_ptr<=0;
    data_out<=0;
    end
     else begin
     
     if(wr_enb &&! full)begin
     mem[wr_ptr[2:0]]<=data_in;
     wr_ptr<= wr_ptr + 1;
     end
     
     
     if(rd_enb &&!empty)begin
     data_out<= mem[rd_ptr[2:0]];
     rd_ptr<=rd_ptr +1;
     end   
     end
    
     assign empty= (wr_ptr==rd_ptr);
     assign full= (wr_ptr[3]!=rd_ptr[3])&&(wr_ptr[2:0]==rd_ptr[2:0]);
     
    
endmodule
