module array_sum;

int arr[5];
function int sum_array(input int arr[5]);
int sum;  
sum = 0;
for (int i = 0; i < 5; i++) begin
sum = sum + arr[i];
end
return sum;
endfunction
  initial begin
    arr[0] = 10;
    arr[1] = 20;
    arr[2] = 30;
    arr[3] = 40;
    arr[4] = 50;

    $display("Array Sum = %0d", sum_array(arr));
  end

endmodule
