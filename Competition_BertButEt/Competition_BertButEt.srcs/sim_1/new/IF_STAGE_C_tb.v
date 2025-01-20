`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 11:58:25 AM
// Design Name: 
// Module Name: IF_STAGE_C_tb
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


module IF_STAGE_C_tb();

reg Clk, Reset;
reg cPCWrite, cWrite, cFlush;
reg [2:0] cPCSrc;
reg [31:0] ReadReg1, PCSumImm, SEImm26, IDPCPlus4;

wire [31:0] oPCPlus4, oInstruction;

IF_STAGE_C stage(Clk, Reset,
                  cPCWrite, cWrite, cFlush, cPCSrc,
                  ReadReg1, PCSumImm, SEImm26, IDPCPlus4,
                  
                  oPCPlus4, oInstruction);

initial begin
    Clk <= 1'b1;
    forever #10 Clk <= ~Clk;
end

initial begin
    cPCWrite = 1;
    cWrite = 1;
    cFlush = 0;
    cPCSrc = 3'd0;
    ReadReg1 = 32'd42;
    PCSumImm = 32'd17;
    SEImm26 = 32'd22;
    IDPCPlus4 = 32'd104;
    Reset = 1;
    #15;
    Reset = 0;
    #15;
    cPCSrc = 1;
    #15;
    cPCSrc = 0;

end

endmodule
