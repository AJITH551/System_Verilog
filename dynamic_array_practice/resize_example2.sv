/*"You have '{1, 2, 3, 4, 5} in a dynamic array. 
But you don't need 4 and 5. 
You want to take only the first 3 elements (1, 2, 3) and resize the array to 8 elements. 
The remaining 5 elements should be 0. How do you do this in SystemVerilog*/
module resize;
  int arr[];
  int temp[];
  initial begin
    arr=new[5];
    arr='{10,20,30,40,50};
    
    temp=arr[0:2];
    arr=new[8](temp);
    
    foreach (arr[i])
      $display("arr[%0d]=%0d",i,arr[i]);
  end
endmodule
