`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2021 07:04:11 PM
// Design Name: 
// Module Name: IF_ID_EX_COMBO_C_tb
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


module IF_ID_EX_COMBO_C_tb();

reg Clk, Reset;
reg [31:0] newHi, newLo;
reg RegWrite2WB, cRegWrite1;
reg [4:0] RegWriteAddress1;
reg [31:0] WriteData1, ReadReg2WB;
reg HiLoWrite;
reg [4:0] MEMrd, SAD1rd, SAD2rd, SAD3rd;
reg MEMRegWrite, SAD1RegWrite, SAD2RegWrite, SAD3RegWrite;

wire oSAD, oRegWriteCtrl, oMove, oMemRead;
wire [1:0] oSEMux, oMemWrite;
wire [2:0] oMemToReg;
wire [31:0] oPCPlus4, oALUResult, oReadReg1, oReadReg2, oHi, oLo;
wire oZero;
wire [4:0] oRegDstResult;
wire [63:0] oHiLoResult;
wire oHiLoWrite;
wire [31:0] oV0, oV1;

IF_ID_EX_COMBO_C ifidex(Clk, Reset,
                     newHi, newLo, HiLoWrite,
                     RegWrite2WB,
                     cRegWrite1, RegWriteAddress1, WriteData1,
                     ReadReg2WB,
                     MEMrd, SAD1rd, SAD2rd, SAD3rd,
                     MEMRegWrite, SAD1RegWrite, SAD2RegWrite, SAD3RegWrite,
                     
                     oSAD, oRegWriteCtrl, oMove, oMemRead,
                  oSEMux, oMemWrite, 
                  oMemToReg,
                  oPCPlus4, oZero, oHiLoResult, oALUResult,
                  oReadReg1, oReadReg2, oRegDstResult,
                  oHi, oLo,
                  oHiLoWrite,
                  oV0, oV1);

initial begin
    Clk <= 1'b1;
    forever #10 Clk <= ~Clk;
end

initial begin
Reset = 1;
newHi = 0; 
newLo = 0;
RegWrite2WB = 0; 
cRegWrite1 = 0;
RegWriteAddress1 = 0;
WriteData1 = 0;
ReadReg2WB = 0;
HiLoWrite = 0;
MEMrd = 0;
SAD1rd = 0;
SAD2rd = 0;
SAD3rd = 0;
MEMRegWrite = 0;
SAD1RegWrite = 0;
SAD2RegWrite = 0;
SAD3RegWrite = 0;
#15;
Reset = 0;
end


endmodule
