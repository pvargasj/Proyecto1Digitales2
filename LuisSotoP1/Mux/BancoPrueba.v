`timescale 	1ns				/ 100ps
//escala de tiempo

//includes de archivos
`include "proy1_conductual.v"
`include "proy1_synth.v"
`include "probador.v"
 
module BancoPruebas; // Testbench

	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire		clk2f_c;		// From p_cond of proy1_conductual.v
	wire		clk2f_s;		// From p_synth of proy1_synth.v
	wire		clk4f_c;		// From p_cond of proy1_conductual.v
	wire		clk4f_s;		// From p_synth of proy1_synth.v
	wire		clk8f;			// From probador_ of probador.v
	wire		clkf_c;			// From p_cond of proy1_conductual.v
	wire		clkf_s;			// From p_synth of proy1_synth.v
	wire [7:0]	data_in_0;		// From probador_ of probador.v
	wire [7:0]	data_in_1;		// From probador_ of probador.v
	wire [7:0]	data_out_c;		// From p_cond of proy1_conductual.v
	wire [7:0]	data_out_s;		// From p_synth of proy1_synth.v
	wire		reset;			// From probador_ of probador.v
	wire		valid_in_0;		// From p_cond of proy1_conductual.v, ...
	wire		valid_in_1;		// From p_cond of proy1_conductual.v, ...
	wire		valid_out_c;		// From p_cond of proy1_conductual.v
	wire		valid_out_s;		// From p_synth of proy1_synth.v
	// End of automatics


	// Descripción conductual de demux
	proy1_conductual	p_cond(/*AUTOINST*/
				       // Outputs
				       .data_out_c	(data_out_c[7:0]),
				       .valid_out_c	(valid_out_c),
				       .valid_in_0	(valid_in_0),
				       .valid_in_1	(valid_in_1),
				       .clkf_c		(clkf_c),
				       .clk2f_c		(clk2f_c),
				       .clk4f_c		(clk4f_c),
				       // Inputs
				       .data_in_0	(data_in_0[7:0]),
				       .data_in_1	(data_in_1[7:0]),
				       .reset		(reset),
				       .clk8f		(clk8f));

	// Descripción sintetizada de demux
	proy1_synth		p_synth(/*AUTOINST*/
					// Outputs
					.clk2f_s	(clk2f_s),
					.clk4f_s	(clk4f_s),
					.clkf_s		(clkf_s),
					.data_out_s	(data_out_s[7:0]),
					.valid_in_0	(valid_in_0),
					.valid_in_1	(valid_in_1),
					.valid_out_s	(valid_out_s),
					// Inputs
					.clk8f		(clk8f),
					.data_in_0	(data_in_0[7:0]),
					.data_in_1	(data_in_1[7:0]),
					.reset		(reset));

	// Probador: generador de señales y monitor
	probador probador_(/*AUTOINST*/
			   // Outputs
			   .data_in_0		(data_in_0[7:0]),
			   .valid_in_0		(valid_in_0),
			   .data_in_1		(data_in_1[7:0]),
			   .valid_in_1		(valid_in_1),
			   .reset		(reset),
			   .clk8f		(clk8f),
			   // Inputs
			   .data_out_c		(data_out_c[7:0]),
			   .valid_out_c		(valid_out_c),
			   .data_out_s		(data_out_s[7:0]),
			   .valid_out_s		(valid_out_s),
			   .clk4f_c		(clk4f_c),
			   .clk2f_c		(clk2f_c),
			   .clkf_c		(clkf_c),
			   .clk4f_s		(clk4f_s),
			   .clk2f_s		(clk2f_s),
			   .clkf_s		(clkf_s));
	
endmodule
