`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
//
//
// Student(s) Name and Last Name: FILL IN YOUR INFO HERE!
//
//
// Module - register_file.v
// Description - Implements a register file with 32 32-Bit wide registers.
//
// 
// INPUTS:-
// ReadRegister1: 5-Bit address to select a register to be read through 32-Bit 
//                output port 'ReadRegister1'.
// ReadRegister2: 5-Bit address to select a register to be read through 32-Bit 
//                output port 'ReadRegister2'.
// WriteRegister: 5-Bit address to select a register to be written through 32-Bit
//                input port 'WriteRegister'.
// WriteData: 32-Bit write input port.
// RegWrite: 1-Bit control input signal.
//
// OUTPUTS:-
// ReadData1: 32-Bit registered output. 
// ReadData2: 32-Bit registered output. 
//
// FUNCTIONALITY:-
// 'ReadRegister1' and 'ReadRegister2' are two 5-bit addresses to read two 
// registers simultaneously. The two 32-bit data sets are available on ports 
// 'ReadData1' and 'ReadData2', respectively. 'ReadData1' and 'ReadData2' are 
// registered outputs (output of register file is written into these registers 
// at the falling edge of the clock). You can view it as if outputs of registers
// specified by ReadRegister1 and ReadRegister2 are written into output 
// registers ReadData1 and ReadData2 at the falling edge of the clock. 
//
// 'RegWrite' signal is high during the rising edge of the clock if the input 
// data is to be written into the register file. The contents of the register 
// specified by address 'WriteRegister' in the register file are modified at the 
// rising edge of the clock if 'RegWrite' signal is high. The D-flip flops in 
// the register file are positive-edge (rising-edge) triggered. (You have to use 
// this information to generate the write-clock properly.) 
//
// NOTE:-
// We will design the register file such that the contents of registers do not 
// change for a pre-specified time before the falling edge of the clock arrives 
// to allow for data multiplexing and setup time.
////////////////////////////////////////////////////////////////////////////////

module RegisterFile(ReadRegister1, ReadRegister2, WriteRegister, WriteData, RegWrite, Clk, ReadData1, ReadData2, V0, V1);

	/* Please fill in the implementation here... */

    input [4:0] ReadRegister1; 	// Input Address 
    input [4:0] ReadRegister2;
    input [4:0] WriteRegister; // Data that needs to be written into the address 
    input [31:0] WriteData;
    input Clk;
    input RegWrite; 		// Control signal for memory write 

    output [31:0] ReadData1; // Contents of memory location at Address
    output [31:0] ReadData2;
    output [31:0] V0, V1;

    /* Please fill in the implementation here */
    
    reg [31:0] memory [0:31]; //Local memory. 32 Registers, 32 bits wide each.
    
    integer i;
    
    initial begin                               
        for (i = 0; i <= 31; i = i + 1) begin
            memory[i] = 0;
        end
        memory[29] = 32'd32768;
        
    end
    
    always @(negedge Clk) begin
        if (RegWrite == 1) begin
            memory[WriteRegister] = WriteData;
        end
    end
   
    assign    ReadData1 = memory[ReadRegister1];
    assign    ReadData2 = memory[ReadRegister2];
    assign V0 = memory[5'd2];
    assign V1 = memory[5'd3];


endmodule
