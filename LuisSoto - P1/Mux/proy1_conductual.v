`include "clkgen.v"
`include "mux.v"

module proy1_conductual (
	output 	[7:0]				data_out_c,
	output 						valid_out_c,
	output 	[2:0]				clks,
	input	[7:0]				data_in_0_c,
	input	[7:0]				data_in_1_c,
	output 						valid_in_0_c,
	output 						valid_in_1_c,
	input 						clk);
	
	clkgen generador_de_relojes(clk, clks);

	mux mux_(data_out_c, valid_out_c, data_in_0_c, data_in_1_c, valid_in_0_c, valid_in_1_c, clks[1]);

endmodule
