`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2026 14:07:41
// Design Name: 
// Module Name: BCD_adder
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


 module BCD_adder(input [3:0]a_bcd,[3:0]b_bcd,input cin,output [3:0]sum_bcd, output cout
    );
    wire w1,w2,w3;
    wire [3:0]sum_temp;
    wire cout_temp;
    wire[3:0] b_xca;
    /*always @(*) begin

    temp = a + b + cin;

    if (temp > 9)
        corrected = temp + 5'd6;(//4'b0110+temp)
    else
        corrected = temp;

end

assign sum  = corrected[3:0];
assign cout = corrected[4];*/
    
    ripple_carry_adder xcal(a_bcd,b_bcd,cin,sum_temp,cout_temp);
    and a1(w1,sum_temp[3],sum_temp[2]);
    and a2(w2,sum_temp[3],sum_temp[1]);
    
    or o1(w3,w1,w2);
    or o2(cout, w3,cout_temp);
    
    
    assign b_xca[0]=1'b0;
    assign b_xca[1]=1'b0;
    assign b_xca[2]=cout;
    assign b_xca[3]=cout;
    
    ripple_carry_adder xca2(sum_temp,b_xca,1'b0,sum_bcd,cout_temp);
    
      
endmodule
