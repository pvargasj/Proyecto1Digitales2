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
	wire [2:0]	clks;			// From p_cond of proy1_conductual.v
	wire [7:0]	data_in_0_c;		// From probador_ of probador.v
	wire [7:0]	data_in_1_c;		// From probador_ of probador.v
	wire [7:0]	data_out_c;		// From p_cond of proy1_conductual.v
	wire		reset;			// From probador_ of probador.v
	wire		valid_in_0_c;		// From p_cond of proy1_conductual.v, ...
	wire		valid_in_1_c;		// From p_cond of proy1_conductual.v, ...
	wire		valid_out_c;		// From p_cond of proy1_conductual.v
	// End of automatics


	// Descripción conductual de demux
	proy1_conductual	p_cond(/*AUTOINST*/
				       // Outputs
				       .data_out_c	(data_out_c[7:0]),
				       .valid_out_c	(valid_out_c),
				       .clks		(clks[2:0]),
				       .valid_in_0_c	(valid_in_0_c),
				       .valid_in_1_c	(valid_in_1_c),
				       .clkf		(clkf),
				       .clk2f		(clk2f),
				       .clk4f		(clk4f),
				       // Inputs
				       .data_in_0_c	(data_in_0_c[7:0]),
				       .data_in_1_c	(data_in_1_c[7:0]),
				       .reset		(reset),
				       .clk		(clk));

	// Descripción sintetizada de demux
	//proy1_synth		p_synth(/*AUTOINST*/);

	// Probador: generador de señales y monitor
	probador probador_(/*AUTOINST*/
			   // Outputs
			   .data_in_0_c		(data_in_0_c[7:0]),
			   .data_in_1_c		(data_in_1_c[7:0]),
			   .valid_in_0_c	(valid_in_0_c),
			   .valid_in_1_c	(valid_in_1_c),
			   .clk			(clk),
			   .reset		(reset),
			   // Inputs
			   .clkf		(clkf),
			   .clk2f		(clk2f),
			   .clk4f		(clk4f),
			   .data_out_c		(data_out_c[7:0]),
			   .valid_out_c		(valid_out_c));
	
endmodule
