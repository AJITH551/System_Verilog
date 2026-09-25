module dynamic;
  int arr[][];
  int i,j;
  initial begin
    arr=new[3];
    for(i=0;i<arr.size();i++)
      arr[i]=new[3];
    for(i=0;i<arr.size();i++)begin
      for(j=0;j<arr[i].size();j++)begin
        arr[i][j]=i+j+1;
      end
    end
    
    for(i=0;i<arr.size();i++)begin
      for(j=0;j<arr[i].size();j++)begin
        $display("data[%0d][%0d]=%0d",i,j,arr[i][j]);
      end
    end
  end
endmodule
