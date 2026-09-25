module queue;
  int arr[$:4];
  initial begin
    arr='{5,10,15};
    $display("data=%p",arr);
    $display("size of arr=%0d",arr.size());
    arr.push_back(20);
    $display("data=%p",arr);
    arr.insert(3,25);
    $display("data=%p",arr);
    $display("size of arr=%0d",arr.size());
  end
endmodule
