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
