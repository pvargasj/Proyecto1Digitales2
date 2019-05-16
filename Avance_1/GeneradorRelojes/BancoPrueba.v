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
	wire		reset;			// From probador_ of probador.v
	// End of automatics

	// Descripción conductual de demux
	proy1_conductual	p_cond(/*AUTOINST*/
				       // Outputs
				       .clk2f_c		(clk2f_c),
				       .clk4f_c		(clk4f_c),
				       .clkf_c		(clkf_c),
				       // Inputs
				       .clk8f		(clk8f),
				       .reset		(reset));

	// Descripción sintetizada de demux
	proy1_synth		p_synth(/*AUTOINST*/
					// Outputs
					.clk2f_s	(clk2f_s),
					.clk4f_s	(clk4f_s),
					.clkf_s		(clkf_s),
					// Inputs
					.clk8f		(clk8f),
					.reset		(reset));

	// Probador: generador de señales y monitor
	probador probador_(/*AUTOINST*/
			   // Outputs
			   .clk8f		(clk8f),
			   .reset		(reset),
			   // Inputs
			   .clkf_C		(clkf_C),
			   .clk2f_c		(clk2f_c),
			   .clk4f_c		(clk4f_c),
			   .clkf_s		(clkf_s),
			   .clk2f_s		(clk2f_s),
			   .clk4f_s		(clk4f_s));
	
endmodule
