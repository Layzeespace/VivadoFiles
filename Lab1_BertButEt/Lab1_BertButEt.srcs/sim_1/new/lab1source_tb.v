`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2021 10:33:19 AM
// Design Name: 
// Module Name: lab1source_tb
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


module lab1source_tb();

reg Reset, Clk;
wire [6:0] out7;
wire [7:0] en_out;

lab1source ls(out7, en_out, Reset, Clk);

initial begin
		Clk <= 1'b1;
		forever #0.1 Clk <= ~Clk;
	end
	
initial begin
    Reset <= 1;
    #10;
    Reset <= 0;
end
	


endmodule
