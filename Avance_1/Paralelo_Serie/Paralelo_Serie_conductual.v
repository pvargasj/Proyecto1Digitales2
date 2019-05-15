`include "CMOS_cells.v" 

module Paralelo_Serie_conductual(input  clk_8f,
                                 input  clk_f,
                                 input  [7:0] data_in,
                                 input  valid_in,
                                 input  reset,
                                 output reg [7:0] data2send_c,
                                 output reg  data_out_c);
    reg [2:0] j;
    wire [7:0] data_in;
    wire valid_in, clk_8f, clk_f;


    always @(*)begin
        if(!reset) begin
            data_out_c = 0;
        end
        else
        data_out_c = data2send_c[j];
   end

   always @(posedge clk_8f) begin
        if (reset) begin
            j <= j-1;
        end
        else
        j <=3'b111;
   end

    always @(*) begin
        if(valid_in) begin
            data2send_c = data_in;
        end
        else begin
            data2send_c = 16'hbc;
        end

    end
    
endmodule