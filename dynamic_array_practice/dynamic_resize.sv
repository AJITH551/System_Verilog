//How do you resize a dynamic array?
module resize;
  int arr[];
  initial begin
    arr=new[5];
    arr='{10,20,30,40,50};
    $display("size=%0d",arr.size());
    arr=new[10](arr);
    $display("resize=%0d",arr.size());
    $display("elements after resize: %p", arr);
             end
             endmodule
/*"When you use new[size] without passing the old array as an argument,
SystemVerilog performs a fresh allocation.
All previous data is lost, 
and the new array is initialized with default values (0 for integers). 
To preserve old data during resize, you must use newsize syntax, which copies existing elements before resizing*/
