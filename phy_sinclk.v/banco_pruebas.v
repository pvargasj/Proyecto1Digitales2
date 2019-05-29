`timescale 	1ns				/ 100ps


`include "phy_cond.v"
//`include "phy_estr.v" 	   
`include "probador.v"
 	   
module banco_pruebas; 
 	   
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			clk_2f;			// From probador_inst of probador.v
wire			clk_8f;			// From probador_inst of probador.v
wire			clk_f;			// From probador_inst of probador.v
wire [7:0]		data_in_0_c;		// From probador_inst of probador.v
wire [7:0]		data_in_1_c;		// From probador_inst of probador.v
wire [7:0]		data_out_c_0;		// From phy_cond_instance of phy_cond.v, ...
wire [7:0]		data_out_c_1;		// From phy_cond_instance of phy_cond.v, ...
wire			reset;			// From probador_inst of probador.v
wire			valid_in_0_c;		// From probador_inst of probador.v
wire			valid_in_1_c;		// From probador_inst of probador.v
wire			valid_out_c_0;		// From phy_cond_instance of phy_cond.v, ...
wire			valid_out_c_1;		// From phy_cond_instance of phy_cond.v, ...
// End of automatics
 	   
phy_cond  phy_cond_instance( /*AUTOINST*/
			    // Outputs
			    .data_out_c_0	(data_out_c_0[7:0]),
			    .data_out_c_1	(data_out_c_1[7:0]),
			    .valid_out_c_0	(valid_out_c_0),
			    .valid_out_c_1	(valid_out_c_1),
			    // Inputs
			    .data_in_0_c	(data_in_0_c[7:0]),
			    .data_in_1_c	(data_in_1_c[7:0]),
			    .valid_in_0_c	(valid_in_0_c),
			    .valid_in_1_c	(valid_in_1_c),
			    .clk_f		(clk_f),
			    .clk_2f		(clk_2f),
			    .clk_8f		(clk_8f),
			    .reset		(reset));
 	   
//phy_estr  phy_estr_instance( /*AUTOINST*/);
 	   
probador  probador_inst( /*AUTOINST*/
			// Outputs
			.data_in_0_c	(data_in_0_c[7:0]),
			.data_in_1_c	(data_in_1_c[7:0]),
			.valid_in_0_c	(valid_in_0_c),
			.valid_in_1_c	(valid_in_1_c),
			.clk_f		(clk_f),
			.clk_2f		(clk_2f),
			.clk_8f		(clk_8f),
			.reset		(reset),
			.data_out_c_0	(data_out_c_0[7:0]),
			.data_out_c_1	(data_out_c_1[7:0]),
			.valid_out_c_0	(valid_out_c_0),
			.valid_out_c_1	(valid_out_c_1));
 	   
endmodule
