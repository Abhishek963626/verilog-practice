`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2026 14:09:20
// Design Name: 
// Module Name: BCD_adder_tb
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


module BCD_adder_tb(

    );  

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire cout;

bcd_adder dut (
    a,
    b,
    cin,
    sum,
    cout
);

initial begin

    // 3 + 4 = 7
    a = 4'b0011;
    b = 4'b0100;
    cin = 0;
    #10;

    // 7 + 5 = 12
    a = 4'b0111;
    b = 4'b0101;
    cin = 0;
    #10;

    // 9 + 8 = 17
    a = 4'b1001;
    b = 4'b1000;
    cin = 0;
    #10;

    // 5 + 4 + 1 = 10
    a = 4'b0101;
    b = 4'b0100;
    cin = 1;
    #10;

    $finish;
end

endmodule
