`include "clkgen.v"

module proy1_conductual (		
	input 						clk,
	output						clkf,
	output 						clk2f,
	output 						clk4f);
	
	clkgen generador_de_relojes(clk, clkf, clk2f, clk4f);

endmodule
