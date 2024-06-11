module top;
    import "DPI-C" function int func();
    import "DPI-C" function string str(string inp);
    import "DPI-C" function string genv(string env_name);

    string foobar;

    initial begin
        foobar = "hello!!";
        $display("func() ==> %d", func());
        $display("str(%s) ==> %s", foobar, str(foobar));
        $display("genv(CMODEL) ==> %s", genv("CMODEL"));
    end
endmodule