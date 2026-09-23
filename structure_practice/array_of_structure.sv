module array;
  typedef struct{
    string name;
    int roll_no;
    real cgp;}student_detail;
  
  student_detail student[3];
  initial begin
    student[0]='{"Ajith",551,8.03};
    student[1]='{"Akash",552,8.7};
    student[2]='{"Anish",560,9.5};
    
    foreach (student[i])begin
  
      $display("Name=%s,roll_no=%0d,cgp=%0g",student[i].name,student[i].roll_no,student[i].cgp);
  end
  end
  
endmodule
