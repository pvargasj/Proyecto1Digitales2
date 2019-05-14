//Generador de señales y monitor de datos
module probador( 	
	input						clkf,
	input						clk2f,
	input						clk4f,
	input 		[7:0]			data_out_c,
	input 	 					valid_out_c,
	output reg	[7:0]			data_in_0_c,
	output reg	[7:0]			data_in_1_c,
	output reg 					valid_in_0_c,
	output reg 					valid_in_1_c,
	output reg 					clk,
	output reg 					reset);

	
	initial begin
		$dumpfile("proy1.vcd"); //Archivo de dump
		$dumpvars;				//Ordena dumpear variables a demux.vcd
		
		$display ("\t\t\tclk,\tclks,\treset");	//Mensaje inicial que se imprime en consola
		
		$monitor($time,"\t%b\t%b\t\t%b\t\t%b\t%b", clk, clkf, clk2f, clk4f, reset); //Valores que se imprimen con cada cambio 

		data_in_0_c = 0;		//A continuaci�n, se generan las se�ales de prueba a usar para la simulaci�n	
		data_in_1_c = 0;
		valid_in_0_c = 0;
		valid_in_1_c = 0;
		reset = 0;
		@(posedge clk);
		data_in_0_c = 'h11;
		data_in_1_c = 'hFF;
		@(posedge clk);
		data_in_0_c = 'h11;
		data_in_1_c = 'hFF;
		@(posedge clk);
		data_in_0_c = 'h11;
		data_in_1_c = 'hFF;
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		reset <= 1; 
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		@(posedge clk);
		data_in_0_c = 'h12;
		data_in_1_c = 'hFE;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;		
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h13;
		data_in_1_c = 'hFD;		
		valid_in_0_c = 1;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h14;
		data_in_1_c = 'hFC;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h15;
		data_in_1_c = 'hFB;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h16;
		data_in_1_c = 'hFA;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h17;
		data_in_1_c = 'hF9;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h18;
		data_in_1_c = 'hF8;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h19;
		data_in_1_c = 'hF7;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1A;
		data_in_1_c = 'hF6;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		valid_in_0_c = 1;		
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		@(posedge clk);
		data_in_0_c = 'h1B;
		data_in_1_c = 'hF5;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;		
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;
		@(posedge clk);
		data_in_0_c = 'h1C;
		data_in_1_c = 'hF4;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		@(posedge clk);
		data_in_0_c = 'h1D;
		data_in_1_c = 'hF3;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1E;
		data_in_1_c = 'hF2;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		valid_in_0_c = 1;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		@(posedge clk);
		data_in_0_c = 'h1F;
		data_in_1_c = 'hF1;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		@(posedge clk);
		data_in_0_c = 'h20;
		data_in_1_c = 'hF0;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		@(posedge clk);
		data_in_0_c = 'h21;
		data_in_1_c = 'hEF;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h22;
		data_in_1_c = 'hEE;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		valid_in_0_c = 1;
		valid_in_1_c = 1;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		@(posedge clk);
		data_in_0_c = 'h23;
		data_in_1_c = 'hED;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		valid_in_0_c = 0;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		@(posedge clk);
		data_in_0_c = 'h24;
		data_in_1_c = 'hEC;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		valid_in_1_c = 0;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		@(posedge clk);
		data_in_0_c = 'h25;
		data_in_1_c = 'hEB;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		@(posedge clk);
		data_in_0_c = 'h26;
		data_in_1_c = 'hEA;
		$finish;						// Termina de almacenar se�ales
	end
	// Reloj
	initial	clk 	<= 0;				// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#45 clk 	<= ~clk;		// Hace "toggle" cada 2*10ns
	
endmodule
