`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 03:59:52 PM
// Design Name: 
// Module Name: BigMemory_C
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


module BigMemory_C(Address, cMemRead,
                   o0A, o0B,
                   o1A, o1B,
                   o2A, o2B,
                   o3A, o3B,
                   o4A, o4B,
                   o5A, o5B,
                   o6A, o6B,
                   o7A, o7B);

    input cMemRead;
    input [31:0] Address;

    output [31:0]  o0A, o0B,
                   o1A, o1B,
                   o2A, o2B,
                   o3A, o3B,
                   o4A, o4B,
                   o5A, o5B,
                   o6A, o6B,
                   o7A, o7B;
                   
    BigMemoryFragment_0_C fragment0(cMemRead, Address, o0A, o0B);
    BigMemoryFragment_1_C fragment1(cMemRead, Address, o1A, o1B);
    BigMemoryFragment_2_C fragment2(cMemRead, Address, o2A, o2B);
    BigMemoryFragment_3_C fragment3(cMemRead, Address, o3A, o3B);
    BigMemoryFragment_4_C fragment4(cMemRead, Address, o4A, o4B);
    BigMemoryFragment_5_C fragment5(cMemRead, Address, o5A, o5B);
    BigMemoryFragment_6_C fragment6(cMemRead, Address, o6A, o6B);
    BigMemoryFragment_7_C fragment7(cMemRead, Address, o7A, o7B);
   
    
endmodule
