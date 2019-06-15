module probador #(
    parameter AW = 3,   //-- Cantidad de bits de direcciones (Adress width)
    parameter DW = 4)   //-- Cantidad de bits de datos (Data width) 
    (
    output reg clk,                          //-- Reloj
    output reg reset,                        //-- Reset
    output reg [AW-1: 0] addr,               //-- Direccion de la RAM
    output reg rw,                           //-- 0 read, 1 write
    output reg [DW-1: 0] data_in,            //-- Dato entrada de la RAM 
    input [DW-1: 0] data_out_c,    //-- Dato salida de RAM conductual
    input [DW-1: 0] data_out_e     //-- Dato salida de RAM estructural
    );

	initial begin
		$dumpfile("banco_pruebas.vcd");
        $dumpvars();
        clk = 0;
        reset = 0;
        addr = 7;
        rw = 0;
        data_in = 0;
		@(posedge clk);
		@(posedge clk);
        reset = 1;
		@(posedge clk);
    	@(posedge clk);

      repeat(8) begin
	 @(posedge clk);
        rw <= 1; // write
        data_in <= data_in + 1;
        addr <= addr + 1;
      end

      repeat(8) begin
	 @(posedge clk);
        rw <= 0; // write
        addr <= addr + 1;
      end    
     @(posedge clk);  
     @(posedge clk);   
      repeat(8) begin
	 @(posedge clk);
        rw <= 1; // write
        data_in <= data_in + 1;
        addr <= addr + 1;
      end

      repeat(8) begin
	 @(posedge clk);
        rw <= 0; // write
        addr <= addr + 1;
      end    
     @(posedge clk);  
     @(posedge clk);  
		$finish;
	end

	
    initial clk <= 0;
    always #5 clk <= ~clk;

endmodule