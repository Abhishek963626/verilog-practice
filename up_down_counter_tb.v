`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2026 16:38:08
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb(

    );
    reg clk;
    reg rst;
    reg up_down;
    wire [3:0]count;
    
    up_down_counter dut(clk,rst,up_down,count);
    always #5 clk = ~clk;
    initial begin
    clk =0;
    rst=1;
    up_down=1;
    
    #10;
    rst=0;
    
     up_down=1;
     #50;
     
      up_down=0;
      #50;
      
      $finish;
      end 
      
    
    endmodule
