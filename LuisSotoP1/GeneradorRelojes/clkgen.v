module clkgen (  
    output reg              clkf,       //Cuatro señales de reloj, la fundamental es 8f Hz
    output reg              clk2f,      //clk4f tiene una frecuencia de 4f Hz,
    output reg              clk4f,      //clk2f de 2f Hz y clkf de f Hz
    input                   clk8f,
    input                   reset);      

/*always @(posedge clk) begin
    {clkf, clk2f, clk4f} <= {clkf, clk2f, clk4f} + 1;
end*/

always @(posedge clk8f) begin
    if (reset == 0) begin
        clk4f <= 0;
        clk2f <= 0;
        clkf <= 0;
    end
    else begin
        clk4f <= ~clk4f;
    end
end

always @(posedge clk4f) begin
    clk2f <= ~clk2f;
end

always @(posedge clk2f) begin
    clkf <= ~clkf;
end

endmodule
