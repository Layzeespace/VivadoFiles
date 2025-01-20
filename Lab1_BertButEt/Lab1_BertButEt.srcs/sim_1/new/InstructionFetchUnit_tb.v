`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2021 04:11:12 PM
// Design Name: 
// Module Name: InstructionFetchUnit_tb
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


module InstructionFetchUnit_tb();

reg Reset, Clk;
wire [31:0] Instruction;
wire [31:0] PCResult;

InstructionFetchUnit IFU(Instruction, PCResult, Reset, Clk);


initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

initial begin
    Reset <= 1;
    @(posedge Clk);
    @(posedge Clk);
    Reset <= 0;

end


endmodule
