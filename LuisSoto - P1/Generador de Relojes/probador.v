//Generador de señales y monitor de datos
module probador( 	
	input		[2:0]			clks,
	output reg 					clk);

	
	initial begin
		$dumpfile("proy1.vcd"); //Archivo de dump
		$dumpvars;				//Ordena dumpear variables a demux.vcd
		
		$display ("\t\t\tclk,\tclks");	//Mensaje inicial que se imprime en consola
		
		$monitor($time,"\t%b\t%b\t\t%b\t\t%b\t%b", clk, clks); //Valores que se imprimen con cada cambio 

					 					//A continuaci�n, se generan las se�ales de prueba a usar para la simulaci�n	

		@(posedge clk);

		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);

		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);

		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);

		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		@(posedge clk);
		
		$finish;						// Termina de almacenar se�ales
	end
	// Reloj
	initial	clk 	<= 0;				// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#45 clk 	<= ~clk;		// Hace "toggle" cada 2*10ns
	
endmodule
