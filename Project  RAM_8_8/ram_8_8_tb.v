`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2026 22:35:14
// Design Name: 
// Module Name: ram_8_8_tb
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


module ram_8_8_tb(

    );
     reg clk,rst,wr_enb;
     reg [3:0]wr_addr;
     reg [7:0]data_in;
     reg rd_enb;
     reg [3:0]rd_addr;
     wire[7:0] data_out;
     
      ram_8_8 dut( clk,rst,wr_enb,wr_addr,data_in,rd_enb,rd_addr,data_out);
      initial begin
      { clk,rst,wr_enb,wr_addr,data_in,rd_enb,rd_addr}=0;
      end 
      always #5 clk=~clk;
      initial begin
       rst=1;
      #10;
      rst=0;
      wr_enb=1;
      wr_addr=3'b100;
      data_in=5;
      #10;
      
      wr_enb=1;
      wr_addr=3'b101;
      data_in=10;
      #10;
    
      
      
      
      end
endmodule
