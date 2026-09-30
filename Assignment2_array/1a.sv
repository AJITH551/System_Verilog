/*1. Code for queue build-in methods size, insert (n/2 position, n position, n-1 p delete, pop_front,
pop_back, push_front and push_back.*/


class test;

  int q[$];

  function void display();
    $display("Queue = %p", q);
    $display("Size  = %0d", q.size());
  endfunction

  function void run();
    
    // Initial queue
    q = '{10, 20, 30, 40, 50};
    $display("\nInitial queue:");
    display();

    // 1. size()
    $display("\nSize = %0d", q.size());

    // 2. insert() at n/2 position
    // n = 5, n/2 = 2
    q.insert(q.size()/2, 99);
    $display("\nAfter insert at n/2:");
    display();

    // 3. insert() at n position
    // Insert at last position
    q.insert(q.size(), 100);
    $display("\nAfter insert at n position:");
    display();

    // 4. delete element at n-1 position
    // n-1 means last index
    q.delete(q.size()-1);
    $display("\nAfter delete at n-1 position:");
    display();

    // 5. pop_front()
    q.pop_front();
    $display("\nAfter pop_front:");
    display();

    // 6. pop_back()
    q.pop_back();
    $display("\nAfter pop_back:");
    display();

    // 7. push_front()
    q.push_front(5);
    $display("\nAfter push_front:");
    display();

    // 8. push_back()
    q.push_back(60);
    $display("\nAfter push_back:");
    display();

  endfunction

endclass


module tb;

  test t;

  initial begin
    t = new();
    t.run();
  end

endmodule
