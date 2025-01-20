`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2021 11:43:12 PM
// Design Name: 
// Module Name: lab5_source_tb
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


module lab5_source_tb();


reg Clk, Reset;
wire [6:0] out7;
wire [7:0] en_out;

lab5_source lab5_tb(Clk, Reset, out7, en_out);

initial begin
    Clk <= 1'b1;
    forever #10 Clk <= ~Clk;
end

initial begin
    Reset = 1;
    #15;
    Reset = 0;
end





endmodule
