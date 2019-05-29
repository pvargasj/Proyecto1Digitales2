`include "phy_tx_cond.v"
//`include "phy_rx_cond.v"
`include "clkgen.v"

module PCIe_cond(input [7:0] data_in_0_c,
                 input [7:0] data_in_1_c,
                 input valid_in_0_c,
                 input valid_in_1_c,
                 input clk_8f,
                 input resetCLK,
                 input reset);
                 //output reg [7:0] data_out_c_0,
	           //  output reg [7:0] data_out_c_1,
                 //output reg valid_out_c_0,
                 //output reg valid_out_c_1)

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			Paral_serial_out_0_c;	// From TX of phy_tx_cond.v
wire			Paral_serial_out_1_c;	// From TX of phy_tx_cond.v
wire			clk_2f;		// From Relojes of clkgen.v
wire			clk_f;			// From Relojes of clkgen.v
// End of automatics


clkgen      Relojes(/*AUTOINST*/
		    // Outputs
		    .clk_f		(clk_f),
		    .clk_2f		(clk_2f),
		    // Inputs
		    .clk_8f		(clk_8f),
		    .resetCLK		(resetCLK));

phy_tx_cond TX (/*AUTOINST*/
		// Outputs
		.Paral_serial_out_0_c	(Paral_serial_out_0_c),
		.Paral_serial_out_1_c	(Paral_serial_out_1_c),
		// Inputs
		.data_in_0_c		(data_in_0_c[7:0]),
		.data_in_1_c		(data_in_1_c[7:0]),
		.valid_in_0_c		(valid_in_0_c),
		.valid_in_1_c		(valid_in_1_c),
		.clk_f			(clk_f),
		.clk_2f			(clk_2f),
		.clk_8f			(clk_8f),
		.reset			(reset));

endmodule

