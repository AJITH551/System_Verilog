/*6. Declare a 5 by 31 multi-dimensional unpacked array, my_array1. Each element of
the unpacked array holds a 4-state value.
a. Which of the following assignments are legal and not out-of-bounds?
i. my_array1[4][30] = 1'b1;
ii. my_array1[29][4] = 1'b1;
iii. my_array1[4] = 31'b1;
b. Draw my_array1 after the legal assignments are complete.*/

module test;
  logic my_array1 [5][31];
  initial begin
 my_array1[4][30] = 1'b1;
 my_array1[29][4] = 1'b1;
 my_array1[4] = 31'b1;
    $display("my_array1:");

  for (int i = 0; i < 5; i++) begin
   $write("Row %0d: ", i);

            for (int j = 0; j < 31; j++) begin
                $write("%b ", my_array1[i][j]);
            end

            $display("");
        end

    end

endmodule

/*output
TOOL:	xrun	25.03-s001: Started on Sep 22, 2026 at 05:07:23 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
 my_array1[4] = 31'b1;
                 |
xmvlog: *E,TYCMPAT (testbench.sv,14|17): assignment operator type check failed (expecting datatype compatible with 'unpacked array [0:30] of logic' but found 'packed array' instead).
xmvlog: *W,NOTOPL: no top-level unit found, must have recursive instances.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	25.03-s001: Exiting on Sep 22, 2026 at 05:07:23 EDT  (total: 00:00:00)
Exit code expected: 0, received: 1*/
