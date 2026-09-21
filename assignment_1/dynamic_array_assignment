module dynamic_array_tb;
int d1[];
int d[];
initial begin
d = new[6];
d = '{9, 1, 8, 3, 4, 4};
d1 = new[6];
foreach (d1[i])
d1[i] = i;
$display("d1 = %p", d1);
$display("Size of d1 = %0d", d1.size());
d1.delete();
$display("After delete, d1 size = %0d", d1.size());
$display("\nOriginal d = %p", d);
d.reverse();
$display("After reverse = %p", d);
d.sort();
$display("After sort = %p", d);
d.rsort();
$display("After reverse sort = %p", d);
d.shuffle();
$display("After shuffle = %p", d);

  end

endmodule
