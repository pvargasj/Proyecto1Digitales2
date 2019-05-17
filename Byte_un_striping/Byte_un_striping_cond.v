module Byte_un_striping_cond(
    input clk_f,
    input clk_2f,
    input [7:0] lane_0,
    input [7:0] lane_1,
    input valid_0,
    input valid_1,
    input reset,
    output reg [7:0] data_out_c,
    output reg valid_out_c
);
//reg reset_mid, reset2;
reg control;    

always @(posedge clk_2f) begin
    if (reset == 0) begin
        control <= 1;
    end
    if (reset == 1) begin
        if (valid_0 || valid_1) begin           
            control <= ~control;
        end
        else  begin //valid_0 y valid_1 son 0
            control <= 0;
        end        
    end
end

always @(*) begin
    data_out_c = 'b0;
    valid_out_c = 'b0;
    if (reset == 1) begin
        valid_out_c = valid_0;
        if (!valid_0) begin
            data_out_c = 0;
        end
        else    begin
            case (control)
                'b0: data_out_c = lane_0;
                'b1: data_out_c = lane_1; 
            endcase            
        end
    end
end

endmodule