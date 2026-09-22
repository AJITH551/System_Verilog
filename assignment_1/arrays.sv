/* Write the SystemVerilog code to: 
a) Declare a 2-state array, my_array, that holds four 12-bit values 
b) initialize my_array so that: 
i. my_array[0] = 12’h012 
ii. my_array[1] = 12’h345, 
iii. my_array[2] = 12’h678, 
iv. my_array[3] = 12’h9AB; 
c) Traverse my_array and print out bits [5:4] of each 12-bit element I. Using a for loop 
II. Using a foreach loop
*/

module array;
  bit [11:0]my_array[4];
  initial begin
    my_array[0]=12'h012;
    my_array[1]=12'h345;
    my_array[2]=12'h678;
    my_array[3]=12'h9AB;
    
    for(int i=0;i<4;i++)begin
      $display("my_array[%0d][5:4]=%b",i,my_array[i][5:4]);  
    end
    
    foreach(my_array[i])begin
      $display("my_array[%0d][5:4]=%b",i,my_array[i][5:4]);  
    end
    
  end
endmodule

/*TOOL:	xrun	25.03-s001: Started on Sep 22, 2026 at 05:35:37 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		array
Loading snapshot worklib.array:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
my_array[0][5:4]=01
my_array[1][5:4]=00
my_array[2][5:4]=11
my_array[3][5:4]=10
my_array[0][5:4]=01
my_array[1][5:4]=00
my_array[2][5:4]=11
my_array[3][5:4]=10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Sep 22, 2026 at 05:35:39 EDT  (total: 00:00:02)
Done*/
