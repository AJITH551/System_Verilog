//Create two structure variables and copy one structure into another.

module structure_assignment;
  typedef struct{
    string name;
    int id;
    int marks;}student_detail;
  
  student_detail student1,student2;
  
  initial begin
    student1.name="Ajith";
    student1.id=07;
    student1.marks=450;
    
    student2=student1;
    
    $display("student2 name=%s",student2.name);
    $display("student2 id=%0d",student2.id);
    $display("student2 id=%0d",student2.marks);
  end
endmodule
