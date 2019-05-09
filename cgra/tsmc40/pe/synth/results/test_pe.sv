/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-5
// Date      : Wed May  8 21:22:15 2019
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0_2 ( CLK, EN, ENCLK, TE
 );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_opt_reg_DataWidth16_2 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [15:0] val;
  input [1:0] mode;
  input [15:0] data_in;
  output [15:0] res;
  output [15:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   data_in_le, net844, n1, n2;
  wire   [15:0] data_in_reg_next;

  SDFCNQD0BWPHVT \data_in_reg_reg[3]  ( .D(data_in_reg_next[3]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[3]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[15]  ( .D(data_in_reg_next[15]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[15]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[14]  ( .D(data_in_reg_next[14]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[14]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[13]  ( .D(data_in_reg_next[13]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[13]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[12]  ( .D(data_in_reg_next[12]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[12]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[11]  ( .D(data_in_reg_next[11]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[11]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[10]  ( .D(data_in_reg_next[10]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[10]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[9]  ( .D(data_in_reg_next[9]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[9]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[8]  ( .D(data_in_reg_next[8]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[8]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[7]  ( .D(data_in_reg_next[7]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[7]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[6]  ( .D(data_in_reg_next[6]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[6]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[5]  ( .D(data_in_reg_next[5]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[5]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[4]  ( .D(data_in_reg_next[4]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[4]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[2]  ( .D(data_in_reg_next[2]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[2]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[1]  ( .D(data_in_reg_next[1]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[1]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0]  ( .D(data_in_reg_next[0]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[0]) );
  INR2XD1BWPHVT U2 ( .A1(mode[1]), .B1(mode[0]), .ZN(n1) );
  MUX2D0BWPHVT U3 ( .I0(reg_data[3]), .I1(data_in[3]), .S(n1), .Z(res[3]) );
  CKMUX2D1BWPHVT U4 ( .I0(reg_data[5]), .I1(data_in[5]), .S(n1), .Z(res[5]) );
  MUX2D0BWPHVT U5 ( .I0(reg_data[8]), .I1(data_in[8]), .S(n1), .Z(res[8]) );
  MUX2D0BWPHVT U6 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  MUX2D0BWPHVT U7 ( .I0(reg_data[1]), .I1(data_in[1]), .S(n1), .Z(res[1]) );
  MUX2D0BWPHVT U8 ( .I0(reg_data[2]), .I1(data_in[2]), .S(n1), .Z(res[2]) );
  MUX2D0BWPHVT U9 ( .I0(reg_data[4]), .I1(data_in[4]), .S(n1), .Z(res[4]) );
  MUX2D0BWPHVT U10 ( .I0(reg_data[6]), .I1(data_in[6]), .S(n1), .Z(res[6]) );
  MUX2D0BWPHVT U11 ( .I0(reg_data[7]), .I1(data_in[7]), .S(n1), .Z(res[7]) );
  MUX2D0BWPHVT U12 ( .I0(reg_data[9]), .I1(data_in[9]), .S(n1), .Z(res[9]) );
  MUX2D0BWPHVT U13 ( .I0(reg_data[10]), .I1(data_in[10]), .S(n1), .Z(res[10])
         );
  CKMUX2D1BWPHVT U14 ( .I0(reg_data[11]), .I1(data_in[11]), .S(n1), .Z(res[11]) );
  MUX2D0BWPHVT U15 ( .I0(reg_data[12]), .I1(data_in[12]), .S(n1), .Z(res[12])
         );
  MUX2D0BWPHVT U16 ( .I0(reg_data[13]), .I1(data_in[13]), .S(n1), .Z(res[13])
         );
  CKMUX2D1BWPHVT U17 ( .I0(reg_data[14]), .I1(data_in[14]), .S(n1), .Z(res[14]) );
  MUX2D0BWPHVT U18 ( .I0(reg_data[15]), .I1(data_in[15]), .S(n1), .Z(res[15])
         );
  OAI21D0BWPHVT U19 ( .A1(mode[1]), .A2(clk_en), .B(mode[0]), .ZN(n2) );
  IND2D0BWPHVT U20 ( .A1(load), .B1(n2), .ZN(data_in_le) );
  MUX2D0BWPHVT U21 ( .I0(data_in[4]), .I1(val[4]), .S(load), .Z(
        data_in_reg_next[4]) );
  MUX2D0BWPHVT U22 ( .I0(data_in[5]), .I1(val[5]), .S(load), .Z(
        data_in_reg_next[5]) );
  MUX2D0BWPHVT U23 ( .I0(data_in[0]), .I1(val[0]), .S(load), .Z(
        data_in_reg_next[0]) );
  MUX2D0BWPHVT U24 ( .I0(data_in[2]), .I1(val[2]), .S(load), .Z(
        data_in_reg_next[2]) );
  MUX2D0BWPHVT U25 ( .I0(data_in[13]), .I1(val[13]), .S(load), .Z(
        data_in_reg_next[13]) );
  MUX2D0BWPHVT U26 ( .I0(data_in[14]), .I1(val[14]), .S(load), .Z(
        data_in_reg_next[14]) );
  MUX2D0BWPHVT U27 ( .I0(data_in[1]), .I1(val[1]), .S(load), .Z(
        data_in_reg_next[1]) );
  MUX2D0BWPHVT U28 ( .I0(data_in[6]), .I1(val[6]), .S(load), .Z(
        data_in_reg_next[6]) );
  MUX2D0BWPHVT U29 ( .I0(data_in[11]), .I1(val[11]), .S(load), .Z(
        data_in_reg_next[11]) );
  MUX2D0BWPHVT U30 ( .I0(data_in[10]), .I1(val[10]), .S(load), .Z(
        data_in_reg_next[10]) );
  MUX2D0BWPHVT U31 ( .I0(data_in[3]), .I1(val[3]), .S(load), .Z(
        data_in_reg_next[3]) );
  MUX2D0BWPHVT U32 ( .I0(data_in[8]), .I1(val[8]), .S(load), .Z(
        data_in_reg_next[8]) );
  MUX2D0BWPHVT U33 ( .I0(data_in[7]), .I1(val[7]), .S(load), .Z(
        data_in_reg_next[7]) );
  MUX2D0BWPHVT U34 ( .I0(data_in[15]), .I1(val[15]), .S(load), .Z(
        data_in_reg_next[15]) );
  MUX2D0BWPHVT U35 ( .I0(data_in[9]), .I1(val[9]), .S(load), .Z(
        data_in_reg_next[9]) );
  MUX2D0BWPHVT U36 ( .I0(data_in[12]), .I1(val[12]), .S(load), .Z(
        data_in_reg_next[12]) );
  SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0_2 clk_gate_data_in_reg_reg ( 
        .CLK(clk), .EN(data_in_le), .ENCLK(net844), .TE(1'b0) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_opt_reg_file_DataWidth16_0 ( CLK, EN, ENCLK, 
        TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_opt_reg_file_DataWidth16_0 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [15:0] val;
  input [2:0] mode;
  input [15:0] data_in;
  output [15:0] res;
  output [15:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   data_in_le, net862, n1, n2, n3;
  wire   [15:0] data_in_reg_next;

  SDFCNQD0BWPHVT \data_in_reg_reg[0][4]  ( .D(data_in_reg_next[4]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[4]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][15]  ( .D(data_in_reg_next[15]), .SI(1'b0), .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[15]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][14]  ( .D(data_in_reg_next[14]), .SI(1'b0), .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[14]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][13]  ( .D(data_in_reg_next[13]), .SI(1'b0), .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[13]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][12]  ( .D(data_in_reg_next[12]), .SI(1'b0), .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[12]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][11]  ( .D(data_in_reg_next[11]), .SI(1'b0), .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[11]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][10]  ( .D(data_in_reg_next[10]), .SI(1'b0), .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[10]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][9]  ( .D(data_in_reg_next[9]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[9]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][8]  ( .D(data_in_reg_next[8]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[8]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][7]  ( .D(data_in_reg_next[7]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[7]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][6]  ( .D(data_in_reg_next[6]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[6]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][5]  ( .D(data_in_reg_next[5]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[5]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][3]  ( .D(data_in_reg_next[3]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[3]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][2]  ( .D(data_in_reg_next[2]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[2]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][1]  ( .D(data_in_reg_next[1]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[1]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][0]  ( .D(data_in_reg_next[0]), .SI(1'b0), 
        .SE(1'b0), .CP(net862), .CDN(rst_n), .Q(reg_data[0]) );
  MUX2D0BWPHVT U2 ( .I0(reg_data[6]), .I1(data_in[6]), .S(n1), .Z(res[6]) );
  MUX2D0BWPHVT U3 ( .I0(reg_data[13]), .I1(data_in[13]), .S(n1), .Z(res[13])
         );
  INR3D1BWPHVT U4 ( .A1(mode[1]), .B1(mode[0]), .B2(mode[2]), .ZN(n1) );
  MUX2D0BWPHVT U5 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  CKMUX2D1BWPHVT U6 ( .I0(reg_data[1]), .I1(data_in[1]), .S(n1), .Z(res[1]) );
  MUX2D0BWPHVT U7 ( .I0(reg_data[2]), .I1(data_in[2]), .S(n1), .Z(res[2]) );
  MUX2D0BWPHVT U8 ( .I0(reg_data[3]), .I1(data_in[3]), .S(n1), .Z(res[3]) );
  MUX2D0BWPHVT U9 ( .I0(reg_data[4]), .I1(data_in[4]), .S(n1), .Z(res[4]) );
  MUX2D0BWPHVT U10 ( .I0(reg_data[5]), .I1(data_in[5]), .S(n1), .Z(res[5]) );
  MUX2D0BWPHVT U11 ( .I0(reg_data[7]), .I1(data_in[7]), .S(n1), .Z(res[7]) );
  MUX2D0BWPHVT U12 ( .I0(reg_data[8]), .I1(data_in[8]), .S(n1), .Z(res[8]) );
  MUX2D0BWPHVT U13 ( .I0(reg_data[9]), .I1(data_in[9]), .S(n1), .Z(res[9]) );
  MUX2D0BWPHVT U14 ( .I0(reg_data[10]), .I1(data_in[10]), .S(n1), .Z(res[10])
         );
  MUX2D0BWPHVT U15 ( .I0(reg_data[11]), .I1(data_in[11]), .S(n1), .Z(res[11])
         );
  MUX2D0BWPHVT U16 ( .I0(reg_data[12]), .I1(data_in[12]), .S(n1), .Z(res[12])
         );
  MUX2D0BWPHVT U17 ( .I0(reg_data[14]), .I1(data_in[14]), .S(n1), .Z(res[14])
         );
  MUX2D0BWPHVT U18 ( .I0(reg_data[15]), .I1(data_in[15]), .S(n1), .Z(res[15])
         );
  OAI21D0BWPHVT U19 ( .A1(mode[1]), .A2(clk_en), .B(mode[0]), .ZN(n3) );
  CKND0BWPHVT U20 ( .I(load), .ZN(n2) );
  OAI21D0BWPHVT U21 ( .A1(mode[2]), .A2(n3), .B(n2), .ZN(data_in_le) );
  MUX2D0BWPHVT U22 ( .I0(data_in[0]), .I1(val[0]), .S(load), .Z(
        data_in_reg_next[0]) );
  MUX2D0BWPHVT U23 ( .I0(data_in[1]), .I1(val[1]), .S(load), .Z(
        data_in_reg_next[1]) );
  MUX2D0BWPHVT U24 ( .I0(data_in[2]), .I1(val[2]), .S(load), .Z(
        data_in_reg_next[2]) );
  MUX2D0BWPHVT U25 ( .I0(data_in[3]), .I1(val[3]), .S(load), .Z(
        data_in_reg_next[3]) );
  MUX2D0BWPHVT U26 ( .I0(data_in[4]), .I1(val[4]), .S(load), .Z(
        data_in_reg_next[4]) );
  MUX2D0BWPHVT U27 ( .I0(data_in[5]), .I1(val[5]), .S(load), .Z(
        data_in_reg_next[5]) );
  MUX2D0BWPHVT U28 ( .I0(data_in[6]), .I1(val[6]), .S(load), .Z(
        data_in_reg_next[6]) );
  MUX2D0BWPHVT U29 ( .I0(data_in[7]), .I1(val[7]), .S(load), .Z(
        data_in_reg_next[7]) );
  MUX2D0BWPHVT U30 ( .I0(data_in[8]), .I1(val[8]), .S(load), .Z(
        data_in_reg_next[8]) );
  MUX2D0BWPHVT U31 ( .I0(data_in[9]), .I1(val[9]), .S(load), .Z(
        data_in_reg_next[9]) );
  MUX2D0BWPHVT U32 ( .I0(data_in[10]), .I1(val[10]), .S(load), .Z(
        data_in_reg_next[10]) );
  MUX2D0BWPHVT U33 ( .I0(data_in[11]), .I1(val[11]), .S(load), .Z(
        data_in_reg_next[11]) );
  MUX2D0BWPHVT U34 ( .I0(data_in[12]), .I1(val[12]), .S(load), .Z(
        data_in_reg_next[12]) );
  MUX2D0BWPHVT U35 ( .I0(data_in[13]), .I1(val[13]), .S(load), .Z(
        data_in_reg_next[13]) );
  MUX2D0BWPHVT U36 ( .I0(data_in[14]), .I1(val[14]), .S(load), .Z(
        data_in_reg_next[14]) );
  MUX2D0BWPHVT U37 ( .I0(data_in[15]), .I1(val[15]), .S(load), .Z(
        data_in_reg_next[15]) );
  SNPS_CLOCK_GATE_HIGH_test_opt_reg_file_DataWidth16_0 \clk_gate_data_in_reg_reg[0]  ( 
        .CLK(clk), .EN(data_in_le), .ENCLK(net862), .TE(1'b0) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0_3 ( CLK, EN, ENCLK, TE
 );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_opt_reg_DataWidth16_3 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [15:0] val;
  input [1:0] mode;
  input [15:0] data_in;
  output [15:0] res;
  output [15:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   data_in_le, net844, n1, n2;
  wire   [15:0] data_in_reg_next;

  SDFCNQD0BWPHVT \data_in_reg_reg[5]  ( .D(data_in_reg_next[5]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[5]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[15]  ( .D(data_in_reg_next[15]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[15]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[14]  ( .D(data_in_reg_next[14]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[14]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[13]  ( .D(data_in_reg_next[13]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[13]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[12]  ( .D(data_in_reg_next[12]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[12]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[11]  ( .D(data_in_reg_next[11]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[11]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[10]  ( .D(data_in_reg_next[10]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[10]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[9]  ( .D(data_in_reg_next[9]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[9]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[8]  ( .D(data_in_reg_next[8]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[8]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[7]  ( .D(data_in_reg_next[7]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[7]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[6]  ( .D(data_in_reg_next[6]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[6]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[4]  ( .D(data_in_reg_next[4]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[4]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[3]  ( .D(data_in_reg_next[3]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[3]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[2]  ( .D(data_in_reg_next[2]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[2]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[1]  ( .D(data_in_reg_next[1]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[1]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0]  ( .D(data_in_reg_next[0]), .SI(1'b0), 
        .SE(1'b0), .CP(net844), .CDN(rst_n), .Q(reg_data[0]) );
  INR2XD1BWPHVT U2 ( .A1(mode[1]), .B1(mode[0]), .ZN(n2) );
  MUX2D0BWPHVT U3 ( .I0(reg_data[15]), .I1(data_in[15]), .S(n2), .Z(res[15])
         );
  OAI21D0BWPHVT U4 ( .A1(mode[1]), .A2(clk_en), .B(mode[0]), .ZN(n1) );
  IND2D0BWPHVT U5 ( .A1(load), .B1(n1), .ZN(data_in_le) );
  MUX2D0BWPHVT U6 ( .I0(data_in[0]), .I1(val[0]), .S(load), .Z(
        data_in_reg_next[0]) );
  MUX2D0BWPHVT U7 ( .I0(data_in[1]), .I1(val[1]), .S(load), .Z(
        data_in_reg_next[1]) );
  MUX2D0BWPHVT U8 ( .I0(data_in[2]), .I1(val[2]), .S(load), .Z(
        data_in_reg_next[2]) );
  MUX2D0BWPHVT U9 ( .I0(data_in[3]), .I1(val[3]), .S(load), .Z(
        data_in_reg_next[3]) );
  MUX2D0BWPHVT U10 ( .I0(data_in[4]), .I1(val[4]), .S(load), .Z(
        data_in_reg_next[4]) );
  MUX2D0BWPHVT U11 ( .I0(data_in[5]), .I1(val[5]), .S(load), .Z(
        data_in_reg_next[5]) );
  MUX2D0BWPHVT U12 ( .I0(data_in[6]), .I1(val[6]), .S(load), .Z(
        data_in_reg_next[6]) );
  MUX2D0BWPHVT U13 ( .I0(data_in[7]), .I1(val[7]), .S(load), .Z(
        data_in_reg_next[7]) );
  MUX2D0BWPHVT U14 ( .I0(data_in[8]), .I1(val[8]), .S(load), .Z(
        data_in_reg_next[8]) );
  MUX2D0BWPHVT U15 ( .I0(data_in[9]), .I1(val[9]), .S(load), .Z(
        data_in_reg_next[9]) );
  MUX2D0BWPHVT U16 ( .I0(data_in[10]), .I1(val[10]), .S(load), .Z(
        data_in_reg_next[10]) );
  MUX2D0BWPHVT U17 ( .I0(data_in[11]), .I1(val[11]), .S(load), .Z(
        data_in_reg_next[11]) );
  MUX2D0BWPHVT U18 ( .I0(data_in[12]), .I1(val[12]), .S(load), .Z(
        data_in_reg_next[12]) );
  MUX2D0BWPHVT U19 ( .I0(data_in[13]), .I1(val[13]), .S(load), .Z(
        data_in_reg_next[13]) );
  MUX2D0BWPHVT U20 ( .I0(data_in[14]), .I1(val[14]), .S(load), .Z(
        data_in_reg_next[14]) );
  MUX2D0BWPHVT U21 ( .I0(data_in[15]), .I1(val[15]), .S(load), .Z(
        data_in_reg_next[15]) );
  MUX2D0BWPHVT U22 ( .I0(reg_data[6]), .I1(data_in[6]), .S(n2), .Z(res[6]) );
  MUX2D0BWPHVT U23 ( .I0(reg_data[7]), .I1(data_in[7]), .S(n2), .Z(res[7]) );
  MUX2D0BWPHVT U24 ( .I0(reg_data[8]), .I1(data_in[8]), .S(n2), .Z(res[8]) );
  MUX2D0BWPHVT U25 ( .I0(reg_data[9]), .I1(data_in[9]), .S(n2), .Z(res[9]) );
  MUX2D0BWPHVT U26 ( .I0(reg_data[10]), .I1(data_in[10]), .S(n2), .Z(res[10])
         );
  MUX2D0BWPHVT U27 ( .I0(reg_data[11]), .I1(data_in[11]), .S(n2), .Z(res[11])
         );
  MUX2D0BWPHVT U28 ( .I0(reg_data[12]), .I1(data_in[12]), .S(n2), .Z(res[12])
         );
  MUX2D0BWPHVT U29 ( .I0(reg_data[13]), .I1(data_in[13]), .S(n2), .Z(res[13])
         );
  MUX2D0BWPHVT U30 ( .I0(reg_data[14]), .I1(data_in[14]), .S(n2), .Z(res[14])
         );
  MUX2D0BWPHVT U31 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n2), .Z(res[0]) );
  MUX2D0BWPHVT U32 ( .I0(reg_data[1]), .I1(data_in[1]), .S(n2), .Z(res[1]) );
  MUX2D0BWPHVT U33 ( .I0(reg_data[2]), .I1(data_in[2]), .S(n2), .Z(res[2]) );
  MUX2D0BWPHVT U34 ( .I0(reg_data[3]), .I1(data_in[3]), .S(n2), .Z(res[3]) );
  MUX2D0BWPHVT U35 ( .I0(reg_data[4]), .I1(data_in[4]), .S(n2), .Z(res[4]) );
  MUX2D0BWPHVT U36 ( .I0(reg_data[5]), .I1(data_in[5]), .S(n2), .Z(res[5]) );
  SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0_3 clk_gate_data_in_reg_reg ( 
        .CLK(clk), .EN(data_in_le), .ENCLK(net844), .TE(1'b0) );
endmodule


module test_opt_reg_DataWidth1_3 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [0:0] val;
  input [1:0] mode;
  input [0:0] data_in;
  output [0:0] res;
  output [0:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   n7, n1, n2, n3, n4;

  SDFCNQD0BWPHVT \data_in_reg_reg[0]  ( .D(n7), .SI(1'b0), .SE(1'b0), .CP(clk), 
        .CDN(rst_n), .Q(reg_data[0]) );
  INR2D0BWPHVT U2 ( .A1(mode[1]), .B1(mode[0]), .ZN(n1) );
  MUX2D0BWPHVT U3 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  MUX2ND0BWPHVT U4 ( .I0(data_in[0]), .I1(val[0]), .S(load), .ZN(n4) );
  CKND0BWPHVT U5 ( .I(reg_data[0]), .ZN(n3) );
  OAI32D0BWPHVT U6 ( .A1(load), .A2(clk_en), .A3(mode[1]), .B1(mode[0]), .B2(
        load), .ZN(n2) );
  MUX2ND0BWPHVT U7 ( .I0(n4), .I1(n3), .S(n2), .ZN(n7) );
endmodule


module test_opt_reg_DataWidth1_4 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [0:0] val;
  input [1:0] mode;
  input [0:0] data_in;
  output [0:0] res;
  output [0:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   n1, n2, n3, n4, n5;

  SDFCNQD0BWPHVT \data_in_reg_reg[0]  ( .D(n5), .SI(1'b0), .SE(1'b0), .CP(clk), 
        .CDN(rst_n), .Q(reg_data[0]) );
  INR2D0BWPHVT U2 ( .A1(mode[1]), .B1(mode[0]), .ZN(n1) );
  MUX2D0BWPHVT U3 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  MUX2ND0BWPHVT U4 ( .I0(data_in[0]), .I1(val[0]), .S(load), .ZN(n4) );
  CKND0BWPHVT U5 ( .I(reg_data[0]), .ZN(n3) );
  OAI32D0BWPHVT U6 ( .A1(load), .A2(clk_en), .A3(mode[1]), .B1(mode[0]), .B2(
        load), .ZN(n2) );
  MUX2ND0BWPHVT U7 ( .I0(n4), .I1(n3), .S(n2), .ZN(n5) );
endmodule


module test_opt_reg_DataWidth1_5 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [0:0] val;
  input [1:0] mode;
  input [0:0] data_in;
  output [0:0] res;
  output [0:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   n1, n2, n3, n4, n5;

  SDFCNQD0BWPHVT \data_in_reg_reg[0]  ( .D(n5), .SI(1'b0), .SE(1'b0), .CP(clk), 
        .CDN(rst_n), .Q(reg_data[0]) );
  CKND0BWPHVT U2 ( .I(reg_data[0]), .ZN(n3) );
  INR2D0BWPHVT U3 ( .A1(mode[1]), .B1(mode[0]), .ZN(n1) );
  MUX2D0BWPHVT U4 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  MUX2ND0BWPHVT U5 ( .I0(data_in[0]), .I1(val[0]), .S(load), .ZN(n4) );
  OAI32D0BWPHVT U6 ( .A1(load), .A2(clk_en), .A3(mode[1]), .B1(mode[0]), .B2(
        load), .ZN(n2) );
  MUX2ND0BWPHVT U7 ( .I0(n4), .I1(n3), .S(n2), .ZN(n5) );
endmodule


module test_full_add_DataWidth16_2 ( a, b, c_in, res, c_out );
  input [15:0] a;
  input [15:0] b;
  output [15:0] res;
  input c_in;
  output c_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  FA1D0BWPHVT U1 ( .A(a[15]), .B(b[15]), .CI(n1), .CO(c_out), .S(res[15]) );
  FA1D0BWPHVT U2 ( .A(a[14]), .B(b[14]), .CI(n2), .CO(n1), .S(res[14]) );
  FA1D0BWPHVT U3 ( .A(a[13]), .B(b[13]), .CI(n3), .CO(n2), .S(res[13]) );
  FA1D0BWPHVT U4 ( .A(a[12]), .B(b[12]), .CI(n4), .CO(n3), .S(res[12]) );
  FA1D0BWPHVT U5 ( .A(a[11]), .B(b[11]), .CI(n5), .CO(n4), .S(res[11]) );
  FA1D0BWPHVT U6 ( .A(a[10]), .B(b[10]), .CI(n6), .CO(n5), .S(res[10]) );
  FA1D0BWPHVT U7 ( .A(a[9]), .B(b[9]), .CI(n7), .CO(n6), .S(res[9]) );
  FA1D0BWPHVT U8 ( .A(a[8]), .B(b[8]), .CI(n8), .CO(n7), .S(res[8]) );
  FA1D0BWPHVT U9 ( .A(a[7]), .B(b[7]), .CI(n9), .CO(n8), .S(res[7]) );
  FA1D0BWPHVT U10 ( .A(a[6]), .B(b[6]), .CI(n10), .CO(n9), .S(res[6]) );
  FA1D0BWPHVT U11 ( .A(a[5]), .B(b[5]), .CI(n11), .CO(n10), .S(res[5]) );
  FA1D0BWPHVT U12 ( .A(a[4]), .B(b[4]), .CI(n12), .CO(n11), .S(res[4]) );
  FA1D0BWPHVT U13 ( .A(a[3]), .B(b[3]), .CI(n13), .CO(n12), .S(res[3]) );
  FA1D0BWPHVT U14 ( .A(a[2]), .B(b[2]), .CI(n14), .CO(n13), .S(res[2]) );
  FA1D0BWPHVT U15 ( .A(a[1]), .B(b[1]), .CI(n15), .CO(n14), .S(res[1]) );
  FA1D0BWPHVT U16 ( .A(c_in), .B(a[0]), .CI(b[0]), .CO(n15), .S(res[0]) );
endmodule


module test_full_add_DataWidth16_3 ( a, b, c_in, res, c_out );
  input [15:0] a;
  input [15:0] b;
  output [15:0] res;
  input c_in;
  output c_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  FA1D0BWPHVT U1 ( .A(a[15]), .B(b[15]), .CI(n1), .CO(c_out), .S(res[15]) );
  FA1D0BWPHVT U2 ( .A(a[14]), .B(b[14]), .CI(n2), .CO(n1), .S(res[14]) );
  FA1D0BWPHVT U3 ( .A(a[13]), .B(b[13]), .CI(n3), .CO(n2), .S(res[13]) );
  FA1D0BWPHVT U4 ( .A(a[12]), .B(b[12]), .CI(n4), .CO(n3), .S(res[12]) );
  FA1D0BWPHVT U5 ( .A(a[11]), .B(b[11]), .CI(n5), .CO(n4), .S(res[11]) );
  FA1D0BWPHVT U6 ( .A(a[10]), .B(b[10]), .CI(n6), .CO(n5), .S(res[10]) );
  FA1D0BWPHVT U7 ( .A(a[9]), .B(b[9]), .CI(n7), .CO(n6), .S(res[9]) );
  FA1D0BWPHVT U8 ( .A(a[8]), .B(b[8]), .CI(n8), .CO(n7), .S(res[8]) );
  FA1D0BWPHVT U9 ( .A(a[7]), .B(b[7]), .CI(n9), .CO(n8), .S(res[7]) );
  FA1D0BWPHVT U10 ( .A(a[6]), .B(b[6]), .CI(n10), .CO(n9), .S(res[6]) );
  FA1D0BWPHVT U11 ( .A(a[5]), .B(b[5]), .CI(n11), .CO(n10), .S(res[5]) );
  FA1D0BWPHVT U12 ( .A(a[4]), .B(b[4]), .CI(n12), .CO(n11), .S(res[4]) );
  FA1D0BWPHVT U13 ( .A(a[3]), .B(b[3]), .CI(n13), .CO(n12), .S(res[3]) );
  FA1D0BWPHVT U14 ( .A(a[2]), .B(b[2]), .CI(n14), .CO(n13), .S(res[2]) );
  FA1D0BWPHVT U15 ( .A(a[1]), .B(b[1]), .CI(n15), .CO(n14), .S(res[1]) );
  FA1D0BWPHVT U16 ( .A(c_in), .B(a[0]), .CI(b[0]), .CO(n15), .S(res[0]) );
endmodule


module test_cmpr_0 ( a_msb, b_msb, diff_msb, is_signed, eq, lte, gte );
  input a_msb, b_msb, diff_msb, is_signed, eq;
  output lte, gte;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  CKND0BWPHVT U1 ( .I(a_msb), .ZN(n1) );
  CKND2D0BWPHVT U2 ( .A1(n1), .A2(b_msb), .ZN(n2) );
  CKND0BWPHVT U3 ( .I(n2), .ZN(n8) );
  NR2D0BWPHVT U4 ( .A1(b_msb), .A2(n1), .ZN(n7) );
  CKND0BWPHVT U5 ( .I(diff_msb), .ZN(n5) );
  NR2D0BWPHVT U6 ( .A1(is_signed), .A2(n2), .ZN(n3) );
  AOI211D0BWPHVT U7 ( .A1(is_signed), .A2(n7), .B(n3), .C(eq), .ZN(n4) );
  OAI31D0BWPHVT U8 ( .A1(n8), .A2(n7), .A3(n5), .B(n4), .ZN(lte) );
  MUX2ND0BWPHVT U9 ( .I0(n7), .I1(n8), .S(is_signed), .ZN(n6) );
  OAI31D0BWPHVT U10 ( .A1(diff_msb), .A2(n8), .A3(n7), .B(n6), .ZN(gte) );
endmodule


module test_mult_add_DataWidth16_0 ( is_signed, a, b, c, res, c_out );
  input [15:0] a;
  input [15:0] b;
  input [15:0] c;
  output [31:0] res;
  input is_signed;
  output c_out;
  wire   \DP_OP_6J1_122_4365/n408 , \DP_OP_6J1_122_4365/n403 ,
         \DP_OP_6J1_122_4365/n402 , \DP_OP_6J1_122_4365/n401 ,
         \DP_OP_6J1_122_4365/n400 , \DP_OP_6J1_122_4365/n399 ,
         \DP_OP_6J1_122_4365/n398 , \DP_OP_6J1_122_4365/n397 ,
         \DP_OP_6J1_122_4365/n396 , \DP_OP_6J1_122_4365/n395 ,
         \DP_OP_6J1_122_4365/n394 , \DP_OP_6J1_122_4365/n393 ,
         \DP_OP_6J1_122_4365/n392 , \DP_OP_6J1_122_4365/n391 ,
         \DP_OP_6J1_122_4365/n389 , \DP_OP_6J1_122_4365/n388 ,
         \DP_OP_6J1_122_4365/n387 , \DP_OP_6J1_122_4365/n386 ,
         \DP_OP_6J1_122_4365/n385 , \DP_OP_6J1_122_4365/n384 ,
         \DP_OP_6J1_122_4365/n383 , \DP_OP_6J1_122_4365/n382 ,
         \DP_OP_6J1_122_4365/n381 , \DP_OP_6J1_122_4365/n380 ,
         \DP_OP_6J1_122_4365/n379 , \DP_OP_6J1_122_4365/n378 ,
         \DP_OP_6J1_122_4365/n377 , \DP_OP_6J1_122_4365/n376 ,
         \DP_OP_6J1_122_4365/n375 , \DP_OP_6J1_122_4365/n374 ,
         \DP_OP_6J1_122_4365/n373 , \DP_OP_6J1_122_4365/n372 ,
         \DP_OP_6J1_122_4365/n371 , \DP_OP_6J1_122_4365/n370 ,
         \DP_OP_6J1_122_4365/n365 , \DP_OP_6J1_122_4365/n364 ,
         \DP_OP_6J1_122_4365/n363 , \DP_OP_6J1_122_4365/n362 ,
         \DP_OP_6J1_122_4365/n361 , \DP_OP_6J1_122_4365/n360 ,
         \DP_OP_6J1_122_4365/n359 , \DP_OP_6J1_122_4365/n358 ,
         \DP_OP_6J1_122_4365/n357 , \DP_OP_6J1_122_4365/n356 ,
         \DP_OP_6J1_122_4365/n355 , \DP_OP_6J1_122_4365/n354 ,
         \DP_OP_6J1_122_4365/n353 , \DP_OP_6J1_122_4365/n352 ,
         \DP_OP_6J1_122_4365/n351 , \DP_OP_6J1_122_4365/n350 ,
         \DP_OP_6J1_122_4365/n349 , \DP_OP_6J1_122_4365/n348 ,
         \DP_OP_6J1_122_4365/n347 , \DP_OP_6J1_122_4365/n346 ,
         \DP_OP_6J1_122_4365/n345 , \DP_OP_6J1_122_4365/n344 ,
         \DP_OP_6J1_122_4365/n343 , \DP_OP_6J1_122_4365/n342 ,
         \DP_OP_6J1_122_4365/n341 , \DP_OP_6J1_122_4365/n340 ,
         \DP_OP_6J1_122_4365/n338 , \DP_OP_6J1_122_4365/n337 ,
         \DP_OP_6J1_122_4365/n336 , \DP_OP_6J1_122_4365/n335 ,
         \DP_OP_6J1_122_4365/n334 , \DP_OP_6J1_122_4365/n326 ,
         \DP_OP_6J1_122_4365/n325 , \DP_OP_6J1_122_4365/n321 ,
         \DP_OP_6J1_122_4365/n320 , \DP_OP_6J1_122_4365/n319 ,
         \DP_OP_6J1_122_4365/n264 , \DP_OP_6J1_122_4365/n263 ,
         \DP_OP_6J1_122_4365/n262 , \DP_OP_6J1_122_4365/n261 ,
         \DP_OP_6J1_122_4365/n260 , \DP_OP_6J1_122_4365/n259 ,
         \DP_OP_6J1_122_4365/n258 , \DP_OP_6J1_122_4365/n257 ,
         \DP_OP_6J1_122_4365/n256 , \DP_OP_6J1_122_4365/n255 ,
         \DP_OP_6J1_122_4365/n254 , \DP_OP_6J1_122_4365/n252 ,
         \DP_OP_6J1_122_4365/n251 , \DP_OP_6J1_122_4365/n250 ,
         \DP_OP_6J1_122_4365/n249 , \DP_OP_6J1_122_4365/n247 ,
         \DP_OP_6J1_122_4365/n246 , \DP_OP_6J1_122_4365/n245 ,
         \DP_OP_6J1_122_4365/n244 , \DP_OP_6J1_122_4365/n243 ,
         \DP_OP_6J1_122_4365/n242 , \DP_OP_6J1_122_4365/n241 ,
         \DP_OP_6J1_122_4365/n240 , \DP_OP_6J1_122_4365/n239 ,
         \DP_OP_6J1_122_4365/n238 , \DP_OP_6J1_122_4365/n237 ,
         \DP_OP_6J1_122_4365/n236 , \DP_OP_6J1_122_4365/n235 ,
         \DP_OP_6J1_122_4365/n234 , \DP_OP_6J1_122_4365/n233 ,
         \DP_OP_6J1_122_4365/n232 , \DP_OP_6J1_122_4365/n231 ,
         \DP_OP_6J1_122_4365/n230 , \DP_OP_6J1_122_4365/n229 ,
         \DP_OP_6J1_122_4365/n228 , \DP_OP_6J1_122_4365/n227 ,
         \DP_OP_6J1_122_4365/n226 , \DP_OP_6J1_122_4365/n225 ,
         \DP_OP_6J1_122_4365/n224 , \DP_OP_6J1_122_4365/n223 ,
         \DP_OP_6J1_122_4365/n222 , \DP_OP_6J1_122_4365/n221 ,
         \DP_OP_6J1_122_4365/n219 , \DP_OP_6J1_122_4365/n218 ,
         \DP_OP_6J1_122_4365/n217 , \DP_OP_6J1_122_4365/n216 ,
         \DP_OP_6J1_122_4365/n215 , \DP_OP_6J1_122_4365/n214 ,
         \DP_OP_6J1_122_4365/n213 , \DP_OP_6J1_122_4365/n211 ,
         \DP_OP_6J1_122_4365/n210 , \DP_OP_6J1_122_4365/n209 ,
         \DP_OP_6J1_122_4365/n208 , \DP_OP_6J1_122_4365/n207 ,
         \DP_OP_6J1_122_4365/n206 , \DP_OP_6J1_122_4365/n205 ,
         \DP_OP_6J1_122_4365/n204 , \DP_OP_6J1_122_4365/n203 ,
         \DP_OP_6J1_122_4365/n202 , \DP_OP_6J1_122_4365/n201 ,
         \DP_OP_6J1_122_4365/n200 , \DP_OP_6J1_122_4365/n199 ,
         \DP_OP_6J1_122_4365/n198 , \DP_OP_6J1_122_4365/n197 ,
         \DP_OP_6J1_122_4365/n196 , \DP_OP_6J1_122_4365/n195 ,
         \DP_OP_6J1_122_4365/n194 , \DP_OP_6J1_122_4365/n193 ,
         \DP_OP_6J1_122_4365/n192 , \DP_OP_6J1_122_4365/n191 ,
         \DP_OP_6J1_122_4365/n190 , \DP_OP_6J1_122_4365/n189 ,
         \DP_OP_6J1_122_4365/n188 , \DP_OP_6J1_122_4365/n187 ,
         \DP_OP_6J1_122_4365/n186 , \DP_OP_6J1_122_4365/n185 ,
         \DP_OP_6J1_122_4365/n184 , \DP_OP_6J1_122_4365/n183 ,
         \DP_OP_6J1_122_4365/n181 , \DP_OP_6J1_122_4365/n180 ,
         \DP_OP_6J1_122_4365/n179 , \DP_OP_6J1_122_4365/n178 ,
         \DP_OP_6J1_122_4365/n177 , \DP_OP_6J1_122_4365/n176 ,
         \DP_OP_6J1_122_4365/n175 , \DP_OP_6J1_122_4365/n174 ,
         \DP_OP_6J1_122_4365/n173 , \DP_OP_6J1_122_4365/n172 ,
         \DP_OP_6J1_122_4365/n171 , \DP_OP_6J1_122_4365/n170 ,
         \DP_OP_6J1_122_4365/n168 , \DP_OP_6J1_122_4365/n166 ,
         \DP_OP_6J1_122_4365/n165 , \DP_OP_6J1_122_4365/n164 ,
         \DP_OP_6J1_122_4365/n162 , \DP_OP_6J1_122_4365/n161 ,
         \DP_OP_6J1_122_4365/n160 , \DP_OP_6J1_122_4365/n159 ,
         \DP_OP_6J1_122_4365/n158 , \DP_OP_6J1_122_4365/n157 ,
         \DP_OP_6J1_122_4365/n156 , \DP_OP_6J1_122_4365/n155 ,
         \DP_OP_6J1_122_4365/n154 , \DP_OP_6J1_122_4365/n153 ,
         \DP_OP_6J1_122_4365/n152 , \DP_OP_6J1_122_4365/n151 ,
         \DP_OP_6J1_122_4365/n150 , \DP_OP_6J1_122_4365/n149 ,
         \DP_OP_6J1_122_4365/n147 , \DP_OP_6J1_122_4365/n146 ,
         \DP_OP_6J1_122_4365/n145 , \DP_OP_6J1_122_4365/n144 ,
         \DP_OP_6J1_122_4365/n143 , \DP_OP_6J1_122_4365/n142 ,
         \DP_OP_6J1_122_4365/n137 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490;

  MOAI22D0BWPHVT U1 ( .A1(n481), .A2(n480), .B1(b[15]), .B2(n479), .ZN(n485)
         );
  CKND0BWPHVT U2 ( .I(a[14]), .ZN(n284) );
  CKND0BWPHVT U3 ( .I(a[11]), .ZN(n337) );
  CKND0BWPHVT U4 ( .I(a[5]), .ZN(n478) );
  CKND0BWPHVT U5 ( .I(n417), .ZN(n66) );
  CKND0BWPHVT U6 ( .I(is_signed), .ZN(n36) );
  CKND0BWPHVT U7 ( .I(n28), .ZN(\DP_OP_6J1_122_4365/n160 ) );
  CKND0BWPHVT U8 ( .I(n13), .ZN(\DP_OP_6J1_122_4365/n168 ) );
  CKND0BWPHVT U9 ( .I(n51), .ZN(n149) );
  CKAN2D0BWPHVT U10 ( .A1(c[15]), .A2(is_signed), .Z(n214) );
  NR2D0BWPHVT U11 ( .A1(a[0]), .A2(a[1]), .ZN(n1) );
  CKND2D0BWPHVT U12 ( .A1(is_signed), .A2(b[15]), .ZN(n23) );
  CKND0BWPHVT U13 ( .I(n23), .ZN(n482) );
  CKND0BWPHVT U14 ( .I(a[2]), .ZN(n487) );
  OAI32D0BWPHVT U15 ( .A1(a[2]), .A2(n1), .A3(n23), .B1(n482), .B2(n487), .ZN(
        n30) );
  CKND2D0BWPHVT U16 ( .A1(is_signed), .A2(a[15]), .ZN(n210) );
  CKND0BWPHVT U17 ( .I(a[15]), .ZN(n37) );
  OAI22D0BWPHVT U18 ( .A1(n284), .A2(n37), .B1(a[15]), .B2(a[14]), .ZN(n208)
         );
  CKND0BWPHVT U19 ( .I(n208), .ZN(n234) );
  CKND2D0BWPHVT U20 ( .A1(b[3]), .A2(n234), .ZN(n3) );
  ND3D0BWPHVT U21 ( .A1(n36), .A2(a[14]), .A3(a[15]), .ZN(n55) );
  CKND0BWPHVT U22 ( .I(b[2]), .ZN(n396) );
  OAI211D0BWPHVT U23 ( .A1(n55), .A2(n396), .B(n3), .C(n210), .ZN(n2) );
  OAI21D0BWPHVT U24 ( .A1(n210), .A2(n3), .B(n2), .ZN(n29) );
  CKND0BWPHVT U25 ( .I(n4), .ZN(\DP_OP_6J1_122_4365/n197 ) );
  CKND2D0BWPHVT U26 ( .A1(b[7]), .A2(n234), .ZN(n6) );
  CKND0BWPHVT U27 ( .I(b[6]), .ZN(n380) );
  OAI211D0BWPHVT U28 ( .A1(n55), .A2(n380), .B(n6), .C(n210), .ZN(n5) );
  OAI21D0BWPHVT U29 ( .A1(n210), .A2(n6), .B(n5), .ZN(n19) );
  MUX2ND0BWPHVT U30 ( .I0(n284), .I1(a[14]), .S(a[13]), .ZN(n41) );
  CKND0BWPHVT U31 ( .I(n41), .ZN(n8) );
  CKND0BWPHVT U32 ( .I(a[12]), .ZN(n7) );
  MUX2ND0BWPHVT U33 ( .I0(n337), .I1(a[11]), .S(n7), .ZN(n282) );
  MUX2ND0BWPHVT U34 ( .I0(a[12]), .I1(n7), .S(a[13]), .ZN(n9) );
  CKND2D0BWPHVT U35 ( .A1(n282), .A2(n9), .ZN(n40) );
  NR2D0BWPHVT U36 ( .A1(n8), .A2(n40), .ZN(n274) );
  CKND0BWPHVT U37 ( .I(b[0]), .ZN(n413) );
  CKND0BWPHVT U38 ( .I(b[1]), .ZN(n400) );
  AOI21D0BWPHVT U39 ( .A1(n396), .A2(n413), .B(n400), .ZN(n84) );
  NR2D0BWPHVT U40 ( .A1(n282), .A2(n8), .ZN(n278) );
  AOI22D0BWPHVT U41 ( .A1(b[8]), .A2(n274), .B1(n442), .B2(n278), .ZN(n11) );
  NR2D0BWPHVT U42 ( .A1(n41), .A2(n282), .ZN(n280) );
  INR2D0BWPHVT U43 ( .A1(n282), .B1(n9), .ZN(n279) );
  AOI22D0BWPHVT U44 ( .A1(b[10]), .A2(n280), .B1(b[9]), .B2(n279), .ZN(n10) );
  CKND2D0BWPHVT U45 ( .A1(n11), .A2(n10), .ZN(n12) );
  MUX2ND0BWPHVT U46 ( .I0(a[14]), .I1(n284), .S(n12), .ZN(n18) );
  CKND2D0BWPHVT U47 ( .A1(b[4]), .A2(n234), .ZN(n15) );
  CKND0BWPHVT U48 ( .I(b[3]), .ZN(n392) );
  OAI211D0BWPHVT U49 ( .A1(n55), .A2(n392), .B(n15), .C(n210), .ZN(n14) );
  OAI21D0BWPHVT U50 ( .A1(n210), .A2(n15), .B(n14), .ZN(
        \DP_OP_6J1_122_4365/n189 ) );
  CKND0BWPHVT U51 ( .I(\DP_OP_6J1_122_4365/n189 ), .ZN(
        \DP_OP_6J1_122_4365/n181 ) );
  CKND2D0BWPHVT U52 ( .A1(b[8]), .A2(n234), .ZN(n17) );
  CKND0BWPHVT U53 ( .I(b[7]), .ZN(n376) );
  OAI211D0BWPHVT U54 ( .A1(n55), .A2(n376), .B(n17), .C(n210), .ZN(n16) );
  OAI21D0BWPHVT U55 ( .A1(n210), .A2(n17), .B(n16), .ZN(n27) );
  FA1D0BWPHVT U56 ( .A(\DP_OP_6J1_122_4365/n162 ), .B(n19), .CI(n18), .CO(n26), 
        .S(n13) );
  CKND0BWPHVT U57 ( .I(n20), .ZN(\DP_OP_6J1_122_4365/n161 ) );
  CKND0BWPHVT U58 ( .I(n210), .ZN(n237) );
  CKND0BWPHVT U59 ( .I(n55), .ZN(n233) );
  AOI22D0BWPHVT U60 ( .A1(b[9]), .A2(n234), .B1(b[8]), .B2(n233), .ZN(n21) );
  AOI32D0BWPHVT U61 ( .A1(b[9]), .A2(n237), .A3(n234), .B1(n21), .B2(n210), 
        .ZN(n205) );
  CKND0BWPHVT U62 ( .I(a[8]), .ZN(n415) );
  CKND0BWPHVT U63 ( .I(a[7]), .ZN(n22) );
  MUX2ND0BWPHVT U64 ( .I0(a[7]), .I1(n22), .S(a[6]), .ZN(n340) );
  MUX2ND0BWPHVT U65 ( .I0(a[5]), .I1(n478), .S(a[6]), .ZN(n412) );
  CKAN2D0BWPHVT U66 ( .A1(n340), .A2(n412), .Z(n24) );
  MUX2ND0BWPHVT U67 ( .I0(a[8]), .I1(n415), .S(n22), .ZN(n339) );
  CKND2D0BWPHVT U68 ( .A1(n339), .A2(n24), .ZN(n405) );
  AOI21D0BWPHVT U69 ( .A1(n24), .A2(n405), .B(n23), .ZN(n25) );
  MUX2ND0BWPHVT U70 ( .I0(a[8]), .I1(n415), .S(n25), .ZN(n204) );
  CKND0BWPHVT U71 ( .I(\DP_OP_6J1_122_4365/n147 ), .ZN(
        \DP_OP_6J1_122_4365/n152 ) );
  FA1D0BWPHVT U72 ( .A(\DP_OP_6J1_122_4365/n162 ), .B(n27), .CI(n26), .CO(n28), 
        .S(n20) );
  FA1D0BWPHVT U73 ( .A(n214), .B(n30), .CI(n29), .CO(n31), .S(n4) );
  CKND0BWPHVT U74 ( .I(n31), .ZN(\DP_OP_6J1_122_4365/n196 ) );
  AOI22D0BWPHVT U75 ( .A1(b[12]), .A2(n234), .B1(b[11]), .B2(n233), .ZN(n32)
         );
  AOI32D0BWPHVT U76 ( .A1(b[12]), .A2(n237), .A3(n234), .B1(n32), .B2(n210), 
        .ZN(\DP_OP_6J1_122_4365/n319 ) );
  AOI22D0BWPHVT U77 ( .A1(b[6]), .A2(n234), .B1(b[5]), .B2(n233), .ZN(n33) );
  AOI32D0BWPHVT U78 ( .A1(b[6]), .A2(n237), .A3(n234), .B1(n33), .B2(n210), 
        .ZN(\DP_OP_6J1_122_4365/n325 ) );
  AOI22D0BWPHVT U79 ( .A1(b[10]), .A2(n234), .B1(b[9]), .B2(n233), .ZN(n34) );
  AOI32D0BWPHVT U80 ( .A1(b[10]), .A2(n237), .A3(n234), .B1(n34), .B2(n210), 
        .ZN(\DP_OP_6J1_122_4365/n321 ) );
  AOI22D0BWPHVT U81 ( .A1(b[10]), .A2(n233), .B1(b[11]), .B2(n234), .ZN(n35)
         );
  AOI32D0BWPHVT U82 ( .A1(b[11]), .A2(n237), .A3(n234), .B1(n35), .B2(n210), 
        .ZN(\DP_OP_6J1_122_4365/n320 ) );
  CKND0BWPHVT U83 ( .I(b[15]), .ZN(n338) );
  NR2D0BWPHVT U84 ( .A1(n338), .A2(n55), .ZN(n147) );
  MAOI222D0BWPHVT U85 ( .A(n37), .B(n36), .C(n338), .ZN(n38) );
  OAI21D0BWPHVT U86 ( .A1(a[14]), .A2(n338), .B(n38), .ZN(n490) );
  AOI22D0BWPHVT U87 ( .A1(b[15]), .A2(n234), .B1(b[14]), .B2(n233), .ZN(n39)
         );
  AOI32D0BWPHVT U88 ( .A1(b[15]), .A2(n237), .A3(n234), .B1(n39), .B2(n210), 
        .ZN(n44) );
  OAI21D0BWPHVT U89 ( .A1(n41), .A2(n40), .B(n482), .ZN(n42) );
  MUX2ND0BWPHVT U90 ( .I0(n284), .I1(a[14]), .S(n42), .ZN(n43) );
  FA1D0BWPHVT U91 ( .A(\DP_OP_6J1_122_4365/n137 ), .B(n44), .CI(n43), .CO(n489), .S(n150) );
  CKND2D0BWPHVT U92 ( .A1(b[14]), .A2(n234), .ZN(n46) );
  CKND0BWPHVT U93 ( .I(b[13]), .ZN(n352) );
  OAI211D0BWPHVT U94 ( .A1(n55), .A2(n352), .B(n46), .C(n210), .ZN(n45) );
  OAI21D0BWPHVT U95 ( .A1(n210), .A2(n46), .B(n45), .ZN(n53) );
  CKND0BWPHVT U96 ( .I(n278), .ZN(n48) );
  FA1D0BWPHVT U97 ( .A(b[9]), .B(b[10]), .CI(n47), .CO(n115), .S(n442) );
  OAI21D0BWPHVT U98 ( .A1(is_signed), .A2(n59), .B(b[15]), .ZN(n481) );
  MOAI22D0BWPHVT U99 ( .A1(n48), .A2(n481), .B1(n274), .B2(b[15]), .ZN(n49) );
  OAI32D0BWPHVT U100 ( .A1(n49), .A2(n280), .A3(n279), .B1(n482), .B2(n49), 
        .ZN(n50) );
  MUX2ND0BWPHVT U101 ( .I0(n284), .I1(a[14]), .S(n50), .ZN(n52) );
  FA1D0BWPHVT U102 ( .A(\DP_OP_6J1_122_4365/n137 ), .B(n53), .CI(n52), .CO(n51), .S(n54) );
  CKND0BWPHVT U103 ( .I(n54), .ZN(n153) );
  CKND2D0BWPHVT U104 ( .A1(b[13]), .A2(n234), .ZN(n57) );
  CKND0BWPHVT U105 ( .I(b[12]), .ZN(n356) );
  OAI211D0BWPHVT U106 ( .A1(n55), .A2(n356), .B(n57), .C(n210), .ZN(n56) );
  OAI21D0BWPHVT U107 ( .A1(n210), .A2(n57), .B(n56), .ZN(n144) );
  OAI21D0BWPHVT U108 ( .A1(is_signed), .A2(n338), .B(n59), .ZN(n58) );
  OAI31D0BWPHVT U109 ( .A1(is_signed), .A2(n59), .A3(n338), .B(n58), .ZN(n345)
         );
  AOI22D0BWPHVT U110 ( .A1(n274), .A2(b[14]), .B1(n278), .B2(n345), .ZN(n61)
         );
  AOI22D0BWPHVT U111 ( .A1(n280), .A2(n482), .B1(n279), .B2(b[15]), .ZN(n60)
         );
  CKND2D0BWPHVT U112 ( .A1(n61), .A2(n60), .ZN(n62) );
  MUX2ND0BWPHVT U113 ( .I0(a[14]), .I1(n284), .S(n62), .ZN(n143) );
  CKND0BWPHVT U114 ( .I(n63), .ZN(n152) );
  MUX2ND0BWPHVT U115 ( .I0(n478), .I1(a[5]), .S(a[4]), .ZN(n417) );
  CKND0BWPHVT U116 ( .I(a[3]), .ZN(n64) );
  MUX2ND0BWPHVT U117 ( .I0(n487), .I1(a[2]), .S(n64), .ZN(n71) );
  MUX2ND0BWPHVT U118 ( .I0(a[3]), .I1(n64), .S(a[4]), .ZN(n67) );
  CKND2D0BWPHVT U119 ( .A1(n71), .A2(n67), .ZN(n416) );
  NR2D0BWPHVT U120 ( .A1(n66), .A2(n416), .ZN(n472) );
  NR2D0BWPHVT U121 ( .A1(b[0]), .A2(n400), .ZN(n65) );
  MUX2ND0BWPHVT U122 ( .I0(n396), .I1(b[2]), .S(n65), .ZN(n402) );
  NR2D0BWPHVT U123 ( .A1(n71), .A2(n66), .ZN(n471) );
  AOI22D0BWPHVT U124 ( .A1(b[0]), .A2(n472), .B1(n402), .B2(n471), .ZN(n69) );
  NR2D0BWPHVT U125 ( .A1(n417), .A2(n71), .ZN(n473) );
  INR2D0BWPHVT U126 ( .A1(n71), .B1(n67), .ZN(n474) );
  AOI22D0BWPHVT U127 ( .A1(b[2]), .A2(n473), .B1(b[1]), .B2(n474), .ZN(n68) );
  CKND2D0BWPHVT U128 ( .A1(n69), .A2(n68), .ZN(n70) );
  MUX2ND0BWPHVT U129 ( .I0(n478), .I1(a[5]), .S(n70), .ZN(n232) );
  NR2D0BWPHVT U130 ( .A1(n413), .A2(n71), .ZN(n72) );
  MUX2ND0BWPHVT U131 ( .I0(n478), .I1(a[5]), .S(n72), .ZN(n76) );
  AOI22D0BWPHVT U132 ( .A1(b[1]), .A2(b[0]), .B1(n413), .B2(n400), .ZN(n407)
         );
  AOI222D0BWPHVT U133 ( .A1(b[1]), .A2(n473), .B1(b[0]), .B2(n474), .C1(n471), 
        .C2(n407), .ZN(n73) );
  MUX2ND0BWPHVT U134 ( .I0(a[5]), .I1(n478), .S(n73), .ZN(n74) );
  FA1D0BWPHVT U135 ( .A(c[4]), .B(n75), .CI(n74), .CO(n231), .S(n195) );
  FA1D0BWPHVT U136 ( .A(c[3]), .B(a[5]), .CI(n76), .CO(n75), .S(n198) );
  CKND0BWPHVT U137 ( .I(a[0]), .ZN(n78) );
  NR2D0BWPHVT U138 ( .A1(n413), .A2(n78), .ZN(n77) );
  MUX2ND0BWPHVT U139 ( .I0(n487), .I1(a[2]), .S(n77), .ZN(n203) );
  MOAI22D0BWPHVT U140 ( .A1(n487), .A2(a[1]), .B1(a[1]), .B2(n487), .ZN(n79)
         );
  NR2D0BWPHVT U141 ( .A1(n78), .A2(n79), .ZN(n484) );
  CKND2D0BWPHVT U142 ( .A1(a[1]), .A2(n78), .ZN(n138) );
  CKND0BWPHVT U143 ( .I(n138), .ZN(n483) );
  CKND2D0BWPHVT U144 ( .A1(n79), .A2(a[0]), .ZN(n480) );
  CKND0BWPHVT U145 ( .I(n480), .ZN(n135) );
  AOI222D0BWPHVT U146 ( .A1(b[1]), .A2(n484), .B1(b[0]), .B2(n483), .C1(n135), 
        .C2(n407), .ZN(n80) );
  MUX2ND0BWPHVT U147 ( .I0(a[2]), .I1(n487), .S(n80), .ZN(n201) );
  NR3D0BWPHVT U148 ( .A1(a[0]), .A2(a[1]), .A3(n487), .ZN(n479) );
  AOI22D0BWPHVT U149 ( .A1(b[0]), .A2(n479), .B1(n402), .B2(n135), .ZN(n82) );
  CKND2D0BWPHVT U150 ( .A1(b[2]), .A2(n484), .ZN(n81) );
  OAI211D0BWPHVT U151 ( .A1(n138), .A2(n400), .B(n82), .C(n81), .ZN(n83) );
  MUX2ND0BWPHVT U152 ( .I0(n487), .I1(a[2]), .S(n83), .ZN(n199) );
  FA1D0BWPHVT U153 ( .A(b[2]), .B(b[3]), .CI(n84), .CO(n88), .S(n470) );
  AOI22D0BWPHVT U154 ( .A1(b[1]), .A2(n479), .B1(n470), .B2(n135), .ZN(n86) );
  CKND2D0BWPHVT U155 ( .A1(b[3]), .A2(n484), .ZN(n85) );
  OAI211D0BWPHVT U156 ( .A1(n138), .A2(n396), .B(n86), .C(n85), .ZN(n87) );
  MUX2ND0BWPHVT U157 ( .I0(n487), .I1(a[2]), .S(n87), .ZN(n196) );
  FA1D0BWPHVT U158 ( .A(b[3]), .B(b[4]), .CI(n88), .CO(n92), .S(n466) );
  AOI22D0BWPHVT U159 ( .A1(b[2]), .A2(n479), .B1(n466), .B2(n135), .ZN(n90) );
  CKND2D0BWPHVT U160 ( .A1(b[4]), .A2(n484), .ZN(n89) );
  OAI211D0BWPHVT U161 ( .A1(n138), .A2(n392), .B(n90), .C(n89), .ZN(n91) );
  MUX2ND0BWPHVT U162 ( .I0(n487), .I1(a[2]), .S(n91), .ZN(n193) );
  CKND0BWPHVT U163 ( .I(b[4]), .ZN(n388) );
  FA1D0BWPHVT U164 ( .A(b[4]), .B(b[5]), .CI(n92), .CO(n96), .S(n462) );
  AOI22D0BWPHVT U165 ( .A1(b[3]), .A2(n479), .B1(n462), .B2(n135), .ZN(n94) );
  CKND2D0BWPHVT U166 ( .A1(b[5]), .A2(n484), .ZN(n93) );
  OAI211D0BWPHVT U167 ( .A1(n138), .A2(n388), .B(n94), .C(n93), .ZN(n95) );
  MUX2ND0BWPHVT U168 ( .I0(n487), .I1(a[2]), .S(n95), .ZN(n190) );
  CKND0BWPHVT U169 ( .I(b[5]), .ZN(n384) );
  FA1D0BWPHVT U170 ( .A(b[5]), .B(b[6]), .CI(n96), .CO(n100), .S(n458) );
  AOI22D0BWPHVT U171 ( .A1(b[4]), .A2(n479), .B1(n458), .B2(n135), .ZN(n98) );
  CKND2D0BWPHVT U172 ( .A1(b[6]), .A2(n484), .ZN(n97) );
  OAI211D0BWPHVT U173 ( .A1(n138), .A2(n384), .B(n98), .C(n97), .ZN(n99) );
  MUX2ND0BWPHVT U174 ( .I0(n487), .I1(a[2]), .S(n99), .ZN(n188) );
  FA1D0BWPHVT U175 ( .A(b[6]), .B(b[7]), .CI(n100), .CO(n104), .S(n454) );
  AOI22D0BWPHVT U176 ( .A1(b[5]), .A2(n479), .B1(n454), .B2(n135), .ZN(n102)
         );
  CKND2D0BWPHVT U177 ( .A1(b[7]), .A2(n484), .ZN(n101) );
  OAI211D0BWPHVT U178 ( .A1(n138), .A2(n380), .B(n102), .C(n101), .ZN(n103) );
  MUX2ND0BWPHVT U179 ( .I0(n487), .I1(a[2]), .S(n103), .ZN(n186) );
  FA1D0BWPHVT U180 ( .A(b[7]), .B(b[8]), .CI(n104), .CO(n108), .S(n450) );
  AOI22D0BWPHVT U181 ( .A1(b[6]), .A2(n479), .B1(n450), .B2(n135), .ZN(n106)
         );
  CKND2D0BWPHVT U182 ( .A1(b[8]), .A2(n484), .ZN(n105) );
  OAI211D0BWPHVT U183 ( .A1(n138), .A2(n376), .B(n106), .C(n105), .ZN(n107) );
  MUX2ND0BWPHVT U184 ( .I0(n487), .I1(a[2]), .S(n107), .ZN(n184) );
  CKND0BWPHVT U185 ( .I(b[8]), .ZN(n372) );
  FA1D0BWPHVT U186 ( .A(b[8]), .B(b[9]), .CI(n108), .CO(n47), .S(n446) );
  AOI22D0BWPHVT U187 ( .A1(b[7]), .A2(n479), .B1(n446), .B2(n135), .ZN(n110)
         );
  CKND2D0BWPHVT U188 ( .A1(b[9]), .A2(n484), .ZN(n109) );
  OAI211D0BWPHVT U189 ( .A1(n138), .A2(n372), .B(n110), .C(n109), .ZN(n111) );
  MUX2ND0BWPHVT U190 ( .I0(n487), .I1(a[2]), .S(n111), .ZN(n182) );
  CKND0BWPHVT U191 ( .I(b[9]), .ZN(n368) );
  AOI22D0BWPHVT U192 ( .A1(b[8]), .A2(n479), .B1(n442), .B2(n135), .ZN(n113)
         );
  CKND2D0BWPHVT U193 ( .A1(b[10]), .A2(n484), .ZN(n112) );
  OAI211D0BWPHVT U194 ( .A1(n138), .A2(n368), .B(n113), .C(n112), .ZN(n114) );
  MUX2ND0BWPHVT U195 ( .I0(n487), .I1(a[2]), .S(n114), .ZN(n180) );
  CKND0BWPHVT U196 ( .I(b[10]), .ZN(n364) );
  FA1D0BWPHVT U197 ( .A(b[10]), .B(b[11]), .CI(n115), .CO(n119), .S(n438) );
  AOI22D0BWPHVT U198 ( .A1(b[9]), .A2(n479), .B1(n438), .B2(n135), .ZN(n117)
         );
  CKND2D0BWPHVT U199 ( .A1(b[11]), .A2(n484), .ZN(n116) );
  OAI211D0BWPHVT U200 ( .A1(n138), .A2(n364), .B(n117), .C(n116), .ZN(n118) );
  MUX2ND0BWPHVT U201 ( .I0(n487), .I1(a[2]), .S(n118), .ZN(n178) );
  CKND0BWPHVT U202 ( .I(b[11]), .ZN(n360) );
  FA1D0BWPHVT U203 ( .A(b[11]), .B(b[12]), .CI(n119), .CO(n123), .S(n434) );
  AOI22D0BWPHVT U204 ( .A1(b[10]), .A2(n479), .B1(n434), .B2(n135), .ZN(n121)
         );
  CKND2D0BWPHVT U205 ( .A1(b[12]), .A2(n484), .ZN(n120) );
  OAI211D0BWPHVT U206 ( .A1(n138), .A2(n360), .B(n121), .C(n120), .ZN(n122) );
  MUX2ND0BWPHVT U207 ( .I0(n487), .I1(a[2]), .S(n122), .ZN(n176) );
  FA1D0BWPHVT U208 ( .A(b[12]), .B(b[13]), .CI(n123), .CO(n127), .S(n430) );
  AOI22D0BWPHVT U209 ( .A1(b[11]), .A2(n479), .B1(n430), .B2(n135), .ZN(n125)
         );
  CKND2D0BWPHVT U210 ( .A1(b[13]), .A2(n484), .ZN(n124) );
  OAI211D0BWPHVT U211 ( .A1(n138), .A2(n356), .B(n125), .C(n124), .ZN(n126) );
  MUX2ND0BWPHVT U212 ( .I0(n487), .I1(a[2]), .S(n126), .ZN(n174) );
  FA1D0BWPHVT U213 ( .A(b[13]), .B(b[14]), .CI(n127), .CO(n131), .S(n426) );
  AOI22D0BWPHVT U214 ( .A1(b[12]), .A2(n479), .B1(n426), .B2(n135), .ZN(n129)
         );
  CKND2D0BWPHVT U215 ( .A1(b[14]), .A2(n484), .ZN(n128) );
  OAI211D0BWPHVT U216 ( .A1(n138), .A2(n352), .B(n129), .C(n128), .ZN(n130) );
  MUX2ND0BWPHVT U217 ( .I0(n487), .I1(a[2]), .S(n130), .ZN(n172) );
  CKND0BWPHVT U218 ( .I(b[14]), .ZN(n348) );
  FA1D0BWPHVT U219 ( .A(b[14]), .B(b[15]), .CI(n131), .CO(n59), .S(n422) );
  AOI22D0BWPHVT U220 ( .A1(b[13]), .A2(n479), .B1(n422), .B2(n135), .ZN(n133)
         );
  CKND2D0BWPHVT U221 ( .A1(b[15]), .A2(n484), .ZN(n132) );
  OAI211D0BWPHVT U222 ( .A1(n138), .A2(n348), .B(n133), .C(n132), .ZN(n134) );
  MUX2ND0BWPHVT U223 ( .I0(n487), .I1(a[2]), .S(n134), .ZN(n170) );
  AOI22D0BWPHVT U224 ( .A1(b[14]), .A2(n479), .B1(n345), .B2(n135), .ZN(n137)
         );
  CKND2D0BWPHVT U225 ( .A1(n482), .A2(n484), .ZN(n136) );
  OAI211D0BWPHVT U226 ( .A1(n338), .A2(n138), .B(n137), .C(n136), .ZN(n139) );
  MUX2ND0BWPHVT U227 ( .I0(n487), .I1(a[2]), .S(n139), .ZN(n168) );
  AOI22D0BWPHVT U228 ( .A1(n472), .A2(b[14]), .B1(n471), .B2(n345), .ZN(n141)
         );
  AOI22D0BWPHVT U229 ( .A1(n473), .A2(n482), .B1(n474), .B2(b[15]), .ZN(n140)
         );
  CKND2D0BWPHVT U230 ( .A1(n141), .A2(n140), .ZN(n142) );
  MUX2ND0BWPHVT U231 ( .I0(n478), .I1(a[5]), .S(n142), .ZN(n164) );
  FA1D0BWPHVT U232 ( .A(\DP_OP_6J1_122_4365/n137 ), .B(n144), .CI(n143), .CO(
        n63), .S(n145) );
  CKND0BWPHVT U233 ( .I(n145), .ZN(n154) );
  NR2D0BWPHVT U234 ( .A1(n147), .A2(n146), .ZN(c_out) );
  FA1D0BWPHVT U235 ( .A(n150), .B(n149), .CI(n148), .CO(n488), .S(res[30]) );
  FA1D0BWPHVT U236 ( .A(n153), .B(n152), .CI(n151), .CO(n148), .S(res[29]) );
  FA1D0BWPHVT U237 ( .A(\DP_OP_6J1_122_4365/n142 ), .B(n155), .CI(n154), .CO(
        n151), .S(res[28]) );
  FA1D0BWPHVT U238 ( .A(\DP_OP_6J1_122_4365/n145 ), .B(
        \DP_OP_6J1_122_4365/n143 ), .CI(n156), .CO(n155), .S(res[27]) );
  FA1D0BWPHVT U239 ( .A(\DP_OP_6J1_122_4365/n150 ), .B(
        \DP_OP_6J1_122_4365/n146 ), .CI(n157), .CO(n156), .S(res[26]) );
  FA1D0BWPHVT U240 ( .A(\DP_OP_6J1_122_4365/n154 ), .B(
        \DP_OP_6J1_122_4365/n151 ), .CI(n158), .CO(n157), .S(res[25]) );
  FA1D0BWPHVT U241 ( .A(\DP_OP_6J1_122_4365/n158 ), .B(
        \DP_OP_6J1_122_4365/n155 ), .CI(n159), .CO(n158), .S(res[24]) );
  FA1D0BWPHVT U242 ( .A(\DP_OP_6J1_122_4365/n165 ), .B(
        \DP_OP_6J1_122_4365/n159 ), .CI(n160), .CO(n159), .S(res[23]) );
  FA1D0BWPHVT U243 ( .A(\DP_OP_6J1_122_4365/n171 ), .B(
        \DP_OP_6J1_122_4365/n166 ), .CI(n161), .CO(n160), .S(res[22]) );
  FA1D0BWPHVT U244 ( .A(\DP_OP_6J1_122_4365/n176 ), .B(
        \DP_OP_6J1_122_4365/n172 ), .CI(n162), .CO(n161), .S(res[21]) );
  FA1D0BWPHVT U245 ( .A(\DP_OP_6J1_122_4365/n184 ), .B(
        \DP_OP_6J1_122_4365/n177 ), .CI(n163), .CO(n162), .S(res[20]) );
  FA1D0BWPHVT U246 ( .A(\DP_OP_6J1_122_4365/n185 ), .B(n165), .CI(n164), .CO(
        n163), .S(res[19]) );
  FA1D0BWPHVT U247 ( .A(\DP_OP_6J1_122_4365/n192 ), .B(
        \DP_OP_6J1_122_4365/n199 ), .CI(n166), .CO(n165), .S(res[18]) );
  FA1D0BWPHVT U248 ( .A(\DP_OP_6J1_122_4365/n207 ), .B(
        \DP_OP_6J1_122_4365/n200 ), .CI(n167), .CO(n166), .S(res[17]) );
  FA1D0BWPHVT U249 ( .A(\DP_OP_6J1_122_4365/n208 ), .B(n169), .CI(n168), .CO(
        n167), .S(res[16]) );
  FA1D0BWPHVT U250 ( .A(\DP_OP_6J1_122_4365/n216 ), .B(n171), .CI(n170), .CO(
        n169), .S(res[15]) );
  FA1D0BWPHVT U251 ( .A(\DP_OP_6J1_122_4365/n224 ), .B(n173), .CI(n172), .CO(
        n171), .S(res[14]) );
  FA1D0BWPHVT U252 ( .A(\DP_OP_6J1_122_4365/n230 ), .B(n175), .CI(n174), .CO(
        n173), .S(res[13]) );
  FA1D0BWPHVT U253 ( .A(\DP_OP_6J1_122_4365/n236 ), .B(n177), .CI(n176), .CO(
        n175), .S(res[12]) );
  FA1D0BWPHVT U254 ( .A(\DP_OP_6J1_122_4365/n242 ), .B(n179), .CI(n178), .CO(
        n177), .S(res[11]) );
  FA1D0BWPHVT U255 ( .A(\DP_OP_6J1_122_4365/n247 ), .B(n181), .CI(n180), .CO(
        n179), .S(res[10]) );
  FA1D0BWPHVT U256 ( .A(\DP_OP_6J1_122_4365/n252 ), .B(n183), .CI(n182), .CO(
        n181), .S(res[9]) );
  FA1D0BWPHVT U257 ( .A(\DP_OP_6J1_122_4365/n257 ), .B(n185), .CI(n184), .CO(
        n183), .S(res[8]) );
  FA1D0BWPHVT U258 ( .A(\DP_OP_6J1_122_4365/n260 ), .B(n187), .CI(n186), .CO(
        n185), .S(res[7]) );
  FA1D0BWPHVT U259 ( .A(\DP_OP_6J1_122_4365/n263 ), .B(n189), .CI(n188), .CO(
        n187), .S(res[6]) );
  FA1D0BWPHVT U260 ( .A(n192), .B(n191), .CI(n190), .CO(n189), .S(res[5]) );
  FA1D0BWPHVT U261 ( .A(n195), .B(n194), .CI(n193), .CO(n191), .S(res[4]) );
  FA1D0BWPHVT U262 ( .A(n198), .B(n197), .CI(n196), .CO(n194), .S(res[3]) );
  FA1D0BWPHVT U263 ( .A(c[2]), .B(n200), .CI(n199), .CO(n197), .S(res[2]) );
  FA1D0BWPHVT U264 ( .A(c[1]), .B(n202), .CI(n201), .CO(n200), .S(res[1]) );
  FA1D0BWPHVT U265 ( .A(c[0]), .B(a[2]), .CI(n203), .CO(n202), .S(res[0]) );
  FA1D0BWPHVT U266 ( .A(\DP_OP_6J1_122_4365/n162 ), .B(n205), .CI(n204), .CO(
        \DP_OP_6J1_122_4365/n147 ), .S(\DP_OP_6J1_122_4365/n156 ) );
  AOI22D0BWPHVT U267 ( .A1(b[2]), .A2(n234), .B1(b[1]), .B2(n233), .ZN(n206)
         );
  AOI32D0BWPHVT U268 ( .A1(b[2]), .A2(n237), .A3(n234), .B1(n206), .B2(n210), 
        .ZN(n212) );
  AOI22D0BWPHVT U269 ( .A1(b[1]), .A2(n234), .B1(b[0]), .B2(n233), .ZN(n207)
         );
  AOI32D0BWPHVT U270 ( .A1(b[1]), .A2(n237), .A3(n234), .B1(n207), .B2(n210), 
        .ZN(n215) );
  NR2D0BWPHVT U271 ( .A1(n208), .A2(n413), .ZN(n209) );
  MUX2ND0BWPHVT U272 ( .I0(n210), .I1(n237), .S(n209), .ZN(n216) );
  FA1D0BWPHVT U273 ( .A(n214), .B(n212), .CI(n211), .CO(
        \DP_OP_6J1_122_4365/n204 ), .S(\DP_OP_6J1_122_4365/n205 ) );
  FA1D0BWPHVT U274 ( .A(n215), .B(n214), .CI(n213), .CO(n211), .S(
        \DP_OP_6J1_122_4365/n213 ) );
  FA1D0BWPHVT U275 ( .A(c[15]), .B(n237), .CI(n216), .CO(n213), .S(
        \DP_OP_6J1_122_4365/n221 ) );
  MUX2ND0BWPHVT U276 ( .I0(n337), .I1(a[11]), .S(a[10]), .ZN(n286) );
  CKND0BWPHVT U277 ( .I(n286), .ZN(n218) );
  CKND0BWPHVT U278 ( .I(a[9]), .ZN(n217) );
  MUX2ND0BWPHVT U279 ( .I0(n415), .I1(a[8]), .S(n217), .ZN(n224) );
  MUX2ND0BWPHVT U280 ( .I0(a[9]), .I1(n217), .S(a[10]), .ZN(n219) );
  CKND2D0BWPHVT U281 ( .A1(n224), .A2(n219), .ZN(n285) );
  NR2D0BWPHVT U282 ( .A1(n218), .A2(n285), .ZN(n331) );
  NR2D0BWPHVT U283 ( .A1(n224), .A2(n218), .ZN(n330) );
  AOI22D0BWPHVT U284 ( .A1(b[0]), .A2(n331), .B1(n402), .B2(n330), .ZN(n221)
         );
  NR2D0BWPHVT U285 ( .A1(n286), .A2(n224), .ZN(n332) );
  INR2D0BWPHVT U286 ( .A1(n224), .B1(n219), .ZN(n333) );
  AOI22D0BWPHVT U287 ( .A1(b[2]), .A2(n332), .B1(b[1]), .B2(n333), .ZN(n220)
         );
  CKND2D0BWPHVT U288 ( .A1(n221), .A2(n220), .ZN(n222) );
  MUX2ND0BWPHVT U289 ( .I0(n337), .I1(a[11]), .S(n222), .ZN(n227) );
  AOI222D0BWPHVT U290 ( .A1(n332), .A2(b[1]), .B1(n333), .B2(b[0]), .C1(n330), 
        .C2(n407), .ZN(n223) );
  MUX2ND0BWPHVT U291 ( .I0(a[11]), .I1(n337), .S(n223), .ZN(n229) );
  NR2D0BWPHVT U292 ( .A1(n224), .A2(n413), .ZN(n225) );
  MUX2ND0BWPHVT U293 ( .I0(n337), .I1(a[11]), .S(n225), .ZN(n230) );
  FA1D0BWPHVT U294 ( .A(c[11]), .B(n227), .CI(n226), .CO(
        \DP_OP_6J1_122_4365/n243 ), .S(\DP_OP_6J1_122_4365/n244 ) );
  FA1D0BWPHVT U295 ( .A(c[10]), .B(n229), .CI(n228), .CO(n226), .S(
        \DP_OP_6J1_122_4365/n249 ) );
  FA1D0BWPHVT U296 ( .A(c[9]), .B(a[11]), .CI(n230), .CO(n228), .S(
        \DP_OP_6J1_122_4365/n254 ) );
  FA1D0BWPHVT U297 ( .A(c[5]), .B(n232), .CI(n231), .CO(
        \DP_OP_6J1_122_4365/n264 ), .S(n192) );
  AOI21D0BWPHVT U298 ( .A1(b[4]), .A2(n233), .B(n237), .ZN(n236) );
  CKND2D0BWPHVT U299 ( .A1(b[5]), .A2(n234), .ZN(n235) );
  MUX2ND0BWPHVT U300 ( .I0(n237), .I1(n236), .S(n235), .ZN(
        \DP_OP_6J1_122_4365/n326 ) );
  AOI22D0BWPHVT U301 ( .A1(n274), .A2(b[13]), .B1(n278), .B2(n422), .ZN(n239)
         );
  AOI22D0BWPHVT U302 ( .A1(n280), .A2(b[15]), .B1(n279), .B2(b[14]), .ZN(n238)
         );
  CKND2D0BWPHVT U303 ( .A1(n239), .A2(n238), .ZN(n240) );
  MUX2ND0BWPHVT U304 ( .I0(n284), .I1(a[14]), .S(n240), .ZN(
        \DP_OP_6J1_122_4365/n334 ) );
  AOI22D0BWPHVT U305 ( .A1(n274), .A2(b[12]), .B1(n278), .B2(n426), .ZN(n242)
         );
  AOI22D0BWPHVT U306 ( .A1(n280), .A2(b[14]), .B1(n279), .B2(b[13]), .ZN(n241)
         );
  CKND2D0BWPHVT U307 ( .A1(n242), .A2(n241), .ZN(n243) );
  MUX2ND0BWPHVT U308 ( .I0(n284), .I1(a[14]), .S(n243), .ZN(
        \DP_OP_6J1_122_4365/n335 ) );
  AOI22D0BWPHVT U309 ( .A1(n274), .A2(b[11]), .B1(n278), .B2(n430), .ZN(n245)
         );
  AOI22D0BWPHVT U310 ( .A1(n280), .A2(b[13]), .B1(n279), .B2(b[12]), .ZN(n244)
         );
  CKND2D0BWPHVT U311 ( .A1(n245), .A2(n244), .ZN(n246) );
  MUX2ND0BWPHVT U312 ( .I0(n284), .I1(a[14]), .S(n246), .ZN(
        \DP_OP_6J1_122_4365/n336 ) );
  AOI22D0BWPHVT U313 ( .A1(b[10]), .A2(n274), .B1(n278), .B2(n434), .ZN(n248)
         );
  AOI22D0BWPHVT U314 ( .A1(n280), .A2(b[12]), .B1(n279), .B2(b[11]), .ZN(n247)
         );
  CKND2D0BWPHVT U315 ( .A1(n248), .A2(n247), .ZN(n249) );
  MUX2ND0BWPHVT U316 ( .I0(n284), .I1(a[14]), .S(n249), .ZN(
        \DP_OP_6J1_122_4365/n337 ) );
  AOI22D0BWPHVT U317 ( .A1(b[9]), .A2(n274), .B1(n278), .B2(n438), .ZN(n251)
         );
  AOI22D0BWPHVT U318 ( .A1(b[10]), .A2(n279), .B1(n280), .B2(b[11]), .ZN(n250)
         );
  CKND2D0BWPHVT U319 ( .A1(n251), .A2(n250), .ZN(n252) );
  MUX2ND0BWPHVT U320 ( .I0(n284), .I1(a[14]), .S(n252), .ZN(
        \DP_OP_6J1_122_4365/n338 ) );
  AOI22D0BWPHVT U321 ( .A1(n274), .A2(b[7]), .B1(n278), .B2(n446), .ZN(n254)
         );
  AOI22D0BWPHVT U322 ( .A1(n280), .A2(b[9]), .B1(n279), .B2(b[8]), .ZN(n253)
         );
  CKND2D0BWPHVT U323 ( .A1(n254), .A2(n253), .ZN(n255) );
  MUX2ND0BWPHVT U324 ( .I0(n284), .I1(a[14]), .S(n255), .ZN(
        \DP_OP_6J1_122_4365/n340 ) );
  AOI22D0BWPHVT U325 ( .A1(n274), .A2(b[6]), .B1(n278), .B2(n450), .ZN(n257)
         );
  AOI22D0BWPHVT U326 ( .A1(n280), .A2(b[8]), .B1(n279), .B2(b[7]), .ZN(n256)
         );
  CKND2D0BWPHVT U327 ( .A1(n257), .A2(n256), .ZN(n258) );
  MUX2ND0BWPHVT U328 ( .I0(n284), .I1(a[14]), .S(n258), .ZN(
        \DP_OP_6J1_122_4365/n341 ) );
  AOI22D0BWPHVT U329 ( .A1(n274), .A2(b[5]), .B1(n278), .B2(n454), .ZN(n260)
         );
  AOI22D0BWPHVT U330 ( .A1(n280), .A2(b[7]), .B1(n279), .B2(b[6]), .ZN(n259)
         );
  CKND2D0BWPHVT U331 ( .A1(n260), .A2(n259), .ZN(n261) );
  MUX2ND0BWPHVT U332 ( .I0(n284), .I1(a[14]), .S(n261), .ZN(
        \DP_OP_6J1_122_4365/n342 ) );
  AOI22D0BWPHVT U333 ( .A1(n279), .A2(b[5]), .B1(n278), .B2(n458), .ZN(n263)
         );
  AOI22D0BWPHVT U334 ( .A1(n280), .A2(b[6]), .B1(n274), .B2(b[4]), .ZN(n262)
         );
  CKND2D0BWPHVT U335 ( .A1(n263), .A2(n262), .ZN(n264) );
  MUX2ND0BWPHVT U336 ( .I0(n284), .I1(a[14]), .S(n264), .ZN(
        \DP_OP_6J1_122_4365/n343 ) );
  AOI22D0BWPHVT U337 ( .A1(n280), .A2(b[5]), .B1(n278), .B2(n462), .ZN(n266)
         );
  AOI22D0BWPHVT U338 ( .A1(n279), .A2(b[4]), .B1(n274), .B2(b[3]), .ZN(n265)
         );
  CKND2D0BWPHVT U339 ( .A1(n266), .A2(n265), .ZN(n267) );
  MUX2ND0BWPHVT U340 ( .I0(n284), .I1(a[14]), .S(n267), .ZN(
        \DP_OP_6J1_122_4365/n344 ) );
  AOI22D0BWPHVT U341 ( .A1(n274), .A2(b[2]), .B1(n278), .B2(n466), .ZN(n269)
         );
  AOI22D0BWPHVT U342 ( .A1(n280), .A2(b[4]), .B1(n279), .B2(b[3]), .ZN(n268)
         );
  CKND2D0BWPHVT U343 ( .A1(n269), .A2(n268), .ZN(n270) );
  MUX2ND0BWPHVT U344 ( .I0(n284), .I1(a[14]), .S(n270), .ZN(
        \DP_OP_6J1_122_4365/n345 ) );
  AOI22D0BWPHVT U345 ( .A1(n274), .A2(b[1]), .B1(n278), .B2(n470), .ZN(n272)
         );
  AOI22D0BWPHVT U346 ( .A1(n280), .A2(b[3]), .B1(n279), .B2(b[2]), .ZN(n271)
         );
  CKND2D0BWPHVT U347 ( .A1(n272), .A2(n271), .ZN(n273) );
  MUX2ND0BWPHVT U348 ( .I0(n284), .I1(a[14]), .S(n273), .ZN(
        \DP_OP_6J1_122_4365/n346 ) );
  AOI22D0BWPHVT U349 ( .A1(n274), .A2(b[0]), .B1(n278), .B2(n402), .ZN(n276)
         );
  AOI22D0BWPHVT U350 ( .A1(n280), .A2(b[2]), .B1(n279), .B2(b[1]), .ZN(n275)
         );
  CKND2D0BWPHVT U351 ( .A1(n276), .A2(n275), .ZN(n277) );
  MUX2ND0BWPHVT U352 ( .I0(n284), .I1(a[14]), .S(n277), .ZN(
        \DP_OP_6J1_122_4365/n347 ) );
  AOI222D0BWPHVT U353 ( .A1(n280), .A2(b[1]), .B1(n279), .B2(b[0]), .C1(n278), 
        .C2(n407), .ZN(n281) );
  MUX2ND0BWPHVT U354 ( .I0(a[14]), .I1(n284), .S(n281), .ZN(
        \DP_OP_6J1_122_4365/n348 ) );
  NR2D0BWPHVT U355 ( .A1(n282), .A2(n413), .ZN(n283) );
  MUX2ND0BWPHVT U356 ( .I0(n284), .I1(a[14]), .S(n283), .ZN(
        \DP_OP_6J1_122_4365/n349 ) );
  OAI21D0BWPHVT U357 ( .A1(n286), .A2(n285), .B(n482), .ZN(n287) );
  MUX2ND0BWPHVT U358 ( .I0(n337), .I1(a[11]), .S(n287), .ZN(
        \DP_OP_6J1_122_4365/n350 ) );
  CKND0BWPHVT U359 ( .I(n330), .ZN(n288) );
  MOAI22D0BWPHVT U360 ( .A1(n288), .A2(n481), .B1(n331), .B2(b[15]), .ZN(n289)
         );
  OAI32D0BWPHVT U361 ( .A1(n289), .A2(n332), .A3(n333), .B1(n482), .B2(n289), 
        .ZN(n290) );
  MUX2ND0BWPHVT U362 ( .I0(a[11]), .I1(n337), .S(n290), .ZN(
        \DP_OP_6J1_122_4365/n351 ) );
  AOI22D0BWPHVT U363 ( .A1(n331), .A2(b[14]), .B1(n330), .B2(n345), .ZN(n292)
         );
  AOI22D0BWPHVT U364 ( .A1(n332), .A2(n482), .B1(n333), .B2(b[15]), .ZN(n291)
         );
  CKND2D0BWPHVT U365 ( .A1(n292), .A2(n291), .ZN(n293) );
  MUX2ND0BWPHVT U366 ( .I0(n337), .I1(a[11]), .S(n293), .ZN(
        \DP_OP_6J1_122_4365/n352 ) );
  AOI22D0BWPHVT U367 ( .A1(n331), .A2(b[13]), .B1(n330), .B2(n422), .ZN(n295)
         );
  AOI22D0BWPHVT U368 ( .A1(n332), .A2(b[15]), .B1(n333), .B2(b[14]), .ZN(n294)
         );
  CKND2D0BWPHVT U369 ( .A1(n295), .A2(n294), .ZN(n296) );
  MUX2ND0BWPHVT U370 ( .I0(n337), .I1(a[11]), .S(n296), .ZN(
        \DP_OP_6J1_122_4365/n353 ) );
  AOI22D0BWPHVT U371 ( .A1(n331), .A2(b[12]), .B1(n330), .B2(n426), .ZN(n298)
         );
  AOI22D0BWPHVT U372 ( .A1(n332), .A2(b[14]), .B1(n333), .B2(b[13]), .ZN(n297)
         );
  CKND2D0BWPHVT U373 ( .A1(n298), .A2(n297), .ZN(n299) );
  MUX2ND0BWPHVT U374 ( .I0(n337), .I1(a[11]), .S(n299), .ZN(
        \DP_OP_6J1_122_4365/n354 ) );
  AOI22D0BWPHVT U375 ( .A1(n331), .A2(b[11]), .B1(n330), .B2(n430), .ZN(n301)
         );
  AOI22D0BWPHVT U376 ( .A1(n332), .A2(b[13]), .B1(n333), .B2(b[12]), .ZN(n300)
         );
  CKND2D0BWPHVT U377 ( .A1(n301), .A2(n300), .ZN(n302) );
  MUX2ND0BWPHVT U378 ( .I0(n337), .I1(a[11]), .S(n302), .ZN(
        \DP_OP_6J1_122_4365/n355 ) );
  AOI22D0BWPHVT U379 ( .A1(b[10]), .A2(n331), .B1(n330), .B2(n434), .ZN(n304)
         );
  AOI22D0BWPHVT U380 ( .A1(n332), .A2(b[12]), .B1(n333), .B2(b[11]), .ZN(n303)
         );
  CKND2D0BWPHVT U381 ( .A1(n304), .A2(n303), .ZN(n305) );
  MUX2ND0BWPHVT U382 ( .I0(n337), .I1(a[11]), .S(n305), .ZN(
        \DP_OP_6J1_122_4365/n356 ) );
  AOI22D0BWPHVT U383 ( .A1(b[9]), .A2(n331), .B1(n330), .B2(n438), .ZN(n307)
         );
  AOI22D0BWPHVT U384 ( .A1(b[10]), .A2(n333), .B1(n332), .B2(b[11]), .ZN(n306)
         );
  CKND2D0BWPHVT U385 ( .A1(n307), .A2(n306), .ZN(n308) );
  MUX2ND0BWPHVT U386 ( .I0(n337), .I1(a[11]), .S(n308), .ZN(
        \DP_OP_6J1_122_4365/n357 ) );
  AOI22D0BWPHVT U387 ( .A1(b[8]), .A2(n331), .B1(n442), .B2(n330), .ZN(n310)
         );
  AOI22D0BWPHVT U388 ( .A1(b[10]), .A2(n332), .B1(b[9]), .B2(n333), .ZN(n309)
         );
  CKND2D0BWPHVT U389 ( .A1(n310), .A2(n309), .ZN(n311) );
  MUX2ND0BWPHVT U390 ( .I0(n337), .I1(a[11]), .S(n311), .ZN(
        \DP_OP_6J1_122_4365/n358 ) );
  AOI22D0BWPHVT U391 ( .A1(n331), .A2(b[7]), .B1(n330), .B2(n446), .ZN(n313)
         );
  AOI22D0BWPHVT U392 ( .A1(b[9]), .A2(n332), .B1(b[8]), .B2(n333), .ZN(n312)
         );
  CKND2D0BWPHVT U393 ( .A1(n313), .A2(n312), .ZN(n314) );
  MUX2ND0BWPHVT U394 ( .I0(n337), .I1(a[11]), .S(n314), .ZN(
        \DP_OP_6J1_122_4365/n359 ) );
  AOI22D0BWPHVT U395 ( .A1(n331), .A2(b[6]), .B1(n330), .B2(n450), .ZN(n316)
         );
  AOI22D0BWPHVT U396 ( .A1(b[8]), .A2(n332), .B1(n333), .B2(b[7]), .ZN(n315)
         );
  CKND2D0BWPHVT U397 ( .A1(n316), .A2(n315), .ZN(n317) );
  MUX2ND0BWPHVT U398 ( .I0(n337), .I1(a[11]), .S(n317), .ZN(
        \DP_OP_6J1_122_4365/n360 ) );
  AOI22D0BWPHVT U399 ( .A1(n331), .A2(b[5]), .B1(n330), .B2(n454), .ZN(n319)
         );
  AOI22D0BWPHVT U400 ( .A1(n332), .A2(b[7]), .B1(n333), .B2(b[6]), .ZN(n318)
         );
  CKND2D0BWPHVT U401 ( .A1(n319), .A2(n318), .ZN(n320) );
  MUX2ND0BWPHVT U402 ( .I0(n337), .I1(a[11]), .S(n320), .ZN(
        \DP_OP_6J1_122_4365/n361 ) );
  AOI22D0BWPHVT U403 ( .A1(n333), .A2(b[5]), .B1(n330), .B2(n458), .ZN(n322)
         );
  AOI22D0BWPHVT U404 ( .A1(n332), .A2(b[6]), .B1(n331), .B2(b[4]), .ZN(n321)
         );
  CKND2D0BWPHVT U405 ( .A1(n322), .A2(n321), .ZN(n323) );
  MUX2ND0BWPHVT U406 ( .I0(n337), .I1(a[11]), .S(n323), .ZN(
        \DP_OP_6J1_122_4365/n362 ) );
  AOI22D0BWPHVT U407 ( .A1(n332), .A2(b[5]), .B1(n330), .B2(n462), .ZN(n325)
         );
  AOI22D0BWPHVT U408 ( .A1(n333), .A2(b[4]), .B1(n331), .B2(b[3]), .ZN(n324)
         );
  CKND2D0BWPHVT U409 ( .A1(n325), .A2(n324), .ZN(n326) );
  MUX2ND0BWPHVT U410 ( .I0(n337), .I1(a[11]), .S(n326), .ZN(
        \DP_OP_6J1_122_4365/n363 ) );
  AOI22D0BWPHVT U411 ( .A1(b[2]), .A2(n331), .B1(n330), .B2(n466), .ZN(n328)
         );
  AOI22D0BWPHVT U412 ( .A1(n332), .A2(b[4]), .B1(n333), .B2(b[3]), .ZN(n327)
         );
  CKND2D0BWPHVT U413 ( .A1(n328), .A2(n327), .ZN(n329) );
  MUX2ND0BWPHVT U414 ( .I0(n337), .I1(a[11]), .S(n329), .ZN(
        \DP_OP_6J1_122_4365/n364 ) );
  AOI22D0BWPHVT U415 ( .A1(b[1]), .A2(n331), .B1(n330), .B2(n470), .ZN(n335)
         );
  AOI22D0BWPHVT U416 ( .A1(b[2]), .A2(n333), .B1(n332), .B2(b[3]), .ZN(n334)
         );
  CKND2D0BWPHVT U417 ( .A1(n335), .A2(n334), .ZN(n336) );
  MUX2ND0BWPHVT U418 ( .I0(n337), .I1(a[11]), .S(n336), .ZN(
        \DP_OP_6J1_122_4365/n365 ) );
  CKND0BWPHVT U419 ( .I(n412), .ZN(n341) );
  CKND2D0BWPHVT U420 ( .A1(n339), .A2(n341), .ZN(n344) );
  OAI22D0BWPHVT U421 ( .A1(n338), .A2(n405), .B1(n481), .B2(n344), .ZN(n342)
         );
  NR2D0BWPHVT U422 ( .A1(n339), .A2(n412), .ZN(n410) );
  NR2D0BWPHVT U423 ( .A1(n341), .A2(n340), .ZN(n409) );
  OAI32D0BWPHVT U424 ( .A1(n342), .A2(n410), .A3(n409), .B1(n482), .B2(n342), 
        .ZN(n343) );
  MUX2ND0BWPHVT U425 ( .I0(a[8]), .I1(n415), .S(n343), .ZN(
        \DP_OP_6J1_122_4365/n370 ) );
  CKND0BWPHVT U426 ( .I(n344), .ZN(n408) );
  AOI22D0BWPHVT U427 ( .A1(b[15]), .A2(n409), .B1(n345), .B2(n408), .ZN(n347)
         );
  CKND2D0BWPHVT U428 ( .A1(n482), .A2(n410), .ZN(n346) );
  OAI211D0BWPHVT U429 ( .A1(n405), .A2(n348), .B(n347), .C(n346), .ZN(n349) );
  MUX2ND0BWPHVT U430 ( .I0(n415), .I1(a[8]), .S(n349), .ZN(
        \DP_OP_6J1_122_4365/n371 ) );
  AOI22D0BWPHVT U431 ( .A1(b[14]), .A2(n409), .B1(n422), .B2(n408), .ZN(n351)
         );
  CKND2D0BWPHVT U432 ( .A1(b[15]), .A2(n410), .ZN(n350) );
  OAI211D0BWPHVT U433 ( .A1(n405), .A2(n352), .B(n351), .C(n350), .ZN(n353) );
  MUX2ND0BWPHVT U434 ( .I0(n415), .I1(a[8]), .S(n353), .ZN(
        \DP_OP_6J1_122_4365/n372 ) );
  AOI22D0BWPHVT U435 ( .A1(b[13]), .A2(n409), .B1(n426), .B2(n408), .ZN(n355)
         );
  CKND2D0BWPHVT U436 ( .A1(b[14]), .A2(n410), .ZN(n354) );
  OAI211D0BWPHVT U437 ( .A1(n405), .A2(n356), .B(n355), .C(n354), .ZN(n357) );
  MUX2ND0BWPHVT U438 ( .I0(n415), .I1(a[8]), .S(n357), .ZN(
        \DP_OP_6J1_122_4365/n373 ) );
  AOI22D0BWPHVT U439 ( .A1(b[12]), .A2(n409), .B1(n430), .B2(n408), .ZN(n359)
         );
  CKND2D0BWPHVT U440 ( .A1(b[13]), .A2(n410), .ZN(n358) );
  OAI211D0BWPHVT U441 ( .A1(n405), .A2(n360), .B(n359), .C(n358), .ZN(n361) );
  MUX2ND0BWPHVT U442 ( .I0(n415), .I1(a[8]), .S(n361), .ZN(
        \DP_OP_6J1_122_4365/n374 ) );
  AOI22D0BWPHVT U443 ( .A1(b[11]), .A2(n409), .B1(n434), .B2(n408), .ZN(n363)
         );
  CKND2D0BWPHVT U444 ( .A1(b[12]), .A2(n410), .ZN(n362) );
  OAI211D0BWPHVT U445 ( .A1(n405), .A2(n364), .B(n363), .C(n362), .ZN(n365) );
  MUX2ND0BWPHVT U446 ( .I0(n415), .I1(a[8]), .S(n365), .ZN(
        \DP_OP_6J1_122_4365/n375 ) );
  AOI22D0BWPHVT U447 ( .A1(b[10]), .A2(n409), .B1(n438), .B2(n408), .ZN(n367)
         );
  CKND2D0BWPHVT U448 ( .A1(b[11]), .A2(n410), .ZN(n366) );
  OAI211D0BWPHVT U449 ( .A1(n405), .A2(n368), .B(n367), .C(n366), .ZN(n369) );
  MUX2ND0BWPHVT U450 ( .I0(n415), .I1(a[8]), .S(n369), .ZN(
        \DP_OP_6J1_122_4365/n376 ) );
  AOI22D0BWPHVT U451 ( .A1(b[9]), .A2(n409), .B1(n442), .B2(n408), .ZN(n371)
         );
  CKND2D0BWPHVT U452 ( .A1(b[10]), .A2(n410), .ZN(n370) );
  OAI211D0BWPHVT U453 ( .A1(n405), .A2(n372), .B(n371), .C(n370), .ZN(n373) );
  MUX2ND0BWPHVT U454 ( .I0(n415), .I1(a[8]), .S(n373), .ZN(
        \DP_OP_6J1_122_4365/n377 ) );
  AOI22D0BWPHVT U455 ( .A1(b[8]), .A2(n409), .B1(n446), .B2(n408), .ZN(n375)
         );
  CKND2D0BWPHVT U456 ( .A1(b[9]), .A2(n410), .ZN(n374) );
  OAI211D0BWPHVT U457 ( .A1(n405), .A2(n376), .B(n375), .C(n374), .ZN(n377) );
  MUX2ND0BWPHVT U458 ( .I0(n415), .I1(a[8]), .S(n377), .ZN(
        \DP_OP_6J1_122_4365/n378 ) );
  AOI22D0BWPHVT U459 ( .A1(b[7]), .A2(n409), .B1(n450), .B2(n408), .ZN(n379)
         );
  CKND2D0BWPHVT U460 ( .A1(b[8]), .A2(n410), .ZN(n378) );
  OAI211D0BWPHVT U461 ( .A1(n405), .A2(n380), .B(n379), .C(n378), .ZN(n381) );
  MUX2ND0BWPHVT U462 ( .I0(n415), .I1(a[8]), .S(n381), .ZN(
        \DP_OP_6J1_122_4365/n379 ) );
  AOI22D0BWPHVT U463 ( .A1(b[6]), .A2(n409), .B1(n454), .B2(n408), .ZN(n383)
         );
  CKND2D0BWPHVT U464 ( .A1(b[7]), .A2(n410), .ZN(n382) );
  OAI211D0BWPHVT U465 ( .A1(n405), .A2(n384), .B(n383), .C(n382), .ZN(n385) );
  MUX2ND0BWPHVT U466 ( .I0(n415), .I1(a[8]), .S(n385), .ZN(
        \DP_OP_6J1_122_4365/n380 ) );
  AOI22D0BWPHVT U467 ( .A1(b[5]), .A2(n409), .B1(n458), .B2(n408), .ZN(n387)
         );
  CKND2D0BWPHVT U468 ( .A1(b[6]), .A2(n410), .ZN(n386) );
  OAI211D0BWPHVT U469 ( .A1(n405), .A2(n388), .B(n387), .C(n386), .ZN(n389) );
  MUX2ND0BWPHVT U470 ( .I0(n415), .I1(a[8]), .S(n389), .ZN(
        \DP_OP_6J1_122_4365/n381 ) );
  AOI22D0BWPHVT U471 ( .A1(b[5]), .A2(n410), .B1(n462), .B2(n408), .ZN(n391)
         );
  CKND2D0BWPHVT U472 ( .A1(b[4]), .A2(n409), .ZN(n390) );
  OAI211D0BWPHVT U473 ( .A1(n405), .A2(n392), .B(n391), .C(n390), .ZN(n393) );
  MUX2ND0BWPHVT U474 ( .I0(n415), .I1(a[8]), .S(n393), .ZN(
        \DP_OP_6J1_122_4365/n382 ) );
  AOI22D0BWPHVT U475 ( .A1(b[3]), .A2(n409), .B1(n466), .B2(n408), .ZN(n395)
         );
  CKND2D0BWPHVT U476 ( .A1(b[4]), .A2(n410), .ZN(n394) );
  OAI211D0BWPHVT U477 ( .A1(n405), .A2(n396), .B(n395), .C(n394), .ZN(n397) );
  MUX2ND0BWPHVT U478 ( .I0(n415), .I1(a[8]), .S(n397), .ZN(
        \DP_OP_6J1_122_4365/n383 ) );
  AOI22D0BWPHVT U479 ( .A1(b[2]), .A2(n409), .B1(n470), .B2(n408), .ZN(n399)
         );
  CKND2D0BWPHVT U480 ( .A1(b[3]), .A2(n410), .ZN(n398) );
  OAI211D0BWPHVT U481 ( .A1(n405), .A2(n400), .B(n399), .C(n398), .ZN(n401) );
  MUX2ND0BWPHVT U482 ( .I0(n415), .I1(a[8]), .S(n401), .ZN(
        \DP_OP_6J1_122_4365/n384 ) );
  AOI22D0BWPHVT U483 ( .A1(b[1]), .A2(n409), .B1(n402), .B2(n408), .ZN(n404)
         );
  CKND2D0BWPHVT U484 ( .A1(b[2]), .A2(n410), .ZN(n403) );
  OAI211D0BWPHVT U485 ( .A1(n405), .A2(n413), .B(n404), .C(n403), .ZN(n406) );
  MUX2ND0BWPHVT U486 ( .I0(n415), .I1(a[8]), .S(n406), .ZN(
        \DP_OP_6J1_122_4365/n385 ) );
  AOI222D0BWPHVT U487 ( .A1(b[1]), .A2(n410), .B1(b[0]), .B2(n409), .C1(n408), 
        .C2(n407), .ZN(n411) );
  MUX2ND0BWPHVT U488 ( .I0(a[8]), .I1(n415), .S(n411), .ZN(
        \DP_OP_6J1_122_4365/n386 ) );
  NR2D0BWPHVT U489 ( .A1(n413), .A2(n412), .ZN(n414) );
  MUX2ND0BWPHVT U490 ( .I0(n415), .I1(a[8]), .S(n414), .ZN(
        \DP_OP_6J1_122_4365/n387 ) );
  OAI21D0BWPHVT U491 ( .A1(n417), .A2(n416), .B(n482), .ZN(n418) );
  MUX2ND0BWPHVT U492 ( .I0(n478), .I1(a[5]), .S(n418), .ZN(
        \DP_OP_6J1_122_4365/n388 ) );
  CKND0BWPHVT U493 ( .I(n471), .ZN(n419) );
  MOAI22D0BWPHVT U494 ( .A1(n419), .A2(n481), .B1(n472), .B2(b[15]), .ZN(n420)
         );
  OAI32D0BWPHVT U495 ( .A1(n420), .A2(n473), .A3(n474), .B1(n482), .B2(n420), 
        .ZN(n421) );
  MUX2ND0BWPHVT U496 ( .I0(a[5]), .I1(n478), .S(n421), .ZN(
        \DP_OP_6J1_122_4365/n389 ) );
  AOI22D0BWPHVT U497 ( .A1(n472), .A2(b[13]), .B1(n471), .B2(n422), .ZN(n424)
         );
  AOI22D0BWPHVT U498 ( .A1(n473), .A2(b[15]), .B1(n474), .B2(b[14]), .ZN(n423)
         );
  CKND2D0BWPHVT U499 ( .A1(n424), .A2(n423), .ZN(n425) );
  MUX2ND0BWPHVT U500 ( .I0(n478), .I1(a[5]), .S(n425), .ZN(
        \DP_OP_6J1_122_4365/n391 ) );
  AOI22D0BWPHVT U501 ( .A1(n472), .A2(b[12]), .B1(n471), .B2(n426), .ZN(n428)
         );
  AOI22D0BWPHVT U502 ( .A1(n473), .A2(b[14]), .B1(n474), .B2(b[13]), .ZN(n427)
         );
  CKND2D0BWPHVT U503 ( .A1(n428), .A2(n427), .ZN(n429) );
  MUX2ND0BWPHVT U504 ( .I0(n478), .I1(a[5]), .S(n429), .ZN(
        \DP_OP_6J1_122_4365/n392 ) );
  AOI22D0BWPHVT U505 ( .A1(n472), .A2(b[11]), .B1(n471), .B2(n430), .ZN(n432)
         );
  AOI22D0BWPHVT U506 ( .A1(n473), .A2(b[13]), .B1(n474), .B2(b[12]), .ZN(n431)
         );
  CKND2D0BWPHVT U507 ( .A1(n432), .A2(n431), .ZN(n433) );
  MUX2ND0BWPHVT U508 ( .I0(n478), .I1(a[5]), .S(n433), .ZN(
        \DP_OP_6J1_122_4365/n393 ) );
  AOI22D0BWPHVT U509 ( .A1(b[10]), .A2(n472), .B1(n471), .B2(n434), .ZN(n436)
         );
  AOI22D0BWPHVT U510 ( .A1(n473), .A2(b[12]), .B1(n474), .B2(b[11]), .ZN(n435)
         );
  CKND2D0BWPHVT U511 ( .A1(n436), .A2(n435), .ZN(n437) );
  MUX2ND0BWPHVT U512 ( .I0(n478), .I1(a[5]), .S(n437), .ZN(
        \DP_OP_6J1_122_4365/n394 ) );
  AOI22D0BWPHVT U513 ( .A1(b[9]), .A2(n472), .B1(n471), .B2(n438), .ZN(n440)
         );
  AOI22D0BWPHVT U514 ( .A1(b[10]), .A2(n474), .B1(n473), .B2(b[11]), .ZN(n439)
         );
  CKND2D0BWPHVT U515 ( .A1(n440), .A2(n439), .ZN(n441) );
  MUX2ND0BWPHVT U516 ( .I0(n478), .I1(a[5]), .S(n441), .ZN(
        \DP_OP_6J1_122_4365/n395 ) );
  AOI22D0BWPHVT U517 ( .A1(b[8]), .A2(n472), .B1(n442), .B2(n471), .ZN(n444)
         );
  AOI22D0BWPHVT U518 ( .A1(b[10]), .A2(n473), .B1(b[9]), .B2(n474), .ZN(n443)
         );
  CKND2D0BWPHVT U519 ( .A1(n444), .A2(n443), .ZN(n445) );
  MUX2ND0BWPHVT U520 ( .I0(n478), .I1(a[5]), .S(n445), .ZN(
        \DP_OP_6J1_122_4365/n396 ) );
  AOI22D0BWPHVT U521 ( .A1(n472), .A2(b[7]), .B1(n471), .B2(n446), .ZN(n448)
         );
  AOI22D0BWPHVT U522 ( .A1(b[9]), .A2(n473), .B1(b[8]), .B2(n474), .ZN(n447)
         );
  CKND2D0BWPHVT U523 ( .A1(n448), .A2(n447), .ZN(n449) );
  MUX2ND0BWPHVT U524 ( .I0(n478), .I1(a[5]), .S(n449), .ZN(
        \DP_OP_6J1_122_4365/n397 ) );
  AOI22D0BWPHVT U525 ( .A1(n472), .A2(b[6]), .B1(n471), .B2(n450), .ZN(n452)
         );
  AOI22D0BWPHVT U526 ( .A1(b[8]), .A2(n473), .B1(n474), .B2(b[7]), .ZN(n451)
         );
  CKND2D0BWPHVT U527 ( .A1(n452), .A2(n451), .ZN(n453) );
  MUX2ND0BWPHVT U528 ( .I0(n478), .I1(a[5]), .S(n453), .ZN(
        \DP_OP_6J1_122_4365/n398 ) );
  AOI22D0BWPHVT U529 ( .A1(n472), .A2(b[5]), .B1(n471), .B2(n454), .ZN(n456)
         );
  AOI22D0BWPHVT U530 ( .A1(n473), .A2(b[7]), .B1(n474), .B2(b[6]), .ZN(n455)
         );
  CKND2D0BWPHVT U531 ( .A1(n456), .A2(n455), .ZN(n457) );
  MUX2ND0BWPHVT U532 ( .I0(n478), .I1(a[5]), .S(n457), .ZN(
        \DP_OP_6J1_122_4365/n399 ) );
  AOI22D0BWPHVT U533 ( .A1(n474), .A2(b[5]), .B1(n471), .B2(n458), .ZN(n460)
         );
  AOI22D0BWPHVT U534 ( .A1(n473), .A2(b[6]), .B1(n472), .B2(b[4]), .ZN(n459)
         );
  CKND2D0BWPHVT U535 ( .A1(n460), .A2(n459), .ZN(n461) );
  MUX2ND0BWPHVT U536 ( .I0(n478), .I1(a[5]), .S(n461), .ZN(
        \DP_OP_6J1_122_4365/n400 ) );
  AOI22D0BWPHVT U537 ( .A1(n473), .A2(b[5]), .B1(n471), .B2(n462), .ZN(n464)
         );
  AOI22D0BWPHVT U538 ( .A1(n474), .A2(b[4]), .B1(n472), .B2(b[3]), .ZN(n463)
         );
  CKND2D0BWPHVT U539 ( .A1(n464), .A2(n463), .ZN(n465) );
  MUX2ND0BWPHVT U540 ( .I0(n478), .I1(a[5]), .S(n465), .ZN(
        \DP_OP_6J1_122_4365/n401 ) );
  AOI22D0BWPHVT U541 ( .A1(b[2]), .A2(n472), .B1(n471), .B2(n466), .ZN(n468)
         );
  AOI22D0BWPHVT U542 ( .A1(n473), .A2(b[4]), .B1(n474), .B2(b[3]), .ZN(n467)
         );
  CKND2D0BWPHVT U543 ( .A1(n468), .A2(n467), .ZN(n469) );
  MUX2ND0BWPHVT U544 ( .I0(n478), .I1(a[5]), .S(n469), .ZN(
        \DP_OP_6J1_122_4365/n402 ) );
  AOI22D0BWPHVT U545 ( .A1(b[1]), .A2(n472), .B1(n471), .B2(n470), .ZN(n476)
         );
  AOI22D0BWPHVT U546 ( .A1(b[2]), .A2(n474), .B1(n473), .B2(b[3]), .ZN(n475)
         );
  CKND2D0BWPHVT U547 ( .A1(n476), .A2(n475), .ZN(n477) );
  MUX2ND0BWPHVT U548 ( .I0(n478), .I1(a[5]), .S(n477), .ZN(
        \DP_OP_6J1_122_4365/n403 ) );
  OAI32D0BWPHVT U549 ( .A1(n485), .A2(n484), .A3(n483), .B1(n482), .B2(n485), 
        .ZN(n486) );
  MUX2ND0BWPHVT U550 ( .I0(a[2]), .I1(n487), .S(n486), .ZN(
        \DP_OP_6J1_122_4365/n408 ) );
  FA1D0BWPHVT U551 ( .A(n490), .B(n489), .CI(n488), .CO(n146), .S(res[31]) );
  CMPE42D1BWPHVT U552 ( .A(\DP_OP_6J1_122_4365/n203 ), .B(
        \DP_OP_6J1_122_4365/n376 ), .C(\DP_OP_6J1_122_4365/n206 ), .CIX(
        \DP_OP_6J1_122_4365/n408 ), .D(\DP_OP_6J1_122_4365/n392 ), .CO(
        \DP_OP_6J1_122_4365/n199 ), .COX(\DP_OP_6J1_122_4365/n198 ), .S(
        \DP_OP_6J1_122_4365/n200 ) );
  CMPE42D1BWPHVT U553 ( .A(\DP_OP_6J1_122_4365/n181 ), .B(
        \DP_OP_6J1_122_4365/n388 ), .C(\DP_OP_6J1_122_4365/n325 ), .CIX(
        \DP_OP_6J1_122_4365/n340 ), .D(\DP_OP_6J1_122_4365/n178 ), .CO(
        \DP_OP_6J1_122_4365/n173 ), .COX(\DP_OP_6J1_122_4365/n162 ), .S(
        \DP_OP_6J1_122_4365/n174 ) );
  CMPE42D1BWPHVT U554 ( .A(\DP_OP_6J1_122_4365/n205 ), .B(
        \DP_OP_6J1_122_4365/n344 ), .C(\DP_OP_6J1_122_4365/n209 ), .CIX(
        \DP_OP_6J1_122_4365/n210 ), .D(\DP_OP_6J1_122_4365/n360 ), .CO(
        \DP_OP_6J1_122_4365/n202 ), .COX(\DP_OP_6J1_122_4365/n201 ), .S(
        \DP_OP_6J1_122_4365/n203 ) );
  CMPE42D1BWPHVT U555 ( .A(\DP_OP_6J1_122_4365/n326 ), .B(
        \DP_OP_6J1_122_4365/n189 ), .C(\DP_OP_6J1_122_4365/n186 ), .CIX(
        \DP_OP_6J1_122_4365/n187 ), .D(\DP_OP_6J1_122_4365/n341 ), .CO(
        \DP_OP_6J1_122_4365/n179 ), .COX(\DP_OP_6J1_122_4365/n178 ), .S(
        \DP_OP_6J1_122_4365/n180 ) );
  CMPE42D1BWPHVT U556 ( .A(\DP_OP_6J1_122_4365/n161 ), .B(
        \DP_OP_6J1_122_4365/n338 ), .C(\DP_OP_6J1_122_4365/n164 ), .CIX(
        \DP_OP_6J1_122_4365/n370 ), .D(\DP_OP_6J1_122_4365/n354 ), .CO(
        \DP_OP_6J1_122_4365/n158 ), .COX(\DP_OP_6J1_122_4365/n157 ), .S(
        \DP_OP_6J1_122_4365/n159 ) );
  CMPE42D1BWPHVT U557 ( .A(\DP_OP_6J1_122_4365/n320 ), .B(
        \DP_OP_6J1_122_4365/n152 ), .C(\DP_OP_6J1_122_4365/n149 ), .CIX(
        \DP_OP_6J1_122_4365/n351 ), .D(\DP_OP_6J1_122_4365/n335 ), .CO(
        \DP_OP_6J1_122_4365/n145 ), .COX(\DP_OP_6J1_122_4365/n144 ), .S(
        \DP_OP_6J1_122_4365/n146 ) );
  CMPE42D1BWPHVT U558 ( .A(\DP_OP_6J1_122_4365/n180 ), .B(
        \DP_OP_6J1_122_4365/n357 ), .C(\DP_OP_6J1_122_4365/n183 ), .CIX(
        \DP_OP_6J1_122_4365/n389 ), .D(\DP_OP_6J1_122_4365/n373 ), .CO(
        \DP_OP_6J1_122_4365/n176 ), .COX(\DP_OP_6J1_122_4365/n175 ), .S(
        \DP_OP_6J1_122_4365/n177 ) );
  CMPE42D1BWPHVT U559 ( .A(\DP_OP_6J1_122_4365/n168 ), .B(
        \DP_OP_6J1_122_4365/n173 ), .C(\DP_OP_6J1_122_4365/n355 ), .CIX(
        \DP_OP_6J1_122_4365/n371 ), .D(\DP_OP_6J1_122_4365/n170 ), .CO(
        \DP_OP_6J1_122_4365/n165 ), .COX(\DP_OP_6J1_122_4365/n164 ), .S(
        \DP_OP_6J1_122_4365/n166 ) );
  CMPE42D1BWPHVT U560 ( .A(\DP_OP_6J1_122_4365/n179 ), .B(
        \DP_OP_6J1_122_4365/n174 ), .C(\DP_OP_6J1_122_4365/n356 ), .CIX(
        \DP_OP_6J1_122_4365/n372 ), .D(\DP_OP_6J1_122_4365/n175 ), .CO(
        \DP_OP_6J1_122_4365/n171 ), .COX(\DP_OP_6J1_122_4365/n170 ), .S(
        \DP_OP_6J1_122_4365/n172 ) );
  CMPE42D1BWPHVT U561 ( .A(\DP_OP_6J1_122_4365/n147 ), .B(
        \DP_OP_6J1_122_4365/n350 ), .C(\DP_OP_6J1_122_4365/n319 ), .CIX(
        \DP_OP_6J1_122_4365/n334 ), .D(\DP_OP_6J1_122_4365/n144 ), .CO(
        \DP_OP_6J1_122_4365/n142 ), .COX(\DP_OP_6J1_122_4365/n137 ), .S(
        \DP_OP_6J1_122_4365/n143 ) );
  CMPE42D1BWPHVT U562 ( .A(\DP_OP_6J1_122_4365/n152 ), .B(
        \DP_OP_6J1_122_4365/n321 ), .C(\DP_OP_6J1_122_4365/n336 ), .CIX(
        \DP_OP_6J1_122_4365/n352 ), .D(\DP_OP_6J1_122_4365/n153 ), .CO(
        \DP_OP_6J1_122_4365/n150 ), .COX(\DP_OP_6J1_122_4365/n149 ), .S(
        \DP_OP_6J1_122_4365/n151 ) );
  CMPE42D1BWPHVT U563 ( .A(\DP_OP_6J1_122_4365/n160 ), .B(
        \DP_OP_6J1_122_4365/n156 ), .C(\DP_OP_6J1_122_4365/n337 ), .CIX(
        \DP_OP_6J1_122_4365/n353 ), .D(\DP_OP_6J1_122_4365/n157 ), .CO(
        \DP_OP_6J1_122_4365/n154 ), .COX(\DP_OP_6J1_122_4365/n153 ), .S(
        \DP_OP_6J1_122_4365/n155 ) );
  CMPE42D1BWPHVT U564 ( .A(\DP_OP_6J1_122_4365/n204 ), .B(
        \DP_OP_6J1_122_4365/n197 ), .C(\DP_OP_6J1_122_4365/n343 ), .CIX(
        \DP_OP_6J1_122_4365/n359 ), .D(\DP_OP_6J1_122_4365/n201 ), .CO(
        \DP_OP_6J1_122_4365/n194 ), .COX(\DP_OP_6J1_122_4365/n193 ), .S(
        \DP_OP_6J1_122_4365/n195 ) );
  CMPE42D1BWPHVT U565 ( .A(\DP_OP_6J1_122_4365/n202 ), .B(
        \DP_OP_6J1_122_4365/n195 ), .C(\DP_OP_6J1_122_4365/n375 ), .CIX(
        \DP_OP_6J1_122_4365/n391 ), .D(\DP_OP_6J1_122_4365/n198 ), .CO(
        \DP_OP_6J1_122_4365/n191 ), .COX(\DP_OP_6J1_122_4365/n190 ), .S(
        \DP_OP_6J1_122_4365/n192 ) );
  CMPE42D1BWPHVT U566 ( .A(\DP_OP_6J1_122_4365/n188 ), .B(
        \DP_OP_6J1_122_4365/n358 ), .C(\DP_OP_6J1_122_4365/n374 ), .CIX(
        \DP_OP_6J1_122_4365/n191 ), .D(\DP_OP_6J1_122_4365/n190 ), .CO(
        \DP_OP_6J1_122_4365/n184 ), .COX(\DP_OP_6J1_122_4365/n183 ), .S(
        \DP_OP_6J1_122_4365/n185 ) );
  CMPE42D1BWPHVT U567 ( .A(\DP_OP_6J1_122_4365/n211 ), .B(
        \DP_OP_6J1_122_4365/n377 ), .C(\DP_OP_6J1_122_4365/n214 ), .CIX(
        \DP_OP_6J1_122_4365/n215 ), .D(\DP_OP_6J1_122_4365/n393 ), .CO(
        \DP_OP_6J1_122_4365/n207 ), .COX(\DP_OP_6J1_122_4365/n206 ), .S(
        \DP_OP_6J1_122_4365/n208 ) );
  CMPE42D1BWPHVT U568 ( .A(\DP_OP_6J1_122_4365/n196 ), .B(
        \DP_OP_6J1_122_4365/n189 ), .C(\DP_OP_6J1_122_4365/n342 ), .CIX(
        \DP_OP_6J1_122_4365/n194 ), .D(\DP_OP_6J1_122_4365/n193 ), .CO(
        \DP_OP_6J1_122_4365/n187 ), .COX(\DP_OP_6J1_122_4365/n186 ), .S(
        \DP_OP_6J1_122_4365/n188 ) );
  CMPE42D1BWPHVT U569 ( .A(\DP_OP_6J1_122_4365/n348 ), .B(c[13]), .C(
        \DP_OP_6J1_122_4365/n237 ), .CIX(\DP_OP_6J1_122_4365/n238 ), .D(
        \DP_OP_6J1_122_4365/n364 ), .CO(\DP_OP_6J1_122_4365/n232 ), .COX(
        \DP_OP_6J1_122_4365/n231 ), .S(\DP_OP_6J1_122_4365/n233 ) );
  CMPE42D1BWPHVT U570 ( .A(\DP_OP_6J1_122_4365/n347 ), .B(c[14]), .C(
        \DP_OP_6J1_122_4365/n231 ), .CIX(\DP_OP_6J1_122_4365/n232 ), .D(
        \DP_OP_6J1_122_4365/n363 ), .CO(\DP_OP_6J1_122_4365/n226 ), .COX(
        \DP_OP_6J1_122_4365/n225 ), .S(\DP_OP_6J1_122_4365/n227 ) );
  CMPE42D1BWPHVT U571 ( .A(\DP_OP_6J1_122_4365/n221 ), .B(
        \DP_OP_6J1_122_4365/n346 ), .C(\DP_OP_6J1_122_4365/n225 ), .CIX(
        \DP_OP_6J1_122_4365/n226 ), .D(\DP_OP_6J1_122_4365/n362 ), .CO(
        \DP_OP_6J1_122_4365/n218 ), .COX(\DP_OP_6J1_122_4365/n217 ), .S(
        \DP_OP_6J1_122_4365/n219 ) );
  CMPE42D1BWPHVT U572 ( .A(\DP_OP_6J1_122_4365/n213 ), .B(
        \DP_OP_6J1_122_4365/n345 ), .C(\DP_OP_6J1_122_4365/n217 ), .CIX(
        \DP_OP_6J1_122_4365/n218 ), .D(\DP_OP_6J1_122_4365/n361 ), .CO(
        \DP_OP_6J1_122_4365/n210 ), .COX(\DP_OP_6J1_122_4365/n209 ), .S(
        \DP_OP_6J1_122_4365/n211 ) );
  CMPE42D1BWPHVT U573 ( .A(\DP_OP_6J1_122_4365/n219 ), .B(
        \DP_OP_6J1_122_4365/n378 ), .C(\DP_OP_6J1_122_4365/n222 ), .CIX(
        \DP_OP_6J1_122_4365/n223 ), .D(\DP_OP_6J1_122_4365/n394 ), .CO(
        \DP_OP_6J1_122_4365/n215 ), .COX(\DP_OP_6J1_122_4365/n214 ), .S(
        \DP_OP_6J1_122_4365/n216 ) );
  CMPE42D1BWPHVT U574 ( .A(\DP_OP_6J1_122_4365/n227 ), .B(
        \DP_OP_6J1_122_4365/n379 ), .C(\DP_OP_6J1_122_4365/n228 ), .CIX(
        \DP_OP_6J1_122_4365/n229 ), .D(\DP_OP_6J1_122_4365/n395 ), .CO(
        \DP_OP_6J1_122_4365/n223 ), .COX(\DP_OP_6J1_122_4365/n222 ), .S(
        \DP_OP_6J1_122_4365/n224 ) );
  CMPE42D1BWPHVT U575 ( .A(\DP_OP_6J1_122_4365/n233 ), .B(
        \DP_OP_6J1_122_4365/n380 ), .C(\DP_OP_6J1_122_4365/n234 ), .CIX(
        \DP_OP_6J1_122_4365/n235 ), .D(\DP_OP_6J1_122_4365/n396 ), .CO(
        \DP_OP_6J1_122_4365/n229 ), .COX(\DP_OP_6J1_122_4365/n228 ), .S(
        \DP_OP_6J1_122_4365/n230 ) );
  CMPE42D1BWPHVT U576 ( .A(\DP_OP_6J1_122_4365/n239 ), .B(
        \DP_OP_6J1_122_4365/n381 ), .C(\DP_OP_6J1_122_4365/n240 ), .CIX(
        \DP_OP_6J1_122_4365/n241 ), .D(\DP_OP_6J1_122_4365/n397 ), .CO(
        \DP_OP_6J1_122_4365/n235 ), .COX(\DP_OP_6J1_122_4365/n234 ), .S(
        \DP_OP_6J1_122_4365/n236 ) );
  CMPE42D1BWPHVT U577 ( .A(\DP_OP_6J1_122_4365/n244 ), .B(
        \DP_OP_6J1_122_4365/n382 ), .C(\DP_OP_6J1_122_4365/n245 ), .CIX(
        \DP_OP_6J1_122_4365/n246 ), .D(\DP_OP_6J1_122_4365/n398 ), .CO(
        \DP_OP_6J1_122_4365/n241 ), .COX(\DP_OP_6J1_122_4365/n240 ), .S(
        \DP_OP_6J1_122_4365/n242 ) );
  CMPE42D1BWPHVT U578 ( .A(\DP_OP_6J1_122_4365/n249 ), .B(
        \DP_OP_6J1_122_4365/n383 ), .C(\DP_OP_6J1_122_4365/n250 ), .CIX(
        \DP_OP_6J1_122_4365/n251 ), .D(\DP_OP_6J1_122_4365/n399 ), .CO(
        \DP_OP_6J1_122_4365/n246 ), .COX(\DP_OP_6J1_122_4365/n245 ), .S(
        \DP_OP_6J1_122_4365/n247 ) );
  CMPE42D1BWPHVT U579 ( .A(\DP_OP_6J1_122_4365/n254 ), .B(
        \DP_OP_6J1_122_4365/n384 ), .C(\DP_OP_6J1_122_4365/n255 ), .CIX(
        \DP_OP_6J1_122_4365/n256 ), .D(\DP_OP_6J1_122_4365/n400 ), .CO(
        \DP_OP_6J1_122_4365/n251 ), .COX(\DP_OP_6J1_122_4365/n250 ), .S(
        \DP_OP_6J1_122_4365/n252 ) );
  CMPE42D1BWPHVT U580 ( .A(\DP_OP_6J1_122_4365/n385 ), .B(c[8]), .C(
        \DP_OP_6J1_122_4365/n258 ), .CIX(\DP_OP_6J1_122_4365/n259 ), .D(
        \DP_OP_6J1_122_4365/n401 ), .CO(\DP_OP_6J1_122_4365/n256 ), .COX(
        \DP_OP_6J1_122_4365/n255 ), .S(\DP_OP_6J1_122_4365/n257 ) );
  CMPE42D1BWPHVT U581 ( .A(\DP_OP_6J1_122_4365/n386 ), .B(c[7]), .C(
        \DP_OP_6J1_122_4365/n261 ), .CIX(\DP_OP_6J1_122_4365/n262 ), .D(
        \DP_OP_6J1_122_4365/n402 ), .CO(\DP_OP_6J1_122_4365/n259 ), .COX(
        \DP_OP_6J1_122_4365/n258 ), .S(\DP_OP_6J1_122_4365/n260 ) );
  CMPE42D1BWPHVT U582 ( .A(a[14]), .B(c[12]), .C(\DP_OP_6J1_122_4365/n349 ), 
        .CIX(\DP_OP_6J1_122_4365/n243 ), .D(\DP_OP_6J1_122_4365/n365 ), .CO(
        \DP_OP_6J1_122_4365/n238 ), .COX(\DP_OP_6J1_122_4365/n237 ), .S(
        \DP_OP_6J1_122_4365/n239 ) );
  CMPE42D1BWPHVT U583 ( .A(a[8]), .B(c[6]), .C(\DP_OP_6J1_122_4365/n387 ), 
        .CIX(\DP_OP_6J1_122_4365/n264 ), .D(\DP_OP_6J1_122_4365/n403 ), .CO(
        \DP_OP_6J1_122_4365/n262 ), .COX(\DP_OP_6J1_122_4365/n261 ), .S(
        \DP_OP_6J1_122_4365/n263 ) );
endmodule


module test_shifter_unq1_DataWidth16_0 ( is_signed, dir_left, a, b, res );
  input [15:0] a;
  input [3:0] b;
  output [15:0] res;
  input is_signed, dir_left;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159;

  CKND0BWPHVT U1 ( .I(b[1]), .ZN(n68) );
  CKND0BWPHVT U2 ( .I(n72), .ZN(n73) );
  CKND0BWPHVT U3 ( .I(n153), .ZN(n145) );
  CKND0BWPHVT U4 ( .I(a[15]), .ZN(n14) );
  CKND0BWPHVT U5 ( .I(dir_left), .ZN(n156) );
  CKND2D0BWPHVT U6 ( .A1(is_signed), .A2(n156), .ZN(n116) );
  NR2D0BWPHVT U7 ( .A1(dir_left), .A2(b[0]), .ZN(n22) );
  NR2D0BWPHVT U8 ( .A1(b[0]), .A2(n156), .ZN(n43) );
  AOI22D0BWPHVT U9 ( .A1(n22), .A2(a[2]), .B1(n43), .B2(a[13]), .ZN(n2) );
  CKND0BWPHVT U10 ( .I(b[0]), .ZN(n18) );
  NR2D0BWPHVT U11 ( .A1(dir_left), .A2(n18), .ZN(n34) );
  CKND2D0BWPHVT U12 ( .A1(dir_left), .A2(b[0]), .ZN(n25) );
  CKND0BWPHVT U13 ( .I(n25), .ZN(n38) );
  AOI22D0BWPHVT U14 ( .A1(n34), .A2(a[3]), .B1(n38), .B2(a[12]), .ZN(n1) );
  CKND2D0BWPHVT U15 ( .A1(n2), .A2(n1), .ZN(n59) );
  NR2D0BWPHVT U16 ( .A1(b[3]), .A2(b[2]), .ZN(n99) );
  CKND2D0BWPHVT U17 ( .A1(b[1]), .A2(n99), .ZN(n54) );
  OAI22D0BWPHVT U18 ( .A1(n156), .A2(a[0]), .B1(a[15]), .B2(dir_left), .ZN(
        n105) );
  CKND0BWPHVT U19 ( .I(n105), .ZN(n51) );
  AOI222D0BWPHVT U20 ( .A1(n51), .A2(b[0]), .B1(n22), .B2(a[14]), .C1(a[1]), 
        .C2(n43), .ZN(n50) );
  OAI22D0BWPHVT U21 ( .A1(n156), .A2(a[2]), .B1(a[13]), .B2(dir_left), .ZN(n19) );
  CKND0BWPHVT U22 ( .I(n43), .ZN(n28) );
  CKND0BWPHVT U23 ( .I(a[3]), .ZN(n29) );
  CKND0BWPHVT U24 ( .I(n22), .ZN(n39) );
  CKND0BWPHVT U25 ( .I(a[12]), .ZN(n27) );
  OA222D0BWPHVT U26 ( .A1(n19), .A2(n18), .B1(n28), .B2(n29), .C1(n39), .C2(
        n27), .Z(n53) );
  AOI22D0BWPHVT U27 ( .A1(b[1]), .A2(n50), .B1(n53), .B2(n68), .ZN(n137) );
  CKND0BWPHVT U28 ( .I(a[4]), .ZN(n26) );
  AOI22D0BWPHVT U29 ( .A1(a[10]), .A2(n22), .B1(a[5]), .B2(n43), .ZN(n3) );
  OAI21D0BWPHVT U30 ( .A1(n25), .A2(n26), .B(n3), .ZN(n4) );
  AOI21D0BWPHVT U31 ( .A1(n34), .A2(a[11]), .B(n4), .ZN(n52) );
  CKND0BWPHVT U32 ( .I(a[6]), .ZN(n36) );
  AOI22D0BWPHVT U33 ( .A1(n22), .A2(a[8]), .B1(n43), .B2(a[7]), .ZN(n5) );
  OAI21D0BWPHVT U34 ( .A1(n25), .A2(n36), .B(n5), .ZN(n6) );
  AOI21D0BWPHVT U35 ( .A1(n34), .A2(a[9]), .B(n6), .ZN(n55) );
  AOI22D0BWPHVT U36 ( .A1(b[1]), .A2(n52), .B1(n55), .B2(n68), .ZN(n81) );
  CKND0BWPHVT U37 ( .I(b[2]), .ZN(n150) );
  AOI22D0BWPHVT U38 ( .A1(b[2]), .A2(n137), .B1(n81), .B2(n150), .ZN(n103) );
  NR2D0BWPHVT U39 ( .A1(b[3]), .A2(n150), .ZN(n97) );
  AOI22D0BWPHVT U40 ( .A1(n22), .A2(a[6]), .B1(a[9]), .B2(n43), .ZN(n57) );
  AOI22D0BWPHVT U41 ( .A1(n34), .A2(a[7]), .B1(n38), .B2(a[8]), .ZN(n56) );
  CKND2D0BWPHVT U42 ( .A1(n57), .A2(n56), .ZN(n9) );
  AOI22D0BWPHVT U43 ( .A1(n22), .A2(a[4]), .B1(n43), .B2(a[11]), .ZN(n8) );
  AOI22D0BWPHVT U44 ( .A1(n34), .A2(a[5]), .B1(a[10]), .B2(n38), .ZN(n7) );
  CKND2D0BWPHVT U45 ( .A1(n8), .A2(n7), .ZN(n58) );
  AOI22D0BWPHVT U46 ( .A1(b[1]), .A2(n9), .B1(n58), .B2(n68), .ZN(n82) );
  AOI22D0BWPHVT U47 ( .A1(b[3]), .A2(n103), .B1(n97), .B2(n82), .ZN(n13) );
  OAI22D0BWPHVT U48 ( .A1(a[15]), .A2(n28), .B1(a[0]), .B2(n39), .ZN(n11) );
  CKND0BWPHVT U49 ( .I(n34), .ZN(n37) );
  OAI22D0BWPHVT U50 ( .A1(a[1]), .A2(n37), .B1(a[14]), .B2(n25), .ZN(n10) );
  OAI211D0BWPHVT U51 ( .A1(n11), .A2(n10), .B(n99), .C(n68), .ZN(n12) );
  OAI211D0BWPHVT U52 ( .A1(n59), .A2(n54), .B(n13), .C(n12), .ZN(n16) );
  CKND2D0BWPHVT U53 ( .A1(n51), .A2(n18), .ZN(n46) );
  NR2D0BWPHVT U54 ( .A1(b[1]), .A2(n46), .ZN(n109) );
  CKND0BWPHVT U55 ( .I(n109), .ZN(n15) );
  NR2D0BWPHVT U56 ( .A1(dir_left), .A2(is_signed), .ZN(n134) );
  CKND0BWPHVT U57 ( .I(n134), .ZN(n129) );
  CKND0BWPHVT U58 ( .I(n99), .ZN(n83) );
  NR2D0BWPHVT U59 ( .A1(n129), .A2(n83), .ZN(n154) );
  CKND0BWPHVT U60 ( .I(n154), .ZN(n143) );
  OAI222D0BWPHVT U61 ( .A1(n14), .A2(n116), .B1(n16), .B2(n156), .C1(n15), 
        .C2(n143), .ZN(res[15]) );
  CKND2D0BWPHVT U62 ( .A1(dir_left), .A2(n99), .ZN(n67) );
  OAI22D0BWPHVT U63 ( .A1(dir_left), .A2(n16), .B1(n67), .B2(n15), .ZN(res[0])
         );
  CKND0BWPHVT U64 ( .I(n116), .ZN(n86) );
  CKND2D0BWPHVT U65 ( .A1(b[3]), .A2(n86), .ZN(n104) );
  CKND0BWPHVT U66 ( .I(n104), .ZN(n66) );
  AOI221D0BWPHVT U67 ( .A1(a[1]), .A2(dir_left), .B1(a[14]), .B2(n156), .C(n18), .ZN(n17) );
  AO21D0BWPHVT U68 ( .A1(n19), .A2(n18), .B(n17), .Z(n65) );
  NR2D0BWPHVT U69 ( .A1(b[1]), .A2(n65), .ZN(n45) );
  AOI21D0BWPHVT U70 ( .A1(b[1]), .A2(n51), .B(n45), .ZN(n91) );
  AOI22D0BWPHVT U71 ( .A1(n22), .A2(a[11]), .B1(n43), .B2(a[4]), .ZN(n20) );
  OAI21D0BWPHVT U72 ( .A1(n25), .A2(n29), .B(n20), .ZN(n21) );
  AOI21D0BWPHVT U73 ( .A1(n34), .A2(a[12]), .B(n21), .ZN(n64) );
  CKND0BWPHVT U74 ( .I(a[5]), .ZN(n40) );
  AOI22D0BWPHVT U75 ( .A1(n22), .A2(a[9]), .B1(n43), .B2(a[6]), .ZN(n23) );
  OAI21D0BWPHVT U76 ( .A1(n25), .A2(n40), .B(n23), .ZN(n24) );
  AOI21D0BWPHVT U77 ( .A1(n34), .A2(a[10]), .B(n24), .ZN(n70) );
  AOI22D0BWPHVT U78 ( .A1(b[1]), .A2(n64), .B1(n70), .B2(n68), .ZN(n88) );
  NR2D0BWPHVT U79 ( .A1(b[2]), .A2(n88), .ZN(n47) );
  AOI21D0BWPHVT U80 ( .A1(b[2]), .A2(n91), .B(n47), .ZN(n120) );
  OAI22D0BWPHVT U81 ( .A1(a[1]), .A2(n39), .B1(a[14]), .B2(n28), .ZN(n33) );
  OAI22D0BWPHVT U82 ( .A1(a[2]), .A2(n37), .B1(a[13]), .B2(n25), .ZN(n32) );
  NR2D0BWPHVT U83 ( .A1(n37), .A2(n26), .ZN(n31) );
  OAI22D0BWPHVT U84 ( .A1(n39), .A2(n29), .B1(n28), .B2(n27), .ZN(n30) );
  AOI211D0BWPHVT U85 ( .A1(a[11]), .A2(n38), .B(n31), .C(n30), .ZN(n72) );
  OAI32D0BWPHVT U86 ( .A1(b[1]), .A2(n33), .A3(n32), .B1(n72), .B2(n68), .ZN(
        n44) );
  NR2D0BWPHVT U87 ( .A1(n34), .A2(n43), .ZN(n35) );
  MUX2ND0BWPHVT U88 ( .I0(a[8]), .I1(a[7]), .S(n35), .ZN(n69) );
  NR2D0BWPHVT U89 ( .A1(n37), .A2(n36), .ZN(n42) );
  MOAI22D0BWPHVT U90 ( .A1(n40), .A2(n39), .B1(n38), .B2(a[9]), .ZN(n41) );
  AOI211D0BWPHVT U91 ( .A1(n43), .A2(a[10]), .B(n42), .C(n41), .ZN(n71) );
  AOI22D0BWPHVT U92 ( .A1(b[1]), .A2(n69), .B1(n71), .B2(n68), .ZN(n89) );
  AOI22D0BWPHVT U93 ( .A1(n99), .A2(n44), .B1(n97), .B2(n89), .ZN(n159) );
  IAO21D0BWPHVT U94 ( .A1(n46), .A2(n68), .B(n45), .ZN(n142) );
  AOI21D0BWPHVT U95 ( .A1(b[2]), .A2(n142), .B(n47), .ZN(n115) );
  CKND2D0BWPHVT U96 ( .A1(b[3]), .A2(n115), .ZN(n157) );
  AOI21D0BWPHVT U97 ( .A1(n159), .A2(n157), .B(dir_left), .ZN(n48) );
  AOI21D0BWPHVT U98 ( .A1(n66), .A2(n120), .B(n48), .ZN(n49) );
  OAI31D0BWPHVT U99 ( .A1(b[1]), .A2(n50), .A3(n67), .B(n49), .ZN(res[1]) );
  NR2D0BWPHVT U100 ( .A1(b[1]), .A2(n50), .ZN(n155) );
  AOI21D0BWPHVT U101 ( .A1(b[1]), .A2(n51), .B(n155), .ZN(n151) );
  AOI22D0BWPHVT U102 ( .A1(b[1]), .A2(n53), .B1(n52), .B2(n68), .ZN(n96) );
  CKND2D0BWPHVT U103 ( .A1(n96), .A2(n150), .ZN(n60) );
  OAI21D0BWPHVT U104 ( .A1(n151), .A2(n150), .B(n60), .ZN(n125) );
  NR2D0BWPHVT U105 ( .A1(b[1]), .A2(n83), .ZN(n74) );
  CKND0BWPHVT U106 ( .I(n54), .ZN(n76) );
  AOI32D0BWPHVT U107 ( .A1(n57), .A2(n68), .A3(n56), .B1(n55), .B2(b[1]), .ZN(
        n98) );
  AOI222D0BWPHVT U108 ( .A1(n59), .A2(n74), .B1(n58), .B2(n76), .C1(n98), .C2(
        n97), .ZN(n61) );
  MAOI22D0BWPHVT U109 ( .A1(n66), .A2(n125), .B1(n116), .B2(n61), .ZN(n63) );
  IOA21D0BWPHVT U110 ( .A1(n155), .A2(b[2]), .B(n60), .ZN(n123) );
  CKND0BWPHVT U111 ( .I(n123), .ZN(n95) );
  CKND0BWPHVT U112 ( .I(b[3]), .ZN(n124) );
  OAI21D0BWPHVT U113 ( .A1(n95), .A2(n124), .B(n61), .ZN(n144) );
  CKND2D0BWPHVT U114 ( .A1(n134), .A2(n144), .ZN(n62) );
  OAI211D0BWPHVT U115 ( .A1(n142), .A2(n67), .B(n63), .C(n62), .ZN(res[2]) );
  AOI22D0BWPHVT U116 ( .A1(b[1]), .A2(n65), .B1(n64), .B2(n68), .ZN(n106) );
  NR2D0BWPHVT U117 ( .A1(b[2]), .A2(n106), .ZN(n132) );
  CKND2D0BWPHVT U118 ( .A1(n105), .A2(b[2]), .ZN(n131) );
  CKND2D0BWPHVT U119 ( .A1(n66), .A2(n131), .ZN(n101) );
  CKND0BWPHVT U120 ( .I(n67), .ZN(n77) );
  AOI22D0BWPHVT U121 ( .A1(b[1]), .A2(n70), .B1(n69), .B2(n68), .ZN(n107) );
  CKND0BWPHVT U122 ( .I(n71), .ZN(n75) );
  AOI222D0BWPHVT U123 ( .A1(n97), .A2(n107), .B1(n76), .B2(n75), .C1(n74), 
        .C2(n73), .ZN(n78) );
  MAOI22D0BWPHVT U124 ( .A1(n137), .A2(n77), .B1(n116), .B2(n78), .ZN(n80) );
  AOI22D0BWPHVT U125 ( .A1(b[2]), .A2(n109), .B1(n106), .B2(n150), .ZN(n130)
         );
  OAI21D0BWPHVT U126 ( .A1(n124), .A2(n130), .B(n78), .ZN(n138) );
  CKND2D0BWPHVT U127 ( .A1(n134), .A2(n138), .ZN(n79) );
  OAI211D0BWPHVT U128 ( .A1(n132), .A2(n101), .B(n80), .C(n79), .ZN(res[3]) );
  MOAI22D0BWPHVT U129 ( .A1(n83), .A2(n82), .B1(n81), .B2(n97), .ZN(n85) );
  NR2D0BWPHVT U130 ( .A1(b[2]), .A2(n137), .ZN(n140) );
  NR2D0BWPHVT U131 ( .A1(b[2]), .A2(n124), .ZN(n108) );
  AOI21D0BWPHVT U132 ( .A1(n108), .A2(n137), .B(n85), .ZN(n136) );
  OAI22D0BWPHVT U133 ( .A1(n140), .A2(n101), .B1(n136), .B2(n129), .ZN(n84) );
  AOI21D0BWPHVT U134 ( .A1(n86), .A2(n85), .B(n84), .ZN(n87) );
  OAI31D0BWPHVT U135 ( .A1(b[3]), .A2(n156), .A3(n130), .B(n87), .ZN(res[4])
         );
  CKND0BWPHVT U136 ( .I(n108), .ZN(n90) );
  AOI22D0BWPHVT U137 ( .A1(n99), .A2(n89), .B1(n97), .B2(n88), .ZN(n92) );
  OAI21D0BWPHVT U138 ( .A1(n142), .A2(n90), .B(n92), .ZN(n126) );
  IOA21D0BWPHVT U139 ( .A1(n91), .A2(n150), .B(n131), .ZN(n148) );
  OAI22D0BWPHVT U140 ( .A1(n92), .A2(n116), .B1(n104), .B2(n148), .ZN(n93) );
  AOI21D0BWPHVT U141 ( .A1(n134), .A2(n126), .B(n93), .ZN(n94) );
  OAI31D0BWPHVT U142 ( .A1(b[3]), .A2(n95), .A3(n156), .B(n94), .ZN(res[5]) );
  AOI22D0BWPHVT U143 ( .A1(n99), .A2(n98), .B1(n97), .B2(n96), .ZN(n118) );
  CKND2D0BWPHVT U144 ( .A1(n108), .A2(n155), .ZN(n117) );
  AOI21D0BWPHVT U145 ( .A1(n118), .A2(n117), .B(dir_left), .ZN(n100) );
  AOI31D0BWPHVT U146 ( .A1(dir_left), .A2(n115), .A3(n124), .B(n100), .ZN(n102) );
  AOI32D0BWPHVT U147 ( .A1(n151), .A2(n102), .A3(n150), .B1(n101), .B2(n102), 
        .ZN(res[6]) );
  NR2D0BWPHVT U148 ( .A1(b[3]), .A2(n103), .ZN(n114) );
  NR2D0BWPHVT U149 ( .A1(n105), .A2(n104), .ZN(n153) );
  OAI221D0BWPHVT U150 ( .A1(b[2]), .A2(n107), .B1(n150), .B2(n106), .C(n124), 
        .ZN(n112) );
  CKND2D0BWPHVT U151 ( .A1(n109), .A2(n108), .ZN(n111) );
  AOI21D0BWPHVT U152 ( .A1(n112), .A2(n111), .B(dir_left), .ZN(n110) );
  AO211D0BWPHVT U153 ( .A1(dir_left), .A2(n114), .B(n153), .C(n110), .Z(res[7]) );
  AOI21D0BWPHVT U154 ( .A1(n112), .A2(n111), .B(n156), .ZN(n113) );
  AO211D0BWPHVT U155 ( .A1(n114), .A2(n156), .B(n113), .C(n153), .Z(res[8]) );
  CKND2D0BWPHVT U156 ( .A1(n115), .A2(n124), .ZN(n122) );
  NR2D0BWPHVT U157 ( .A1(b[3]), .A2(n116), .ZN(n141) );
  AOI21D0BWPHVT U158 ( .A1(n118), .A2(n117), .B(n156), .ZN(n119) );
  AOI211D0BWPHVT U159 ( .A1(n120), .A2(n141), .B(n153), .C(n119), .ZN(n121) );
  OAI21D0BWPHVT U160 ( .A1(n129), .A2(n122), .B(n121), .ZN(res[9]) );
  CKND2D0BWPHVT U161 ( .A1(n124), .A2(n123), .ZN(n128) );
  AOI22D0BWPHVT U162 ( .A1(dir_left), .A2(n126), .B1(n141), .B2(n125), .ZN(
        n127) );
  OAI211D0BWPHVT U163 ( .A1(n129), .A2(n128), .B(n127), .C(n145), .ZN(res[10])
         );
  NR2D0BWPHVT U164 ( .A1(b[3]), .A2(n130), .ZN(n133) );
  CKND2D0BWPHVT U165 ( .A1(n141), .A2(n131), .ZN(n149) );
  MAOI22D0BWPHVT U166 ( .A1(n134), .A2(n133), .B1(n132), .B2(n149), .ZN(n135)
         );
  OAI211D0BWPHVT U167 ( .A1(n136), .A2(n156), .B(n135), .C(n145), .ZN(res[11])
         );
  AOI22D0BWPHVT U168 ( .A1(dir_left), .A2(n138), .B1(n137), .B2(n154), .ZN(
        n139) );
  OAI211D0BWPHVT U169 ( .A1(n140), .A2(n149), .B(n139), .C(n145), .ZN(res[12])
         );
  CKND0BWPHVT U170 ( .I(n141), .ZN(n147) );
  MAOI22D0BWPHVT U171 ( .A1(dir_left), .A2(n144), .B1(n143), .B2(n142), .ZN(
        n146) );
  OAI211D0BWPHVT U172 ( .A1(n148), .A2(n147), .B(n146), .C(n145), .ZN(res[13])
         );
  AOI21D0BWPHVT U173 ( .A1(n151), .A2(n150), .B(n149), .ZN(n152) );
  AOI211D0BWPHVT U174 ( .A1(n155), .A2(n154), .B(n153), .C(n152), .ZN(n158) );
  AOI32D0BWPHVT U175 ( .A1(n159), .A2(n158), .A3(n157), .B1(n156), .B2(n158), 
        .ZN(res[14]) );
endmodule


module test_pe_comp_unq1_0 ( op_code, op_a, op_b, op_c, op_d_p, carry_out, 
        cntr_en, res, ovfl, res_p );
  input [7:0] op_code;
  input [15:0] op_a;
  input [15:0] op_b;
  input [15:0] op_c;
  output [1:0] carry_out;
  output [15:0] res;
  input op_d_p;
  output cntr_en, ovfl, res_p;
  wire   n1, \add_a[1][15] , \add_a[1][14] , \add_a[1][13] , \add_a[1][12] ,
         \add_a[1][11] , \add_a[1][10] , \add_a[1][9] , \add_a[1][8] ,
         \add_a[1][7] , \add_a[1][6] , \add_a[1][5] , \add_a[1][4] ,
         \add_a[1][3] , \add_a[1][2] , \add_a[1][1] , \add_a[1][0] ,
         \add_b[0][15] , \add_b[0][14] , \add_b[0][13] , \add_b[0][12] ,
         \add_b[0][11] , \add_b[0][10] , \add_b[0][9] , \add_b[0][8] ,
         \add_b[0][7] , \add_b[0][6] , \add_b[0][5] , \add_b[0][4] ,
         \add_b[0][3] , \add_b[0][2] , \add_b[0][1] , \add_b[0][0] ,
         \add_res[1][15] , \add_res[1][14] , \add_res[1][13] ,
         \add_res[1][12] , \add_res[1][11] , \add_res[1][10] , \add_res[1][9] ,
         \add_res[1][8] , \add_res[1][7] , \add_res[1][6] , \add_res[1][5] ,
         \add_res[1][4] , \add_res[1][3] , \add_res[1][2] , \add_res[1][1] ,
         \add_res[1][0] , \add_res[0][15] , \add_res[0][14] , \add_res[0][13] ,
         \add_res[0][12] , \add_res[0][11] , \add_res[0][10] , \add_res[0][9] ,
         \add_res[0][8] , \add_res[0][7] , \add_res[0][6] , \add_res[0][5] ,
         \add_res[0][4] , \add_res[0][3] , \add_res[0][2] , \add_res[0][1] ,
         \add_res[0][0] , cmpr_lte, cmpr_gte, mult_c_out, n288, n290, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244;
  wire   [1:0] add_c_in;
  wire   [31:0] mult_res;
  wire   [15:0] shift_res;

  NR3D0BWPHVT U3 ( .A1(op_code[5]), .A2(n60), .A3(n27), .ZN(n288) );
  CKND0BWPHVT U4 ( .I(n89), .ZN(n59) );
  MAOI22D0BWPHVT U5 ( .A1(op_b[0]), .A2(op_a[0]), .B1(op_a[0]), .B2(op_b[0]), 
        .ZN(n109) );
  MAOI22D0BWPHVT U6 ( .A1(op_b[3]), .A2(op_a[3]), .B1(op_a[3]), .B2(op_b[3]), 
        .ZN(n131) );
  MAOI22D0BWPHVT U7 ( .A1(op_b[6]), .A2(op_a[6]), .B1(op_a[6]), .B2(op_b[6]), 
        .ZN(n152) );
  MAOI22D0BWPHVT U8 ( .A1(op_b[13]), .A2(op_a[13]), .B1(op_a[13]), .B2(
        op_b[13]), .ZN(n201) );
  AN4D0BWPHVT U9 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .Z(n137) );
  AN4D0BWPHVT U10 ( .A1(n170), .A2(n169), .A3(n168), .A4(n167), .Z(n172) );
  AN4D0BWPHVT U11 ( .A1(n205), .A2(n204), .A3(n203), .A4(n202), .Z(n207) );
  CKND0BWPHVT U12 ( .I(op_code[1]), .ZN(n40) );
  CKND2D0BWPHVT U13 ( .A1(op_code[4]), .A2(n40), .ZN(n27) );
  CKND0BWPHVT U14 ( .I(op_code[0]), .ZN(n86) );
  CKND0BWPHVT U15 ( .I(op_code[2]), .ZN(n41) );
  IND4D0BWPHVT U16 ( .A1(n27), .B1(op_code[3]), .B2(n86), .B3(n41), .ZN(n21)
         );
  NR2XD0BWPHVT U17 ( .A1(op_code[5]), .A2(n21), .ZN(cntr_en) );
  CKND0BWPHVT U18 ( .I(op_code[5]), .ZN(n103) );
  CKND0BWPHVT U19 ( .I(op_code[3]), .ZN(n37) );
  ND3D0BWPHVT U20 ( .A1(op_code[0]), .A2(n37), .A3(n41), .ZN(n60) );
  NR2D0BWPHVT U21 ( .A1(op_code[4]), .A2(n60), .ZN(n105) );
  CKAN2D0BWPHVT U22 ( .A1(n105), .A2(op_code[1]), .Z(n76) );
  ND3D0BWPHVT U23 ( .A1(n103), .A2(\add_res[0][15] ), .A3(n76), .ZN(n244) );
  CKND0BWPHVT U24 ( .I(n244), .ZN(add_c_in[1]) );
  MAOI22D0BWPHVT U25 ( .A1(\add_res[0][0] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][0] ), .ZN(\add_a[1][0] ) );
  MAOI22D0BWPHVT U26 ( .A1(\add_res[0][1] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][1] ), .ZN(\add_a[1][1] ) );
  MAOI22D0BWPHVT U27 ( .A1(\add_res[0][2] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][2] ), .ZN(\add_a[1][2] ) );
  MAOI22D0BWPHVT U28 ( .A1(\add_res[0][3] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][3] ), .ZN(\add_a[1][3] ) );
  MAOI22D0BWPHVT U29 ( .A1(\add_res[0][4] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][4] ), .ZN(\add_a[1][4] ) );
  MAOI22D0BWPHVT U30 ( .A1(\add_res[0][5] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][5] ), .ZN(\add_a[1][5] ) );
  MAOI22D0BWPHVT U31 ( .A1(\add_res[0][6] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][6] ), .ZN(\add_a[1][6] ) );
  MAOI22D0BWPHVT U32 ( .A1(\add_res[0][7] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][7] ), .ZN(\add_a[1][7] ) );
  MAOI22D0BWPHVT U33 ( .A1(\add_res[0][8] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][8] ), .ZN(\add_a[1][8] ) );
  MAOI22D0BWPHVT U34 ( .A1(\add_res[0][9] ), .A2(add_c_in[1]), .B1(add_c_in[1]), .B2(\add_res[0][9] ), .ZN(\add_a[1][9] ) );
  MAOI22D0BWPHVT U35 ( .A1(\add_res[0][10] ), .A2(add_c_in[1]), .B1(
        add_c_in[1]), .B2(\add_res[0][10] ), .ZN(\add_a[1][10] ) );
  MAOI22D0BWPHVT U36 ( .A1(\add_res[0][11] ), .A2(add_c_in[1]), .B1(
        add_c_in[1]), .B2(\add_res[0][11] ), .ZN(\add_a[1][11] ) );
  MAOI22D0BWPHVT U37 ( .A1(\add_res[0][12] ), .A2(add_c_in[1]), .B1(
        add_c_in[1]), .B2(\add_res[0][12] ), .ZN(\add_a[1][12] ) );
  MAOI22D0BWPHVT U38 ( .A1(\add_res[0][13] ), .A2(add_c_in[1]), .B1(
        add_c_in[1]), .B2(\add_res[0][13] ), .ZN(\add_a[1][13] ) );
  CKND0BWPHVT U39 ( .I(op_b[15]), .ZN(n241) );
  CKND0BWPHVT U40 ( .I(op_a[15]), .ZN(n62) );
  AOI22D0BWPHVT U41 ( .A1(op_a[15]), .A2(op_b[15]), .B1(n241), .B2(n62), .ZN(
        n89) );
  MAOI22D0BWPHVT U42 ( .A1(op_b[1]), .A2(op_a[1]), .B1(op_a[1]), .B2(op_b[1]), 
        .ZN(n117) );
  MAOI22D0BWPHVT U43 ( .A1(op_b[2]), .A2(op_a[2]), .B1(op_a[2]), .B2(op_b[2]), 
        .ZN(n124) );
  NR4D0BWPHVT U44 ( .A1(n89), .A2(n109), .A3(n117), .A4(n124), .ZN(n5) );
  MAOI22D0BWPHVT U45 ( .A1(op_b[4]), .A2(op_a[4]), .B1(op_a[4]), .B2(op_b[4]), 
        .ZN(n138) );
  MAOI22D0BWPHVT U46 ( .A1(op_b[5]), .A2(op_a[5]), .B1(op_a[5]), .B2(op_b[5]), 
        .ZN(n145) );
  NR4D0BWPHVT U47 ( .A1(n131), .A2(n138), .A3(n145), .A4(n152), .ZN(n4) );
  MAOI22D0BWPHVT U48 ( .A1(op_b[7]), .A2(op_a[7]), .B1(op_a[7]), .B2(op_b[7]), 
        .ZN(n159) );
  MAOI22D0BWPHVT U49 ( .A1(op_b[8]), .A2(op_a[8]), .B1(op_a[8]), .B2(op_b[8]), 
        .ZN(n166) );
  MAOI22D0BWPHVT U50 ( .A1(op_b[9]), .A2(op_a[9]), .B1(op_a[9]), .B2(op_b[9]), 
        .ZN(n173) );
  MAOI22D0BWPHVT U51 ( .A1(op_b[10]), .A2(op_a[10]), .B1(op_a[10]), .B2(
        op_b[10]), .ZN(n180) );
  NR4D0BWPHVT U52 ( .A1(n159), .A2(n166), .A3(n173), .A4(n180), .ZN(n3) );
  MAOI22D0BWPHVT U53 ( .A1(op_b[11]), .A2(op_a[11]), .B1(op_a[11]), .B2(
        op_b[11]), .ZN(n187) );
  MAOI22D0BWPHVT U54 ( .A1(op_b[12]), .A2(op_a[12]), .B1(op_a[12]), .B2(
        op_b[12]), .ZN(n194) );
  MAOI22D0BWPHVT U55 ( .A1(op_b[14]), .A2(op_a[14]), .B1(op_a[14]), .B2(
        op_b[14]), .ZN(n208) );
  NR4D0BWPHVT U56 ( .A1(n187), .A2(n194), .A3(n201), .A4(n208), .ZN(n2) );
  AN4D0BWPHVT U57 ( .A1(n5), .A2(n4), .A3(n3), .A4(n2), .Z(n290) );
  CKND0BWPHVT U58 ( .I(op_b[2]), .ZN(n228) );
  CKND0BWPHVT U59 ( .I(op_b[3]), .ZN(n229) );
  OAI22D0BWPHVT U60 ( .A1(n228), .A2(op_c[2]), .B1(n229), .B2(op_c[3]), .ZN(n6) );
  AOI221D0BWPHVT U61 ( .A1(n228), .A2(op_c[2]), .B1(op_c[3]), .B2(n229), .C(n6), .ZN(n34) );
  CKND0BWPHVT U62 ( .I(op_b[0]), .ZN(n224) );
  CKND0BWPHVT U63 ( .I(op_b[1]), .ZN(n227) );
  OAI22D0BWPHVT U64 ( .A1(n224), .A2(op_c[0]), .B1(n227), .B2(op_c[1]), .ZN(n7) );
  AOI221D0BWPHVT U65 ( .A1(n224), .A2(op_c[0]), .B1(op_c[1]), .B2(n227), .C(n7), .ZN(n33) );
  CKND0BWPHVT U66 ( .I(op_b[11]), .ZN(n237) );
  CKND0BWPHVT U67 ( .I(op_b[10]), .ZN(n236) );
  AOI22D0BWPHVT U68 ( .A1(op_c[11]), .A2(n237), .B1(op_c[10]), .B2(n236), .ZN(
        n8) );
  OAI221D0BWPHVT U69 ( .A1(n237), .A2(op_c[11]), .B1(n236), .B2(op_c[10]), .C(
        n8), .ZN(n20) );
  CKND0BWPHVT U70 ( .I(op_b[8]), .ZN(n234) );
  CKND0BWPHVT U71 ( .I(op_b[9]), .ZN(n235) );
  AOI22D0BWPHVT U72 ( .A1(op_c[8]), .A2(n234), .B1(op_c[9]), .B2(n235), .ZN(n9) );
  OAI221D0BWPHVT U73 ( .A1(n234), .A2(op_c[8]), .B1(n235), .B2(op_c[9]), .C(n9), .ZN(n19) );
  CKND0BWPHVT U74 ( .I(op_b[6]), .ZN(n232) );
  CKND0BWPHVT U75 ( .I(op_b[7]), .ZN(n233) );
  OAI22D0BWPHVT U76 ( .A1(n232), .A2(op_c[6]), .B1(n233), .B2(op_c[7]), .ZN(
        n10) );
  AOI221D0BWPHVT U77 ( .A1(n232), .A2(op_c[6]), .B1(op_c[7]), .B2(n233), .C(
        n10), .ZN(n17) );
  CKND0BWPHVT U78 ( .I(op_b[4]), .ZN(n230) );
  CKND0BWPHVT U79 ( .I(op_b[5]), .ZN(n231) );
  OAI22D0BWPHVT U80 ( .A1(n230), .A2(op_c[4]), .B1(n231), .B2(op_c[5]), .ZN(
        n11) );
  AOI221D0BWPHVT U81 ( .A1(n230), .A2(op_c[4]), .B1(op_c[5]), .B2(n231), .C(
        n11), .ZN(n16) );
  CKND0BWPHVT U82 ( .I(op_b[14]), .ZN(n240) );
  OAI22D0BWPHVT U83 ( .A1(n241), .A2(op_c[15]), .B1(n240), .B2(op_c[14]), .ZN(
        n12) );
  AOI221D0BWPHVT U84 ( .A1(n241), .A2(op_c[15]), .B1(op_c[14]), .B2(n240), .C(
        n12), .ZN(n15) );
  CKND0BWPHVT U85 ( .I(op_b[12]), .ZN(n238) );
  CKND0BWPHVT U86 ( .I(op_b[13]), .ZN(n239) );
  OAI22D0BWPHVT U87 ( .A1(n238), .A2(op_c[12]), .B1(n239), .B2(op_c[13]), .ZN(
        n13) );
  AOI221D0BWPHVT U88 ( .A1(n238), .A2(op_c[12]), .B1(op_c[13]), .B2(n239), .C(
        n13), .ZN(n14) );
  ND4D0BWPHVT U89 ( .A1(n17), .A2(n16), .A3(n15), .A4(n14), .ZN(n18) );
  NR4D0BWPHVT U90 ( .A1(n21), .A2(n20), .A3(n19), .A4(n18), .ZN(n32) );
  NR2D0BWPHVT U91 ( .A1(op_code[1]), .A2(op_code[4]), .ZN(n22) );
  CKND0BWPHVT U92 ( .I(n22), .ZN(n106) );
  CKND2D0BWPHVT U93 ( .A1(n86), .A2(n37), .ZN(n42) );
  NR3D0BWPHVT U94 ( .A1(n41), .A2(n106), .A3(n42), .ZN(n78) );
  NR3D0BWPHVT U95 ( .A1(n41), .A2(n106), .A3(op_code[3]), .ZN(n104) );
  INR2D0BWPHVT U96 ( .A1(n104), .B1(n86), .ZN(n80) );
  AOI22D0BWPHVT U97 ( .A1(cmpr_gte), .A2(n78), .B1(cmpr_lte), .B2(n80), .ZN(
        n97) );
  CKND2D0BWPHVT U98 ( .A1(n22), .A2(n41), .ZN(n24) );
  NR2D0BWPHVT U99 ( .A1(n42), .A2(n24), .ZN(n58) );
  ND3D0BWPHVT U100 ( .A1(op_code[3]), .A2(op_code[2]), .A3(n22), .ZN(n85) );
  CKND0BWPHVT U101 ( .I(n85), .ZN(n23) );
  AOI22D0BWPHVT U102 ( .A1(n58), .A2(n1), .B1(n23), .B2(mult_c_out), .ZN(n30)
         );
  NR2D0BWPHVT U103 ( .A1(op_code[3]), .A2(n24), .ZN(n75) );
  CKND0BWPHVT U104 ( .I(n42), .ZN(n25) );
  ND4D0BWPHVT U105 ( .A1(op_code[1]), .A2(op_code[4]), .A3(n25), .A4(n41), 
        .ZN(n81) );
  CKND0BWPHVT U106 ( .I(n81), .ZN(n94) );
  NR3D0BWPHVT U107 ( .A1(op_code[0]), .A2(n37), .A3(n24), .ZN(n95) );
  ND4D0BWPHVT U108 ( .A1(n40), .A2(op_code[2]), .A3(op_code[4]), .A4(n25), 
        .ZN(n87) );
  CKND2D0BWPHVT U109 ( .A1(op_code[1]), .A2(op_code[4]), .ZN(n26) );
  NR2D0BWPHVT U110 ( .A1(n60), .A2(n26), .ZN(n220) );
  CKND0BWPHVT U111 ( .I(n220), .ZN(n92) );
  CKND0BWPHVT U112 ( .I(op_code[4]), .ZN(n36) );
  ND4D0BWPHVT U113 ( .A1(op_code[0]), .A2(op_code[1]), .A3(op_code[3]), .A4(
        n36), .ZN(n35) );
  OA22D0BWPHVT U114 ( .A1(n41), .A2(n35), .B1(n60), .B2(n27), .Z(n77) );
  IND4D0BWPHVT U115 ( .A1(n95), .B1(n87), .B2(n92), .B3(n77), .ZN(n28) );
  OAI31D0BWPHVT U116 ( .A1(n75), .A2(n94), .A3(n28), .B(carry_out[1]), .ZN(n29) );
  ND3D0BWPHVT U117 ( .A1(n97), .A2(n30), .A3(n29), .ZN(n31) );
  AOI31D0BWPHVT U118 ( .A1(n34), .A2(n33), .A3(n32), .B(n31), .ZN(n46) );
  NR2D0BWPHVT U119 ( .A1(op_code[2]), .A2(n35), .ZN(n63) );
  INR2D0BWPHVT U120 ( .A1(n63), .B1(op_code[5]), .ZN(n213) );
  OAI22D0BWPHVT U121 ( .A1(n86), .A2(n37), .B1(n36), .B2(n42), .ZN(n39) );
  OAI222D0BWPHVT U122 ( .A1(op_code[3]), .A2(n41), .B1(n37), .B2(n36), .C1(
        op_code[4]), .C2(op_code[0]), .ZN(n38) );
  AOI32D0BWPHVT U123 ( .A1(n41), .A2(n40), .A3(n39), .B1(op_code[1]), .B2(n38), 
        .ZN(n44) );
  AOI31D0BWPHVT U124 ( .A1(op_code[2]), .A2(op_code[4]), .A3(n42), .B(
        op_code[5]), .ZN(n43) );
  CKND2D0BWPHVT U125 ( .A1(n44), .A2(n43), .ZN(n93) );
  AOI22D0BWPHVT U126 ( .A1(mult_c_out), .A2(n213), .B1(op_d_p), .B2(n93), .ZN(
        n45) );
  OAI211D0BWPHVT U127 ( .A1(op_code[5]), .A2(n46), .B(n45), .C(n244), .ZN(
        res_p) );
  NR4D0BWPHVT U128 ( .A1(\add_res[0][9] ), .A2(\add_res[0][8] ), .A3(
        \add_res[0][7] ), .A4(\add_res[0][6] ), .ZN(n50) );
  NR4D0BWPHVT U129 ( .A1(\add_res[0][5] ), .A2(\add_res[0][4] ), .A3(
        \add_res[0][3] ), .A4(\add_res[0][2] ), .ZN(n49) );
  NR2D0BWPHVT U130 ( .A1(\add_res[0][13] ), .A2(\add_res[0][12] ), .ZN(n48) );
  NR4D0BWPHVT U131 ( .A1(\add_res[0][1] ), .A2(\add_res[0][0] ), .A3(
        \add_res[0][11] ), .A4(\add_res[0][10] ), .ZN(n47) );
  ND4D0BWPHVT U132 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .ZN(n74) );
  OAI21D0BWPHVT U133 ( .A1(n1), .A2(carry_out[1]), .B(n58), .ZN(n71) );
  CKND0BWPHVT U134 ( .I(op_code[6]), .ZN(n70) );
  NR4D0BWPHVT U135 ( .A1(mult_res[27]), .A2(mult_res[26]), .A3(mult_res[25]), 
        .A4(mult_res[24]), .ZN(n52) );
  NR4D0BWPHVT U136 ( .A1(mult_res[31]), .A2(mult_res[30]), .A3(mult_res[29]), 
        .A4(mult_res[28]), .ZN(n51) );
  CKND2D0BWPHVT U137 ( .A1(n52), .A2(n51), .ZN(n56) );
  NR4D0BWPHVT U138 ( .A1(mult_res[23]), .A2(mult_res[22]), .A3(mult_res[21]), 
        .A4(mult_res[20]), .ZN(n54) );
  NR4D0BWPHVT U139 ( .A1(mult_res[19]), .A2(mult_res[18]), .A3(mult_res[17]), 
        .A4(mult_res[16]), .ZN(n53) );
  CKND2D0BWPHVT U140 ( .A1(n54), .A2(n53), .ZN(n55) );
  NR2D0BWPHVT U141 ( .A1(op_code[0]), .A2(n85), .ZN(n88) );
  AOI222D0BWPHVT U142 ( .A1(n63), .A2(n56), .B1(n63), .B2(n55), .C1(n56), .C2(
        n88), .ZN(n69) );
  CKND0BWPHVT U143 ( .I(\add_res[1][15] ), .ZN(n102) );
  CKND0BWPHVT U144 ( .I(\add_res[0][15] ), .ZN(n107) );
  CKND0BWPHVT U145 ( .I(op_c[15]), .ZN(n57) );
  OAI33D0BWPHVT U146 ( .A1(\add_res[0][15] ), .A2(op_c[15]), .A3(n102), .B1(
        n107), .B2(n57), .B3(\add_res[1][15] ), .ZN(n67) );
  CKND0BWPHVT U147 ( .I(n58), .ZN(n226) );
  OAI32D0BWPHVT U148 ( .A1(n60), .A2(n59), .A3(n106), .B1(n226), .B2(n89), 
        .ZN(n61) );
  OA221D0BWPHVT U149 ( .A1(n107), .A2(n62), .B1(\add_res[0][15] ), .B2(
        op_a[15]), .C(n61), .Z(n66) );
  OAI22D0BWPHVT U150 ( .A1(n63), .A2(n88), .B1(n89), .B2(mult_res[15]), .ZN(
        n64) );
  AOI21D0BWPHVT U151 ( .A1(n89), .A2(mult_res[15]), .B(n64), .ZN(n65) );
  AOI211D0BWPHVT U152 ( .A1(n75), .A2(n67), .B(n66), .C(n65), .ZN(n68) );
  AOI32D0BWPHVT U153 ( .A1(n71), .A2(n70), .A3(n69), .B1(op_code[6]), .B2(n68), 
        .ZN(n72) );
  AOI32D0BWPHVT U154 ( .A1(n76), .A2(n103), .A3(\add_res[1][15] ), .B1(n72), 
        .B2(n103), .ZN(n73) );
  OAI31D0BWPHVT U155 ( .A1(\add_res[0][14] ), .A2(n244), .A3(n74), .B(n73), 
        .ZN(ovfl) );
  OAI21D0BWPHVT U156 ( .A1(n76), .A2(n75), .B(n103), .ZN(n110) );
  NR2D0BWPHVT U157 ( .A1(op_code[5]), .A2(n77), .ZN(n212) );
  AOI22D0BWPHVT U158 ( .A1(mult_res[15]), .A2(n213), .B1(n212), .B2(
        shift_res[15]), .ZN(n101) );
  CKND0BWPHVT U159 ( .I(n78), .ZN(n83) );
  CKND0BWPHVT U160 ( .I(op_d_p), .ZN(n225) );
  CKND0BWPHVT U161 ( .I(cmpr_lte), .ZN(n79) );
  AOI22D0BWPHVT U162 ( .A1(n95), .A2(n225), .B1(n80), .B2(n79), .ZN(n82) );
  OAI211D0BWPHVT U163 ( .A1(cmpr_gte), .A2(n83), .B(n82), .C(n81), .ZN(n84) );
  CKND2D0BWPHVT U164 ( .A1(n103), .A2(n84), .ZN(n223) );
  NR3D0BWPHVT U165 ( .A1(op_code[5]), .A2(n86), .A3(n85), .ZN(n211) );
  AOI22D0BWPHVT U166 ( .A1(\add_res[0][15] ), .A2(cntr_en), .B1(mult_res[31]), 
        .B2(n211), .ZN(n91) );
  NR2D0BWPHVT U167 ( .A1(op_code[5]), .A2(n87), .ZN(n209) );
  CKAN2D0BWPHVT U168 ( .A1(n88), .A2(n103), .Z(n210) );
  AOI22D0BWPHVT U169 ( .A1(n89), .A2(n209), .B1(mult_res[23]), .B2(n210), .ZN(
        n90) );
  OAI211D0BWPHVT U170 ( .A1(n241), .A2(n223), .B(n91), .C(n90), .ZN(n99) );
  NR2D0BWPHVT U171 ( .A1(n241), .A2(n92), .ZN(n98) );
  AOI211D0BWPHVT U172 ( .A1(n95), .A2(op_d_p), .B(n94), .C(n93), .ZN(n96) );
  CKND2D0BWPHVT U173 ( .A1(n97), .A2(n96), .ZN(n219) );
  OAI32D0BWPHVT U174 ( .A1(n99), .A2(n98), .A3(n219), .B1(op_a[15]), .B2(n99), 
        .ZN(n100) );
  OAI211D0BWPHVT U175 ( .A1(n102), .A2(n110), .B(n101), .C(n100), .ZN(res[15])
         );
  OAI21D1BWPHVT U176 ( .A1(n105), .A2(n104), .B(n103), .ZN(n242) );
  CKND0BWPHVT U177 ( .I(n242), .ZN(n243) );
  CKND2D0BWPHVT U178 ( .A1(n243), .A2(n106), .ZN(n108) );
  INR2D0BWPHVT U179 ( .A1(n108), .B1(n107), .ZN(\add_a[1][15] ) );
  AOI22D0BWPHVT U180 ( .A1(n210), .A2(mult_res[8]), .B1(n109), .B2(n209), .ZN(
        n114) );
  AOI22D0BWPHVT U181 ( .A1(\add_res[0][0] ), .A2(cntr_en), .B1(mult_res[16]), 
        .B2(n211), .ZN(n113) );
  AOI22D0BWPHVT U182 ( .A1(n213), .A2(mult_res[0]), .B1(n212), .B2(
        shift_res[0]), .ZN(n112) );
  CKND0BWPHVT U183 ( .I(n110), .ZN(n214) );
  CKND2D0BWPHVT U184 ( .A1(n214), .A2(\add_res[1][0] ), .ZN(n111) );
  AN4D0BWPHVT U185 ( .A1(n114), .A2(n113), .A3(n112), .A4(n111), .Z(n116) );
  AOI32D0BWPHVT U186 ( .A1(op_b[0]), .A2(op_a[0]), .A3(n220), .B1(n219), .B2(
        op_a[0]), .ZN(n115) );
  OAI211D0BWPHVT U187 ( .A1(n223), .A2(n224), .B(n116), .C(n115), .ZN(res[0])
         );
  AOI22D0BWPHVT U188 ( .A1(n210), .A2(mult_res[9]), .B1(n209), .B2(n117), .ZN(
        n121) );
  AOI22D0BWPHVT U189 ( .A1(\add_res[0][1] ), .A2(cntr_en), .B1(mult_res[17]), 
        .B2(n211), .ZN(n120) );
  AOI22D0BWPHVT U190 ( .A1(n213), .A2(mult_res[1]), .B1(n212), .B2(
        shift_res[1]), .ZN(n119) );
  CKND2D0BWPHVT U191 ( .A1(n214), .A2(\add_res[1][1] ), .ZN(n118) );
  AN4D0BWPHVT U192 ( .A1(n121), .A2(n120), .A3(n119), .A4(n118), .Z(n123) );
  AOI32D0BWPHVT U193 ( .A1(op_b[1]), .A2(op_a[1]), .A3(n220), .B1(n219), .B2(
        op_a[1]), .ZN(n122) );
  OAI211D0BWPHVT U194 ( .A1(n223), .A2(n227), .B(n123), .C(n122), .ZN(res[1])
         );
  AOI22D0BWPHVT U195 ( .A1(n210), .A2(mult_res[10]), .B1(n209), .B2(n124), 
        .ZN(n128) );
  AOI22D0BWPHVT U196 ( .A1(\add_res[0][2] ), .A2(cntr_en), .B1(mult_res[18]), 
        .B2(n211), .ZN(n127) );
  AOI22D0BWPHVT U197 ( .A1(n213), .A2(mult_res[2]), .B1(n212), .B2(
        shift_res[2]), .ZN(n126) );
  CKND2D0BWPHVT U198 ( .A1(n214), .A2(\add_res[1][2] ), .ZN(n125) );
  AN4D0BWPHVT U199 ( .A1(n128), .A2(n127), .A3(n126), .A4(n125), .Z(n130) );
  AOI32D0BWPHVT U200 ( .A1(op_b[2]), .A2(op_a[2]), .A3(n220), .B1(n219), .B2(
        op_a[2]), .ZN(n129) );
  OAI211D0BWPHVT U201 ( .A1(n223), .A2(n228), .B(n130), .C(n129), .ZN(res[2])
         );
  AOI22D0BWPHVT U202 ( .A1(n210), .A2(mult_res[11]), .B1(n209), .B2(n131), 
        .ZN(n135) );
  AOI22D0BWPHVT U203 ( .A1(\add_res[0][3] ), .A2(cntr_en), .B1(mult_res[19]), 
        .B2(n211), .ZN(n134) );
  AOI22D0BWPHVT U204 ( .A1(n213), .A2(mult_res[3]), .B1(n212), .B2(
        shift_res[3]), .ZN(n133) );
  CKND2D0BWPHVT U205 ( .A1(n214), .A2(\add_res[1][3] ), .ZN(n132) );
  AOI32D0BWPHVT U206 ( .A1(op_b[3]), .A2(op_a[3]), .A3(n220), .B1(n219), .B2(
        op_a[3]), .ZN(n136) );
  OAI211D0BWPHVT U207 ( .A1(n223), .A2(n229), .B(n137), .C(n136), .ZN(res[3])
         );
  AOI22D0BWPHVT U208 ( .A1(n210), .A2(mult_res[12]), .B1(n209), .B2(n138), 
        .ZN(n142) );
  AOI22D0BWPHVT U209 ( .A1(\add_res[0][4] ), .A2(cntr_en), .B1(mult_res[20]), 
        .B2(n211), .ZN(n141) );
  AOI22D0BWPHVT U210 ( .A1(n213), .A2(mult_res[4]), .B1(n212), .B2(
        shift_res[4]), .ZN(n140) );
  CKND2D0BWPHVT U211 ( .A1(n214), .A2(\add_res[1][4] ), .ZN(n139) );
  AN4D0BWPHVT U212 ( .A1(n142), .A2(n141), .A3(n140), .A4(n139), .Z(n144) );
  AOI32D0BWPHVT U213 ( .A1(op_b[4]), .A2(op_a[4]), .A3(n220), .B1(n219), .B2(
        op_a[4]), .ZN(n143) );
  OAI211D0BWPHVT U214 ( .A1(n223), .A2(n230), .B(n144), .C(n143), .ZN(res[4])
         );
  AOI22D0BWPHVT U215 ( .A1(n210), .A2(mult_res[13]), .B1(n209), .B2(n145), 
        .ZN(n149) );
  AOI22D0BWPHVT U216 ( .A1(\add_res[0][5] ), .A2(cntr_en), .B1(mult_res[21]), 
        .B2(n211), .ZN(n148) );
  AOI22D0BWPHVT U217 ( .A1(n213), .A2(mult_res[5]), .B1(n212), .B2(
        shift_res[5]), .ZN(n147) );
  CKND2D0BWPHVT U218 ( .A1(n214), .A2(\add_res[1][5] ), .ZN(n146) );
  AN4D0BWPHVT U219 ( .A1(n149), .A2(n148), .A3(n147), .A4(n146), .Z(n151) );
  AOI32D0BWPHVT U220 ( .A1(op_b[5]), .A2(op_a[5]), .A3(n220), .B1(n219), .B2(
        op_a[5]), .ZN(n150) );
  OAI211D0BWPHVT U221 ( .A1(n223), .A2(n231), .B(n151), .C(n150), .ZN(res[5])
         );
  AOI22D0BWPHVT U222 ( .A1(n210), .A2(mult_res[14]), .B1(n209), .B2(n152), 
        .ZN(n156) );
  AOI22D0BWPHVT U223 ( .A1(\add_res[0][6] ), .A2(cntr_en), .B1(mult_res[22]), 
        .B2(n211), .ZN(n155) );
  AOI22D0BWPHVT U224 ( .A1(n213), .A2(mult_res[6]), .B1(n212), .B2(
        shift_res[6]), .ZN(n154) );
  CKND2D0BWPHVT U225 ( .A1(n214), .A2(\add_res[1][6] ), .ZN(n153) );
  AN4D0BWPHVT U226 ( .A1(n156), .A2(n155), .A3(n154), .A4(n153), .Z(n158) );
  AOI32D0BWPHVT U227 ( .A1(op_b[6]), .A2(op_a[6]), .A3(n220), .B1(n219), .B2(
        op_a[6]), .ZN(n157) );
  OAI211D0BWPHVT U228 ( .A1(n223), .A2(n232), .B(n158), .C(n157), .ZN(res[6])
         );
  AOI22D0BWPHVT U229 ( .A1(mult_res[15]), .A2(n210), .B1(n209), .B2(n159), 
        .ZN(n163) );
  AOI22D0BWPHVT U230 ( .A1(\add_res[0][7] ), .A2(cntr_en), .B1(mult_res[23]), 
        .B2(n211), .ZN(n162) );
  AOI22D0BWPHVT U231 ( .A1(n213), .A2(mult_res[7]), .B1(n212), .B2(
        shift_res[7]), .ZN(n161) );
  CKND2D0BWPHVT U232 ( .A1(n214), .A2(\add_res[1][7] ), .ZN(n160) );
  AN4D0BWPHVT U233 ( .A1(n163), .A2(n162), .A3(n161), .A4(n160), .Z(n165) );
  AOI32D0BWPHVT U234 ( .A1(op_b[7]), .A2(op_a[7]), .A3(n220), .B1(n219), .B2(
        op_a[7]), .ZN(n164) );
  OAI211D0BWPHVT U235 ( .A1(n223), .A2(n233), .B(n165), .C(n164), .ZN(res[7])
         );
  AOI22D0BWPHVT U236 ( .A1(mult_res[16]), .A2(n210), .B1(n209), .B2(n166), 
        .ZN(n170) );
  AOI22D0BWPHVT U237 ( .A1(\add_res[0][8] ), .A2(cntr_en), .B1(mult_res[24]), 
        .B2(n211), .ZN(n169) );
  AOI22D0BWPHVT U238 ( .A1(n213), .A2(mult_res[8]), .B1(n212), .B2(
        shift_res[8]), .ZN(n168) );
  CKND2D0BWPHVT U239 ( .A1(n214), .A2(\add_res[1][8] ), .ZN(n167) );
  AOI32D0BWPHVT U240 ( .A1(op_b[8]), .A2(op_a[8]), .A3(n220), .B1(n219), .B2(
        op_a[8]), .ZN(n171) );
  OAI211D0BWPHVT U241 ( .A1(n223), .A2(n234), .B(n172), .C(n171), .ZN(res[8])
         );
  AOI22D0BWPHVT U242 ( .A1(mult_res[17]), .A2(n210), .B1(n209), .B2(n173), 
        .ZN(n177) );
  AOI22D0BWPHVT U243 ( .A1(\add_res[0][9] ), .A2(cntr_en), .B1(mult_res[25]), 
        .B2(n211), .ZN(n176) );
  AOI22D0BWPHVT U244 ( .A1(n213), .A2(mult_res[9]), .B1(n212), .B2(
        shift_res[9]), .ZN(n175) );
  CKND2D0BWPHVT U245 ( .A1(n214), .A2(\add_res[1][9] ), .ZN(n174) );
  AN4D0BWPHVT U246 ( .A1(n177), .A2(n176), .A3(n175), .A4(n174), .Z(n179) );
  AOI32D0BWPHVT U247 ( .A1(op_b[9]), .A2(op_a[9]), .A3(n220), .B1(n219), .B2(
        op_a[9]), .ZN(n178) );
  OAI211D0BWPHVT U248 ( .A1(n223), .A2(n235), .B(n179), .C(n178), .ZN(res[9])
         );
  AOI22D0BWPHVT U249 ( .A1(mult_res[18]), .A2(n210), .B1(n209), .B2(n180), 
        .ZN(n184) );
  AOI22D0BWPHVT U250 ( .A1(\add_res[0][10] ), .A2(cntr_en), .B1(mult_res[26]), 
        .B2(n211), .ZN(n183) );
  AOI22D0BWPHVT U251 ( .A1(n213), .A2(mult_res[10]), .B1(n212), .B2(
        shift_res[10]), .ZN(n182) );
  CKND2D0BWPHVT U252 ( .A1(n214), .A2(\add_res[1][10] ), .ZN(n181) );
  AN4D0BWPHVT U253 ( .A1(n184), .A2(n183), .A3(n182), .A4(n181), .Z(n186) );
  AOI32D0BWPHVT U254 ( .A1(op_b[10]), .A2(op_a[10]), .A3(n220), .B1(n219), 
        .B2(op_a[10]), .ZN(n185) );
  OAI211D0BWPHVT U255 ( .A1(n223), .A2(n236), .B(n186), .C(n185), .ZN(res[10])
         );
  AOI22D0BWPHVT U256 ( .A1(mult_res[19]), .A2(n210), .B1(n209), .B2(n187), 
        .ZN(n191) );
  AOI22D0BWPHVT U257 ( .A1(\add_res[0][11] ), .A2(cntr_en), .B1(mult_res[27]), 
        .B2(n211), .ZN(n190) );
  AOI22D0BWPHVT U258 ( .A1(n213), .A2(mult_res[11]), .B1(n212), .B2(
        shift_res[11]), .ZN(n189) );
  CKND2D0BWPHVT U259 ( .A1(n214), .A2(\add_res[1][11] ), .ZN(n188) );
  AN4D0BWPHVT U260 ( .A1(n191), .A2(n190), .A3(n189), .A4(n188), .Z(n193) );
  AOI32D0BWPHVT U261 ( .A1(op_b[11]), .A2(op_a[11]), .A3(n220), .B1(n219), 
        .B2(op_a[11]), .ZN(n192) );
  OAI211D0BWPHVT U262 ( .A1(n223), .A2(n237), .B(n193), .C(n192), .ZN(res[11])
         );
  AOI22D0BWPHVT U263 ( .A1(mult_res[20]), .A2(n210), .B1(n209), .B2(n194), 
        .ZN(n198) );
  AOI22D0BWPHVT U264 ( .A1(\add_res[0][12] ), .A2(cntr_en), .B1(mult_res[28]), 
        .B2(n211), .ZN(n197) );
  AOI22D0BWPHVT U265 ( .A1(n213), .A2(mult_res[12]), .B1(n212), .B2(
        shift_res[12]), .ZN(n196) );
  CKND2D0BWPHVT U266 ( .A1(n214), .A2(\add_res[1][12] ), .ZN(n195) );
  AN4D0BWPHVT U267 ( .A1(n198), .A2(n197), .A3(n196), .A4(n195), .Z(n200) );
  AOI32D0BWPHVT U268 ( .A1(op_b[12]), .A2(op_a[12]), .A3(n220), .B1(n219), 
        .B2(op_a[12]), .ZN(n199) );
  OAI211D0BWPHVT U269 ( .A1(n223), .A2(n238), .B(n200), .C(n199), .ZN(res[12])
         );
  AOI22D0BWPHVT U270 ( .A1(mult_res[21]), .A2(n210), .B1(n209), .B2(n201), 
        .ZN(n205) );
  AOI22D0BWPHVT U271 ( .A1(\add_res[0][13] ), .A2(cntr_en), .B1(mult_res[29]), 
        .B2(n211), .ZN(n204) );
  AOI22D0BWPHVT U272 ( .A1(n213), .A2(mult_res[13]), .B1(n212), .B2(
        shift_res[13]), .ZN(n203) );
  CKND2D0BWPHVT U273 ( .A1(n214), .A2(\add_res[1][13] ), .ZN(n202) );
  AOI32D0BWPHVT U274 ( .A1(op_b[13]), .A2(op_a[13]), .A3(n220), .B1(n219), 
        .B2(op_a[13]), .ZN(n206) );
  OAI211D0BWPHVT U275 ( .A1(n223), .A2(n239), .B(n207), .C(n206), .ZN(res[13])
         );
  AOI22D0BWPHVT U276 ( .A1(mult_res[22]), .A2(n210), .B1(n209), .B2(n208), 
        .ZN(n218) );
  AOI22D0BWPHVT U277 ( .A1(\add_res[0][14] ), .A2(cntr_en), .B1(mult_res[30]), 
        .B2(n211), .ZN(n217) );
  AOI22D0BWPHVT U278 ( .A1(n213), .A2(mult_res[14]), .B1(n212), .B2(
        shift_res[14]), .ZN(n216) );
  CKND2D0BWPHVT U279 ( .A1(n214), .A2(\add_res[1][14] ), .ZN(n215) );
  AN4D0BWPHVT U280 ( .A1(n218), .A2(n217), .A3(n216), .A4(n215), .Z(n222) );
  AOI32D0BWPHVT U281 ( .A1(op_b[14]), .A2(op_a[14]), .A3(n220), .B1(n219), 
        .B2(op_a[14]), .ZN(n221) );
  OAI211D0BWPHVT U282 ( .A1(n223), .A2(n240), .B(n222), .C(n221), .ZN(res[14])
         );
  AOI22D0BWPHVT U283 ( .A1(op_b[0]), .A2(n243), .B1(n242), .B2(n224), .ZN(
        \add_b[0][0] ) );
  OAI31D0BWPHVT U284 ( .A1(op_code[5]), .A2(n226), .A3(n225), .B(n242), .ZN(
        add_c_in[0]) );
  AOI22D0BWPHVT U285 ( .A1(op_b[1]), .A2(n243), .B1(n242), .B2(n227), .ZN(
        \add_b[0][1] ) );
  AOI22D0BWPHVT U286 ( .A1(op_b[2]), .A2(n243), .B1(n242), .B2(n228), .ZN(
        \add_b[0][2] ) );
  AOI22D0BWPHVT U287 ( .A1(op_b[3]), .A2(n243), .B1(n242), .B2(n229), .ZN(
        \add_b[0][3] ) );
  AOI22D0BWPHVT U288 ( .A1(op_b[4]), .A2(n243), .B1(n242), .B2(n230), .ZN(
        \add_b[0][4] ) );
  AOI22D0BWPHVT U289 ( .A1(op_b[5]), .A2(n243), .B1(n242), .B2(n231), .ZN(
        \add_b[0][5] ) );
  AOI22D0BWPHVT U290 ( .A1(op_b[6]), .A2(n243), .B1(n242), .B2(n232), .ZN(
        \add_b[0][6] ) );
  AOI22D0BWPHVT U291 ( .A1(op_b[7]), .A2(n243), .B1(n242), .B2(n233), .ZN(
        \add_b[0][7] ) );
  AOI22D0BWPHVT U292 ( .A1(op_b[8]), .A2(n243), .B1(n242), .B2(n234), .ZN(
        \add_b[0][8] ) );
  AOI22D0BWPHVT U293 ( .A1(op_b[9]), .A2(n243), .B1(n242), .B2(n235), .ZN(
        \add_b[0][9] ) );
  AOI22D0BWPHVT U294 ( .A1(op_b[10]), .A2(n243), .B1(n242), .B2(n236), .ZN(
        \add_b[0][10] ) );
  AOI22D0BWPHVT U295 ( .A1(op_b[11]), .A2(n243), .B1(n242), .B2(n237), .ZN(
        \add_b[0][11] ) );
  AOI22D0BWPHVT U296 ( .A1(op_b[12]), .A2(n243), .B1(n242), .B2(n238), .ZN(
        \add_b[0][12] ) );
  AOI22D0BWPHVT U297 ( .A1(op_b[13]), .A2(n243), .B1(n242), .B2(n239), .ZN(
        \add_b[0][13] ) );
  AOI22D0BWPHVT U298 ( .A1(op_b[14]), .A2(n243), .B1(n242), .B2(n240), .ZN(
        \add_b[0][14] ) );
  AOI22D0BWPHVT U299 ( .A1(op_b[15]), .A2(n243), .B1(n242), .B2(n241), .ZN(
        \add_b[0][15] ) );
  MUX2ND0BWPHVT U300 ( .I0(n244), .I1(add_c_in[1]), .S(\add_res[0][14] ), .ZN(
        \add_a[1][14] ) );
  test_full_add_DataWidth16_2 \GEN_ADD[0].full_add  ( .a(op_a), .b({
        \add_b[0][15] , \add_b[0][14] , \add_b[0][13] , \add_b[0][12] , 
        \add_b[0][11] , \add_b[0][10] , \add_b[0][9] , \add_b[0][8] , 
        \add_b[0][7] , \add_b[0][6] , \add_b[0][5] , \add_b[0][4] , 
        \add_b[0][3] , \add_b[0][2] , \add_b[0][1] , \add_b[0][0] }), .c_in(
        add_c_in[0]), .res({\add_res[0][15] , \add_res[0][14] , 
        \add_res[0][13] , \add_res[0][12] , \add_res[0][11] , \add_res[0][10] , 
        \add_res[0][9] , \add_res[0][8] , \add_res[0][7] , \add_res[0][6] , 
        \add_res[0][5] , \add_res[0][4] , \add_res[0][3] , \add_res[0][2] , 
        \add_res[0][1] , \add_res[0][0] }), .c_out(n1) );
  test_full_add_DataWidth16_3 \GEN_ADD[1].full_add  ( .a({\add_a[1][15] , 
        \add_a[1][14] , \add_a[1][13] , \add_a[1][12] , \add_a[1][11] , 
        \add_a[1][10] , \add_a[1][9] , \add_a[1][8] , \add_a[1][7] , 
        \add_a[1][6] , \add_a[1][5] , \add_a[1][4] , \add_a[1][3] , 
        \add_a[1][2] , \add_a[1][1] , \add_a[1][0] }), .b(op_c), .c_in(
        add_c_in[1]), .res({\add_res[1][15] , \add_res[1][14] , 
        \add_res[1][13] , \add_res[1][12] , \add_res[1][11] , \add_res[1][10] , 
        \add_res[1][9] , \add_res[1][8] , \add_res[1][7] , \add_res[1][6] , 
        \add_res[1][5] , \add_res[1][4] , \add_res[1][3] , \add_res[1][2] , 
        \add_res[1][1] , \add_res[1][0] }), .c_out(carry_out[1]) );
  test_cmpr_0 cmpr ( .a_msb(op_a[15]), .b_msb(op_b[15]), .diff_msb(
        \add_res[0][15] ), .is_signed(op_code[6]), .eq(n290), .lte(cmpr_lte), 
        .gte(cmpr_gte) );
  test_mult_add_DataWidth16_0 test_mult_add ( .is_signed(op_code[6]), .a(op_a), 
        .b(op_b), .c(op_c), .res(mult_res), .c_out(mult_c_out) );
  test_shifter_unq1_DataWidth16_0 test_shifter ( .is_signed(op_code[6]), 
        .dir_left(n288), .a(op_a), .b(op_b[3:0]), .res(shift_res) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_lut_DataWidth1_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_lut_DataWidth1_0 ( cfg_clk, cfg_rst_n, cfg_d, cfg_a, cfg_en, 
        op_a_in, op_b_in, op_c_in, read_data, res );
  input [31:0] cfg_d;
  input [7:0] cfg_a;
  input [0:0] op_a_in;
  input [0:0] op_b_in;
  output [31:0] read_data;
  output [0:0] res;
  input cfg_clk, cfg_rst_n, cfg_en, op_c_in;
  wire   N4, net826, n1, n2, n3, n4, n5, n6, n7, n8, n9;

  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[1]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[7]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[6]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[5]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[4]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[3]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[2]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), 
        .CP(net826), .CDN(cfg_rst_n), .Q(read_data[0]) );
  CKND0BWPHVT U2 ( .I(op_a_in[0]), .ZN(n2) );
  OAI221D0BWPHVT U3 ( .A1(op_a_in[0]), .A2(read_data[6]), .B1(n2), .B2(
        read_data[7]), .C(op_c_in), .ZN(n6) );
  CKND0BWPHVT U4 ( .I(op_c_in), .ZN(n1) );
  OAI221D0BWPHVT U5 ( .A1(op_a_in[0]), .A2(read_data[2]), .B1(n2), .B2(
        read_data[3]), .C(n1), .ZN(n5) );
  MUX4ND0BWPHVT U6 ( .I0(read_data[0]), .I1(read_data[4]), .I2(read_data[1]), 
        .I3(read_data[5]), .S0(op_c_in), .S1(op_a_in[0]), .ZN(n4) );
  CKND0BWPHVT U7 ( .I(op_b_in[0]), .ZN(n3) );
  AOI32D0BWPHVT U8 ( .A1(n6), .A2(op_b_in[0]), .A3(n5), .B1(n4), .B2(n3), .ZN(
        res[0]) );
  NR2D0BWPHVT U9 ( .A1(cfg_a[0]), .A2(cfg_a[7]), .ZN(n8) );
  NR4D0BWPHVT U10 ( .A1(cfg_a[2]), .A2(cfg_a[3]), .A3(cfg_a[4]), .A4(cfg_a[6]), 
        .ZN(n7) );
  ND3D0BWPHVT U11 ( .A1(n8), .A2(cfg_en), .A3(n7), .ZN(n9) );
  NR3D0BWPHVT U12 ( .A1(cfg_a[5]), .A2(cfg_a[1]), .A3(n9), .ZN(N4) );
  SNPS_CLOCK_GATE_HIGH_test_lut_DataWidth1_0 \clk_gate_GEN_LUT[0].lut_reg  ( 
        .CLK(cfg_clk), .EN(N4), .ENCLK(net826), .TE(1'b0) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_debug_reg_DataWidth16_0 ( CLK, EN, ENCLK, TE
 );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_debug_reg_DataWidth16_0 ( cfg_clk, cfg_rst_n, cfg_d, cfg_en, 
        data_in, debug_irq, read_data );
  input [15:0] cfg_d;
  input [15:0] data_in;
  output [31:0] read_data;
  input cfg_clk, cfg_rst_n, cfg_en;
  output debug_irq;
  wire   net808, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34;

  SDFCNQD0BWPHVT \debug_val_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[2]) );
  SDFCNQD0BWPHVT \debug_val_reg[15]  ( .D(cfg_d[15]), .SI(1'b0), .SE(1'b0), 
        .CP(net808), .CDN(cfg_rst_n), .Q(read_data[15]) );
  SDFCNQD0BWPHVT \debug_val_reg[14]  ( .D(cfg_d[14]), .SI(1'b0), .SE(1'b0), 
        .CP(net808), .CDN(cfg_rst_n), .Q(read_data[14]) );
  SDFCNQD0BWPHVT \debug_val_reg[13]  ( .D(cfg_d[13]), .SI(1'b0), .SE(1'b0), 
        .CP(net808), .CDN(cfg_rst_n), .Q(read_data[13]) );
  SDFCNQD0BWPHVT \debug_val_reg[12]  ( .D(cfg_d[12]), .SI(1'b0), .SE(1'b0), 
        .CP(net808), .CDN(cfg_rst_n), .Q(read_data[12]) );
  SDFCNQD0BWPHVT \debug_val_reg[11]  ( .D(cfg_d[11]), .SI(1'b0), .SE(1'b0), 
        .CP(net808), .CDN(cfg_rst_n), .Q(read_data[11]) );
  SDFCNQD0BWPHVT \debug_val_reg[10]  ( .D(cfg_d[10]), .SI(1'b0), .SE(1'b0), 
        .CP(net808), .CDN(cfg_rst_n), .Q(read_data[10]) );
  SDFCNQD0BWPHVT \debug_val_reg[9]  ( .D(cfg_d[9]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[9]) );
  SDFCNQD0BWPHVT \debug_val_reg[8]  ( .D(cfg_d[8]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[8]) );
  SDFCNQD0BWPHVT \debug_val_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[7]) );
  SDFCNQD0BWPHVT \debug_val_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[6]) );
  SDFCNQD0BWPHVT \debug_val_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[5]) );
  SDFCNQD0BWPHVT \debug_val_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[4]) );
  SDFCNQD0BWPHVT \debug_val_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[3]) );
  SDFCNQD0BWPHVT \debug_val_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[1]) );
  SDFCNQD0BWPHVT \debug_val_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), .CP(
        net808), .CDN(cfg_rst_n), .Q(read_data[0]) );
  CKND0BWPHVT U2 ( .I(read_data[1]), .ZN(n3) );
  CKND0BWPHVT U3 ( .I(read_data[0]), .ZN(n2) );
  AOI22D0BWPHVT U4 ( .A1(data_in[1]), .A2(n3), .B1(data_in[0]), .B2(n2), .ZN(
        n1) );
  OAI221D0BWPHVT U5 ( .A1(n3), .A2(data_in[1]), .B1(n2), .B2(data_in[0]), .C(
        n1), .ZN(n16) );
  CKND0BWPHVT U6 ( .I(read_data[5]), .ZN(n6) );
  CKND0BWPHVT U7 ( .I(read_data[4]), .ZN(n5) );
  AOI22D0BWPHVT U8 ( .A1(data_in[5]), .A2(n6), .B1(data_in[4]), .B2(n5), .ZN(
        n4) );
  OAI221D0BWPHVT U9 ( .A1(n6), .A2(data_in[5]), .B1(n5), .B2(data_in[4]), .C(
        n4), .ZN(n15) );
  CKND0BWPHVT U10 ( .I(read_data[2]), .ZN(n9) );
  CKND0BWPHVT U11 ( .I(read_data[3]), .ZN(n8) );
  AOI22D0BWPHVT U12 ( .A1(data_in[2]), .A2(n9), .B1(data_in[3]), .B2(n8), .ZN(
        n7) );
  OAI221D0BWPHVT U13 ( .A1(n9), .A2(data_in[2]), .B1(n8), .B2(data_in[3]), .C(
        n7), .ZN(n14) );
  CKND0BWPHVT U14 ( .I(read_data[6]), .ZN(n12) );
  CKND0BWPHVT U15 ( .I(read_data[7]), .ZN(n11) );
  AOI22D0BWPHVT U16 ( .A1(data_in[6]), .A2(n12), .B1(data_in[7]), .B2(n11), 
        .ZN(n10) );
  OAI221D0BWPHVT U17 ( .A1(n12), .A2(data_in[6]), .B1(n11), .B2(data_in[7]), 
        .C(n10), .ZN(n13) );
  NR4D0BWPHVT U18 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .ZN(n34) );
  CKND0BWPHVT U19 ( .I(read_data[8]), .ZN(n19) );
  CKND0BWPHVT U20 ( .I(read_data[9]), .ZN(n18) );
  AOI22D0BWPHVT U21 ( .A1(data_in[8]), .A2(n19), .B1(data_in[9]), .B2(n18), 
        .ZN(n17) );
  OAI221D0BWPHVT U22 ( .A1(n19), .A2(data_in[8]), .B1(n18), .B2(data_in[9]), 
        .C(n17), .ZN(n32) );
  CKND0BWPHVT U23 ( .I(read_data[10]), .ZN(n22) );
  CKND0BWPHVT U24 ( .I(read_data[11]), .ZN(n21) );
  AOI22D0BWPHVT U25 ( .A1(data_in[10]), .A2(n22), .B1(data_in[11]), .B2(n21), 
        .ZN(n20) );
  OAI221D0BWPHVT U26 ( .A1(n22), .A2(data_in[10]), .B1(n21), .B2(data_in[11]), 
        .C(n20), .ZN(n31) );
  CKND0BWPHVT U27 ( .I(read_data[12]), .ZN(n25) );
  CKND0BWPHVT U28 ( .I(read_data[13]), .ZN(n24) );
  AOI22D0BWPHVT U29 ( .A1(data_in[12]), .A2(n25), .B1(data_in[13]), .B2(n24), 
        .ZN(n23) );
  OAI221D0BWPHVT U30 ( .A1(n25), .A2(data_in[12]), .B1(n24), .B2(data_in[13]), 
        .C(n23), .ZN(n30) );
  CKND0BWPHVT U31 ( .I(read_data[14]), .ZN(n28) );
  CKND0BWPHVT U32 ( .I(read_data[15]), .ZN(n27) );
  AOI22D0BWPHVT U33 ( .A1(data_in[14]), .A2(n28), .B1(data_in[15]), .B2(n27), 
        .ZN(n26) );
  OAI221D0BWPHVT U34 ( .A1(n28), .A2(data_in[14]), .B1(n27), .B2(data_in[15]), 
        .C(n26), .ZN(n29) );
  NR4D0BWPHVT U35 ( .A1(n32), .A2(n31), .A3(n30), .A4(n29), .ZN(n33) );
  CKND2D0BWPHVT U36 ( .A1(n34), .A2(n33), .ZN(debug_irq) );
  SNPS_CLOCK_GATE_HIGH_test_debug_reg_DataWidth16_0 clk_gate_debug_val_reg ( 
        .CLK(cfg_clk), .EN(cfg_en), .ENCLK(net808), .TE(1'b0) );
endmodule


module test_debug_reg_DataWidth1_0 ( cfg_clk, cfg_rst_n, cfg_d, cfg_en, 
        data_in, debug_irq, read_data );
  input [0:0] cfg_d;
  input [0:0] data_in;
  output [31:0] read_data;
  input cfg_clk, cfg_rst_n, cfg_en;
  output debug_irq;
  wire   n1;

  SEDFCNQD0BWPHVT \debug_val_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .E(cfg_en), 
        .SE(1'b0), .CP(cfg_clk), .CDN(cfg_rst_n), .Q(read_data[0]) );
  CKND0BWPHVT U2 ( .I(read_data[0]), .ZN(n1) );
  MUX2ND0BWPHVT U3 ( .I0(n1), .I1(read_data[0]), .S(data_in[0]), .ZN(debug_irq) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_pe_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_pe ( clk, rst_n, clk_en, cfg_d, cfg_a, cfg_en, data0, data1, data2, 
        bit0, bit1, bit2, res, irq, res_p, read_data );
  input [31:0] cfg_d;
  input [7:0] cfg_a;
  input [15:0] data0;
  input [15:0] data1;
  input [15:0] data2;
  output [15:0] res;
  output [31:0] read_data;
  input clk, rst_n, clk_en, cfg_en, bit0, bit1, bit2;
  output irq, res_p;
  wire   N31, _0_net_, cntr_en, op_b_ld, comp_res_p, op_d_p, _1_net_, _2_net_,
         op_d_p_reg, _3_net_, op_e_p, op_e_p_reg, _4_net_, op_f_p, op_f_p_reg,
         \carry_out[1] , V, res_lut, _5_net_, irq_data, _6_net_, irq_bit,
         \read_data_debug_bit[0] , net790, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333;
  wire   [15:0] inp_code;
  wire   [15:0] op_code;
  wire   [15:0] op_a;
  wire   [15:0] op_a_reg;
  wire   [15:0] op_b_val;
  wire   [15:0] comp_res;
  wire   [15:0] op_b;
  wire   [15:0] op_b_reg;
  wire   [15:0] op_c;
  wire   [15:0] op_c_reg;
  wire   [31:0] read_data_lut;
  wire   [31:0] read_data_debug_data;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71;

  SDFCNQD0BWPHVT \op_code_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[1]) );
  SDFCNQD0BWPHVT \inp_code_reg[2]  ( .D(cfg_d[18]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[2]) );
  SDFCNQD0BWPHVT \inp_code_reg[1]  ( .D(cfg_d[17]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[1]) );
  SDFCNQD0BWPHVT \inp_code_reg[9]  ( .D(cfg_d[25]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[9]) );
  SDFCNQD0BWPHVT \inp_code_reg[8]  ( .D(cfg_d[24]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[8]) );
  SDFCNQD0BWPHVT \inp_code_reg[11]  ( .D(cfg_d[27]), .SI(1'b0), .SE(1'b0), 
        .CP(net790), .CDN(rst_n), .Q(inp_code[11]) );
  SDFCNQD0BWPHVT \inp_code_reg[10]  ( .D(cfg_d[26]), .SI(1'b0), .SE(1'b0), 
        .CP(net790), .CDN(rst_n), .Q(inp_code[10]) );
  SDFCNQD0BWPHVT \inp_code_reg[13]  ( .D(cfg_d[29]), .SI(1'b0), .SE(1'b0), 
        .CP(net790), .CDN(rst_n), .Q(inp_code[13]) );
  SDFCNQD0BWPHVT \inp_code_reg[12]  ( .D(cfg_d[28]), .SI(1'b0), .SE(1'b0), 
        .CP(net790), .CDN(rst_n), .Q(inp_code[12]) );
  SDFCNQD0BWPHVT \inp_code_reg[0]  ( .D(cfg_d[16]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[0]) );
  SDFCNQD0BWPHVT \inp_code_reg[4]  ( .D(cfg_d[20]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[4]) );
  SDFCNQD0BWPHVT \inp_code_reg[3]  ( .D(cfg_d[19]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[3]) );
  SDFCNQD0BWPHVT \inp_code_reg[6]  ( .D(cfg_d[22]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[6]) );
  SDFCNQD0BWPHVT \inp_code_reg[5]  ( .D(cfg_d[21]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[5]) );
  SDFCNQD0BWPHVT \op_code_reg[10]  ( .D(cfg_d[10]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[10]) );
  SDFCNQD0BWPHVT \op_code_reg[11]  ( .D(cfg_d[11]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[11]) );
  SDFCNQD0BWPHVT \op_code_reg[13]  ( .D(cfg_d[13]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[13]) );
  SDFCNQD0BWPHVT \op_code_reg[15]  ( .D(cfg_d[15]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[15]) );
  SDFCNQD0BWPHVT \op_code_reg[14]  ( .D(cfg_d[14]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[14]) );
  SDFCNQD0BWPHVT \inp_code_reg[15]  ( .D(cfg_d[31]), .SI(1'b0), .SE(1'b0), 
        .CP(net790), .CDN(rst_n), .Q(inp_code[15]) );
  SDFCNQD0BWPHVT \inp_code_reg[14]  ( .D(cfg_d[30]), .SI(1'b0), .SE(1'b0), 
        .CP(net790), .CDN(rst_n), .Q(inp_code[14]) );
  SDFCNQD0BWPHVT \inp_code_reg[7]  ( .D(cfg_d[23]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(inp_code[7]) );
  SDFCNQD0BWPHVT \op_code_reg[12]  ( .D(cfg_d[12]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[12]) );
  SDFCNQD0BWPHVT \op_code_reg[9]  ( .D(cfg_d[9]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[9]) );
  SDFCNQD0BWPHVT \op_code_reg[8]  ( .D(cfg_d[8]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[8]) );
  SDFCNQD0BWPHVT \op_code_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[7]) );
  SDFCNQD0BWPHVT \op_code_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[6]) );
  SDFCNQD0BWPHVT \op_code_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[5]) );
  SDFCNQD0BWPHVT \op_code_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[4]) );
  SDFCNQD0BWPHVT \op_code_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[3]) );
  SDFCNQD0BWPHVT \op_code_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[2]) );
  SDFCNQD0BWPHVT \op_code_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), .CP(
        net790), .CDN(rst_n), .Q(op_code[0]) );
  CKBD0BWPHVT U216 ( .I(n197), .Z(n201) );
  NR2XD1BWPHVT U217 ( .A1(n331), .A2(n225), .ZN(_1_net_) );
  CKND0BWPHVT U218 ( .I(cfg_d[4]), .ZN(n208) );
  CKND0BWPHVT U219 ( .I(cfg_a[3]), .ZN(n231) );
  MAOI22D0BWPHVT U220 ( .A1(n201), .A2(n293), .B1(op_b[10]), .B2(n201), .ZN(
        res[10]) );
  CKND0BWPHVT U221 ( .I(cfg_en), .ZN(n331) );
  NR2D0BWPHVT U222 ( .A1(cfg_a[2]), .A2(cfg_a[3]), .ZN(n224) );
  AN3D0BWPHVT U223 ( .A1(cfg_a[7]), .A2(cfg_a[5]), .A3(cfg_a[6]), .Z(n232) );
  CKND2D0BWPHVT U224 ( .A1(n224), .A2(n232), .ZN(n333) );
  CKND0BWPHVT U225 ( .I(cfg_a[4]), .ZN(n328) );
  NR2D0BWPHVT U226 ( .A1(n333), .A2(n328), .ZN(n200) );
  CKND0BWPHVT U227 ( .I(cfg_a[0]), .ZN(n332) );
  ND3D0BWPHVT U228 ( .A1(n200), .A2(cfg_a[1]), .A3(n332), .ZN(n225) );
  NR2D0BWPHVT U229 ( .A1(cntr_en), .A2(op_code[9]), .ZN(n197) );
  CKND0BWPHVT U230 ( .I(clk_en), .ZN(n198) );
  CKND0BWPHVT U231 ( .I(cfg_a[1]), .ZN(n329) );
  CKND2D0BWPHVT U232 ( .A1(n200), .A2(n329), .ZN(n199) );
  NR2D0BWPHVT U233 ( .A1(n199), .A2(n332), .ZN(n282) );
  CKND2D0BWPHVT U234 ( .A1(n282), .A2(cfg_en), .ZN(n222) );
  OAI21D2BWPHVT U235 ( .A1(n201), .A2(n198), .B(n222), .ZN(op_b_ld) );
  NR2D0BWPHVT U236 ( .A1(cfg_a[0]), .A2(n199), .ZN(n281) );
  INR2XD1BWPHVT U237 ( .A1(n281), .B1(n331), .ZN(_0_net_) );
  AN4D0BWPHVT U238 ( .A1(cfg_a[1]), .A2(n200), .A3(cfg_a[0]), .A4(cfg_en), .Z(
        _2_net_) );
  CKND0BWPHVT U239 ( .I(comp_res[15]), .ZN(n312) );
  MAOI22D0BWPHVT U240 ( .A1(n201), .A2(n312), .B1(op_b[15]), .B2(n197), .ZN(
        res[15]) );
  CKND0BWPHVT U241 ( .I(comp_res[0]), .ZN(n303) );
  MAOI22D0BWPHVT U242 ( .A1(n201), .A2(n303), .B1(op_b[0]), .B2(n197), .ZN(
        res[0]) );
  CKND0BWPHVT U243 ( .I(comp_res[1]), .ZN(n302) );
  MAOI22D0BWPHVT U244 ( .A1(n197), .A2(n302), .B1(op_b[1]), .B2(n201), .ZN(
        res[1]) );
  CKND0BWPHVT U245 ( .I(comp_res[2]), .ZN(n301) );
  MAOI22D0BWPHVT U246 ( .A1(n197), .A2(n301), .B1(op_b[2]), .B2(n197), .ZN(
        res[2]) );
  CKND0BWPHVT U247 ( .I(comp_res[3]), .ZN(n300) );
  MAOI22D0BWPHVT U248 ( .A1(n197), .A2(n300), .B1(op_b[3]), .B2(n201), .ZN(
        res[3]) );
  CKND0BWPHVT U249 ( .I(comp_res[4]), .ZN(n299) );
  MAOI22D0BWPHVT U250 ( .A1(n197), .A2(n299), .B1(op_b[4]), .B2(n197), .ZN(
        res[4]) );
  CKND0BWPHVT U251 ( .I(comp_res[5]), .ZN(n298) );
  MAOI22D0BWPHVT U252 ( .A1(n197), .A2(n298), .B1(op_b[5]), .B2(n201), .ZN(
        res[5]) );
  CKND0BWPHVT U253 ( .I(comp_res[6]), .ZN(n297) );
  MAOI22D0BWPHVT U254 ( .A1(n197), .A2(n297), .B1(op_b[6]), .B2(n197), .ZN(
        res[6]) );
  CKND0BWPHVT U255 ( .I(comp_res[7]), .ZN(n296) );
  MAOI22D0BWPHVT U256 ( .A1(n197), .A2(n296), .B1(op_b[7]), .B2(n201), .ZN(
        res[7]) );
  CKND0BWPHVT U257 ( .I(comp_res[8]), .ZN(n295) );
  MAOI22D0BWPHVT U258 ( .A1(n201), .A2(n295), .B1(op_b[8]), .B2(n197), .ZN(
        res[8]) );
  CKND0BWPHVT U259 ( .I(comp_res[9]), .ZN(n294) );
  MAOI22D0BWPHVT U260 ( .A1(n201), .A2(n294), .B1(op_b[9]), .B2(n201), .ZN(
        res[9]) );
  CKND0BWPHVT U261 ( .I(comp_res[10]), .ZN(n293) );
  CKND0BWPHVT U262 ( .I(comp_res[11]), .ZN(n292) );
  MAOI22D0BWPHVT U263 ( .A1(n201), .A2(n292), .B1(op_b[11]), .B2(n201), .ZN(
        res[11]) );
  CKND0BWPHVT U264 ( .I(comp_res[12]), .ZN(n291) );
  MAOI22D0BWPHVT U265 ( .A1(n201), .A2(n291), .B1(op_b[12]), .B2(n197), .ZN(
        res[12]) );
  CKND0BWPHVT U266 ( .I(comp_res[13]), .ZN(n290) );
  MAOI22D0BWPHVT U267 ( .A1(n201), .A2(n290), .B1(op_b[13]), .B2(n197), .ZN(
        res[13]) );
  CKND0BWPHVT U268 ( .I(comp_res[14]), .ZN(n289) );
  MAOI22D0BWPHVT U269 ( .A1(n201), .A2(n289), .B1(op_b[14]), .B2(n197), .ZN(
        res[14]) );
  NR4D1BWPHVT U270 ( .A1(cfg_a[1]), .A2(cfg_a[4]), .A3(cfg_a[0]), .A4(n333), 
        .ZN(n279) );
  INR2D0BWPHVT U271 ( .A1(n279), .B1(n331), .ZN(_5_net_) );
  ND3D0BWPHVT U272 ( .A1(cfg_a[2]), .A2(n232), .A3(cfg_a[4]), .ZN(n202) );
  NR4D1BWPHVT U273 ( .A1(n329), .A2(n231), .A3(n332), .A4(n202), .ZN(n286) );
  CKND0BWPHVT U274 ( .I(n286), .ZN(n327) );
  NR2D0BWPHVT U275 ( .A1(n331), .A2(n327), .ZN(N31) );
  IND4D0BWPHVT U276 ( .A1(n202), .B1(cfg_en), .B2(n329), .B3(n231), .ZN(n215)
         );
  NR2D0BWPHVT U277 ( .A1(cfg_a[0]), .A2(n215), .ZN(_3_net_) );
  CKND0BWPHVT U278 ( .I(cfg_d[0]), .ZN(n204) );
  AOI22D0BWPHVT U279 ( .A1(comp_res_p), .A2(cntr_en), .B1(op_d_p), .B2(
        op_code[9]), .ZN(n203) );
  CKND2D0BWPHVT U280 ( .A1(n203), .A2(n222), .ZN(n220) );
  OAI22D0BWPHVT U281 ( .A1(n222), .A2(n204), .B1(n220), .B2(n303), .ZN(
        op_b_val[0]) );
  CKND0BWPHVT U282 ( .I(cfg_d[1]), .ZN(n205) );
  OAI22D0BWPHVT U283 ( .A1(n222), .A2(n205), .B1(n220), .B2(n302), .ZN(
        op_b_val[1]) );
  CKND0BWPHVT U284 ( .I(cfg_d[2]), .ZN(n206) );
  OAI22D0BWPHVT U285 ( .A1(n222), .A2(n206), .B1(n220), .B2(n301), .ZN(
        op_b_val[2]) );
  CKND0BWPHVT U286 ( .I(cfg_d[3]), .ZN(n207) );
  OAI22D0BWPHVT U287 ( .A1(n222), .A2(n207), .B1(n220), .B2(n300), .ZN(
        op_b_val[3]) );
  OAI22D0BWPHVT U288 ( .A1(n222), .A2(n208), .B1(n220), .B2(n299), .ZN(
        op_b_val[4]) );
  CKND0BWPHVT U289 ( .I(cfg_d[5]), .ZN(n209) );
  OAI22D0BWPHVT U290 ( .A1(n222), .A2(n209), .B1(n220), .B2(n298), .ZN(
        op_b_val[5]) );
  CKND0BWPHVT U291 ( .I(cfg_d[6]), .ZN(n210) );
  OAI22D0BWPHVT U292 ( .A1(n222), .A2(n210), .B1(n220), .B2(n297), .ZN(
        op_b_val[6]) );
  CKND0BWPHVT U293 ( .I(cfg_d[7]), .ZN(n211) );
  OAI22D0BWPHVT U294 ( .A1(n222), .A2(n211), .B1(n220), .B2(n296), .ZN(
        op_b_val[7]) );
  CKND0BWPHVT U295 ( .I(cfg_d[8]), .ZN(n212) );
  OAI22D0BWPHVT U296 ( .A1(n222), .A2(n212), .B1(n220), .B2(n295), .ZN(
        op_b_val[8]) );
  CKND0BWPHVT U297 ( .I(cfg_d[9]), .ZN(n213) );
  OAI22D0BWPHVT U298 ( .A1(n222), .A2(n213), .B1(n220), .B2(n294), .ZN(
        op_b_val[9]) );
  CKND0BWPHVT U299 ( .I(cfg_d[10]), .ZN(n214) );
  OAI22D0BWPHVT U300 ( .A1(n222), .A2(n214), .B1(n220), .B2(n293), .ZN(
        op_b_val[10]) );
  NR2D0BWPHVT U301 ( .A1(n332), .A2(n215), .ZN(_4_net_) );
  CKND0BWPHVT U302 ( .I(cfg_d[11]), .ZN(n216) );
  OAI22D0BWPHVT U303 ( .A1(n222), .A2(n216), .B1(n220), .B2(n292), .ZN(
        op_b_val[11]) );
  CKND0BWPHVT U304 ( .I(cfg_d[12]), .ZN(n217) );
  OAI22D0BWPHVT U305 ( .A1(n222), .A2(n217), .B1(n220), .B2(n291), .ZN(
        op_b_val[12]) );
  CKND0BWPHVT U306 ( .I(cfg_d[13]), .ZN(n218) );
  OAI22D0BWPHVT U307 ( .A1(n222), .A2(n218), .B1(n220), .B2(n290), .ZN(
        op_b_val[13]) );
  CKND0BWPHVT U308 ( .I(cfg_d[14]), .ZN(n219) );
  OAI22D0BWPHVT U309 ( .A1(n222), .A2(n219), .B1(n220), .B2(n289), .ZN(
        op_b_val[14]) );
  CKND0BWPHVT U310 ( .I(cfg_d[15]), .ZN(n221) );
  OAI22D0BWPHVT U311 ( .A1(n222), .A2(n221), .B1(n220), .B2(n312), .ZN(
        op_b_val[15]) );
  NR4D0BWPHVT U312 ( .A1(cfg_a[7]), .A2(cfg_a[5]), .A3(cfg_a[6]), .A4(cfg_a[0]), .ZN(n223) );
  AN4D0BWPHVT U313 ( .A1(n224), .A2(n223), .A3(n329), .A4(n328), .Z(n278) );
  AOI22D0BWPHVT U314 ( .A1(n286), .A2(op_code[1]), .B1(n278), .B2(
        read_data_lut[1]), .ZN(n228) );
  CKND0BWPHVT U315 ( .I(n225), .ZN(n280) );
  AOI22D0BWPHVT U316 ( .A1(n280), .A2(op_c_reg[1]), .B1(n279), .B2(
        read_data_debug_data[1]), .ZN(n227) );
  AOI22D0BWPHVT U317 ( .A1(n282), .A2(op_b_reg[1]), .B1(n281), .B2(op_a_reg[1]), .ZN(n226) );
  ND3D0BWPHVT U318 ( .A1(n228), .A2(n227), .A3(n226), .ZN(read_data[1]) );
  AOI22D0BWPHVT U319 ( .A1(n280), .A2(op_c_reg[0]), .B1(n279), .B2(
        read_data_debug_data[0]), .ZN(n238) );
  AOI22D0BWPHVT U320 ( .A1(n286), .A2(op_code[0]), .B1(n278), .B2(
        read_data_lut[0]), .ZN(n237) );
  AOI22D0BWPHVT U321 ( .A1(n282), .A2(op_b_reg[0]), .B1(n281), .B2(op_a_reg[0]), .ZN(n236) );
  AOI33D0BWPHVT U322 ( .A1(cfg_a[4]), .A2(op_d_p_reg), .A3(cfg_a[1]), .B1(n329), .B2(\read_data_debug_bit[0] ), .B3(n328), .ZN(n229) );
  NR3D0BWPHVT U323 ( .A1(cfg_a[2]), .A2(n229), .A3(n332), .ZN(n234) );
  AOI22D0BWPHVT U324 ( .A1(cfg_a[0]), .A2(op_f_p_reg), .B1(op_e_p_reg), .B2(
        n332), .ZN(n230) );
  INR4D0BWPHVT U325 ( .A1(cfg_a[2]), .B1(cfg_a[1]), .B2(n328), .B3(n230), .ZN(
        n233) );
  OAI211D0BWPHVT U326 ( .A1(n234), .A2(n233), .B(n232), .C(n231), .ZN(n235) );
  ND4D0BWPHVT U327 ( .A1(n238), .A2(n237), .A3(n236), .A4(n235), .ZN(
        read_data[0]) );
  AOI22D0BWPHVT U328 ( .A1(n286), .A2(op_code[3]), .B1(n278), .B2(
        read_data_lut[3]), .ZN(n241) );
  AOI22D0BWPHVT U329 ( .A1(n280), .A2(op_c_reg[3]), .B1(n279), .B2(
        read_data_debug_data[3]), .ZN(n240) );
  AOI22D0BWPHVT U330 ( .A1(n282), .A2(op_b_reg[3]), .B1(n281), .B2(op_a_reg[3]), .ZN(n239) );
  ND3D0BWPHVT U331 ( .A1(n241), .A2(n240), .A3(n239), .ZN(read_data[3]) );
  AOI22D0BWPHVT U332 ( .A1(n286), .A2(op_code[4]), .B1(n278), .B2(
        read_data_lut[4]), .ZN(n244) );
  AOI22D0BWPHVT U333 ( .A1(n280), .A2(op_c_reg[4]), .B1(n279), .B2(
        read_data_debug_data[4]), .ZN(n243) );
  AOI22D0BWPHVT U334 ( .A1(n282), .A2(op_b_reg[4]), .B1(n281), .B2(op_a_reg[4]), .ZN(n242) );
  ND3D0BWPHVT U335 ( .A1(n244), .A2(n243), .A3(n242), .ZN(read_data[4]) );
  AOI22D0BWPHVT U336 ( .A1(n286), .A2(op_code[5]), .B1(n278), .B2(
        read_data_lut[5]), .ZN(n247) );
  AOI22D0BWPHVT U337 ( .A1(n280), .A2(op_c_reg[5]), .B1(n279), .B2(
        read_data_debug_data[5]), .ZN(n246) );
  AOI22D0BWPHVT U338 ( .A1(n282), .A2(op_b_reg[5]), .B1(n281), .B2(op_a_reg[5]), .ZN(n245) );
  ND3D0BWPHVT U339 ( .A1(n247), .A2(n246), .A3(n245), .ZN(read_data[5]) );
  AOI22D0BWPHVT U340 ( .A1(n286), .A2(op_code[6]), .B1(n278), .B2(
        read_data_lut[6]), .ZN(n250) );
  AOI22D0BWPHVT U341 ( .A1(n280), .A2(op_c_reg[6]), .B1(n279), .B2(
        read_data_debug_data[6]), .ZN(n249) );
  AOI22D0BWPHVT U342 ( .A1(n282), .A2(op_b_reg[6]), .B1(n281), .B2(op_a_reg[6]), .ZN(n248) );
  ND3D0BWPHVT U343 ( .A1(n250), .A2(n249), .A3(n248), .ZN(read_data[6]) );
  AOI22D0BWPHVT U344 ( .A1(n286), .A2(op_code[2]), .B1(n278), .B2(
        read_data_lut[2]), .ZN(n253) );
  AOI22D0BWPHVT U345 ( .A1(n280), .A2(op_c_reg[2]), .B1(n279), .B2(
        read_data_debug_data[2]), .ZN(n252) );
  AOI22D0BWPHVT U346 ( .A1(n282), .A2(op_b_reg[2]), .B1(n281), .B2(op_a_reg[2]), .ZN(n251) );
  ND3D0BWPHVT U347 ( .A1(n253), .A2(n252), .A3(n251), .ZN(read_data[2]) );
  AOI22D0BWPHVT U348 ( .A1(n279), .A2(read_data_debug_data[8]), .B1(n286), 
        .B2(op_code[8]), .ZN(n256) );
  AOI22D0BWPHVT U349 ( .A1(n281), .A2(op_a_reg[8]), .B1(n280), .B2(op_c_reg[8]), .ZN(n255) );
  CKND2D0BWPHVT U350 ( .A1(n282), .A2(op_b_reg[8]), .ZN(n254) );
  ND3D0BWPHVT U351 ( .A1(n256), .A2(n255), .A3(n254), .ZN(read_data[8]) );
  AOI22D0BWPHVT U352 ( .A1(op_code[9]), .A2(n286), .B1(n279), .B2(
        read_data_debug_data[9]), .ZN(n259) );
  AOI22D0BWPHVT U353 ( .A1(n281), .A2(op_a_reg[9]), .B1(n280), .B2(op_c_reg[9]), .ZN(n258) );
  CKND2D0BWPHVT U354 ( .A1(n282), .A2(op_b_reg[9]), .ZN(n257) );
  ND3D0BWPHVT U355 ( .A1(n259), .A2(n258), .A3(n257), .ZN(read_data[9]) );
  AOI22D0BWPHVT U356 ( .A1(n279), .A2(read_data_debug_data[10]), .B1(n286), 
        .B2(op_code[10]), .ZN(n262) );
  AOI22D0BWPHVT U357 ( .A1(n281), .A2(op_a_reg[10]), .B1(n280), .B2(
        op_c_reg[10]), .ZN(n261) );
  CKND2D0BWPHVT U358 ( .A1(n282), .A2(op_b_reg[10]), .ZN(n260) );
  ND3D0BWPHVT U359 ( .A1(n262), .A2(n261), .A3(n260), .ZN(read_data[10]) );
  AOI22D0BWPHVT U360 ( .A1(n279), .A2(read_data_debug_data[11]), .B1(n286), 
        .B2(op_code[11]), .ZN(n265) );
  AOI22D0BWPHVT U361 ( .A1(n281), .A2(op_a_reg[11]), .B1(n280), .B2(
        op_c_reg[11]), .ZN(n264) );
  CKND2D0BWPHVT U362 ( .A1(n282), .A2(op_b_reg[11]), .ZN(n263) );
  ND3D0BWPHVT U363 ( .A1(n265), .A2(n264), .A3(n263), .ZN(read_data[11]) );
  AOI22D0BWPHVT U364 ( .A1(op_code[12]), .A2(n286), .B1(n279), .B2(
        read_data_debug_data[12]), .ZN(n268) );
  AOI22D0BWPHVT U365 ( .A1(n281), .A2(op_a_reg[12]), .B1(n280), .B2(
        op_c_reg[12]), .ZN(n267) );
  CKND2D0BWPHVT U366 ( .A1(n282), .A2(op_b_reg[12]), .ZN(n266) );
  ND3D0BWPHVT U367 ( .A1(n268), .A2(n267), .A3(n266), .ZN(read_data[12]) );
  AOI22D0BWPHVT U368 ( .A1(op_code[13]), .A2(n286), .B1(n279), .B2(
        read_data_debug_data[13]), .ZN(n271) );
  AOI22D0BWPHVT U369 ( .A1(n281), .A2(op_a_reg[13]), .B1(n280), .B2(
        op_c_reg[13]), .ZN(n270) );
  CKND2D0BWPHVT U370 ( .A1(n282), .A2(op_b_reg[13]), .ZN(n269) );
  ND3D0BWPHVT U371 ( .A1(n271), .A2(n270), .A3(n269), .ZN(read_data[13]) );
  AOI22D0BWPHVT U372 ( .A1(op_code[14]), .A2(n286), .B1(n279), .B2(
        read_data_debug_data[14]), .ZN(n274) );
  AOI22D0BWPHVT U373 ( .A1(n281), .A2(op_a_reg[14]), .B1(n280), .B2(
        op_c_reg[14]), .ZN(n273) );
  CKND2D0BWPHVT U374 ( .A1(n282), .A2(op_b_reg[14]), .ZN(n272) );
  ND3D0BWPHVT U375 ( .A1(n274), .A2(n273), .A3(n272), .ZN(read_data[14]) );
  AOI22D0BWPHVT U376 ( .A1(op_code[15]), .A2(n286), .B1(n279), .B2(
        read_data_debug_data[15]), .ZN(n277) );
  AOI22D0BWPHVT U377 ( .A1(n281), .A2(op_a_reg[15]), .B1(n280), .B2(
        op_c_reg[15]), .ZN(n276) );
  CKND2D0BWPHVT U378 ( .A1(n282), .A2(op_b_reg[15]), .ZN(n275) );
  ND3D0BWPHVT U379 ( .A1(n277), .A2(n276), .A3(n275), .ZN(read_data[15]) );
  INR2D0BWPHVT U380 ( .A1(inp_code[0]), .B1(n327), .ZN(read_data[16]) );
  INR2D0BWPHVT U381 ( .A1(inp_code[1]), .B1(n327), .ZN(read_data[17]) );
  INR2D0BWPHVT U382 ( .A1(inp_code[2]), .B1(n327), .ZN(read_data[18]) );
  INR2D0BWPHVT U383 ( .A1(inp_code[3]), .B1(n327), .ZN(read_data[19]) );
  AOI22D0BWPHVT U384 ( .A1(n286), .A2(op_code[7]), .B1(n278), .B2(
        read_data_lut[7]), .ZN(n285) );
  AOI22D0BWPHVT U385 ( .A1(n280), .A2(op_c_reg[7]), .B1(n279), .B2(
        read_data_debug_data[7]), .ZN(n284) );
  AOI22D0BWPHVT U386 ( .A1(n282), .A2(op_b_reg[7]), .B1(n281), .B2(op_a_reg[7]), .ZN(n283) );
  ND3D0BWPHVT U387 ( .A1(n285), .A2(n284), .A3(n283), .ZN(read_data[7]) );
  INR2D0BWPHVT U388 ( .A1(inp_code[5]), .B1(n327), .ZN(read_data[21]) );
  INR2D0BWPHVT U389 ( .A1(inp_code[6]), .B1(n327), .ZN(read_data[22]) );
  CKAN2D0BWPHVT U390 ( .A1(inp_code[7]), .A2(n286), .Z(read_data[23]) );
  INR2D0BWPHVT U391 ( .A1(inp_code[8]), .B1(n327), .ZN(read_data[24]) );
  INR2D0BWPHVT U392 ( .A1(inp_code[9]), .B1(n327), .ZN(read_data[25]) );
  INR2D0BWPHVT U393 ( .A1(inp_code[10]), .B1(n327), .ZN(read_data[26]) );
  INR2D0BWPHVT U394 ( .A1(inp_code[11]), .B1(n327), .ZN(read_data[27]) );
  INR2D0BWPHVT U395 ( .A1(inp_code[12]), .B1(n327), .ZN(read_data[28]) );
  INR2D0BWPHVT U396 ( .A1(inp_code[13]), .B1(n327), .ZN(read_data[29]) );
  CKAN2D0BWPHVT U397 ( .A1(inp_code[14]), .A2(n286), .Z(read_data[30]) );
  CKAN2D0BWPHVT U398 ( .A1(inp_code[15]), .A2(n286), .Z(read_data[31]) );
  AO22D0BWPHVT U399 ( .A1(op_code[10]), .A2(irq_bit), .B1(op_code[11]), .B2(
        irq_data), .Z(irq) );
  CKND0BWPHVT U400 ( .I(op_code[12]), .ZN(n318) );
  CKND2D0BWPHVT U401 ( .A1(op_code[15]), .A2(\carry_out[1] ), .ZN(n288) );
  NR2D0BWPHVT U402 ( .A1(n318), .A2(n288), .ZN(n287) );
  AOI211D0BWPHVT U403 ( .A1(n318), .A2(n288), .B(op_code[14]), .C(n287), .ZN(
        n309) );
  CKND0BWPHVT U404 ( .I(op_code[15]), .ZN(n320) );
  OAI32D0BWPHVT U405 ( .A1(op_code[15]), .A2(op_code[12]), .A3(op_code[14]), 
        .B1(n318), .B2(n320), .ZN(n308) );
  ND4D0BWPHVT U406 ( .A1(n291), .A2(n290), .A3(n289), .A4(n312), .ZN(n307) );
  ND4D0BWPHVT U407 ( .A1(n295), .A2(n294), .A3(n293), .A4(n292), .ZN(n306) );
  ND4D0BWPHVT U408 ( .A1(n299), .A2(n298), .A3(n297), .A4(n296), .ZN(n305) );
  ND4D0BWPHVT U409 ( .A1(n303), .A2(n302), .A3(n301), .A4(n300), .ZN(n304) );
  NR4D0BWPHVT U410 ( .A1(n307), .A2(n306), .A3(n305), .A4(n304), .ZN(n310) );
  MUX2ND0BWPHVT U411 ( .I0(n309), .I1(n308), .S(n310), .ZN(n326) );
  MUX2ND0BWPHVT U412 ( .I0(comp_res[15]), .I1(n312), .S(V), .ZN(n317) );
  CKND2D0BWPHVT U413 ( .A1(n318), .A2(n317), .ZN(n311) );
  OAI221D0BWPHVT U414 ( .A1(n317), .A2(n318), .B1(n311), .B2(n310), .C(
        op_code[15]), .ZN(n314) );
  OAI221D0BWPHVT U415 ( .A1(comp_res[15]), .A2(n318), .B1(n312), .B2(
        op_code[12]), .C(n320), .ZN(n313) );
  AOI31D0BWPHVT U416 ( .A1(op_code[14]), .A2(n314), .A3(n313), .B(op_code[13]), 
        .ZN(n325) );
  CKND0BWPHVT U417 ( .I(op_code[14]), .ZN(n316) );
  CKND2D0BWPHVT U418 ( .A1(op_code[12]), .A2(n317), .ZN(n315) );
  OAI211D0BWPHVT U419 ( .A1(op_code[12]), .A2(n317), .B(n316), .C(n315), .ZN(
        n323) );
  OAI221D0BWPHVT U420 ( .A1(op_code[12]), .A2(res_lut), .B1(n318), .B2(
        comp_res_p), .C(op_code[14]), .ZN(n322) );
  MUX2ND0BWPHVT U421 ( .I0(\carry_out[1] ), .I1(V), .S(op_code[14]), .ZN(n319)
         );
  CKXOR2D0BWPHVT U422 ( .A1(op_code[12]), .A2(n319), .Z(n321) );
  AO32D0BWPHVT U423 ( .A1(n323), .A2(op_code[15]), .A3(n322), .B1(n321), .B2(
        n320), .Z(n324) );
  AOI22D0BWPHVT U424 ( .A1(n326), .A2(n325), .B1(n324), .B2(op_code[13]), .ZN(
        res_p) );
  INR2D0BWPHVT U425 ( .A1(inp_code[4]), .B1(n327), .ZN(read_data[20]) );
  CKND2D0BWPHVT U426 ( .A1(n329), .A2(n328), .ZN(n330) );
  NR4D0BWPHVT U427 ( .A1(n333), .A2(n332), .A3(n331), .A4(n330), .ZN(_6_net_)
         );
  test_opt_reg_DataWidth16_2 test_opt_reg_a ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_0_net_), .val(cfg_d[15:0]), .mode(inp_code[1:0]), 
        .data_in(data0), .res(op_a), .reg_data(op_a_reg) );
  test_opt_reg_file_DataWidth16_0 test_opt_reg_file ( .clk(clk), .clk_en(
        clk_en), .rst_n(rst_n), .load(op_b_ld), .val(op_b_val), .mode(
        inp_code[4:2]), .data_in(data1), .res(op_b), .reg_data(op_b_reg) );
  test_opt_reg_DataWidth16_3 test_opt_reg_c ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_1_net_), .val(cfg_d[15:0]), .mode(inp_code[6:5]), 
        .data_in(data2), .res(op_c), .reg_data(op_c_reg) );
  test_opt_reg_DataWidth1_3 test_opt_reg_d ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_2_net_), .val(cfg_d[0]), .mode(inp_code[9:8]), 
        .data_in(bit0), .res(op_d_p), .reg_data(op_d_p_reg) );
  test_opt_reg_DataWidth1_4 test_opt_reg_e ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_3_net_), .val(cfg_d[0]), .mode(inp_code[11:10]), 
        .data_in(bit1), .res(op_e_p), .reg_data(op_e_p_reg) );
  test_opt_reg_DataWidth1_5 test_opt_reg_f ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_4_net_), .val(cfg_d[0]), .mode(inp_code[13:12]), 
        .data_in(bit2), .res(op_f_p), .reg_data(op_f_p_reg) );
  test_pe_comp_unq1_0 test_pe_comp ( .op_code({1'b0, op_code[6:0]}), .op_a(
        op_a), .op_b(op_b), .op_c(op_c), .op_d_p(op_d_p), .carry_out({
        \carry_out[1] , SYNOPSYS_UNCONNECTED__0}), .cntr_en(cntr_en), .res(
        comp_res), .ovfl(V), .res_p(comp_res_p) );
  test_lut_DataWidth1_0 test_lut ( .cfg_clk(clk), .cfg_rst_n(rst_n), .cfg_d({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        cfg_d[7:0]}), .cfg_a(cfg_a), .cfg_en(cfg_en), .op_a_in(op_d_p), 
        .op_b_in(op_e_p), .op_c_in(op_f_p), .read_data({
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, read_data_lut[7:0]}), .res(res_lut) );
  test_debug_reg_DataWidth16_0 test_debug_data ( .cfg_clk(clk), .cfg_rst_n(
        rst_n), .cfg_d(cfg_d[15:0]), .cfg_en(_5_net_), .data_in(res), 
        .debug_irq(irq_data), .read_data({SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, read_data_debug_data[15:0]}) );
  test_debug_reg_DataWidth1_0 test_debug_bit ( .cfg_clk(clk), .cfg_rst_n(rst_n), .cfg_d(cfg_d[0]), .cfg_en(_6_net_), .data_in(res_p), .debug_irq(irq_bit), 
        .read_data({SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, \read_data_debug_bit[0] }) );
  SNPS_CLOCK_GATE_HIGH_test_pe_0 clk_gate_op_code_reg ( .CLK(clk), .EN(N31), 
        .ENCLK(net790), .TE(1'b0) );
endmodule

