module clkgen (
    input                   clk,        //En este caso clk es 8f, clks[0] es 4f, 
    output reg              clkf,
    output reg              clk2f,
    output reg              clk4f);      //clks[1] es 2f y clks[2] es f.

initial clkf <= 'b0;
initial clk2f <= 'b0;
initial clk4f <= 'b0;

/*always @(posedge clk) begin
    {clkf, clk2f, clk4f} <= {clkf, clk2f, clk4f} + 1;
end*/

always @(posedge clk) begin
    clk4f <= ~clk4f;
end

always @(posedge clk4f) begin
    clk2f <= ~clk2f;
end

always @(posedge clk2f) begin
    clkf <= ~clkf;
end

endmodule
