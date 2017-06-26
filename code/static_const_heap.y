main(u32 : ac, ubyte[]* : av) : u32 {
    u16 __const         i = 0; /* Can't change it */
    u32 __static        j = 12;
    u8* __heap          array = {0, 1, 2, 3}; /* Allocate this array */
    u8[]                array_2 = {0, 1, 2, 3}; /* On the stack */

    return 0;
}
