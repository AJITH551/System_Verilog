module associative;
longint assoc[longint];
longint idx;
  initial begin
    idx=1;
    repeat(64)begin
      assoc[idx]=idx;
      idx=idx<<1;
    end
    assoc.first(idx);
    $display("first[%0d]",idx,assoc[idx]);
    assoc.next(idx);
    $display("next[%0d]",idx,assoc[idx]);
    assoc.last(idx);
    $display("last[%0d]",idx,assoc[idx]);
    assoc.prev(idx);
    $display("prev[%0d]",idx,assoc[idx]);
  end 
endmodule
