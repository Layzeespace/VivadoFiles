`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 11:09:04 AM
// Design Name: 
// Module Name: BranchCache_C
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


module BranchCache_C(PC, PCSrc,
               
                     oCacheAddress, ocCache);

input [31:0] PC;
input [2:0] PCSrc;
reg [31:0] BranchPCs [0:3];
reg [31:0] BranchTargets [0:3];
output reg [31:0] oCacheAddress;
output reg ocCache;
integer i;

initial begin
    oCacheAddress = 32'd0;
    ocCache = 0;
    for (i = 0; i < 4; i = i + 1) begin
        BranchPCs[i] = 32'dX;
        BranchTargets[i] = 32'd0;
    end
    
    // ENTER BRANCH DATA HERE!  
    // do NOT put any jrs in here. Only branches, j, and jal.
    // unlike the others, jr changes branch target, so it wouldn't work.
    
    BranchPCs[0] = 32'd292;
    BranchTargets[0] = 32'd32;
    
    BranchPCs[1] = 32'd28;
    BranchTargets[1] = 32'd288;
    
    BranchPCs[1] = 32'd328;
    BranchTargets[1] = 32'd328;
    
end

always @(PC) begin
    ocCache = 0;
    oCacheAddress = 32'd0;
    for (i = 0; i < 4; i = i + 1) begin
        if (PC == BranchPCs[i] && ocCache == 0) begin
            oCacheAddress = BranchTargets[i];
            ocCache = 1;
        end
    end
end

endmodule
