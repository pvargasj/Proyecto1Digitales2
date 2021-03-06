`timescale 	1ns				/ 100ps

`include "TRANSLAYER_c.v" 	   
`include "TRANSLAYER_e.v" 	   
`include "probador.v"
 	   
module banco_pruebas; 

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [7:0]		UD;			// From probador_b of probador.v
wire [7:0]		UMF;			// From probador_b of probador.v
wire [7:0]		UVC;			// From probador_b of probador.v
wire			active_out_c;		// From translayer_cond of TRANSLAYER_c.v
wire			active_out_e;		// From translayer_estr of TRANSLAYER_e.v
wire			clk;			// From probador_b of probador.v
wire [5:0]		data_in;		// From probador_b of probador.v
wire [5:0]		data_out_0_c;		// From translayer_cond of TRANSLAYER_c.v
wire [5:0]		data_out_0_e;		// From translayer_estr of TRANSLAYER_e.v
wire [5:0]		data_out_1_c;		// From translayer_cond of TRANSLAYER_c.v
wire [5:0]		data_out_1_e;		// From translayer_estr of TRANSLAYER_e.v
wire			error_out_c;		// From translayer_cond of TRANSLAYER_c.v
wire			error_out_e;		// From translayer_estr of TRANSLAYER_e.v
wire			idle_out_c;		// From translayer_cond of TRANSLAYER_c.v
wire			idle_out_e;		// From translayer_estr of TRANSLAYER_e.v
wire			init;			// From probador_b of probador.v
wire			pop_d0;			// From probador_b of probador.v
wire			pop_d1;			// From probador_b of probador.v
wire			push_main;		// From probador_b of probador.v
wire			reset;			// From probador_b of probador.v
wire			valid_out_0_c;		// From translayer_cond of TRANSLAYER_c.v
wire			valid_out_0_e;		// From translayer_estr of TRANSLAYER_e.v
wire			valid_out_1_c;		// From translayer_cond of TRANSLAYER_c.v
wire			valid_out_1_e;		// From translayer_estr of TRANSLAYER_e.v
// End of automatics
 	   
TRANSLAYER_c translayer_cond(/*AUTOINST*/
			     // Outputs
			     .error_out_c	(error_out_c),
			     .active_out_c	(active_out_c),
			     .idle_out_c	(idle_out_c),
			     .data_out_0_c	(data_out_0_c[5:0]),
			     .data_out_1_c	(data_out_1_c[5:0]),
			     .valid_out_0_c	(valid_out_0_c),
			     .valid_out_1_c	(valid_out_1_c),
			     // Inputs
			     .clk		(clk),
			     .reset		(reset),
			     .init		(init),
			     .UMF		(UMF[7:0]),
			     .UVC		(UVC[7:0]),
			     .UD		(UD[7:0]),
			     .data_in		(data_in[5:0]),
			     .push_main		(push_main),
			     .pop_d0		(pop_d0),
			     .pop_d1		(pop_d1)); 

TRANSLAYER_e translayer_estr(/*AUTOINST*/
			     // Outputs
			     .active_out_e	(active_out_e),
			     .data_out_0_e	(data_out_0_e[5:0]),
			     .data_out_1_e	(data_out_1_e[5:0]),
			     .error_out_e	(error_out_e),
			     .idle_out_e	(idle_out_e),
			     .valid_out_0_e	(valid_out_0_e),
			     .valid_out_1_e	(valid_out_1_e),
			     // Inputs
			     .UD		(UD[7:0]),
			     .UMF		(UMF[7:0]),
			     .UVC		(UVC[7:0]),
			     .clk		(clk),
			     .data_in		(data_in[5:0]),
			     .init		(init),
			     .pop_d0		(pop_d0),
			     .pop_d1		(pop_d1),
			     .push_main		(push_main),
			     .reset		(reset));

probador probador_b(/*AUTOINST*/
		    // Outputs
		    .clk		(clk),
		    .reset		(reset),
		    .init		(init),
		    .data_in		(data_in[5:0]),
		    .UMF		(UMF[7:0]),
		    .UVC		(UVC[7:0]),
		    .UD			(UD[7:0]),
		    .push_main		(push_main),
		    .pop_d0		(pop_d0),
		    .pop_d1		(pop_d1),
		    // Inputs
		    .error_out_c	(error_out_c),
		    .active_out_c	(active_out_c),
		    .idle_out_c		(idle_out_c),
		    .data_out_0_c	(data_out_0_c[5:0]),
		    .data_out_1_c	(data_out_1_c[5:0]),
		    .valid_out_0_c	(valid_out_0_c),
		    .valid_out_1_c	(valid_out_1_c),
		    .error_out_e	(error_out_e),
		    .active_out_e	(active_out_e),
		    .idle_out_e		(idle_out_e),
		    .data_out_0_e	(data_out_0_e[5:0]),
		    .data_out_1_e	(data_out_1_e[5:0]),
		    .valid_out_0_e	(valid_out_0_e),
		    .valid_out_1_e	(valid_out_1_e));


endmodule
