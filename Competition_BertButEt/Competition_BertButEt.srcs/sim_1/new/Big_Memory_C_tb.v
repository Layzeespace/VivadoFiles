`timescale 1ns / 1ps

module Big_Memory_C_tb();
    
    reg [31:0] Address;

    wire [31:0]  o0A, o0B,
                   o1A, o1B,
                   o2A, o2B,
                   o3A, o3B,
                   o4A, o4B,
                   o5A, o5B,
                   o6A, o6B,
                   o7A, o7B;
                   
                   
    BigMemory_C BigMem(Address,
                   o0A, o0B,
                   o1A, o1B,
                   o2A, o2B,
                   o3A, o3B,
                   o4A, o4B,
                   o5A, o5B,
                   o6A, o6B,
                   o7A, o7B);
   
   initial begin
       Address = 32'd0;
   end
    
endmodule
