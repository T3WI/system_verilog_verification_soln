/*
    a. my_byte is of type byte, so its bit width is 8 bits. Additionally, it is a signed data type. This means that it can range from -2^7 to 2^7 - 1.

    b. my_int has the same value as my_integer. Only 16 of the 32 bits are shown by my_integer, which means that there are 4 0s at the MSB. Bits 15:12 are also 0 from what is given, so the next bit following the 4 0s is another 0. As of right now the value is 0x00000???. Bits 11:8 are all 1s, which make the next digit 15 (F). Since the last 2 are all X or all Z, it follows that the next two nibbles (4 bits) are X and Z respectively. This means that the value is 0x00000Fxz.

    c. my_bit is an array of bits of size 16. This means that 16 bits are able to fit in this array. 16'h8000 is a hexadecimal number, so each number represents 4 bits. This means there are 16 binary bits in this constant. Bits 11:0 are all 0s. 8 is equivalently 1000. Therefore, the binary value is 16'b1000_0000_0000_0000. Since bit is unsigned by default, the value is 2^15. 

    d. my_short_int1 is a shortint, which is a 16-bit signed integer. Using the same binary value from c, this shortint has a value of 16'b1000_0000_0000_0000. For a shortint, which is signed, it would be -2^15.

    e. Subtracting 1 from the lowest value produces an overflow, so the value for my_short_int2 would be 32767.
*/
byte my_byte;
integer my_integer;
int my_int;
bit [15:0] my_bit;
shortint my_short_int1;
shortint my_short_int2;

my_integer = 32'b000_1111_xxxx_zzzz;
my_int = my_integer;
my_bit = 16'h8000;
my_short_int1 = my_bit;
my_short_int2 = my_short_int1-1;

// Showing results
