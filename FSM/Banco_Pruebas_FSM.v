`timescale 	1ns				/ 100ps

`include "ProbadorFSM.v"
`include "FSM.v"

module Banco_Pruebas_FMS;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [4:0]		FIFO_EMPTY;		// From probador of ProbadorFSM.v
wire [4:0]		FIFO_ERROR;		// From probador of ProbadorFSM.v
wire [7:0]		UD;			// From probador of ProbadorFSM.v
wire [7:0]		UD_OUT;			// From maquina_estados of FSM.v
wire [7:0]		UMF;			// From probador of ProbadorFSM.v
wire [7:0]		UMF_OUT;		// From maquina_estados of FSM.v
wire [7:0]		UVC;			// From probador of ProbadorFSM.v
wire [7:0]		UVC_OUT;		// From maquina_estados of FSM.v
wire			active_out;		// From maquina_estados of FSM.v
wire			clk;			// From probador of ProbadorFSM.v
wire			error_out;		// From maquina_estados of FSM.v
wire			idle_out;		// From maquina_estados of FSM.v
wire			init;			// From probador of ProbadorFSM.v
wire			reset;			// From probador of ProbadorFSM.v
// End of automatics

    ProbadorFSM probador (/*AUTOINST*/
			  // Outputs
			  .clk			(clk),
			  .reset		(reset),
			  .init			(init),
			  .UMF			(UMF[7:0]),
			  .UVC			(UVC[7:0]),
			  .UD			(UD[7:0]),
			  .FIFO_ERROR		(FIFO_ERROR[4:0]),
			  .FIFO_EMPTY		(FIFO_EMPTY[4:0]));

    FSM    maquina_estados (/*AUTOINST*/
			    // Outputs
			    .error_out		(error_out),
			    .active_out		(active_out),
			    .idle_out		(idle_out),
			    .UMF_OUT		(UMF_OUT[7:0]),
			    .UVC_OUT		(UVC_OUT[7:0]),
			    .UD_OUT		(UD_OUT[7:0]),
			    // Inputs
			    .clk		(clk),
			    .reset		(reset),
			    .init		(init),
			    .UMF		(UMF[7:0]),
			    .UVC		(UVC[7:0]),
			    .UD			(UD[7:0]),
			    .FIFO_ERROR		(FIFO_ERROR[4:0]),
			    .FIFO_EMPTY		(FIFO_EMPTY[4:0]));
                                   
endmodule
