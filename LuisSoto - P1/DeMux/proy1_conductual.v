`include "clkgen.v"
`include "mux.v"
`include "demux.v"

module proy1_conductual (
	output 	[7:0]				data_out_0_c,
	output 						valid_out_0_c,
	output 	[7:0]				data_out_1_c,
	output 						valid_out_1_c,
	input	[7:0]				data_in_0_c,
	output 						valid_in_0_c,
	input	[7:0]				data_in_1_c,
	output 						valid_in_1_c,
	input 						reset,
	input 						clk8f,
	output						clkf,
	output 						clk2f,
	output 						clk4f);
	
	wire [7:0]			data_mid_c;
	wire 				valid_mid_c;


	clkgen generador_de_relojes(clkf, clk2f, clk4f, clk8f, reset);

	mux mux_(
		data_mid_c, 
		valid_mid_c, 
		data_in_0_c, 
		valid_in_0_c, 
		data_in_1_c, 
		valid_in_1_c,
		reset, 
		clk2f,
		clk8f);

	demux demux_(
		data_out_0_c,
		valid_out_0_c,
		data_out_1_c,
		valid_out_1_c,
		data_mid_c,
		valid_mid_c,
		reset,
		clk2f,
		clk8f);

endmodule
