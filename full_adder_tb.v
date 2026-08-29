`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2026 16:33:32
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb(

    );

reg a;
reg b;
reg cin;

wire sum;
wire carry;

full_adder dut(a,b,cin,sum,carry);

initial begin

    a = 0;
    b = 0;
    cin = 0;
    #10;

    a = 0;
    b = 0;
    cin = 1;
    #10;

    a = 0;
    b = 1;
    cin = 0;
    #10;

    a = 0;
    b = 1;
    cin = 1;
    #10;

    a = 1;
    b = 0;
    cin = 0;
    #10;

    a = 1;
    b = 0;
    cin = 1;
    #10;

    a = 1;
    b = 1;
    cin = 0;
    #10;

    a = 1;
    b = 1;
    cin = 1;
    #10;


end
endmodule
