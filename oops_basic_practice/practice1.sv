//Create a class student with name and age. Create an object and display the values.

class student;//create the class and initiate the values next display
  string name;
  int age;
  
  function void display();
    $display("name=%s",name);
    $display("age=%0d",age);
  endfunction
endclass

module tb;//next create the module , module the input initiate 
  student s;
  initial begin 
    s=new();//create the object so create the new();
    s.name="Ajith";
    s.age=26;
    s.display();
  end 
endmodule
