`include "mux.v" 	   
`include "Byte_striping_cond.v" 	
`include "Paralelo_Serie_conductual.v" 		

module phy_tx_cond(
    input [7:0] data_in_0_c,
    input [7:0] data_in_1_c,
    input valid_in_0_c,
    input valid_in_1_c,
    input clk_f,
    input clk_2f,
    input clk_8f,
    input reset,
    output Paral_serial_out_0_c, 
    output Paral_serial_out_1_c
);

reg [7:0] data_in_0_FF, data_in_1_FF;
reg valid_in_0_FF, valid_in_1_FF;

// FLOPS INICIALES
always @(posedge clk_2f) begin
    if(reset == 0) begin
        data_in_0_FF <= 0;
        data_in_1_FF <= 0;
        valid_in_0_FF <= 0;
        valid_in_1_FF <= 0;
    end
    else    begin
        data_in_0_FF <= data_in_0_c;
        data_in_1_FF <= data_in_1_c;
        valid_in_0_FF <= valid_in_0_c; 
        valid_in_1_FF <= valid_in_1_c;       
    end
end

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [7:0]		data2send_c0;		// From Paralelo_Serie_conductual_instance0 of Paralelo_Serie_conductual.v, ...
wire [7:0]		data2send_c1;		// From Paralelo_Serie_conductual_instance0 of Paralelo_Serie_conductual.v, ...
wire [7:0]		data_out_c;			// From mux_instance0 of mux.v, ...
wire [7:0]		lane_0_c;			// From Byte_striping_instance0 of Byte_striping_cond.v
wire [7:0]		lane_1_c;			// From Byte_striping_instance0 of Byte_striping_cond.v
wire			valid_0_c;			// From Byte_striping_instance0 of Byte_striping_cond.v
wire			valid_1_c;			// From Byte_striping_instance0 of Byte_striping_cond.v
wire			valid_out_c;		// From mux_instance0 of mux.v
wire [7:0]		data_out_c_mux;		// From Paralelo_Serie_conductual_instance0 of Paralelo_Serie_conductual.v, ...
wire 		    valid_mux;			// From mux_instance0 of mux.v, ...
wire			valid_0_c_BS;		// From Byte_striping_instance0 of Byte_striping_cond.v
wire			valid_1_c_BS;		// From Byte_striping_instance0 of Byte_striping_cond.v
// End of automatics

mux  mux_instance0( /*AUTOINST*/
		   // Outputs
		   .data_out_c		(data_out_c_mux[7:0]),
		   .valid_out_c		(valid_mux),
		   // Inputs
		   .data_in_0_c		(data_in_0_FF[7:0]),
		   .valid_in_0_c	(valid_in_0_FF),
		   .data_in_1_c		(data_in_1_FF[7:0]),
		   .valid_in_1_c	(valid_in_1_FF),
		   .reset		(reset),
		   .clk_2f		(clk_2f),
		   .clk_8f		(clk_8f));

Byte_striping_cond  Byte_striping_instance0( /*AUTOINST*/
					    // Outputs
					    .lane_0_c		(lane_0_c[7:0]),
					    .lane_1_c		(lane_1_c[7:0]),
					    .valid_0_c		(valid_0_c_BS),
					    .valid_1_c		(valid_1_c_BS),
					    // Inputs
					    .clk_2f		(clk_2f),
					    .valid_in		(valid_mux),
					    .data_in		(data_out_c_mux[7:0]),
					    .reset		(reset));

Paralelo_Serie_conductual  Paralelo_Serie_conductual_instance0( /*AUTOINST*/
							       // Outputs
							       .data2send_c	(data2send_c0[7:0]),
							       .data_out_c	(Paral_serial_out_0_c),
							       // Inputs
							       .clk_8f		(clk_8f),
							       .clk_f		(clk_f),
							       .data_in		(lane_0_c[7:0]),
							       .valid_in	(valid_0_c_BS),
							       .reset		(reset)); 	   

Paralelo_Serie_conductual  Paralelo_Serie_conductual_instance1( /*AUTOINST*/
							       // Outputs
							       .data2send_c	(data2send_c1[7:0]),
							       .data_out_c	(Paral_serial_out_1_c),
							       // Inputs
							       .clk_8f		(clk_8f),
							       .clk_f		(clk_f),
							       .data_in		(lane_1_c[7:0]),
							       .valid_in	(valid_1_c_BS),
							       .reset		(reset)); 
 endmodule 

