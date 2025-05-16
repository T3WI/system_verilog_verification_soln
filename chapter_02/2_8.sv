/*
    The queue was declared using the byte type to ensure that signed values are used. For unsigned ones, a bit array should be used.
*/
`timescale 1ns/1ps 

module test;
    byte q[];
    initial begin
        q = {2, -1, 127};
        $display("Queue contents: ");
        foreach(q[i])
            $display("%d", q[i]);

        $display("Sum of the queue: %d", q.sum());
    end
endmodule