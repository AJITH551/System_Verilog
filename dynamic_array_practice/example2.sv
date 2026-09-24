//How do you initialize a dynamic array?
module dynamic;
int arr[];
initial begin
  arr=new[5];
  arr='{10,20,30,40,50};
  foreach (arr[i])
  //for (int i=0;i<=4;i++)begin
  $display("%0d", arr[i]);
//end
end
endmodule
