//Nested structure
//Create a structure containing another structure.
module nested_structure;
  typedef struct{
    string town;
    int pincode;}address_t;
  
  typedef struct{
    string name;
    int age;
    address_t address;}person_t;
  
  person_t person;
  
  initial begin
    person.name="AJITH";
    person.age=22;
    person.address.town="Pattukkottai";
    person.address.pincode=614602;
    
    $display("Name=%s",person.name);
    $display("age=%0d",person.age);
    $display("town=%s",person.address.town);
    $display("pincode=%0d",person.address.pincode);
  end
endmodule
