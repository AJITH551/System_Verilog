//Write a function that takes two integers and returns their sum.

class test;
  function int add(input int a,input int b);
    return a+b;
    endfunction 
  
endclass
module ak;
initial begin
  test T=new();
  int result;
  result=T.add(23,74);
  $display("the resilt=%0d",result);
end
endmodule
