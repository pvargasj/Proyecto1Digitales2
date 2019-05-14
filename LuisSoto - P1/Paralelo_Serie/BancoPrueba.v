`timescale 	1ns				/ 100ps
//escala de tiempo

//includes de archivos
`include "Paralelo_Serie_conductual.v"
`include "probador.v"
 
module BancoPruebas; // Testbench

	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire		clk_8f;			// From probador_ of probador.v
	wire		clk_f;			// From probador_ of probador.v
	wire [7:0]	data2send_c;		// From P_S_Cond of Paralelo_Serie_conductual.v
	wire [7:0]	data_in;		// From probador_ of probador.v
	wire		data_out_c;		// From P_S_Cond of Paralelo_Serie_conductual.v
	wire		valid_in;		// From probador_ of probador.v
	// End of automatics
	
	// Descripción conductual del paralelo serie.
	Paralelo_Serie_conductual	P_S_Cond(/*AUTOINST*/
						 // Outputs
						 .data2send_c		(data2send_c[7:0]),
						 .data_out_c		(data_out_c),
						 // Inputs
						 .clk_8f		(clk_8f),
						 .clk_f			(clk_f),
						 .data_in		(data_in[7:0]),
						 .valid_in		(valid_in));

	// Descripción sintetizada de demux
	//proy1_synth		p_synth(/*AUTOINST*/);

	// Probador: generador de señales y monitor
	probador probador_(/*AUTOINST*/
			   // Outputs
			   .data_in		(data_in[7:0]),
			   .valid_in		(valid_in),
			   .clk_f		(clk_f),
			   .clk_8f		(clk_8f),
			   // Inputs
			   .data_out_c		(data_out_c),
			   .data2send_c		(data2send_c[7:0]));
	
endmodule
