module probador(
    output reg [7:0] data_in_0_c,
    output reg [7:0] data_in_1_c,
    output reg valid_in_0_c,
    output reg valid_in_1_c,
    output reg clk_8f_prob,
    output reg resetCLK,
    output reg reset,
    input clk_8f
    //input Paral_serial_out_0_c, 
    //input Paral_serial_out_1_c,
    //input Paral_serial_out_0_e, 
    //input Paral_serial_out_1_e
 ); 


initial begin
	$dumpfile("banco_pruebas.vcd");
	$dumpvars();
    clk_8f_prob = 0;
	reset = 0;
    resetCLK = 0;
    data_in_0_c = 0;
    data_in_1_c = 0;
    valid_in_0_c = 0;
    valid_in_1_c = 0;

    @(posedge clk_8f_prob);
    resetCLK <= 1;
    @(posedge clk_8f);
    resetCLK <= 1;

    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    reset <= 1; 
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h A4 ;
    data_in_1_c <= 8'h 32 ;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h FF ;
    valid_in_0_c <= 1;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h EE ;
    data_in_1_c <= 8'h 00 ;
    valid_in_1_c <= 1;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h DD ;
    data_in_1_c <= 8'h 01 ;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h CC ;
    data_in_1_c <= 8'h 02 ;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    valid_in_0_c <= 0;
    valid_in_1_c <= 0;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_1_c <= 8'h 03 ;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    valid_in_0_c <= 1;
    data_in_0_c <= 8'h BB;
    data_in_1_c <= 8'h 04;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    valid_in_0_c <= 0;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    valid_in_0_c <= 1;
    valid_in_1_c <= 1;
    data_in_0_c <= 8'h AA;
    data_in_1_c <= 8'h 05;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h 99;
    data_in_1_c <= 8'h 06;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    valid_in_0_c <= 0;
    valid_in_1_c <= 0;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    valid_in_0_c <= 1;
    valid_in_1_c <= 1;
    data_in_0_c <= 8'h 88;
    data_in_1_c <= 8'h 07;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h 77;
    data_in_1_c <= 8'h 08;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    data_in_0_c <= 8'h 32;
    data_in_1_c <= 8'h 16;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    valid_in_0_c <= 0;
    valid_in_1_c <= 0;
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    @(posedge clk_8f);
    $finish;
end

    initial	clk_8f_prob 	<= 1;				// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#2 clk_8f_prob 	<= ~clk_8f_prob;		// Hace "toggle" cada 2*10ns 


 endmodule 
    /*@(posedge clk_2f);
    clk_f <= ~clk_f;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    reset <= 1;
	@(posedge clk_2f);
    clk_f <= ~clk_f;
    @(posedge clk_2f);
    
    clk_f <= ~clk_f;
	@(posedge clk_2f);
    clk_f <= ~clk_f;
    
    data_in_0_c <= 8'h A4 ;
    data_in_1_c <= 8'h 32 ;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    valid_in_0_c <= 1;
    data_in_0_c <= 8'h FF ;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    
    valid_in_1_c <= 1;
    data_in_0_c <= 8'h EE ;
    data_in_1_c <= 8'h 00 ;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    data_in_0_c <= 8'h DD ;
    data_in_1_c <= 8'h 01 ;    
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    
    data_in_0_c <= 8'h CC ;
    data_in_1_c <= 8'h 02 ;   
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    valid_in_0_c <= 0;
    valid_in_1_c <= 0;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    
    @(posedge clk_2f);
    valid_in_1_c <= 0;
    data_in_1_c <= 8'h 03 ; 
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    
    valid_in_0_c <= 1;
    data_in_1_c <= 8'h 04 ; 
    data_in_0_c <= 8'h BB ;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    valid_in_0_c <= 0;
    valid_in_1_c <= 0;
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    valid_in_0_c <= 1;
    valid_in_1_c <= 1;
    data_in_1_c <= 8'h 05 ; 
    data_in_0_c <= 8'h AA ;   
    @(posedge clk_2f);
    clk_f <= ~clk_f;
    
    data_in_1_c <= 8'h 06 ; 
    data_in_0_c <= 8'h 99 ;    
    @(posedge clk_2f);
    clk_f <= ~clk_f; 
    valid_in_0_c <= 0;
    valid_in_1_c <= 0;
    @(posedge clk_2f); 
    clk_f <= ~clk_f;
    
    @(posedge clk_2f); 
    clk_f <= ~clk_f;
    valid_in_0_c <= 1;
    valid_in_1_c <= 1;  
    data_in_1_c <= 8'h 07 ; 
    data_in_0_c <= 8'h 88 ;  

    @(posedge clk_2f);
    clk_f <= ~clk_f; 
    data_in_1_c <= 8'h 08 ; 
    data_in_0_c <= 8'h 77 ;        

    @(posedge clk_2f);
    clk_f <= ~clk_f;
    data_in_1_c <= 8'h 16 ; 
    data_in_0_c <= 8'h 32 ;  

    @(posedge clk_2f);
    clk_f <= ~clk_f;   
    valid_in_0_c <= 0;
    valid_in_1_c <= 0;  

    @(posedge clk_2f); 
    clk_f <= ~clk_f;

    @(posedge clk_2f); 
    clk_f <= ~clk_f;

     @(posedge clk_2f); 
    clk_f <= ~clk_f;

    reset <= 0;
    @(posedge clk_2f); 
    clk_f <= ~clk_f;
    

    
end  

/*
initial clk_f <= 0;
always #8 ;   */

	

