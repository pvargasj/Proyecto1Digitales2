`include "demux.v" 	   
`include "Byte_un_striping_cond.v" 	
`include "Serie_Paralelo.v" 		

module phy_rx_cond(
    input data_in_c_0,
    input data_in_c_1,
    input clk_f,
    input clk_2f,
    input clk_8f,
    input reset,
	output [7:0] data_out_c_0,
	output [7:0] data_out_c_1,
    output valid_out_c_0,
    output valid_out_c_1);

/*
reg [7:0] data_in_0_FF, data_in_1_FF;
reg valid_in_0_FF, valid_in_1_FF;


wire reset0;
reg reset1; // reset atrasado para paralelo_serial1
assign reset0 = reset;  //para el template
// FLOPS INICIALES
always @(posedge clk_2f) begin
    if(reset == 0) begin
        data_in_0_FF <= 0;
        data_in_1_FF <= 0;
        valid_in_0_FF <= 0;
        valid_in_1_FF <= 0;
        reset1 <= 0;
    end
    else    begin
        data_in_0_FF <= data_in_0_c;
        data_in_1_FF <= data_in_1_c;
        valid_in_0_FF <= valid_in_0_c; 
        valid_in_1_FF <= valid_in_1_c;     
        reset1 <= reset0;  
    end
end */

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [7:0]		data_out_c_US;		// From Byte_un_striping_instance0 of Byte_un_striping_cond.v
wire [7:0]		lane_c_0;		// From Serie_Paralelo_instance0 of Serie_Paralelo.v
wire [7:0]		lane_c_1;		// From Serie_Paralelo_instance1 of Serie_Paralelo.v
wire			valid_c_0_SP;		// From Serie_Paralelo_instance0 of Serie_Paralelo.v
wire			valid_c_1_SP;		// From Serie_Paralelo_instance1 of Serie_Paralelo.v
wire			valid_out_c_US;		// From Byte_un_striping_instance0 of Byte_un_striping_cond.v
// End of automatics

/* Serie_Paralelo AUTO_TEMPLATE (
        .clk_8f          	(clk_8f),
        .clk_f           	(clk_f),
		.data_in			(data_in_c_@),
        .reset             	(reset),
		.valid_out_c		(valid_c_@_SP),
		.parallel_out_c		(lane_c_@ [7:0])); */

Serie_Paralelo  Serie_Paralelo_instance0( /*AUTOINST*/
					 // Outputs
					 .valid_out_c		(valid_c_0_SP),	 // Templated
					 .parallel_out_c	(lane_c_0 [7:0]), // Templated
					 // Inputs
					 .clk_8f		(clk_8f),	 // Templated
					 .clk_f			(clk_f),	 // Templated
					 .data_in		(data_in_c_0),	 // Templated
					 .reset			(reset));	 // Templated

Serie_Paralelo  Serie_Paralelo_instance1( /*AUTOINST*/
					 // Outputs
					 .valid_out_c		(valid_c_1_SP),	 // Templated
					 .parallel_out_c	(lane_c_1 [7:0]), // Templated
					 // Inputs
					 .clk_8f		(clk_8f),	 // Templated
					 .clk_f			(clk_f),	 // Templated
					 .data_in		(data_in_c_1),	 // Templated
					 .reset			(reset));	 // Templated

Byte_un_striping_cond  Byte_un_striping_instance0( 
					    // Outputs
					    .valid_out_c	(valid_out_c_US),
					    .data_out_c		(data_out_c_US[7:0]),
					    // Inputs
					    .lane_0			(lane_c_0[7:0]),
					    .lane_1			(lane_c_1[7:0]),
					    .valid_0		(valid_c_0_SP),
					    .valid_1		(valid_c_1_SP),
					    /*AUTOINST*/
						  // Inputs
						  .clk_f		(clk_f),
						  .clk_2f		(clk_2f),
						  .reset		(reset));

demux  demux_cond_instance0( 
		   // Outputs
		   .data_out_0_c		(data_out_c_0[7:0]),
		   .data_out_1_c		(data_out_c_1[7:0]),
		   .valid_out_0_c		(valid_out_c_0),
		   .valid_out_1_c		(valid_out_c_1),
		   // Inputs
		   .data_in_c			(data_out_c_US[7:0]),
		   .valid_in_c			(valid_out_c_US),
		   /*AUTOINST*/
			    // Inputs
			    .reset		(reset),
			    .clk2f		(clk2f),
			    .clk8f		(clk8f));
		   
endmodule 

