`include "cmos.v"
/* Generated by Yosys 0.8+500 (git sha1 49d641d9, clang 6.0.0-1ubuntu2 -fPIC -Os) */

(* src = "Byte_un_striping_estr.v:1" *)
module Byte_un_striping_estr(clk_f, clk_2f, lane_0, lane_1, valid_0, valid_1, reset, data_out_c, valid_out_c);
  wire _00_;
  wire _01_;
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
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  (* src = "Byte_un_striping_estr.v:3" *)
  input clk_2f;
  (* src = "Byte_un_striping_estr.v:2" *)
  input clk_f;
  (* src = "Byte_un_striping_estr.v:9" *)
  output [7:0] data_out_c;
  (* onehot = 32'd1 *)
  wire [2:0] estado;
  (* src = "Byte_un_striping_estr.v:4" *)
  input [7:0] lane_0;
  (* src = "Byte_un_striping_estr.v:5" *)
  input [7:0] lane_1;
  (* src = "Byte_un_striping_estr.v:13" *)
  (* unused_bits = "0 1 2" *)
  wire [2:0] prox_estado;
  (* src = "Byte_un_striping_estr.v:8" *)
  input reset;
  (* src = "Byte_un_striping_estr.v:6" *)
  input valid_0;
  (* src = "Byte_un_striping_estr.v:7" *)
  input valid_1;
  (* src = "Byte_un_striping_estr.v:10" *)
  output valid_out_c;
  NOT _32_ (
    .A(valid_1),
    .Y(_03_)
  );
  NOT _33_ (
    .A(estado[2]),
    .Y(_04_)
  );
  NOT _34_ (
    .A(valid_0),
    .Y(_05_)
  );
  NOT _35_ (
    .A(reset),
    .Y(_06_)
  );
  NOR _36_ (
    .A(estado[1]),
    .B(estado[0]),
    .Y(_07_)
  );
  NOR _37_ (
    .A(valid_0),
    .B(_07_),
    .Y(_08_)
  );
  NAND _38_ (
    .A(_03_),
    .B(estado[2]),
    .Y(_09_)
  );
  NOR _39_ (
    .A(_06_),
    .B(_08_),
    .Y(_10_)
  );
  NAND _40_ (
    .A(_09_),
    .B(_10_),
    .Y(_02_)
  );
  NOR _41_ (
    .A(_03_),
    .B(_04_),
    .Y(_11_)
  );
  NAND _42_ (
    .A(lane_1[0]),
    .B(_11_),
    .Y(_12_)
  );
  NOR _43_ (
    .A(_05_),
    .B(_07_),
    .Y(_13_)
  );
  NAND _44_ (
    .A(lane_0[0]),
    .B(_13_),
    .Y(_14_)
  );
  NAND _45_ (
    .A(_12_),
    .B(_14_),
    .Y(data_out_c[0])
  );
  NAND _46_ (
    .A(lane_1[1]),
    .B(_11_),
    .Y(_15_)
  );
  NAND _47_ (
    .A(lane_0[1]),
    .B(_13_),
    .Y(_16_)
  );
  NAND _48_ (
    .A(_15_),
    .B(_16_),
    .Y(data_out_c[1])
  );
  NAND _49_ (
    .A(lane_1[2]),
    .B(_11_),
    .Y(_17_)
  );
  NAND _50_ (
    .A(lane_0[2]),
    .B(_13_),
    .Y(_18_)
  );
  NAND _51_ (
    .A(_17_),
    .B(_18_),
    .Y(data_out_c[2])
  );
  NAND _52_ (
    .A(lane_1[3]),
    .B(_11_),
    .Y(_19_)
  );
  NAND _53_ (
    .A(lane_0[3]),
    .B(_13_),
    .Y(_20_)
  );
  NAND _54_ (
    .A(_19_),
    .B(_20_),
    .Y(data_out_c[3])
  );
  NAND _55_ (
    .A(lane_1[4]),
    .B(_11_),
    .Y(_21_)
  );
  NAND _56_ (
    .A(lane_0[4]),
    .B(_13_),
    .Y(_22_)
  );
  NAND _57_ (
    .A(_21_),
    .B(_22_),
    .Y(data_out_c[4])
  );
  NAND _58_ (
    .A(lane_1[5]),
    .B(_11_),
    .Y(_23_)
  );
  NAND _59_ (
    .A(lane_0[5]),
    .B(_13_),
    .Y(_24_)
  );
  NAND _60_ (
    .A(_23_),
    .B(_24_),
    .Y(data_out_c[5])
  );
  NAND _61_ (
    .A(lane_1[6]),
    .B(_11_),
    .Y(_25_)
  );
  NAND _62_ (
    .A(lane_0[6]),
    .B(_13_),
    .Y(_26_)
  );
  NAND _63_ (
    .A(_25_),
    .B(_26_),
    .Y(data_out_c[6])
  );
  NAND _64_ (
    .A(lane_1[7]),
    .B(_11_),
    .Y(_27_)
  );
  NAND _65_ (
    .A(lane_0[7]),
    .B(_13_),
    .Y(_28_)
  );
  NAND _66_ (
    .A(_27_),
    .B(_28_),
    .Y(data_out_c[7])
  );
  NOR _67_ (
    .A(_11_),
    .B(_13_),
    .Y(_29_)
  );
  NOT _68_ (
    .A(_29_),
    .Y(valid_out_c)
  );
  NAND _69_ (
    .A(reset),
    .B(_11_),
    .Y(_30_)
  );
  NOT _70_ (
    .A(_30_),
    .Y(_00_)
  );
  NAND _71_ (
    .A(reset),
    .B(_13_),
    .Y(_31_)
  );
  NOT _72_ (
    .A(_31_),
    .Y(_01_)
  );
  DFF _73_ (
    .C(clk_2f),
    .D(_02_),
    .Q(estado[0])
  );
  DFF _74_ (
    .C(clk_2f),
    .D(_00_),
    .Q(estado[1])
  );
  DFF _75_ (
    .C(clk_2f),
    .D(_01_),
    .Q(estado[2])
  );
endmodule

(* src = "Serie_Paralelo_estr.v:2" *)
module Serie_Paralelo_estr(clk_8f, clk_f, data_in, reset, valid_out_c, parallel_out_c);
  (* src = "Serie_Paralelo_estr.v:44" *)
  wire [2:0] _000_;
  (* src = "Serie_Paralelo_estr.v:44" *)
  wire [7:0] _001_;
  (* src = "Serie_Paralelo_estr.v:44" *)
  wire [2:0] _002_;
  (* src = "Serie_Paralelo_estr.v:31" *)
  (* unused_bits = "0" *)
  wire [7:0] _003_;
  (* src = "Serie_Paralelo_estr.v:31" *)
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  (* src = "Serie_Paralelo_estr.v:12" *)
  wire [2:0] BC_counter;
  (* src = "Serie_Paralelo_estr.v:11" *)
  wire [7:0] Data_P;
  (* src = "Serie_Paralelo_estr.v:14" *)
  (* unused_bits = "0" *)
  wire active;
  (* src = "Serie_Paralelo_estr.v:12" *)
  wire [2:0] bit_counter;
  (* src = "Serie_Paralelo_estr.v:2" *)
  input clk_8f;
  (* src = "Serie_Paralelo_estr.v:3" *)
  input clk_f;
  (* src = "Serie_Paralelo_estr.v:4" *)
  input data_in;
  (* src = "Serie_Paralelo_estr.v:61" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] i;
  (* src = "Serie_Paralelo_estr.v:11" *)
  (* unused_bits = "0" *)
  wire [7:0] parallel_out_auxiliar;
  (* src = "Serie_Paralelo_estr.v:7" *)
  output [7:0] parallel_out_c;
  (* src = "Serie_Paralelo_estr.v:5" *)
  input reset;
  (* src = "Serie_Paralelo_estr.v:6" *)
  output valid_out_c;
  (* src = "Serie_Paralelo_estr.v:14" *)
  wire valid_out_c_retrasado;
  NOT _108_ (
    .A(bit_counter[1]),
    .Y(_068_)
  );
  NOT _109_ (
    .A(bit_counter[2]),
    .Y(_069_)
  );
  NOT _110_ (
    .A(bit_counter[0]),
    .Y(_070_)
  );
  NOT _111_ (
    .A(Data_P[0]),
    .Y(_071_)
  );
  NOT _112_ (
    .A(Data_P[1]),
    .Y(_072_)
  );
  NOT _113_ (
    .A(Data_P[6]),
    .Y(_073_)
  );
  NOT _114_ (
    .A(data_in),
    .Y(_074_)
  );
  NOT _115_ (
    .A(Data_P[4]),
    .Y(_075_)
  );
  NOT _116_ (
    .A(reset),
    .Y(_076_)
  );
  NOT _117_ (
    .A(Data_P[3]),
    .Y(_077_)
  );
  NOT _118_ (
    .A(Data_P[2]),
    .Y(_078_)
  );
  NOT _119_ (
    .A(BC_counter[0]),
    .Y(_079_)
  );
  NOT _120_ (
    .A(BC_counter[1]),
    .Y(_080_)
  );
  NOT _121_ (
    .A(BC_counter[2]),
    .Y(_081_)
  );
  NOT _122_ (
    .A(Data_P[5]),
    .Y(_082_)
  );
  NOT _123_ (
    .A(Data_P[7]),
    .Y(_083_)
  );
  NOR _124_ (
    .A(bit_counter[1]),
    .B(bit_counter[0]),
    .Y(_084_)
  );
  NOT _125_ (
    .A(_084_),
    .Y(_085_)
  );
  NAND _126_ (
    .A(bit_counter[2]),
    .B(_084_),
    .Y(_086_)
  );
  NAND _127_ (
    .A(_075_),
    .B(_086_),
    .Y(_087_)
  );
  NOR _128_ (
    .A(data_in),
    .B(_086_),
    .Y(_088_)
  );
  NAND _129_ (
    .A(reset),
    .B(_087_),
    .Y(_089_)
  );
  NOR _130_ (
    .A(_088_),
    .B(_089_),
    .Y(_001_[4])
  );
  NAND _131_ (
    .A(bit_counter[1]),
    .B(bit_counter[0]),
    .Y(_090_)
  );
  NOR _132_ (
    .A(bit_counter[2]),
    .B(_090_),
    .Y(_091_)
  );
  NOR _133_ (
    .A(Data_P[3]),
    .B(_091_),
    .Y(_092_)
  );
  NAND _134_ (
    .A(_074_),
    .B(_091_),
    .Y(_093_)
  );
  NAND _135_ (
    .A(reset),
    .B(_093_),
    .Y(_094_)
  );
  NOR _136_ (
    .A(_092_),
    .B(_094_),
    .Y(_001_[3])
  );
  NAND _137_ (
    .A(bit_counter[1]),
    .B(_070_),
    .Y(_095_)
  );
  NOR _138_ (
    .A(bit_counter[2]),
    .B(_095_),
    .Y(_096_)
  );
  NOR _139_ (
    .A(Data_P[2]),
    .B(_096_),
    .Y(_097_)
  );
  NAND _140_ (
    .A(_074_),
    .B(_096_),
    .Y(_098_)
  );
  NAND _141_ (
    .A(reset),
    .B(_098_),
    .Y(_099_)
  );
  NOR _142_ (
    .A(_097_),
    .B(_099_),
    .Y(_001_[2])
  );
  NAND _143_ (
    .A(_068_),
    .B(bit_counter[0]),
    .Y(_100_)
  );
  NOR _144_ (
    .A(bit_counter[2]),
    .B(_100_),
    .Y(_101_)
  );
  NOR _145_ (
    .A(Data_P[1]),
    .B(_101_),
    .Y(_102_)
  );
  NAND _146_ (
    .A(_074_),
    .B(_101_),
    .Y(_103_)
  );
  NAND _147_ (
    .A(reset),
    .B(_103_),
    .Y(_104_)
  );
  NOR _148_ (
    .A(_102_),
    .B(_104_),
    .Y(_001_[1])
  );
  NOR _149_ (
    .A(bit_counter[2]),
    .B(_085_),
    .Y(_105_)
  );
  NOT _150_ (
    .A(_105_),
    .Y(_106_)
  );
  NAND _151_ (
    .A(_074_),
    .B(_105_),
    .Y(_107_)
  );
  NAND _152_ (
    .A(reset),
    .B(_107_),
    .Y(_005_)
  );
  NOR _153_ (
    .A(Data_P[0]),
    .B(_105_),
    .Y(_006_)
  );
  NOR _154_ (
    .A(_005_),
    .B(_006_),
    .Y(_001_[0])
  );
  NAND _155_ (
    .A(Data_P[3]),
    .B(Data_P[2]),
    .Y(_007_)
  );
  NAND _156_ (
    .A(Data_P[5]),
    .B(Data_P[7]),
    .Y(_008_)
  );
  NOR _157_ (
    .A(_007_),
    .B(_008_),
    .Y(_009_)
  );
  NOT _158_ (
    .A(_009_),
    .Y(_010_)
  );
  NOR _159_ (
    .A(Data_P[0]),
    .B(Data_P[1]),
    .Y(_011_)
  );
  NOT _160_ (
    .A(_011_),
    .Y(_012_)
  );
  NOR _161_ (
    .A(Data_P[6]),
    .B(_075_),
    .Y(_013_)
  );
  NAND _162_ (
    .A(_073_),
    .B(Data_P[4]),
    .Y(_014_)
  );
  NOR _163_ (
    .A(_012_),
    .B(_014_),
    .Y(_015_)
  );
  NAND _164_ (
    .A(_011_),
    .B(_013_),
    .Y(_016_)
  );
  NOR _165_ (
    .A(_010_),
    .B(_016_),
    .Y(_017_)
  );
  NAND _166_ (
    .A(_009_),
    .B(_015_),
    .Y(_018_)
  );
  NOR _167_ (
    .A(_106_),
    .B(_018_),
    .Y(_019_)
  );
  NAND _168_ (
    .A(_105_),
    .B(_017_),
    .Y(_020_)
  );
  NOR _169_ (
    .A(BC_counter[0]),
    .B(_019_),
    .Y(_021_)
  );
  NOR _170_ (
    .A(_076_),
    .B(_021_),
    .Y(_022_)
  );
  NOR _171_ (
    .A(_079_),
    .B(_020_),
    .Y(_023_)
  );
  NAND _172_ (
    .A(BC_counter[0]),
    .B(_019_),
    .Y(_024_)
  );
  NAND _173_ (
    .A(_022_),
    .B(_024_),
    .Y(_025_)
  );
  NOT _174_ (
    .A(_025_),
    .Y(_000_[0])
  );
  NAND _175_ (
    .A(_080_),
    .B(_024_),
    .Y(_026_)
  );
  NAND _176_ (
    .A(reset),
    .B(_026_),
    .Y(_027_)
  );
  NOR _177_ (
    .A(_080_),
    .B(_024_),
    .Y(_028_)
  );
  NAND _178_ (
    .A(BC_counter[1]),
    .B(_023_),
    .Y(_029_)
  );
  NOR _179_ (
    .A(_027_),
    .B(_028_),
    .Y(_000_[1])
  );
  NAND _180_ (
    .A(_081_),
    .B(_029_),
    .Y(_030_)
  );
  NAND _181_ (
    .A(reset),
    .B(_030_),
    .Y(_031_)
  );
  NOR _182_ (
    .A(_081_),
    .B(_029_),
    .Y(_032_)
  );
  NOR _183_ (
    .A(_031_),
    .B(_032_),
    .Y(_000_[2])
  );
  NAND _184_ (
    .A(BC_counter[2]),
    .B(_018_),
    .Y(_033_)
  );
  NOT _185_ (
    .A(_033_),
    .Y(_004_)
  );
  NOR _186_ (
    .A(_072_),
    .B(_033_),
    .Y(_003_[1])
  );
  NOR _187_ (
    .A(_078_),
    .B(_033_),
    .Y(_003_[2])
  );
  NOR _188_ (
    .A(_077_),
    .B(_033_),
    .Y(_003_[3])
  );
  NOR _189_ (
    .A(_075_),
    .B(_033_),
    .Y(_003_[4])
  );
  NOR _190_ (
    .A(_082_),
    .B(_033_),
    .Y(_003_[5])
  );
  NAND _191_ (
    .A(Data_P[6]),
    .B(BC_counter[2]),
    .Y(_034_)
  );
  NOT _192_ (
    .A(_034_),
    .Y(_003_[6])
  );
  NOR _193_ (
    .A(_083_),
    .B(_033_),
    .Y(_003_[7])
  );
  NAND _194_ (
    .A(bit_counter[0]),
    .B(reset),
    .Y(_002_[0])
  );
  NOR _195_ (
    .A(_076_),
    .B(_084_),
    .Y(_035_)
  );
  NAND _196_ (
    .A(_090_),
    .B(_035_),
    .Y(_002_[1])
  );
  NOR _197_ (
    .A(_069_),
    .B(_084_),
    .Y(_036_)
  );
  NOR _198_ (
    .A(_076_),
    .B(_036_),
    .Y(_037_)
  );
  NAND _199_ (
    .A(_106_),
    .B(_037_),
    .Y(_002_[2])
  );
  NAND _200_ (
    .A(reset),
    .B(parallel_out_auxiliar[7]),
    .Y(_038_)
  );
  NOT _201_ (
    .A(_038_),
    .Y(parallel_out_c[7])
  );
  NAND _202_ (
    .A(parallel_out_auxiliar[4]),
    .B(parallel_out_auxiliar[2]),
    .Y(_039_)
  );
  NAND _203_ (
    .A(parallel_out_auxiliar[3]),
    .B(parallel_out_auxiliar[5]),
    .Y(_040_)
  );
  NOR _204_ (
    .A(_039_),
    .B(_040_),
    .Y(_041_)
  );
  NAND _205_ (
    .A(_071_),
    .B(_041_),
    .Y(_042_)
  );
  NOR _206_ (
    .A(parallel_out_auxiliar[1]),
    .B(parallel_out_auxiliar[6]),
    .Y(_043_)
  );
  NAND _207_ (
    .A(parallel_out_auxiliar[7]),
    .B(_043_),
    .Y(_044_)
  );
  NOR _208_ (
    .A(_042_),
    .B(_044_),
    .Y(_045_)
  );
  NAND _209_ (
    .A(reset),
    .B(BC_counter[2]),
    .Y(_046_)
  );
  NOT _210_ (
    .A(_046_),
    .Y(_047_)
  );
  NAND _211_ (
    .A(valid_out_c_retrasado),
    .B(_047_),
    .Y(_048_)
  );
  NOR _212_ (
    .A(_045_),
    .B(_048_),
    .Y(valid_out_c)
  );
  NAND _213_ (
    .A(parallel_out_auxiliar[1]),
    .B(reset),
    .Y(_049_)
  );
  NOT _214_ (
    .A(_049_),
    .Y(parallel_out_c[1])
  );
  NAND _215_ (
    .A(Data_P[0]),
    .B(reset),
    .Y(_050_)
  );
  NOT _216_ (
    .A(_050_),
    .Y(parallel_out_c[0])
  );
  NAND _217_ (
    .A(reset),
    .B(parallel_out_auxiliar[4]),
    .Y(_051_)
  );
  NOT _218_ (
    .A(_051_),
    .Y(parallel_out_c[4])
  );
  NAND _219_ (
    .A(reset),
    .B(parallel_out_auxiliar[2]),
    .Y(_052_)
  );
  NOT _220_ (
    .A(_052_),
    .Y(parallel_out_c[2])
  );
  NAND _221_ (
    .A(reset),
    .B(parallel_out_auxiliar[3]),
    .Y(_053_)
  );
  NOT _222_ (
    .A(_053_),
    .Y(parallel_out_c[3])
  );
  NAND _223_ (
    .A(reset),
    .B(parallel_out_auxiliar[5]),
    .Y(_054_)
  );
  NOT _224_ (
    .A(_054_),
    .Y(parallel_out_c[5])
  );
  NAND _225_ (
    .A(parallel_out_auxiliar[6]),
    .B(reset),
    .Y(_055_)
  );
  NOT _226_ (
    .A(_055_),
    .Y(parallel_out_c[6])
  );
  NOR _227_ (
    .A(_069_),
    .B(_090_),
    .Y(_056_)
  );
  NOR _228_ (
    .A(Data_P[7]),
    .B(_056_),
    .Y(_057_)
  );
  NAND _229_ (
    .A(_074_),
    .B(_056_),
    .Y(_058_)
  );
  NAND _230_ (
    .A(reset),
    .B(_058_),
    .Y(_059_)
  );
  NOR _231_ (
    .A(_057_),
    .B(_059_),
    .Y(_001_[7])
  );
  NOR _232_ (
    .A(_069_),
    .B(_095_),
    .Y(_060_)
  );
  NOR _233_ (
    .A(Data_P[6]),
    .B(_060_),
    .Y(_061_)
  );
  NAND _234_ (
    .A(_074_),
    .B(_060_),
    .Y(_062_)
  );
  NAND _235_ (
    .A(reset),
    .B(_062_),
    .Y(_063_)
  );
  NOR _236_ (
    .A(_061_),
    .B(_063_),
    .Y(_001_[6])
  );
  NOR _237_ (
    .A(_069_),
    .B(_100_),
    .Y(_064_)
  );
  NOR _238_ (
    .A(Data_P[5]),
    .B(_064_),
    .Y(_065_)
  );
  NAND _239_ (
    .A(_074_),
    .B(_064_),
    .Y(_066_)
  );
  NAND _240_ (
    .A(reset),
    .B(_066_),
    .Y(_067_)
  );
  NOR _241_ (
    .A(_065_),
    .B(_067_),
    .Y(_001_[5])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _242_ (
    .C(clk_8f),
    .D(_002_[0]),
    .Q(bit_counter[0])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _243_ (
    .C(clk_8f),
    .D(_002_[1]),
    .Q(bit_counter[1])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _244_ (
    .C(clk_8f),
    .D(_002_[2]),
    .Q(bit_counter[2])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _245_ (
    .C(clk_8f),
    .D(_000_[0]),
    .Q(BC_counter[0])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _246_ (
    .C(clk_8f),
    .D(_000_[1]),
    .Q(BC_counter[1])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _247_ (
    .C(clk_8f),
    .D(_000_[2]),
    .Q(BC_counter[2])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _248_ (
    .C(clk_8f),
    .D(_001_[0]),
    .Q(Data_P[0])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _249_ (
    .C(clk_8f),
    .D(_001_[1]),
    .Q(Data_P[1])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _250_ (
    .C(clk_8f),
    .D(_001_[2]),
    .Q(Data_P[2])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _251_ (
    .C(clk_8f),
    .D(_001_[3]),
    .Q(Data_P[3])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _252_ (
    .C(clk_8f),
    .D(_001_[4]),
    .Q(Data_P[4])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _253_ (
    .C(clk_8f),
    .D(_001_[5]),
    .Q(Data_P[5])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _254_ (
    .C(clk_8f),
    .D(_001_[6]),
    .Q(Data_P[6])
  );
  (* src = "Serie_Paralelo_estr.v:44" *)
  DFF _255_ (
    .C(clk_8f),
    .D(_001_[7]),
    .Q(Data_P[7])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _256_ (
    .C(clk_f),
    .D(_003_[1]),
    .Q(parallel_out_auxiliar[1])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _257_ (
    .C(clk_f),
    .D(_003_[2]),
    .Q(parallel_out_auxiliar[2])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _258_ (
    .C(clk_f),
    .D(_003_[3]),
    .Q(parallel_out_auxiliar[3])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _259_ (
    .C(clk_f),
    .D(_003_[4]),
    .Q(parallel_out_auxiliar[4])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _260_ (
    .C(clk_f),
    .D(_003_[5]),
    .Q(parallel_out_auxiliar[5])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _261_ (
    .C(clk_f),
    .D(_003_[6]),
    .Q(parallel_out_auxiliar[6])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _262_ (
    .C(clk_f),
    .D(_003_[7]),
    .Q(parallel_out_auxiliar[7])
  );
  (* src = "Serie_Paralelo_estr.v:31" *)
  DFF _263_ (
    .C(clk_f),
    .D(_004_),
    .Q(valid_out_c_retrasado)
  );
endmodule

(* src = "demux_estr.v:1" *)
module demux_estr(data_out_0_c, valid_out_0_c, data_out_1_c, valid_out_1_c, data_in_c, valid_in_c, reset, clk2f, clk8f);
  wire _00_;
  wire _01_;
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
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  (* src = "demux_estr.v:9" *)
  input clk2f;
  (* src = "demux_estr.v:10" *)
  input clk8f;
  (* src = "demux_estr.v:6" *)
  input [7:0] data_in_c;
  (* src = "demux_estr.v:2" *)
  output [7:0] data_out_0_c;
  (* src = "demux_estr.v:4" *)
  output [7:0] data_out_1_c;
  (* src = "demux_estr.v:12" *)
  (* unused_bits = "0 1 2 3 4 5" *)
  wire [5:0] nxt_st;
  (* src = "demux_estr.v:8" *)
  input reset;
  (* src = "demux_estr.v:13" *)
  wire reset2;
  (* src = "demux_estr.v:13" *)
  wire resetm;
  (* onehot = 32'd1 *)
  wire [5:0] st;
  (* src = "demux_estr.v:7" *)
  input valid_in_c;
  (* src = "demux_estr.v:3" *)
  output valid_out_0_c;
  (* src = "demux_estr.v:5" *)
  output valid_out_1_c;
  NOT _32_ (
    .A(reset),
    .Y(_06_)
  );
  NOT _33_ (
    .A(valid_in_c),
    .Y(_07_)
  );
  NOT _34_ (
    .A(st[4]),
    .Y(_08_)
  );
  NOT _35_ (
    .A(data_in_c[0]),
    .Y(_09_)
  );
  NOT _36_ (
    .A(data_in_c[1]),
    .Y(_10_)
  );
  NOT _37_ (
    .A(data_in_c[2]),
    .Y(_11_)
  );
  NOT _38_ (
    .A(data_in_c[3]),
    .Y(_12_)
  );
  NOT _39_ (
    .A(data_in_c[4]),
    .Y(_13_)
  );
  NOT _40_ (
    .A(data_in_c[5]),
    .Y(_14_)
  );
  NOT _41_ (
    .A(data_in_c[6]),
    .Y(_15_)
  );
  NOT _42_ (
    .A(data_in_c[7]),
    .Y(_16_)
  );
  NOT _43_ (
    .A(reset2),
    .Y(_17_)
  );
  NOR _44_ (
    .A(_06_),
    .B(_17_),
    .Y(_18_)
  );
  NAND _45_ (
    .A(_06_),
    .B(st[0]),
    .Y(_19_)
  );
  NAND _46_ (
    .A(reset2),
    .B(_19_),
    .Y(_04_)
  );
  NAND _47_ (
    .A(st[0]),
    .B(_18_),
    .Y(_20_)
  );
  NOR _48_ (
    .A(valid_in_c),
    .B(_17_),
    .Y(_21_)
  );
  NAND _49_ (
    .A(_07_),
    .B(reset2),
    .Y(_22_)
  );
  NAND _50_ (
    .A(st[5]),
    .B(_21_),
    .Y(_23_)
  );
  NAND _51_ (
    .A(_20_),
    .B(_23_),
    .Y(_05_)
  );
  NOR _52_ (
    .A(st[3]),
    .B(st[1]),
    .Y(_24_)
  );
  NOT _53_ (
    .A(_24_),
    .Y(_25_)
  );
  NAND _54_ (
    .A(valid_in_c),
    .B(_25_),
    .Y(_26_)
  );
  NOT _55_ (
    .A(_26_),
    .Y(valid_out_1_c)
  );
  NOR _56_ (
    .A(_09_),
    .B(_26_),
    .Y(data_out_1_c[0])
  );
  NOR _57_ (
    .A(_10_),
    .B(_26_),
    .Y(data_out_1_c[1])
  );
  NOR _58_ (
    .A(_11_),
    .B(_26_),
    .Y(data_out_1_c[2])
  );
  NOR _59_ (
    .A(_12_),
    .B(_26_),
    .Y(data_out_1_c[3])
  );
  NOR _60_ (
    .A(_13_),
    .B(_26_),
    .Y(data_out_1_c[4])
  );
  NOR _61_ (
    .A(_14_),
    .B(_26_),
    .Y(data_out_1_c[5])
  );
  NOR _62_ (
    .A(_15_),
    .B(_26_),
    .Y(data_out_1_c[6])
  );
  NOR _63_ (
    .A(_16_),
    .B(_26_),
    .Y(data_out_1_c[7])
  );
  NOR _64_ (
    .A(st[2]),
    .B(st[5]),
    .Y(_27_)
  );
  NAND _65_ (
    .A(_08_),
    .B(_27_),
    .Y(_28_)
  );
  NAND _66_ (
    .A(valid_in_c),
    .B(_28_),
    .Y(_29_)
  );
  NOT _67_ (
    .A(_29_),
    .Y(valid_out_0_c)
  );
  NOR _68_ (
    .A(_09_),
    .B(_29_),
    .Y(data_out_0_c[0])
  );
  NOR _69_ (
    .A(_10_),
    .B(_29_),
    .Y(data_out_0_c[1])
  );
  NOR _70_ (
    .A(_11_),
    .B(_29_),
    .Y(data_out_0_c[2])
  );
  NOR _71_ (
    .A(_12_),
    .B(_29_),
    .Y(data_out_0_c[3])
  );
  NOR _72_ (
    .A(_13_),
    .B(_29_),
    .Y(data_out_0_c[4])
  );
  NOR _73_ (
    .A(_14_),
    .B(_29_),
    .Y(data_out_0_c[5])
  );
  NOR _74_ (
    .A(_15_),
    .B(_29_),
    .Y(data_out_0_c[6])
  );
  NOR _75_ (
    .A(_16_),
    .B(_29_),
    .Y(data_out_0_c[7])
  );
  NOR _76_ (
    .A(st[3]),
    .B(st[2]),
    .Y(_30_)
  );
  NOR _77_ (
    .A(_22_),
    .B(_30_),
    .Y(_01_)
  );
  NOR _78_ (
    .A(_17_),
    .B(_29_),
    .Y(_03_)
  );
  NOR _79_ (
    .A(_17_),
    .B(_26_),
    .Y(_02_)
  );
  NOR _80_ (
    .A(st[4]),
    .B(st[1]),
    .Y(_31_)
  );
  NOR _81_ (
    .A(_22_),
    .B(_31_),
    .Y(_00_)
  );
  DFF _82_ (
    .C(clk2f),
    .D(_04_),
    .Q(st[0])
  );
  DFF _83_ (
    .C(clk2f),
    .D(_00_),
    .Q(st[1])
  );
  DFF _84_ (
    .C(clk2f),
    .D(_01_),
    .Q(st[2])
  );
  DFF _85_ (
    .C(clk2f),
    .D(_02_),
    .Q(st[3])
  );
  DFF _86_ (
    .C(clk2f),
    .D(_03_),
    .Q(st[4])
  );
  DFF _87_ (
    .C(clk2f),
    .D(_05_),
    .Q(st[5])
  );
  (* src = "demux_estr.v:23" *)
  DFF _88_ (
    .C(clk8f),
    .D(resetm),
    .Q(reset2)
  );
  (* src = "demux_estr.v:23" *)
  DFF _89_ (
    .C(clk8f),
    .D(reset),
    .Q(resetm)
  );
endmodule

(* top =  1  *)
(* src = "phy_rx_cond.v:5" *)
module phy_rx_estr(data_in_c_0, data_in_c_1, clk_f, clk_2f, clk_8f, reset, data_out_e_0, data_out_e_1, valid_out_e_0, valid_out_e_1);
  (* src = "phy_rx_cond.v:23" *)
  wire [7:0] _00_;
  (* src = "phy_rx_cond.v:23" *)
  wire [7:0] _01_;
  (* src = "phy_rx_cond.v:23" *)
  wire _02_;
  (* src = "phy_rx_cond.v:23" *)
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
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  (* src = "phy_rx_cond.v:9" *)
  input clk_2f;
  (* src = "phy_rx_cond.v:10" *)
  input clk_8f;
  (* src = "phy_rx_cond.v:8" *)
  input clk_f;
  (* src = "phy_rx_cond.v:46" *)
  wire clk_nf;
  (* src = "phy_rx_cond.v:6" *)
  input data_in_c_0;
  (* src = "phy_rx_cond.v:7" *)
  input data_in_c_1;
  (* src = "phy_rx_cond.v:12" *)
  output [7:0] data_out_e_0;
  (* src = "phy_rx_cond.v:18" *)
  wire [7:0] data_out_e_0_aux;
  (* src = "phy_rx_cond.v:13" *)
  output [7:0] data_out_e_1;
  (* src = "phy_rx_cond.v:18" *)
  wire [7:0] data_out_e_1_aux;
  (* src = "phy_rx_cond.v:40" *)
  wire [7:0] data_out_c_US;
  (* src = "phy_rx_cond.v:41" *)
  wire [7:0] lane_c_0;
  (* src = "phy_rx_cond.v:42" *)
  wire [7:0] lane_c_1;
  (* src = "phy_rx_cond.v:11" *)
  input reset;
  (* src = "phy_rx_cond.v:49" *)
  wire reset0;
  (* src = "phy_rx_cond.v:50" *)
  wire reset1;
  (* src = "phy_rx_cond.v:43" *)
  wire valid_c_0_SP;
  (* src = "phy_rx_cond.v:44" *)
  wire valid_c_1_SP;
  (* src = "phy_rx_cond.v:14" *)
  output valid_out_e_0;
  (* src = "phy_rx_cond.v:19" *)
  wire valid_out_e_0_aux;
  (* src = "phy_rx_cond.v:15" *)
  output valid_out_e_1;
  (* src = "phy_rx_cond.v:19" *)
  wire valid_out_e_1_aux;
  (* src = "phy_rx_cond.v:45" *)
  wire valid_out_c_US;
  NOT _22_ (
    .A(clk_f),
    .Y(clk_nf)
  );
  NAND _23_ (
    .A(data_out_e_1_aux[1]),
    .B(reset),
    .Y(_04_)
  );
  NOT _24_ (
    .A(_04_),
    .Y(_01_[1])
  );
  NAND _25_ (
    .A(reset),
    .B(data_out_e_1_aux[2]),
    .Y(_05_)
  );
  NOT _26_ (
    .A(_05_),
    .Y(_01_[2])
  );
  NAND _27_ (
    .A(reset),
    .B(data_out_e_1_aux[3]),
    .Y(_06_)
  );
  NOT _28_ (
    .A(_06_),
    .Y(_01_[3])
  );
  NAND _29_ (
    .A(reset),
    .B(data_out_e_1_aux[4]),
    .Y(_07_)
  );
  NOT _30_ (
    .A(_07_),
    .Y(_01_[4])
  );
  NAND _31_ (
    .A(reset),
    .B(data_out_e_1_aux[5]),
    .Y(_08_)
  );
  NOT _32_ (
    .A(_08_),
    .Y(_01_[5])
  );
  NAND _33_ (
    .A(reset),
    .B(data_out_e_1_aux[6]),
    .Y(_09_)
  );
  NOT _34_ (
    .A(_09_),
    .Y(_01_[6])
  );
  NAND _35_ (
    .A(reset),
    .B(data_out_e_1_aux[7]),
    .Y(_10_)
  );
  NOT _36_ (
    .A(_10_),
    .Y(_01_[7])
  );
  NAND _37_ (
    .A(reset),
    .B(data_out_e_0_aux[0]),
    .Y(_11_)
  );
  NOT _38_ (
    .A(_11_),
    .Y(_00_[0])
  );
  NAND _39_ (
    .A(reset),
    .B(data_out_e_0_aux[1]),
    .Y(_12_)
  );
  NOT _40_ (
    .A(_12_),
    .Y(_00_[1])
  );
  NAND _41_ (
    .A(reset),
    .B(data_out_e_0_aux[2]),
    .Y(_13_)
  );
  NOT _42_ (
    .A(_13_),
    .Y(_00_[2])
  );
  NAND _43_ (
    .A(reset),
    .B(data_out_e_0_aux[3]),
    .Y(_14_)
  );
  NOT _44_ (
    .A(_14_),
    .Y(_00_[3])
  );
  NAND _45_ (
    .A(reset),
    .B(data_out_e_0_aux[4]),
    .Y(_15_)
  );
  NOT _46_ (
    .A(_15_),
    .Y(_00_[4])
  );
  NAND _47_ (
    .A(reset),
    .B(data_out_e_0_aux[5]),
    .Y(_16_)
  );
  NOT _48_ (
    .A(_16_),
    .Y(_00_[5])
  );
  NAND _49_ (
    .A(reset),
    .B(data_out_e_0_aux[6]),
    .Y(_17_)
  );
  NOT _50_ (
    .A(_17_),
    .Y(_00_[6])
  );
  NAND _51_ (
    .A(reset),
    .B(data_out_e_0_aux[7]),
    .Y(_18_)
  );
  NOT _52_ (
    .A(_18_),
    .Y(_00_[7])
  );
  NAND _53_ (
    .A(reset),
    .B(valid_out_e_1_aux),
    .Y(_19_)
  );
  NOT _54_ (
    .A(_19_),
    .Y(_03_)
  );
  NAND _55_ (
    .A(reset),
    .B(valid_out_e_0_aux),
    .Y(_20_)
  );
  NOT _56_ (
    .A(_20_),
    .Y(_02_)
  );
  NAND _57_ (
    .A(reset),
    .B(data_out_e_1_aux[0]),
    .Y(_21_)
  );
  NOT _58_ (
    .A(_21_),
    .Y(_01_[0])
  );
  (* src = "phy_rx_cond.v:53" *)
  DFF _59_ (
    .C(clk_2f),
    .D(reset),
    .Q(reset1)
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _60_ (
    .C(clk_2f),
    .D(_02_),
    .Q(valid_out_e_0)
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _61_ (
    .C(clk_2f),
    .D(_03_),
    .Q(valid_out_e_1)
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _62_ (
    .C(clk_2f),
    .D(_00_[0]),
    .Q(data_out_e_0[0])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _63_ (
    .C(clk_2f),
    .D(_00_[1]),
    .Q(data_out_e_0[1])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _64_ (
    .C(clk_2f),
    .D(_00_[2]),
    .Q(data_out_e_0[2])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _65_ (
    .C(clk_2f),
    .D(_00_[3]),
    .Q(data_out_e_0[3])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _66_ (
    .C(clk_2f),
    .D(_00_[4]),
    .Q(data_out_e_0[4])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _67_ (
    .C(clk_2f),
    .D(_00_[5]),
    .Q(data_out_e_0[5])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _68_ (
    .C(clk_2f),
    .D(_00_[6]),
    .Q(data_out_e_0[6])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _69_ (
    .C(clk_2f),
    .D(_00_[7]),
    .Q(data_out_e_0[7])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _70_ (
    .C(clk_2f),
    .D(_01_[0]),
    .Q(data_out_e_1[0])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _71_ (
    .C(clk_2f),
    .D(_01_[1]),
    .Q(data_out_e_1[1])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _72_ (
    .C(clk_2f),
    .D(_01_[2]),
    .Q(data_out_e_1[2])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _73_ (
    .C(clk_2f),
    .D(_01_[3]),
    .Q(data_out_e_1[3])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _74_ (
    .C(clk_2f),
    .D(_01_[4]),
    .Q(data_out_e_1[4])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _75_ (
    .C(clk_2f),
    .D(_01_[5]),
    .Q(data_out_e_1[5])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _76_ (
    .C(clk_2f),
    .D(_01_[6]),
    .Q(data_out_e_1[6])
  );
  (* src = "phy_rx_cond.v:23" *)
  DFF _77_ (
    .C(clk_2f),
    .D(_01_[7]),
    .Q(data_out_e_1[7])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "phy_rx_cond.v:94" *)
  Byte_un_striping_estr Byte_un_striping_instance0 (
    .clk_2f(clk_2f),
    .clk_f(clk_f),
    .data_out_c(data_out_c_US),
    .lane_0(lane_c_0),
    .lane_1(lane_c_1),
    .reset(reset),
    .valid_0(valid_c_0_SP),
    .valid_1(valid_c_1_SP),
    .valid_out_c(valid_out_c_US)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "phy_rx_cond.v:71" *)
  Serie_Paralelo_estr Serie_Paralelo_estr_instance0 (
    .clk_8f(clk_8f),
    .clk_f(clk_f),
    .data_in(data_in_c_0),
    .parallel_out_c(lane_c_0),
    .reset(reset),
    .valid_out_c(valid_c_0_SP)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "phy_rx_cond.v:81" *)
  Serie_Paralelo_estr Serie_Paralelo_estr_instance1 (
    .clk_8f(clk_8f),
    .clk_f(clk_nf),
    .data_in(data_in_c_1),
    .parallel_out_c(lane_c_1),
    .reset(reset1),
    .valid_out_c(valid_c_1_SP)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "phy_rx_cond.v:109" *)
  demux_estr demux_estr_cond_instance0 (
    .clk2f(clk_2f),
    .clk8f(clk_8f),
    .data_in_c(data_out_c_US),
    .data_out_0_c(data_out_e_0_aux),
    .data_out_1_c(data_out_e_1_aux),
    .reset(reset),
    .valid_in_c(valid_out_c_US),
    .valid_out_0_c(valid_out_e_0_aux),
    .valid_out_1_c(valid_out_e_1_aux)
  );
  assign reset0 = reset;
endmodule
