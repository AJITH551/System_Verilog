module queue;
  int arr[$];
  initial begin
    arr='{0,1,2,3,4,5,6};
    $display("size of arr=%0d",arr.size());
    arr.insert(3,7);
    $display("data=%p",arr);
    arr.delete(5);
    $display("data=%p",arr);
    arr.pop_front;
    $display("data=%p",arr);
    arr.pop_back;
    $display("data=%p",arr);
    arr.push_front(9);
    $display("data=%p",arr);
    arr.push_back(8);
    $display("data=%p",arr);
  end
endmodule
