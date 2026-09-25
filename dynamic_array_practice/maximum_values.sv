//Find the maximum value in a dynamic array.
module dynamic_array_max;

  int arr[];
  int max;

  initial begin
    arr = new[5];
    arr = '{25, 10, 80, 45, 60};

    max = arr[0];

    foreach (arr[i]) begin
      if (arr[i] > max)
        max = arr[i];
    end

    $display("Maximum = %0d", max);
  end

endmodule
