/*
    Fuck the predecrement honestly. Some key things to take away:
    1. ref arguments should not have the input keyword when declaring your task.
*/

`timescale 1ns/1ps
module test;
    typedef logic [8:0] addr;
    
    int arr[0:511];
    addr arr_addr;



    task automatic printing_array(
        const ref int arr[0:511],
        input addr [8:0] a
    );
        print_int(arr[a]);
    endtask : printing_array 

    function print_int(
        input int val
    );
        $display("Time: %d, Value: %d", $realtime, val);
    endfunction



    initial begin
        $timeformat(-9, 3, "ns", 8);
        for(int i = 0; i < 512; i++) 
            arr[i] = 42;
        arr[511] = 5;
        arr[510] = 90;
        arr_addr = 511;
        printing_array(arr, arr_addr);

    end
endmodule