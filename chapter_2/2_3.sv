/*
    After initializing variables in the initial block, a for loop through anaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
*/
`timescale 1ns/1ps

module test;
    bit [11:0]  my_array[4];
    initial begin 
        my_array[0] = 12'h012;
        my_array[1] = 12'h345;
        my_array[2] = 12'h678;
        my_array[3] = 12'h9AB;
        $display("Original array: ");
        for(int i = 0; i < $size(my_array); i++)
            $display("%12b", my_array[i]);
        $display();
        $display("For loop: ");
        for(int i = 0; i < $size(my_array); i++)
            $display("%0b", my_array[i][5:4]);
        $display("For each loop: ");
        foreach(my_array[i,])
            $display("%0b", my_array[i][5:4]);
        
    end

endmodule