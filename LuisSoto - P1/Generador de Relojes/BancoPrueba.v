`timescale 	1ns				/ 100ps
//escala de tiempo

//includes de archivos
`include "proy1_conductual.v"
//`include "proy1_synth.v"
`include "probador.v"
 
module BancoPruebas; // Testbench

	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire		clk;			// From probador_ of probador.v
	wire		clk2f;			// From p_cond of proy1_conductual.v
	wire		clk4f;			// From p_cond of proy1_conductual.v
	wire		clkf;			// From p_cond of proy1_conductual.v
	// End of automatics

	// Descripción conductual de demux
	proy1_conductual	p_cond(/*AUTOINST*/
				       // Outputs
				       .clkf		(clkf),
				       .clk2f		(clk2f),
				       .clk4f		(clk4f),
				       // Inputs
				       .clk		(clk));

	// Descripción sintetizada de demux
	//proy1_synth		p_synth(/*AUTOINST*/);

	// Probador: generador de señales y monitor
	probador probador_(/*AUTOINST*/
			   // Outputs
			   .clk			(clk),
			   // Inputs
			   .clkf		(clkf),
			   .clk2f		(clk2f),
			   .clk4f		(clk4f));
	
endmodule
