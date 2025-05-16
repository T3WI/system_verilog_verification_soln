/*
    To define the associative array, a typedef was used to define the bit widths. Hexadecimal was used to assign each instruction for simplicity, and a foreach loop was used to quickly print each instruction.
*/
`timescale 1ns/1ps 


module test;
    typedef logic [19:0] addr_t;
    typedef logic [23:0] word_t;

    word_t mem[addr_t];

    initial begin 
        mem[20'h0] = 24'hA50400;
        mem[20'h400] = 24'h123456;
        mem[20'h401] = 24'h789ABC;
        mem[20'hFFFFF] = 24'h0F1E2D;

        $display("Looping through instructions: ");
        foreach(mem[i,])
            $write("PC: 0x%5h, Instr: %24h\n", i, mem[i]);
    end
endmodule