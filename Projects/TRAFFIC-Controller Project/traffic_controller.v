`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2026 22:30:51
// Design Name: 
// Module Name: traffic_controller
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


module traffic_controller(input clk,rst,output reg red,output reg green, output reg yellow

    );
    reg [1:0]state;
    reg [1:0]next_state;
    
    parameter RED =2'b00;
    parameter GREEN =2'b01;
    parameter YELLOW =2'b10;
    
    always @(posedge clk)begin
     if (rst)
       state<=RED;
      else
       state <=next_state;
       end
       
       always@(*)begin
       case(state)
       RED:
       next_state<=GREEN;
       
       GREEN:
       next_state<=YELLOW;
       
       YELLOW:
       next_state<=RED;
       
       endcase
     end       
     
     always @(*) begin

    case (state)

        RED: begin
            red = 1;
            green = 0;
            yellow = 0;
        end

        GREEN: begin
            red = 0;
            green = 1;
            yellow = 0;
        end

        YELLOW: begin
            red = 0;
            green = 0;
            yellow = 1;
        end

        default: begin
            red = 1;
            green = 0;
            yellow = 0;
        end

    endcase

end
    
endmodule
