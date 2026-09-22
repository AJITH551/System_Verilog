module dynamic_array_sort;
  int arr1[];
  int arr2[];
  int temp;
  initial begin
    arr1 = new[10];
    arr2 = new[10];
    arr1 = '{45, 12, 78, 23, 9, 56, 34, 1, 67, 20};
    // Copy the same values to arr2
    arr2 = arr1;
  //sorting array
    $display("Before sorting = %p", arr1);
    arr1.sort();
    $display("With sort()    = %p", arr1);


    //sorting without array
    // Bubble Sort
    for (int i = 0; i < 9; i++) begin
      for (int j = 0; j < 9-i; j++) begin

        if (arr2[j] > arr2[j+1]) begin
          temp = arr2[j];
          arr2[j] = arr2[j+1];
          arr2[j+1] = temp;
        end

      end
    end

    $display("Without method = %p", arr2);

  end

endmodule
