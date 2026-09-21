module queue_tb;
  int j;
  int q[$];
  initial begin
  
    j=1;
    q = '{0, 2, 5};
    $display("Initial q = %p", q);
    
    q.insert(1, j);
    $display("After insert(1, j) = %p", q);
    
    q.delete(1);
    $display("After delete(1) = %p",q);
    
    q.push_front(7);
    $display("After push_front(7) = %p", q);

    q.push_back(9);
    $display("After push_back(9) = %p", q);

    j = q.pop_back();
    $display("Popped from back = %0d", j);
    $display("Queue after pop_back = %p", q);

    j = q.pop_front();
    $display("Popped from front = %0d", j);
    $display("Queue after pop_front = %p", q);
    
    q.reverse();
    $display("After reverse = %p", q);

    q.sort();
    $display("After sort = %p", q);

    
    q.rsort();
    $display("After reverse sort = %p", q);

   
    q.shuffle();
    $display("After shuffle = %p", q);

  end

endmodule
