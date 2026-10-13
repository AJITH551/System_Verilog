/*Question 5: Explain inheritance.
Answer: Inheritance allows a child class to reuse the properties and methods of a parent class.*/

class parent;
  int a = 10;

  function void display();
    $display("a = %0d", a);
  endfunction
endclass

class child extends parent;
  int b = 20;
endclass

module tb;
  child c1;

  initial begin
    c1 = new();
    c1.display();
    $display("b = %0d", c1.b);
  end
endmodule
