`timescale 	1ns				/ 100ps
//escala de tiempo

//includes de archivos
`include "proy1_conductual.v"
//`include "proy1_synth.v"
`include "probador.v"
 
module BancoPruebas; // Testbench

	/*AUTOWIRE*/


	// Descripción conductual de demux
	proy1_conductual	p_cond(/*AUTOINST*/);

	// Descripción sintetizada de demux
	//proy1_synth		p_synth(/*AUTOINST*/);

	// Probador: generador de señales y monitor
	probador probador_(/*AUTOINST*/);
	
endmodule
