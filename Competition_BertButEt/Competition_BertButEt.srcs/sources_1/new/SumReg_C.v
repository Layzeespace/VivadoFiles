`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2021 05:32:39 PM
// Design Name: 
// Module Name: SumReg_C
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

module SumReg_C(Clk, cSAD, cWrite, Input,
                oSum, oRegWrite2Sum);

input Clk;
input cSAD, cWrite;
input [31:0] Input;

output reg [31:0] oSum;
output reg oRegWrite2Sum;

initial begin
    oSum = 32'd20000000;
end

always @(negedge Clk) begin
    oRegWrite2Sum = 0;
    if (cSAD == 1 && cWrite == 1) begin
        oSum = Input;
        oRegWrite2Sum = 1;
    end
end

endmodule
