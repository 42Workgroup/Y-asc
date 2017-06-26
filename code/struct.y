struct basestruct_s {
    bool        some_bool;
    u32         some_integer;
    ubyte[]     some_string_with_def_val = "Hello !";
};

print_struct_info(struct basestruct_s * : ptr) : void {
    print("some_bool: %b\n", ptr->some_bool);
    print("some_integer: %zu"\n, ptr->some_integer);
    print("some_string_with_def_val: %s\n", ptr->some_string_with_def_val);
}

main(u32 : ac, ubyte[]* : av) : u32 {
    struct basestruct_s     st;

    st.some_bool = false;
    st.some_integer = 4;
    print_struct_info(&st);
    return 0;
}
