module clkgen (
    input                   clk,        //En este caso clk es 8f, clks[0] es 4f, 
    output reg [2:0]        clks);      //clks[1] es 2f y clks[2] es f.

initial clks <= 0;

always @(posedge clk) begin
    clks <= clks + 1;
end

endmodule
