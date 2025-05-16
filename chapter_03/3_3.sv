/*
    In main_task, my_task2 waits for the clock to get its rising edge. Once that happens, it setts new_address to the input address. The new_address is then displayed. my_task2 isn't called again since it is out of the initial block. From the time added, you can see only 1 clock cycle passed for both my_tasks to finish.

    Takeaways: 
    1. Time can pass in tasks, unlike functions
    2. Without the automatic keyword, whichever task finishes last will overwrite the shared variables. Since both calls to my_task2 finish at the same time, it creates a race condition
*/
`timescale 1ns/1ps
module test;
    int new_address1, new_address2;
    bit clk;
    initial begin :main_task
    $timeformat(-9, 3, "ns", 8);
        fork
            my_task2(21, new_address1);
            my_task2(20, new_address2); 
        join
        $display("Time: %0d, new_address1 = %0d", $realtime, new_address1);
        $display("Time: %0d, new_address2 = %0d", $realtime, new_address2);

    end : main_task

    initial 
    forever #50 clk = !clk;

    task my_task2(input int address, output int new_address);
        @(clk);
        new_address = address;
    endtask
endmodule