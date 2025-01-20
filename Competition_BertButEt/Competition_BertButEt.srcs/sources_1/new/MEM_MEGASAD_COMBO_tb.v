`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2021 02:16:18 PM
// Design Name: 
// Module Name: MEM_MEGASAD_COMBO_tb
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


module MEM_MEGASAD_COMBO_tb();

reg Clk, Reset;
reg SAD, RegWriteCtrl, Move, MemRead;
reg [1:0] SEMux, MemWrite;
reg [2:0] MemToReg;
reg [31:0] PCPlus4, ALUResult, ReadReg1, ReadReg2, Hi, Lo;
reg Zero;
reg [4:0] RegDstResult;
reg [63:0] HiLoResult;
reg HiLoWrite;

wire oRegWriteCtrl, oMove;
wire [1:0] oSEMux;
wire [2:0] oMemToReg;
wire [31:0] oPCPlus4, oALUResult, oReadReg1, oReadReg2, oHi, oLo;
wire oZero;
wire [4:0] oRegDstResult;
wire [63:0] oHiLoResult;
wire oHiLoWrite;
wire [31:0] oMemReadData;
wire oRegWrite2WB;
wire [31:0] oSum;

MEM_MEGASAD_COMBO memmegasad(Clk, Reset,
                  SAD, RegWriteCtrl, Move, MemRead,
                  SEMux, MemWrite, 
                  MemToReg,
                  PCPlus4, Zero, HiLoResult, ALUResult,
                  ReadReg1, ReadReg2, RegDstResult,
                  Hi, Lo,
                  HiLoWrite,
                  
                  oRegWriteCtrl, oMove,
                  oSEMux, 
                  oMemToReg,
                  oPCPlus4, oZero, oHiLoResult, oALUResult,
                  oReadReg1, oReadReg2, oRegDstResult,
                  oHi, oLo,
                  oHiLoWrite,
                  oMemReadData,
                  oRegWrite2WB,
                  oSum);

initial begin
    Clk <= 1'b1;
    forever #10 Clk <= ~Clk;
end

initial begin
    Reset = 1;
    SAD = 1;
    RegWriteCtrl= 0;
    Move= 0;
    MemRead= 0;
    SEMux= 0;
    MemWrite= 0;
    MemToReg= 0;
    PCPlus4= 0;
    ALUResult= 0;
    ReadReg1= 32'd34;
    ReadReg2= 32'd27;
    Hi= 0;
    Lo= 0;
    Zero= 0;
    RegDstResult= 0;
    HiLoResult= 0;
    HiLoWrite= 0;
  
    #15;
    Reset = 0;
end




endmodule
