/*Write a test bench to test predefined array locator methods by using the following

statements
a. declare queues q, tq, dynamic array d, fixed array f
b. initialize q to (1,3,5,7), d to (9,1,8,3,4,4), f to (1,6,2,6,8,6)
c. display sum, product of elements of array q
d. display min, max values stored in array q
e. display the unique elements from array f
f. find elements in array d with condition item > 3
g. find indexes of those elements in array d which have condition item > 3
h. find indexes of those elements in array d which have condition item > 99
i. find the first index in array d which matches with condition item==8
j. find the last element in array d which matches with condition item==4
k. find the last index in array d which matches with condition item==4

l. find the sum of elements in array d with condition item > 7
m. find the sum of elements in array d with condition ((item > 7) * item)
n. find the sum of elements in array d with condition item < 8
o. find the sum of elements in array d with condition ((item < 8)? item:0)*/

module array_locator;
  int q[$];
  int tq[$];
  int d[];
  int f[6];
  initial begin
    q='{1,3,5,7};
    d=new[6];
    d='{9,1,8,3,4,4};
    f='{1,6,2,6,8,6};
    $display("Sum=%0d",q.sum());
    $display("product=%0p",q.product());
    $display("min=%0p",q.min());
    $display("max=%0p",q.max());
    $display("unique=%0p",q.unique());
      $display("element greater then 3=%p",d.find(item) with (item >3)); 
        
    $display("index of element greater then 3=%p",d.find_index(item) with (item >3));
    
    
    $display("index of element greater then 99=%p",d.find_index(item) with (item >99));
    
    $display("index of element   match with 8 =%p",d.find_first_index(item) with (item==8));
    
    $display("last element   match with 4 =%p",d.find_last(item) with (item==4));
    
    $display("last element  index match with 4 =%p",d.find_last_index(item) with (item==4));
    
    $display("sum of elements in array d with condition item > 7=%0d",d.sum() with (item>7));
    
    $display("sum of elements in array d with condition ((item > 7)*item)=%0d",d.sum() with ((item>7)*item));
    
    $display("sum of elements in array d with condition item < 8=%0d",d.sum() with (item<8));
    
    $display("sum of elements in array d with condition ((item < 8)? item:0)=%0d",d.sum() with ((item<8)?item:0));
    
  end
endmodule


/*OUTPUT

OOL:	xrun	25.03-s001: Started on Sep 21, 2026 at 08:24:29 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		array_locator
    $display("product=%0p",q.product());
                         |
xmelab: *W,IGNFMT (./testbench.sv,32|25): Illegal width specifier in format ignored (%0p).
    $display("min=%0p",q.min());
                     |
xmelab: *W,IGNFMT (./testbench.sv,33|21): Illegal width specifier in format ignored (%0p).
    $display("max=%0p",q.max());
                     |
xmelab: *W,IGNFMT (./testbench.sv,34|21): Illegal width specifier in format ignored (%0p).
    $display("unique=%0p",q.unique());
                        |
xmelab: *W,IGNFMT (./testbench.sv,35|24): Illegal width specifier in format ignored (%0p).
Loading snapshot worklib.array_locator:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Sum=16
product=105
min='{1}
max='{7}
unique='{1, 3, 5, 7}
element greater then 3='{9, 8, 4, 4}
index of element greater then 3='{0, 2, 4, 5}
index of element greater then 99='{}
index of element   match with 8 ='{2}
last element   match with 4 ='{4}
last element  index match with 4 ='{5}
sum of elements in array d with condition item > 7=0
sum of elements in array d with condition ((item > 7)*item)=17
sum of elements in array d with condition item < 8=0
sum of elements in array d with condition ((item < 8)? item:0)=12
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Sep 21, 2026 at 08:24:31 EDT  (total: 00:00:02)
Done*/
