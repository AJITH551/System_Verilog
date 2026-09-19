
module packed_array_example;
    logic [3:0][7:0] data;
    initial begin
        data[0] = 8'h11;
        data[1] = 8'h22;
        data[2] = 8'h33;
        data[3] = 8'h44;

        $display("data[0] = %h", data[0]);
        $display("data[1] = %h", data[1]);
        $display("data[2] = %h", data[2]);
        $display("data[3] = %h", data[3]);
    end

endmodule

