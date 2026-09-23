/*Declare a structure containing student name, roll number, and marks. Assign values and display them.*/

module structure_example;

  typedef struct {
    string name;
    int roll_no;
    int marks;
  } student_detail;

  student_detail student;

  initial begin
    student.name = "Ajith";
    student.roll_no = 551;
    student.marks = 485;
    //$monitor("student_name=%s,roll_no=%0d,marsk=%0d",student.name,student.roll_no,student.marks);
    $display("student_name=%s", student.name);
    $display("roll_no=%0d", student.roll_no);
    $display("student_marks=%0d", student.marks);
  end

endmodule
