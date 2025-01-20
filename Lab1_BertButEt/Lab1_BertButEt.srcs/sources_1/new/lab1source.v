`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2021 03:53:10 PM
// Design Name: 
// Module Name: lab1source
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


module lab1source(out7, en_out, Reset, Clk);

input Reset, Clk;
output [6:0] out7;
output [7:0] en_out;

wire [31:0] Instruction;
wire ClkOut;
wire [31:0] PCResult;

ClkDiv CD(Clk, Reset, ClkOut);
InstructionFetchUnit IFU(Instruction, PCResult, Reset, ClkOut);
Two4DigitDisplay Display(Clk, Instruction[15:0], PCResult[15:0], out7, en_out);

endmodule