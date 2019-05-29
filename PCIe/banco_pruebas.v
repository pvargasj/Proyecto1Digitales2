`timescale 	1ns				/ 100ps

`include "PCIe_cond.v" 	   	   
`include "probador.v"
 	   
module banco_pruebas; 
 	   
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			clk_8f;			// From probador_inst of probador.v
wire [7:0]		data_in_0_c;		// From probador_inst of probador.v
wire [7:0]		data_in_1_c;		// From probador_inst of probador.v
wire			reset;			// From probador_inst of probador.v
wire			resetCLK;		// From probador_inst of probador.v
wire			valid_in_0_c;		// From probador_inst of probador.v
wire			valid_in_1_c;		// From probador_inst of probador.v
// End of automatics
 	   
PCIe_cond  PCIe_cond_instance( /*AUTOINST*/
			      // Inputs
			      .data_in_0_c	(data_in_0_c[7:0]),
			      .data_in_1_c	(data_in_1_c[7:0]),
			      .valid_in_0_c	(valid_in_0_c),
			      .valid_in_1_c	(valid_in_1_c),
			      .clk_8f		(clk_8f),
			      .resetCLK		(resetCLK),
			      .reset		(reset));
 	   
probador  probador_inst( /*AUTOINST*/
			// Outputs
			.data_in_0_c	(data_in_0_c[7:0]),
			.data_in_1_c	(data_in_1_c[7:0]),
			.valid_in_0_c	(valid_in_0_c),
			.valid_in_1_c	(valid_in_1_c),
			.clk_8f		(clk_8f),
			.resetCLK	(resetCLK),
			.reset		(reset));
 	   
endmodule
