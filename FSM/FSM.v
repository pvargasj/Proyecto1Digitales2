`include "CMOS_cells.v"
module FSM (input clk,
            input reset,
            input init, 
            input [7:0] UMF,     // [3:0] UMBRAL BAJO, [7:4] UMBRAL ALTO
            input [7:0] UVC, 
            input [7:0] UD, 
            input [4:0] FIFO_ERROR,
            input [4:0] FIFO_EMPTY,
            output reg error_out,
            output reg active_out,
            output reg idle_out,
            output reg [7:0] UMF_OUT,  
            output reg [7:0] UVC_OUT, 
            output reg [7:0] UD_OUT);

//--SEÑALES INTERNAS:
    reg [4:0] estado;
    reg [4:0] estado_proximo;
    wire [7:0] UMF, UVC, UD;


//--PARAMETROS:



//--ESTADOS:
    parameter [4:0] RESET =  5'b00001, 
                    INIT =   5'b00010, 
                    IDLE =   5'b00100, 
                    ACTIVE = 5'b01000, 
                    ERROR =  5'b10000;

//--LOGICA DE ESTADOS:

    always @(posedge clk) begin
        if (!reset) begin
            estado <= RESET;
        end
        else begin
            estado <= estado_proximo;    
        end

        if (estado == INIT) begin
            UMF_OUT <= UMF;
            UVC_OUT <= UVC;
            UD_OUT  <= UD;
        end
    end


//--LOGICA DE PROXIMO ESTADO:

    always @ (*) begin
        estado_proximo = estado;
        idle_out = 0;
        error_out = 0;
        active_out = 0;
        case (estado)
                
            RESET: begin
                if (init) begin 
                    estado_proximo = INIT;
                end    
            end
            
            INIT: begin
                    estado_proximo = IDLE;    
            end         


            IDLE: begin
                
                idle_out = 1;

                if (FIFO_EMPTY != 0) begin
                    estado_proximo = ACTIVE;
                end    

            end

            ACTIVE: begin
                active_out = 1;
                        
                if (FIFO_ERROR != 0) begin
                    estado_proximo = ERROR;
                end    
        
                else if(init) begin
                    estado_proximo = INIT;
                end
            end

            ERROR: begin
                error_out = 1;
                if (!reset) begin
                    estado_proximo = RESET;
                end    
            end
        
        endcase
        
    end

endmodule 
