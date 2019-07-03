module probador (
    output reg clk,                        //-- clock
    output reg reset,                      //-- Reset
    output reg init,                      //-- Init
    output reg [5: 0] data_in,          //-- Entrada del FIFO de 6 bits
    output reg [7:0] UMF,     // [3:0] UMBRAL BAJO, [7:4] UMBRAL ALTO
    output reg [7:0] UVC, 
    output reg [7:0] UD, 
    output reg push_main,
    output reg pop_d0,
    output reg pop_d1,
    
    input error_out_c,
    input active_out_c,
    input idle_out_c,
    input [5:0] data_out_0_c,      //-- Salida del fifo D0 
    input [5:0] data_out_1_c);

	initial begin
		$dumpfile("TRANSLAYER.vcd");
        $dumpvars();
        clk = 0;
        reset = 0;
        init = 0;
        UMF = 0;
        UD = 0;
        UVC = 0;
        pop_d0 = 0;
        pop_d1 = 0;
        push_main = 0;

        data_in = 'h01;
		    @(posedge clk);
			    reset <= 1;
        @(posedge clk);		
				  UMF <= 'h30;
          UVC <= 'hE0;
          UD  <= 'h30;
        @(posedge clk);		
				  init <= 1;             
			  @(posedge clk);
          init <= 0;



        @(posedge clk);
          data_in <= 'b000000;
          push_main <= 1;        
 

        @(posedge clk);
          data_in <= 'b010001;
          push_main <= 1;    


        @(posedge clk);
          data_in <= 'b100010;
          push_main <= 1;    


        @(posedge clk);
          data_in <= 'b110011;
          push_main <= 1;           


        @(posedge clk);
          data_in <= 'b000100;
          push_main <= 1;    



        @(posedge clk);
          data_in <= 'b010101;
          push_main <= 1;    



        @(posedge clk);
          data_in <= 'b100110;
          push_main <= 1;    



        @(posedge clk);
          data_in <= 'b110111;
          push_main <= 1;    
  


        @(posedge clk);
          data_in <= 'b001001;
          push_main <= 1;    

        @(posedge clk);
          data_in <= 'b011010;
          push_main <= 1;  

        @(posedge clk);
          data_in <= 'b101011;
          push_main <= 1;  

        @(posedge clk);
          data_in <= 'b111100;
          push_main <= 1;  

        @(posedge clk);
          data_in <= 'b001101;
          push_main <= 1;  

        @(posedge clk);
          data_in <= 'b011110;
          push_main <= 1;  


        @(posedge clk);
          data_in <= 'b101111;
          push_main <= 1;  

        @(posedge clk);
          data_in <= 'b110000;
          push_main <= 1;  

        @(posedge clk);
          pop_d0 <= 1;
          push_main <= 0; 
          pop_d1 <= 1;
          data_in <= 'b000000;
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
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
		$finish;
	end


    initial clk <= 0;
    always #5 clk <= ~clk;

endmodule