`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2026 17:27:53
// Design Name: 
// Module Name: FIFO_8_8_tb
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


module FIFO_8_8_tb(

    );
    reg rst,clk,wr_enb, rd_enb;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire full,empty;
    
    FIFO_8_8 dut(clk,rst,wr_enb, rd_enb,data_in,data_out,full,empty);
    
    initial begin
    {clk,rst,wr_enb, rd_enb,data_in}=0;
    end
    always  #5 clk = ~clk;
    initial begin
    clk=0;
    rst=1;
     wr_enb=0;
     rd_enb=0;
     data_in=0;
     #10;
     
     rst=0;
     //write=5
     wr_enb=1;
     data_in=8'd5;
     #10;
     //write=10
     data_in=8'd10;
     #10;
     //read=5
     wr_enb=0;
     rd_enb=1;
     #10;
     //read=10
     #10;
     rd_enb=0;
     #10;
     
     end
     
     
    
endmodule
