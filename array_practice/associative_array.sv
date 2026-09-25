module associative_array;

  int data[int];

  initial begin
    data[10] = 100;
    data[20] = 200;
    data[30] = 300;

    $display("data = %p", data);

    foreach(data[i])
      $display("data[%0d] = %0d", i, data[i]);

    $display("size = %0d", data.num());
  end

endmodule
