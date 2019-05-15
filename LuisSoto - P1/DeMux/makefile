Proy1: auto test rm

yosys:
	yosys synthtmp.ys
	sed -i 's/data_out_c/data_out_s/g' proy1_synth.v
	sed -i 's/module proy1_conductual/module proy1_synth/g' proy1_synth.v
	sed -i 's/module clkgen/module clkgen_s/g' proy1_synth.v
	sed -i 's/module mux/module mux_s/g' proy1_synth.v
	sed -i 's/module demux/module demux_s/g' proy1_synth.v
	
	sed -i '1i `include "cmos_cells.v"' proy1_synth.v

auto:
	emacs --batch BancoPrueba.v -f verilog-auto -f save-buffer

test:
	iverilog -Tmin BancoPrueba.v
	vvp a.out
	gtkwave proy1.vcd

rm:
	rm a.out
	rm proy1.vcd