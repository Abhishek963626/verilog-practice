`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2026 15:46:20
// Design Name: 
// Module Name: SR_latch
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


module SR_latch(input rst,enb,s,r,output reg q,reg qbar

    );
    always@(*) begin
    
    if ( s==1'b1 &&r==1'b0)begin
    q=1'b1;
    qbar=1'b0;
    end
    else if(s==1'b0 && r==1 )begin
    q=1'b0;
    qbar=1'b1;
    end
    else if (s==1'b0 && r==1'b0)begin
    q=q;
    qbar=qbar;
    end
    else begin
    q=1'bx;
    qbar=1'bx;    
    end
    end
    
    
endmodule
