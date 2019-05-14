module mux(
    output reg [7:0]        data_out_c,
    output reg              valid_out_c,
    input   [7:0]           data_in_0_c,
    input   [7:0]           data_in_1_c,
    input                   valid_in_0_c,
    input                   valid_in_1_c,
    input                   clk);

    reg  [4:0]          st, nxt_st;

    parameter INICIAL = 1;      //Esperando datos 
    parameter TRANS_0 = 2;      //Transmitiendo datos_in_0
    parameter TRANS_1 = 4;      //Transmitiendo datos_in_1
    parameter W_LST_DATA1 = 8;    //Esperando datos, último transmitido fue data_in_1
    parameter W_LST_DATA0 = 16;    //Esperando datos, último transmitido fue data_in_0

    always @(posedge clk) begin
        st <= nxt_st;
    end

    always @(*) begin

        data_out_c = 0;
        valid_out_c = 0;
        nxt_st = st;

        case(st) 

            INICIAL: begin
                if (valid_in_0_c == 1 && valid_in_1_c == 0) begin
                    data_out_c = data_in_0_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_0;
                end    
                else if (valid_in_0_c == 0 && valid_in_1_c == 1) begin
                    data_out_c = data_in_1_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_1;
                end 
                else if (valid_in_0_c == 1 && valid_in_1_c == 1) begin
                    data_out_c = data_in_0_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_0;
                end
            end

            TRANS_0: begin
                if (valid_in_0_c == 0) begin
                    nxt_st = W_LST_DATA0;
                end 
                else begin
                    data_out_c = data_in_0_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_0;
                end
            end

            TRANS_1: begin
                if (valid_in_1_c == 0) begin
                    nxt_st = W_LST_DATA1;
                end 
                else begin
                    data_out_c = data_in_1_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_1;
                end                
            end

            W_LST_DATA0: begin
                if (valid_in_0_c == 1 && valid_in_1_c == 0) begin
                    data_out_c = data_in_0_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_0;
                end 
                else if (valid_in_0_c == 0 && valid_in_1_c == 1) begin
                    data_out_c = data_in_1_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_1;
                end
                else if (valid_in_0_c == 1 && valid_in_1_c == 1) begin
                    data_out_c = data_in_1_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_1;
                end 
            end

            W_LST_DATA1: begin
                if (valid_in_0_c == 1 && valid_in_1_c == 0) begin
                    data_out_c = data_in_0_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_0;
                end 
                else if (valid_in_0_c == 0 && valid_in_1_c == 1) begin
                    data_out_c = data_in_1_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_1;
                end
                else if (valid_in_0_c == 1 && valid_in_1_c == 1) begin
                    data_out_c = data_in_0_c;
                    valid_out_c = 1;
                    nxt_st = TRANS_0;
                end 
            end
        endcase
    end

endmodule
