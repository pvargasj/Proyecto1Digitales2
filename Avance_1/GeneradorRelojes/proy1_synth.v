`include "cmos_cells.v"
/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

(* src = "clkgen.v:1" *)
module clkgen_s(clkf_s, clk2f_s, clk4f_s, clk8f, reset);
  (* src = "clkgen.v:8" *)
  wire _00_;
  (* src = "clkgen.v:8" *)
  wire _01_;
  (* src = "clkgen.v:8" *)
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  (* src = "clkgen.v:3" *)
  output clk2f_s;
  (* src = "clkgen.v:4" *)
  output clk4f_s;
  (* src = "clkgen.v:5" *)
  input clk8f;
  (* src = "clkgen.v:2" *)
  output clkf_s;
  (* src = "clkgen.v:6" *)
  input reset;
  NOT _14_ (
    .A(reset),
    .Y(_13_)
  );
  NOR _15_ (
    .A(clk4f_s),
    .B(_13_),
    .Y(_01_)
  );
  NOR _16_ (
    .A(clk2f_s),
    .B(clk4f_s),
    .Y(_03_)
  );
  NOT _17_ (
    .A(clk4f_s),
    .Y(_04_)
  );
  NOT _18_ (
    .A(clk2f_s),
    .Y(_05_)
  );
  NOR _19_ (
    .A(_05_),
    .B(_04_),
    .Y(_06_)
  );
  NOR _20_ (
    .A(_06_),
    .B(_03_),
    .Y(_07_)
  );
  NOR _21_ (
    .A(_07_),
    .B(_13_),
    .Y(_00_)
  );
  NOT _22_ (
    .A(clkf_s),
    .Y(_08_)
  );
  NOR _23_ (
    .A(_03_),
    .B(_08_),
    .Y(_09_)
  );
  NAND _24_ (
    .A(_05_),
    .B(_04_),
    .Y(_10_)
  );
  NOR _25_ (
    .A(_10_),
    .B(clkf_s),
    .Y(_11_)
  );
  NOR _26_ (
    .A(_11_),
    .B(_09_),
    .Y(_12_)
  );
  NOR _27_ (
    .A(_12_),
    .B(_13_),
    .Y(_02_)
  );
  DFF _28_ (
    .C(clk8f),
    .D(_02_),
    .Q(clkf_s)
  );
  DFF _29_ (
    .C(clk8f),
    .D(_00_),
    .Q(clk2f_s)
  );
  DFF _30_ (
    .C(clk8f),
    .D(_01_),
    .Q(clk4f_s)
  );
endmodule

(* top =  1  *)
(* src = "proy1_conductual.v:3" *)
module proy1_synth(clk8f, clk2f_s, clk4f_s, clkf_s, reset);
  (* src = "proy1_conductual.v:5" *)
  output clk2f_s;
  (* src = "proy1_conductual.v:6" *)
  output clk4f_s;
  (* src = "proy1_conductual.v:4" *)
  input clk8f;
  (* src = "proy1_conductual.v:7" *)
  output clkf_s;
  (* src = "proy1_conductual.v:8" *)
  input reset;
  (* src = "proy1_conductual.v:10" *)
  clkgen_s generador_de_relojes (
    .clk2f_s(clk2f_s),
    .clk4f_s(clk4f_s),
    .clk8f(clk8f),
    .clkf_s(clkf_s),
    .reset(reset)
  );
endmodule
