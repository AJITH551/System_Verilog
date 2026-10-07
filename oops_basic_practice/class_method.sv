class calculator;
  int a;
  int b;
  function int add();
    return a+b;
  endfunction
endclass


module tb;
  calculator c;
  int result;
  
  initial begin
    c=new();
    
   c.a=10;
   c.b=20;
    
    result=c.add();
    
    
    $display("a = %0d", c.a);
    $display("b = %0d", c.b);
    $display("Sum = %0d", result);
  end

endmodule
    
