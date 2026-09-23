//Structure with Different Data Types
//Question: Create a structure containing integer, bit, logic, and string members.
module structure_datatypes;

 typedef struct {
    int id;
    bit active;
   logic [2:0] data;
    string name;
  } packet_t;

  packet_t packet;

  initial begin
    packet.id     = 10;
    packet.active = 1'b1;
    packet.data   = 3'o7;
    packet.name   = "AK";

    $display("ID     = %0d", packet.id);
    $display("Active = %b", packet.active);
    $display("Data   = %b", packet.data);
    $display("Name   = %s", packet.name);
  end

endmodule
