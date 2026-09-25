module array;
  bit [7:0]array1[0:3][0:3];
  initial begin
    for(int i=0;i<4;i++)begin
      for(int j=0;j<4;j++)begin
        array1[i][j]=(i+j)+1;
      end
    end
     for(int i=0;i<4;i++)begin
      for(int j=0;j<4;j++)begin
        $display("data[%0d][%0d]=%0d",i,j,array1[i][j]);
      end
    end
  end
    endmodule
