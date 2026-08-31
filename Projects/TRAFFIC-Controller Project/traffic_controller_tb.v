`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 14:02:29
// Design Name: 
// Module Name: traffic_controller_tb
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


module traffic_controller_tb(

    );
    reg clk,rst;
    wire red;
    wire green;
    wire yellow;
     
    traffic_controller dut(clk,rst,red,green,yellow);
    initial begin
    {clk,rst}=0;
    end
    
    always #5 clk=~clk;
    initial begin
    clk=0;
    rst=1;
    #10;
    
    rst=0;
     #10;
     #10;
     #10;
     #10;
    end
    
endmodule
