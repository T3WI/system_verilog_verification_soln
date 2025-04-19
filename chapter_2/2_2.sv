/*
    To start off, my_mem and my_logic mem are 2-dimensional arrays representing memory, and my_logic is a 1-dimensional array. my_mem has 3 rows, each holding 8 bits. my_logic mem is 4 rows, each holding 4 bits. 

    Every row in my_mem is set to 8'hA5. For my_logicmem, every row is filled with each subsequent entry. i.e.:
        my_logicmem[0] = 4'd0;
        my_logicmem[1] = 4'd1;
        ...
    Lastly, my_logic is assigned a 4-bit hex number. Remember, 1 hex bit is 4 binary bits.
    2a. my_logicmem[4] would produce an out of bounds error, so the assignment would result in error. 
    2b. my_logicmem[4] would produce an out of bounds error, so the assignment would result in error.
    2c. The port sizes differ for the assignment, so it'll result in some error.
    2d. 
    2e. 
    2f.
    2g. 
*/
`timescale 1ns/1ps
module test;
    bit [7:0] my_mem[3];
    logic [3:0] my_logicmem[4];
    logic[3:0] my_logic;

    initial begin 
        my_mem = '{default:8'hA5};
        my_logicmem = '{0, 1, 2, 3};
        my_logic = 4'hF;
        #100;


        my_mem[2] = my_logicmem[3];
        $display("2a: my_mem[2] = %x", my_mem[2]);
        #100;
        my_logic = my_logicmem[3];
        $display("2b: my_logic = %x", my_logic);
        #100;
        my_logicmem[3] = my_mem[3];
        $display("2c: my_logicmem[3] = %x", my_logicmem[3]);
        #100;
        // my_mem[3] = my_logic;
        // #100;
        // my_logic = my_logicmem[1];
        // #100;
        // my_logic = my_mem[1];
        // #100;
        // my_logic = my_logicmem[my_logicmem[41]];
    end
endmodule 