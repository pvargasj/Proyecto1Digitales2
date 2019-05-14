`include "clkgen.v"

module proy1_conductual (		
	input 						clkf,
	output						clk2f,
	output 						clk4f,
	output 						clk8f,
	input 						reset);
	
	clkgen generador_de_relojes(clkf, clk2f, clk4f, clk8f, reset);

endmodule
