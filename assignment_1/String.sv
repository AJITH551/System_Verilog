/*5. Write a test bench to test string data type and its predefined methods by using the
following statements
a. declare a string data type and assign it to“SystemVerilog”
b. use the getc() method to display the ASCII value of the first character
of this string
c. use toupper() method to display the string in capital letter
d. concatenate the string with string “3.1a” and display
e. replace the last character in the string with character ‘b’ using len()
method and display
  f. use substr() method to display substring from 2nd to 5th character*/




module string_tb;
    string str;
    initial begin
        str = "SystemVerilog";
        $display("a. Original string = %s", str);
        $display("b. ASCII value of first character = %0d", str.getc(0));
        $display("c. Uppercase string = %s", str.toupper());
        str = {str, "3.1a"};
        $display("d. After concatenation = %s", str);
        str.putc(str.len()-1, "b");
        $display("e. After replacing last character = %s", str);
        $display("f. Substring (2nd to 5th) = %s", str.substr(1,4));

    end

endmodule



//Output

TOOL:	xrun	25.03-s001: Started on Sep 21, 2026 at 09:58:43 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		string_tb
Loading snapshot worklib.string_tb:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
a. Original string = SystemVerilog
b. ASCII value of first character = 83
c. Uppercase string = SYSTEMVERILOG
d. After concatenation = SystemVerilog3.1a
e. After replacing last character = SystemVerilog3.1b
f. Substring (2nd to 5th) = yste
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
