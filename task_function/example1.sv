class Calculator;

   function int add(input int a, input int b);
       // add= a + b;return keyword is used or variable is declared
     return a+b;
    endfunction
  
  /**task add(input int a,input int b,output int result);
    #10;
    result=a+b;
  endtask*/
  
  

    task multiply(input int a, input int b, output int result);
       #5;
        result = a * b;
    endtask

endclass


module cal;
initial begin
    Calculator c;
    int result;

    c = new();

  $display("Add = %0d", c.add(8,9));
  
 /* c.add(8,9,result);
  $display("add=%0d",result);*/

    c.multiply(4, 5, result);
    $display("Multiply = %0d", result);
end
endmodule
