`include "clkgen.v"

module proy1_conductual (
	input 						clk,
	output [2:0]				clks);
	
	clkgen generador_de_relojes(clk, clks);

endmodule
