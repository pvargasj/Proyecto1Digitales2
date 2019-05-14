`timescale 	1ns				/ 100ps
//escala de tiempo

//includes de archivos
`include "proy1_conductual.v"
//`include "proy1_synth.v"
`include "probador.v"
 
module BancoPruebas; // Testbench

	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire		clk2f;			// From p_cond of proy1_conductual.v
	wire		clk4f;			// From p_cond of proy1_conductual.v
	wire		clk8f;			// From p_cond of proy1_conductual.v, ...
	wire		reset;			// From probador_ of probador.v
	// End of automatics

	// Descripción conductual de demux
	proy1_conductual	p_cond(/*AUTOINST*/
				       // Outputs
				       .clk2f		(clk2f),
				       .clk4f		(clk4f),
				       .clk8f		(clk8f),
				       // Inputs
				       .clkf		(clkf),
				       .reset		(reset));

	// Descripción sintetizada de demux
	//proy1_synth		p_synth(/*AUTOINST*/);

	// Probador: generador de señales y monitor
	probador probador_(/*AUTOINST*/
			   // Outputs
			   .clk8f		(clk8f),
			   .reset		(reset),
			   // Inputs
			   .clkf		(clkf),
			   .clk2f		(clk2f),
			   .clk4f		(clk4f));
	
endmodule
