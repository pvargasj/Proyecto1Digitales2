all:
	@make compile
	@make sim
	@make view

compile: 
	iverilog  BancoPrueba.v -o TestP_S.out
sim:
	vvp TestP_S.out

view: 
	gtkwave P_S.vcd 

	
