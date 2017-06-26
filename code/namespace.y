def Test {
    some_fn(void) : void {
        print("Hello !\n");
    }
};

use Test;

main(u32 : ac, ubyte[]* : av) : u32 {
    Test.some_fn();
}
