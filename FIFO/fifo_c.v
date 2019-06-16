
`ifndef FIFO_C      //-- Para no tener problemas con los include, si el
 `define FIFO_C     //   modulo fifo_c ya estaba definido ignora el codigo


module fifo_c #(
    parameter AW = 3,   //-- Cantidad de bits de direcciones (Adress width)
    parameter DW = 6)   //-- Cantidad de bits de datos (Data width) (ES FIJO 6 SIEMPRE)
    (  
    input [DW-1: 0] data_in,          //-- Entrada del FIFO de 6 bits
    input pop,                        //-- 1 si se quiere hacer pop, 0 nada
    input push,                       //-- 1 si se quiere hacer push, 0 nada
    output reg [DW-1: 0] data_out_c,  //-- Salida del FIFO
    output reg valid_out_c,           //-- es 1 cuando la salida del FIFO es un dato valido
    output reg almost_full_c,         //-- Parte del flow control, 1 para pedir una pausa, 0 no hace nada
    output reg almost_empty_c,        //-- Parte del flow control, 1 para pedir un continuar y poner en 0 almost_full_c, 0 no hace nada
    output reg fifo_empty_c,          //-- Entrada de la maquina de estados, Es 1 si el FIFO esta vacio, 0 en caso contrario
    output reg error_c                //--Entrada de la maquina de estados, Es 1 solo si se pide hacer un push y el fifo estaba lleno o si se pide pop y el FIFO estaba vacio
    );

endmodule

`endif

/*
##########################################################################################################
######################### Explicacion detallada de entradas/salidas  #####################################
##########################################################################################################


input [DW-1: 0] data_in: Es la entrada del FIFO, asi que cuando se solicite un push el fifo va
                         a guardar esta entrada en la RAM segun corresponda con los punteros 
                         de escritura y lectura, que son regs internos del modulo. Cuando no se
                         solicite un push esta entrada es irrelevante.

input pop: Es una entrada de un bit que cuando se convierte en 1 indica que se debe hacer un pop
           en el FIFO, por lo que se debe mandar un dato a la salida data_out_c y levantar el bit
           de valid_out_c segun corresponda cuando el dato este listo. Cuando pop es 0 no se hace
           nada

input push: Es una entrada que cuando se convierte en 1 indica que se debe guardar un dato en el 
            FIFO, el dato a guardar es el que este en data_in en el momento en que se levante la
            senal de push. Cuando esta senal es 0 no se hace nada.

output reg [DW-1: 0] data_out_c: Esta es la salida del FIFO que es valida cuando se solicita un
                                 pop en el FIFO y libera un dato de la memoria. Se debe levantar
                                 la senal de valid_out_c cuando la salida data_out_c sea valida

output reg valid_out_c:  Esta senal indica con un 1 cuando la salida es valida.  


output reg almost_full_c: Esta senal es parte del FLOW CONTROL. SI esta senal se pone en 1 significa
                          que el FIFO esta casi lleno, por lo que se debe hacer algo (logica fuera del FIFO),
                          ya sea en el round robin o en la logica que pide pops a los otros FIFOs. 
                          Si esta senal es 0 no se hace nada.

output reg almost_empty_c: Esta senal es parte del FLOW CONTROL. Si esta senal se encuentra en 1 significa
                           que el round robin puede volver a pedir datos normalmente o que se permita nueva
                           mente hacer pops al FIFO de arriba. Si es 0 significa que el FIFO viene del estado
                           almost_full_c y se esta vaciando. Cuando almost_empty_c se vuelva a levantar se debe
                           poner almost_full_c en 0

output reg fifo_empty_c: Esta senal es una entrada para la MAQUINA DE ESTADOS. Si el FIFO esta vacio se pone en 1
                         en otro caso es 0

output reg error_c: Esta senal es una entrada para la MAQUINA DE ESTADOS. Si se realiza un push y el FIFO esta lleno
                    hay un error. O si se lee un FIFO vacio.            



*/