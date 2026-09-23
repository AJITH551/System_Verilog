// Code your testbench here
// or browse Examples
//1. Declare and allocate a dynamic array of 10 integers. Assign values and display all elements.

module dynamic_array_example;

  int arr[];

  initial begin
    arr = new[10];

    foreach (arr[i]) begin
      arr[i] = (i + 1) * 10;
    end

    foreach (arr[i]) begin
      $display("arr[%0d] = %0d", i, arr[i]);
    end
  end

endmodule

/*module dynamic_array;
int arr[];
initial begin 
arr=new[10];
for (int i=0;i<10;i++)begin
arr[i]=(i+1)*10;
end

for(int i=0;i<10;i++)begin
$display("arr[%0d]=%0d",i,arr[i]);
end
end
endmodule*/
