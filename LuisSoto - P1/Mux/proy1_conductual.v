`include "clkgen.v"
`include "mux.v"

module proy1_conductual (
	output 	[7:0]				data_out_c,
	output 						valid_out_c,
	input	[7:0]				data_in_0_c,
	input	[7:0]				data_in_1_c,
	output 						valid_in_0_c,
	output 						valid_in_1_c,
	input 						reset,
	input 						clk,
	output						clkf,
	output 						clk2f,
	output 						clk4f);
	
	clkgen generador_de_relojes(clk, clkf, clk2f, clk4f);

	mux mux_(
		data_out_c, 
		valid_out_c, 
		data_in_0_c, 
		data_in_1_c, 
		valid_in_0_c, 
		valid_in_1_c, 
		clk2f);

endmodule
