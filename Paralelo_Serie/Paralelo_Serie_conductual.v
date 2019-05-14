module Paralelo_Serie_conductual(input clk_8f,
                      input clk_f,
                      input [7:0] data_in,
                      input valid_in,
                      output reg [7:0] data2send_c,
                      output reg data_out_c);
    reg [2:0] j = 0;

    always @(*)begin
        data_out_c = data2send_c[j];
   end

   always @(posedge clk_8f) begin
        j-=1;
   end

    always @(posedge clk_f) begin
        if(valid_in) begin
            data2send_c <= data_in;
        end
        else begin
            data2send_c <= 16'hbc;
        end

    end
    
endmodule