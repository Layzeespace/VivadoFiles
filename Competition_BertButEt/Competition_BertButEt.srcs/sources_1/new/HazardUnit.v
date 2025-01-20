`timescale 1ns / 1ps

module HazardUnit(IDrs, IDrt, 
                  EXrd, MEMrd,
                  EXRegWrite, MEMRegWrite,
                  EXMemRead, MEMMemRead,
                  MEMPCSrc,
                  
                  PCWrite, IFIDWrite, 
                  IFIDFlush, IDEXFlush,
                  EXMEMFlush);

input [4:0] IDrs, IDrt, EXrd, MEMrd;
input EXRegWrite, MEMRegWrite;
input EXMemRead, MEMMemRead;
input MEMPCSrc;

output reg PCWrite, IFIDWrite, IFIDFlush, IDEXFlush, EXMEMFlush;

initial begin
PCWrite = 1;
IFIDWrite = 1;
IFIDFlush = 0;
IDEXFlush = 0;
EXMEMFlush = 0;
end

always @(*) begin
    
    if (EXRegWrite == 1 && ((IDrs == EXrd || IDrt == EXrd) && EXrd != 5'd0)) begin
        PCWrite = 0;
        IFIDWrite = 0;
        IDEXFlush = 1;
    end
    else if (MEMRegWrite == 1 && ((IDrs == MEMrd || IDrt == MEMrd) && MEMrd != 5'd0)) begin
        PCWrite = 0;
        IFIDWrite = 0;
        IDEXFlush = 1;
    end
    else if (EXMemRead == 1 && (IDrs == EXrd || IDrt == EXrd)) begin
        PCWrite = 0;
        IFIDWrite = 0;
        IDEXFlush = 1;
    end
    else if (MEMMemRead == 1 && (IDrs == MEMrd || IDrt == MEMrd)) begin
        PCWrite = 0;
        IFIDWrite = 0;
        IDEXFlush = 1;
    end
    else begin
        PCWrite = 1;
        IFIDWrite = 1;
        IDEXFlush = 0;
    end
    
    if (MEMPCSrc == 1) begin
        PCWrite = 1;
        IFIDWrite = 1;
        IFIDFlush = 1;
        IDEXFlush = 1;
        EXMEMFlush = 1;
    end
    else begin
        IFIDFlush = 0;
        EXMEMFlush = 0;
    end
end

endmodule
