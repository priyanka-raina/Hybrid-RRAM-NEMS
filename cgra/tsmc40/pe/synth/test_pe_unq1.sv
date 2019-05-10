/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-5
// Date      : Fri May 10 12:24:26 2019
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_opt_reg_DataWidth16_0 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [15:0] val;
  input [1:0] mode;
  input [15:0] data_in;
  output [15:0] res;
  output [15:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   data_in_le, net797, n1, n2;
  wire   [15:0] data_in_reg_next;

  SDFCNQD0BWPHVT \data_in_reg_reg[3]  ( .D(data_in_reg_next[3]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[3]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[15]  ( .D(data_in_reg_next[15]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[15]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[14]  ( .D(data_in_reg_next[14]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[14]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[13]  ( .D(data_in_reg_next[13]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[13]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[12]  ( .D(data_in_reg_next[12]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[12]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[11]  ( .D(data_in_reg_next[11]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[11]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[10]  ( .D(data_in_reg_next[10]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[10]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[9]  ( .D(data_in_reg_next[9]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[9]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[8]  ( .D(data_in_reg_next[8]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[8]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[7]  ( .D(data_in_reg_next[7]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[7]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[6]  ( .D(data_in_reg_next[6]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[6]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[5]  ( .D(data_in_reg_next[5]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[5]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[4]  ( .D(data_in_reg_next[4]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[4]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[2]  ( .D(data_in_reg_next[2]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[2]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[1]  ( .D(data_in_reg_next[1]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[1]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0]  ( .D(data_in_reg_next[0]), .SI(1'b0), 
        .SE(1'b0), .CP(net797), .CDN(rst_n), .Q(reg_data[0]) );
  INR2XD1BWPHVT U2 ( .A1(mode[1]), .B1(mode[0]), .ZN(n1) );
  MUX2D0BWPHVT U3 ( .I0(reg_data[13]), .I1(data_in[13]), .S(n1), .Z(res[13])
         );
  MUX2D0BWPHVT U4 ( .I0(reg_data[3]), .I1(data_in[3]), .S(n1), .Z(res[3]) );
  MUX2D0BWPHVT U5 ( .I0(reg_data[15]), .I1(data_in[15]), .S(n1), .Z(res[15])
         );
  MUX2D0BWPHVT U6 ( .I0(reg_data[9]), .I1(data_in[9]), .S(n1), .Z(res[9]) );
  MUX2D0BWPHVT U7 ( .I0(reg_data[10]), .I1(data_in[10]), .S(n1), .Z(res[10])
         );
  MUX2D0BWPHVT U8 ( .I0(reg_data[12]), .I1(data_in[12]), .S(n1), .Z(res[12])
         );
  MUX2D0BWPHVT U9 ( .I0(reg_data[11]), .I1(data_in[11]), .S(n1), .Z(res[11])
         );
  MUX2D0BWPHVT U10 ( .I0(reg_data[14]), .I1(data_in[14]), .S(n1), .Z(res[14])
         );
  MUX2D0BWPHVT U11 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  MUX2D0BWPHVT U12 ( .I0(reg_data[1]), .I1(data_in[1]), .S(n1), .Z(res[1]) );
  MUX2D0BWPHVT U13 ( .I0(reg_data[2]), .I1(data_in[2]), .S(n1), .Z(res[2]) );
  MUX2D0BWPHVT U14 ( .I0(reg_data[4]), .I1(data_in[4]), .S(n1), .Z(res[4]) );
  MUX2D0BWPHVT U15 ( .I0(reg_data[7]), .I1(data_in[7]), .S(n1), .Z(res[7]) );
  MUX2D0BWPHVT U16 ( .I0(reg_data[6]), .I1(data_in[6]), .S(n1), .Z(res[6]) );
  MUX2D0BWPHVT U17 ( .I0(reg_data[5]), .I1(data_in[5]), .S(n1), .Z(res[5]) );
  MUX2D0BWPHVT U18 ( .I0(reg_data[8]), .I1(data_in[8]), .S(n1), .Z(res[8]) );
  OAI21D0BWPHVT U19 ( .A1(mode[1]), .A2(clk_en), .B(mode[0]), .ZN(n2) );
  IND2D0BWPHVT U20 ( .A1(load), .B1(n2), .ZN(data_in_le) );
  MUX2D0BWPHVT U21 ( .I0(data_in[15]), .I1(val[15]), .S(load), .Z(
        data_in_reg_next[15]) );
  MUX2D0BWPHVT U22 ( .I0(data_in[14]), .I1(val[14]), .S(load), .Z(
        data_in_reg_next[14]) );
  MUX2D0BWPHVT U23 ( .I0(data_in[13]), .I1(val[13]), .S(load), .Z(
        data_in_reg_next[13]) );
  MUX2D0BWPHVT U24 ( .I0(data_in[8]), .I1(val[8]), .S(load), .Z(
        data_in_reg_next[8]) );
  MUX2D0BWPHVT U25 ( .I0(data_in[7]), .I1(val[7]), .S(load), .Z(
        data_in_reg_next[7]) );
  MUX2D0BWPHVT U26 ( .I0(data_in[6]), .I1(val[6]), .S(load), .Z(
        data_in_reg_next[6]) );
  MUX2D0BWPHVT U27 ( .I0(data_in[5]), .I1(val[5]), .S(load), .Z(
        data_in_reg_next[5]) );
  MUX2D0BWPHVT U28 ( .I0(data_in[4]), .I1(val[4]), .S(load), .Z(
        data_in_reg_next[4]) );
  MUX2D0BWPHVT U29 ( .I0(data_in[3]), .I1(val[3]), .S(load), .Z(
        data_in_reg_next[3]) );
  MUX2D0BWPHVT U30 ( .I0(data_in[12]), .I1(val[12]), .S(load), .Z(
        data_in_reg_next[12]) );
  MUX2D0BWPHVT U31 ( .I0(data_in[11]), .I1(val[11]), .S(load), .Z(
        data_in_reg_next[11]) );
  MUX2D0BWPHVT U32 ( .I0(data_in[10]), .I1(val[10]), .S(load), .Z(
        data_in_reg_next[10]) );
  MUX2D0BWPHVT U33 ( .I0(data_in[9]), .I1(val[9]), .S(load), .Z(
        data_in_reg_next[9]) );
  MUX2D0BWPHVT U34 ( .I0(data_in[2]), .I1(val[2]), .S(load), .Z(
        data_in_reg_next[2]) );
  MUX2D0BWPHVT U35 ( .I0(data_in[1]), .I1(val[1]), .S(load), .Z(
        data_in_reg_next[1]) );
  MUX2D0BWPHVT U36 ( .I0(data_in[0]), .I1(val[0]), .S(load), .Z(
        data_in_reg_next[0]) );
  SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0 clk_gate_data_in_reg_reg ( 
        .CLK(clk), .EN(data_in_le), .ENCLK(net797), .TE(1'b0) );
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
  wire   data_in_le, net779, n1, n2, n3;
  wire   [15:0] data_in_reg_next;

  SDFCNQD0BWPHVT \data_in_reg_reg[0][4]  ( .D(data_in_reg_next[4]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[4]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][15]  ( .D(data_in_reg_next[15]), .SI(1'b0), .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[15]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][14]  ( .D(data_in_reg_next[14]), .SI(1'b0), .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[14]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][13]  ( .D(data_in_reg_next[13]), .SI(1'b0), .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[13]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][12]  ( .D(data_in_reg_next[12]), .SI(1'b0), .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[12]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][11]  ( .D(data_in_reg_next[11]), .SI(1'b0), .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[11]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][10]  ( .D(data_in_reg_next[10]), .SI(1'b0), .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[10]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][9]  ( .D(data_in_reg_next[9]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[9]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][8]  ( .D(data_in_reg_next[8]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[8]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][7]  ( .D(data_in_reg_next[7]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[7]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][6]  ( .D(data_in_reg_next[6]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[6]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][5]  ( .D(data_in_reg_next[5]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[5]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][3]  ( .D(data_in_reg_next[3]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[3]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][2]  ( .D(data_in_reg_next[2]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[2]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][1]  ( .D(data_in_reg_next[1]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[1]) );
  SDFCNQD0BWPHVT \data_in_reg_reg[0][0]  ( .D(data_in_reg_next[0]), .SI(1'b0), 
        .SE(1'b0), .CP(net779), .CDN(rst_n), .Q(reg_data[0]) );
  MUX2D0BWPHVT U2 ( .I0(reg_data[4]), .I1(data_in[4]), .S(n1), .Z(res[4]) );
  INR3D1BWPHVT U3 ( .A1(mode[1]), .B1(mode[0]), .B2(mode[2]), .ZN(n1) );
  MUX2D0BWPHVT U4 ( .I0(reg_data[15]), .I1(data_in[15]), .S(n1), .Z(res[15])
         );
  MUX2D0BWPHVT U5 ( .I0(reg_data[14]), .I1(data_in[14]), .S(n1), .Z(res[14])
         );
  MUX2D0BWPHVT U6 ( .I0(reg_data[13]), .I1(data_in[13]), .S(n1), .Z(res[13])
         );
  MUX2D0BWPHVT U7 ( .I0(reg_data[12]), .I1(data_in[12]), .S(n1), .Z(res[12])
         );
  MUX2D0BWPHVT U8 ( .I0(reg_data[11]), .I1(data_in[11]), .S(n1), .Z(res[11])
         );
  MUX2D0BWPHVT U9 ( .I0(reg_data[10]), .I1(data_in[10]), .S(n1), .Z(res[10])
         );
  MUX2D0BWPHVT U10 ( .I0(reg_data[9]), .I1(data_in[9]), .S(n1), .Z(res[9]) );
  MUX2D0BWPHVT U11 ( .I0(reg_data[8]), .I1(data_in[8]), .S(n1), .Z(res[8]) );
  MUX2D0BWPHVT U12 ( .I0(reg_data[7]), .I1(data_in[7]), .S(n1), .Z(res[7]) );
  MUX2D0BWPHVT U13 ( .I0(reg_data[6]), .I1(data_in[6]), .S(n1), .Z(res[6]) );
  MUX2D0BWPHVT U14 ( .I0(reg_data[5]), .I1(data_in[5]), .S(n1), .Z(res[5]) );
  MUX2D0BWPHVT U15 ( .I0(reg_data[3]), .I1(data_in[3]), .S(n1), .Z(res[3]) );
  MUX2D0BWPHVT U16 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  MUX2D0BWPHVT U17 ( .I0(reg_data[2]), .I1(data_in[2]), .S(n1), .Z(res[2]) );
  CKMUX2D1BWPHVT U18 ( .I0(reg_data[1]), .I1(data_in[1]), .S(n1), .Z(res[1])
         );
  OAI21D0BWPHVT U19 ( .A1(mode[1]), .A2(clk_en), .B(mode[0]), .ZN(n3) );
  CKND0BWPHVT U20 ( .I(load), .ZN(n2) );
  OAI21D0BWPHVT U21 ( .A1(mode[2]), .A2(n3), .B(n2), .ZN(data_in_le) );
  MUX2D0BWPHVT U22 ( .I0(data_in[14]), .I1(val[14]), .S(load), .Z(
        data_in_reg_next[14]) );
  MUX2D0BWPHVT U23 ( .I0(data_in[13]), .I1(val[13]), .S(load), .Z(
        data_in_reg_next[13]) );
  MUX2D0BWPHVT U24 ( .I0(data_in[12]), .I1(val[12]), .S(load), .Z(
        data_in_reg_next[12]) );
  MUX2D0BWPHVT U25 ( .I0(data_in[11]), .I1(val[11]), .S(load), .Z(
        data_in_reg_next[11]) );
  MUX2D0BWPHVT U26 ( .I0(data_in[10]), .I1(val[10]), .S(load), .Z(
        data_in_reg_next[10]) );
  MUX2D0BWPHVT U27 ( .I0(data_in[9]), .I1(val[9]), .S(load), .Z(
        data_in_reg_next[9]) );
  MUX2D0BWPHVT U28 ( .I0(data_in[8]), .I1(val[8]), .S(load), .Z(
        data_in_reg_next[8]) );
  MUX2D0BWPHVT U29 ( .I0(data_in[7]), .I1(val[7]), .S(load), .Z(
        data_in_reg_next[7]) );
  MUX2D0BWPHVT U30 ( .I0(data_in[6]), .I1(val[6]), .S(load), .Z(
        data_in_reg_next[6]) );
  MUX2D0BWPHVT U31 ( .I0(data_in[5]), .I1(val[5]), .S(load), .Z(
        data_in_reg_next[5]) );
  MUX2D0BWPHVT U32 ( .I0(data_in[4]), .I1(val[4]), .S(load), .Z(
        data_in_reg_next[4]) );
  MUX2D0BWPHVT U33 ( .I0(data_in[3]), .I1(val[3]), .S(load), .Z(
        data_in_reg_next[3]) );
  MUX2D0BWPHVT U34 ( .I0(data_in[2]), .I1(val[2]), .S(load), .Z(
        data_in_reg_next[2]) );
  MUX2D0BWPHVT U35 ( .I0(data_in[1]), .I1(val[1]), .S(load), .Z(
        data_in_reg_next[1]) );
  MUX2D0BWPHVT U36 ( .I0(data_in[0]), .I1(val[0]), .S(load), .Z(
        data_in_reg_next[0]) );
  MUX2D0BWPHVT U37 ( .I0(data_in[15]), .I1(val[15]), .S(load), .Z(
        data_in_reg_next[15]) );
  SNPS_CLOCK_GATE_HIGH_test_opt_reg_file_DataWidth16_0 \clk_gate_data_in_reg_reg[0]  ( 
        .CLK(clk), .EN(data_in_le), .ENCLK(net779), .TE(1'b0) );
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
  INR2D0BWPHVT U2 ( .A1(mode[1]), .B1(mode[0]), .ZN(n1) );
  MUX2D0BWPHVT U3 ( .I0(reg_data[0]), .I1(data_in[0]), .S(n1), .Z(res[0]) );
  MUX2ND0BWPHVT U4 ( .I0(data_in[0]), .I1(val[0]), .S(load), .ZN(n4) );
  CKND0BWPHVT U5 ( .I(reg_data[0]), .ZN(n3) );
  OAI32D0BWPHVT U6 ( .A1(load), .A2(clk_en), .A3(mode[1]), .B1(mode[0]), .B2(
        load), .ZN(n2) );
  MUX2ND0BWPHVT U7 ( .I0(n4), .I1(n3), .S(n2), .ZN(n5) );
endmodule


module test_full_add_DataWidth16_0 ( a, b, c_in, res, c_out );
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

  CKND0BWPHVT U1 ( .I(diff_msb), .ZN(n5) );
  CKND0BWPHVT U2 ( .I(a_msb), .ZN(n1) );
  CKND2D0BWPHVT U3 ( .A1(n1), .A2(b_msb), .ZN(n2) );
  CKND0BWPHVT U4 ( .I(n2), .ZN(n8) );
  NR2D0BWPHVT U5 ( .A1(b_msb), .A2(n1), .ZN(n7) );
  NR2D0BWPHVT U6 ( .A1(is_signed), .A2(n2), .ZN(n3) );
  AOI211D0BWPHVT U7 ( .A1(is_signed), .A2(n7), .B(n3), .C(eq), .ZN(n4) );
  OAI31D0BWPHVT U8 ( .A1(n8), .A2(n7), .A3(n5), .B(n4), .ZN(lte) );
  MUX2ND0BWPHVT U9 ( .I0(n7), .I1(n8), .S(is_signed), .ZN(n6) );
  OAI31D0BWPHVT U10 ( .A1(diff_msb), .A2(n8), .A3(n7), .B(n6), .ZN(gte) );
endmodule


module test_mult_add_DataWidth16_0 ( is_signed, a, b, res, c_out );
  input [15:0] a;
  input [15:0] b;
  output [31:0] res;
  input is_signed;
  output c_out;
  wire   \mult_x_1/n400 , \mult_x_1/n399 , \mult_x_1/n398 , \mult_x_1/n397 ,
         \mult_x_1/n396 , \mult_x_1/n395 , \mult_x_1/n394 , \mult_x_1/n393 ,
         \mult_x_1/n392 , \mult_x_1/n391 , \mult_x_1/n389 , \mult_x_1/n388 ,
         \mult_x_1/n384 , \mult_x_1/n383 , \mult_x_1/n382 , \mult_x_1/n381 ,
         \mult_x_1/n380 , \mult_x_1/n379 , \mult_x_1/n378 , \mult_x_1/n377 ,
         \mult_x_1/n376 , \mult_x_1/n375 , \mult_x_1/n374 , \mult_x_1/n373 ,
         \mult_x_1/n372 , \mult_x_1/n371 , \mult_x_1/n370 , \mult_x_1/n362 ,
         \mult_x_1/n361 , \mult_x_1/n360 , \mult_x_1/n359 , \mult_x_1/n358 ,
         \mult_x_1/n357 , \mult_x_1/n356 , \mult_x_1/n355 , \mult_x_1/n354 ,
         \mult_x_1/n353 , \mult_x_1/n352 , \mult_x_1/n351 , \mult_x_1/n350 ,
         \mult_x_1/n346 , \mult_x_1/n345 , \mult_x_1/n344 , \mult_x_1/n343 ,
         \mult_x_1/n342 , \mult_x_1/n341 , \mult_x_1/n340 , \mult_x_1/n338 ,
         \mult_x_1/n337 , \mult_x_1/n336 , \mult_x_1/n335 , \mult_x_1/n334 ,
         \mult_x_1/n326 , \mult_x_1/n325 , \mult_x_1/n324 , \mult_x_1/n320 ,
         \mult_x_1/n319 , \mult_x_1/n318 , \mult_x_1/n254 , \mult_x_1/n252 ,
         \mult_x_1/n251 , \mult_x_1/n249 , \mult_x_1/n248 , \mult_x_1/n247 ,
         \mult_x_1/n246 , \mult_x_1/n244 , \mult_x_1/n243 , \mult_x_1/n242 ,
         \mult_x_1/n241 , \mult_x_1/n239 , \mult_x_1/n238 , \mult_x_1/n237 ,
         \mult_x_1/n234 , \mult_x_1/n232 , \mult_x_1/n231 , \mult_x_1/n230 ,
         \mult_x_1/n227 , \mult_x_1/n225 , \mult_x_1/n224 , \mult_x_1/n223 ,
         \mult_x_1/n221 , \mult_x_1/n220 , \mult_x_1/n219 , \mult_x_1/n218 ,
         \mult_x_1/n217 , \mult_x_1/n216 , \mult_x_1/n215 , \mult_x_1/n213 ,
         \mult_x_1/n212 , \mult_x_1/n211 , \mult_x_1/n210 , \mult_x_1/n209 ,
         \mult_x_1/n208 , \mult_x_1/n207 , \mult_x_1/n205 , \mult_x_1/n204 ,
         \mult_x_1/n203 , \mult_x_1/n202 , \mult_x_1/n201 , \mult_x_1/n200 ,
         \mult_x_1/n199 , \mult_x_1/n198 , \mult_x_1/n197 , \mult_x_1/n196 ,
         \mult_x_1/n195 , \mult_x_1/n194 , \mult_x_1/n193 , \mult_x_1/n192 ,
         \mult_x_1/n191 , \mult_x_1/n190 , \mult_x_1/n189 , \mult_x_1/n188 ,
         \mult_x_1/n187 , \mult_x_1/n186 , \mult_x_1/n185 , \mult_x_1/n184 ,
         \mult_x_1/n183 , \mult_x_1/n182 , \mult_x_1/n181 , \mult_x_1/n180 ,
         \mult_x_1/n179 , \mult_x_1/n178 , \mult_x_1/n176 , \mult_x_1/n175 ,
         \mult_x_1/n174 , \mult_x_1/n173 , \mult_x_1/n172 , \mult_x_1/n171 ,
         \mult_x_1/n170 , \mult_x_1/n169 , \mult_x_1/n168 , \mult_x_1/n167 ,
         \mult_x_1/n166 , \mult_x_1/n165 , \mult_x_1/n163 , \mult_x_1/n161 ,
         \mult_x_1/n160 , \mult_x_1/n159 , \mult_x_1/n157 , \mult_x_1/n156 ,
         \mult_x_1/n155 , \mult_x_1/n154 , \mult_x_1/n153 , \mult_x_1/n152 ,
         \mult_x_1/n151 , \mult_x_1/n150 , \mult_x_1/n149 , \mult_x_1/n148 ,
         \mult_x_1/n147 , \mult_x_1/n146 , \mult_x_1/n145 , \mult_x_1/n144 ,
         \mult_x_1/n142 , \mult_x_1/n141 , \mult_x_1/n140 , \mult_x_1/n139 ,
         \mult_x_1/n138 , \mult_x_1/n137 , \mult_x_1/n132 , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
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
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575;

  CKND0BWPHVT U2 ( .I(b[1]), .ZN(n512) );
  CKND0BWPHVT U3 ( .I(n569), .ZN(n527) );
  CKND0BWPHVT U4 ( .I(n407), .ZN(n447) );
  CKND0BWPHVT U5 ( .I(n513), .ZN(n451) );
  CKND0BWPHVT U6 ( .I(n3), .ZN(n6) );
  CKND0BWPHVT U7 ( .I(b[13]), .ZN(n467) );
  CKND0BWPHVT U8 ( .I(n63), .ZN(\mult_x_1/n252 ) );
  CKND0BWPHVT U9 ( .I(n90), .ZN(\mult_x_1/n220 ) );
  CKND0BWPHVT U10 ( .I(\mult_x_1/n150 ), .ZN(n215) );
  CKND0BWPHVT U11 ( .I(\mult_x_1/n249 ), .ZN(n220) );
  CKND0BWPHVT U12 ( .I(\mult_x_1/n187 ), .ZN(n236) );
  CKND0BWPHVT U13 ( .I(n300), .ZN(res[14]) );
  CKND0BWPHVT U14 ( .I(a[14]), .ZN(n402) );
  MOAI22D0BWPHVT U15 ( .A1(n402), .A2(a[15]), .B1(a[15]), .B2(n402), .ZN(n315)
         );
  CKND0BWPHVT U16 ( .I(n315), .ZN(n1) );
  CKND0BWPHVT U17 ( .I(n1), .ZN(n331) );
  CKND0BWPHVT U18 ( .I(b[0]), .ZN(n322) );
  INR2D0BWPHVT U19 ( .A1(n331), .B1(n322), .ZN(\mult_x_1/n215 ) );
  MUX2ND0BWPHVT U20 ( .I0(n402), .I1(a[14]), .S(a[13]), .ZN(n7) );
  CKND0BWPHVT U21 ( .I(a[11]), .ZN(n449) );
  MUX2ND0BWPHVT U22 ( .I0(a[11]), .I1(n449), .S(a[12]), .ZN(n3) );
  NR2D0BWPHVT U23 ( .A1(n7), .A2(n3), .ZN(n396) );
  CKND0BWPHVT U24 ( .I(a[12]), .ZN(n2) );
  MUX2ND0BWPHVT U25 ( .I0(n2), .I1(a[12]), .S(a[13]), .ZN(n5) );
  CKND2D0BWPHVT U26 ( .A1(n3), .A2(n5), .ZN(n4) );
  CKND0BWPHVT U27 ( .I(n4), .ZN(n397) );
  AOI22D0BWPHVT U28 ( .A1(b[1]), .A2(b[0]), .B1(n322), .B2(n512), .ZN(n102) );
  CKND0BWPHVT U29 ( .I(n7), .ZN(n292) );
  NR2D0BWPHVT U30 ( .A1(n3), .A2(n292), .ZN(n395) );
  AOI222D0BWPHVT U31 ( .A1(b[1]), .A2(n396), .B1(b[0]), .B2(n397), .C1(n102), 
        .C2(n395), .ZN(n29) );
  CKND2D0BWPHVT U32 ( .A1(b[0]), .A2(n6), .ZN(n335) );
  ND3D0BWPHVT U33 ( .A1(a[14]), .A2(n29), .A3(n335), .ZN(n11) );
  NR2D0BWPHVT U34 ( .A1(n512), .A2(n4), .ZN(n10) );
  NR2D0BWPHVT U35 ( .A1(n6), .A2(n5), .ZN(n293) );
  CKND2D0BWPHVT U36 ( .A1(n7), .A2(n293), .ZN(n400) );
  CKND0BWPHVT U37 ( .I(b[2]), .ZN(n514) );
  NR2D0BWPHVT U38 ( .A1(b[0]), .A2(n512), .ZN(n8) );
  MUX2ND0BWPHVT U39 ( .I0(b[2]), .I1(n514), .S(n8), .ZN(n105) );
  CKND0BWPHVT U40 ( .I(n395), .ZN(n267) );
  OAI22D0BWPHVT U41 ( .A1(n322), .A2(n400), .B1(n105), .B2(n267), .ZN(n9) );
  AOI211D0BWPHVT U42 ( .A1(n396), .A2(b[2]), .B(n10), .C(n9), .ZN(n13) );
  CKND2D0BWPHVT U43 ( .A1(a[14]), .A2(n13), .ZN(n12) );
  NR2D0BWPHVT U44 ( .A1(n11), .A2(n12), .ZN(\mult_x_1/n221 ) );
  CKND0BWPHVT U45 ( .I(a[8]), .ZN(n520) );
  MUX2ND0BWPHVT U46 ( .I0(a[8]), .I1(n520), .S(a[9]), .ZN(n18) );
  NR2D0BWPHVT U47 ( .A1(n322), .A2(n18), .ZN(\mult_x_1/n251 ) );
  OAI211D0BWPHVT U48 ( .A1(a[14]), .A2(n13), .B(n12), .C(n11), .ZN(n14) );
  IND2D0BWPHVT U49 ( .A1(\mult_x_1/n221 ), .B1(n14), .ZN(n89) );
  MUX2ND0BWPHVT U50 ( .I0(n449), .I1(a[11]), .S(a[10]), .ZN(n404) );
  NR2D0BWPHVT U51 ( .A1(n404), .A2(n18), .ZN(n410) );
  CKND0BWPHVT U52 ( .I(n18), .ZN(n16) );
  CKND2D0BWPHVT U53 ( .A1(n16), .A2(n404), .ZN(n407) );
  AOI21D0BWPHVT U54 ( .A1(n514), .A2(n322), .B(n512), .ZN(n24) );
  AOI22D0BWPHVT U55 ( .A1(n410), .A2(b[4]), .B1(n447), .B2(n507), .ZN(n20) );
  CKND0BWPHVT U56 ( .I(a[9]), .ZN(n15) );
  MUX2ND0BWPHVT U57 ( .I0(a[9]), .I1(n15), .S(a[10]), .ZN(n17) );
  NR2D0BWPHVT U58 ( .A1(n16), .A2(n17), .ZN(n411) );
  CKND2D0BWPHVT U59 ( .A1(n18), .A2(n17), .ZN(n403) );
  INR2D0BWPHVT U60 ( .A1(n404), .B1(n403), .ZN(n406) );
  AOI22D0BWPHVT U61 ( .A1(b[3]), .A2(n411), .B1(b[2]), .B2(n406), .ZN(n19) );
  CKND2D0BWPHVT U62 ( .A1(n20), .A2(n19), .ZN(n21) );
  MUX2ND0BWPHVT U63 ( .I0(a[11]), .I1(n449), .S(n21), .ZN(n85) );
  AOI22D0BWPHVT U64 ( .A1(b[1]), .A2(n411), .B1(b[0]), .B2(n406), .ZN(n23) );
  CKND2D0BWPHVT U65 ( .A1(b[2]), .A2(n410), .ZN(n22) );
  OAI211D0BWPHVT U66 ( .A1(n105), .A2(n407), .B(n23), .C(n22), .ZN(n318) );
  NR2D0BWPHVT U67 ( .A1(n449), .A2(n318), .ZN(n316) );
  AOI222D0BWPHVT U68 ( .A1(n447), .A2(n102), .B1(n410), .B2(b[1]), .C1(n411), 
        .C2(b[0]), .ZN(n360) );
  CKND0BWPHVT U69 ( .I(n360), .ZN(n361) );
  NR3D0BWPHVT U70 ( .A1(\mult_x_1/n251 ), .A2(n449), .A3(n361), .ZN(n317) );
  CKND2D0BWPHVT U71 ( .A1(n316), .A2(n317), .ZN(n334) );
  FA1D0BWPHVT U72 ( .A(b[2]), .B(b[3]), .CI(n24), .CO(n30), .S(n517) );
  AOI22D0BWPHVT U73 ( .A1(b[1]), .A2(n406), .B1(n517), .B2(n447), .ZN(n26) );
  AOI22D0BWPHVT U74 ( .A1(b[3]), .A2(n410), .B1(b[2]), .B2(n411), .ZN(n25) );
  CKND2D0BWPHVT U75 ( .A1(n26), .A2(n25), .ZN(n27) );
  MUX2ND0BWPHVT U76 ( .I0(n449), .I1(a[11]), .S(n27), .ZN(n333) );
  IOA21D0BWPHVT U77 ( .A1(n334), .A2(n335), .B(n333), .ZN(n84) );
  OAI21D0BWPHVT U78 ( .A1(n335), .A2(n402), .B(n29), .ZN(n28) );
  OAI31D0BWPHVT U79 ( .A1(n335), .A2(n29), .A3(n402), .B(n28), .ZN(n83) );
  FA1D0BWPHVT U80 ( .A(b[3]), .B(b[4]), .CI(n30), .CO(n68), .S(n507) );
  AOI22D0BWPHVT U81 ( .A1(n411), .A2(b[4]), .B1(n447), .B2(n502), .ZN(n32) );
  AOI22D0BWPHVT U82 ( .A1(b[3]), .A2(n406), .B1(n410), .B2(b[5]), .ZN(n31) );
  CKND2D0BWPHVT U83 ( .A1(n32), .A2(n31), .ZN(n33) );
  MUX2ND0BWPHVT U84 ( .I0(a[11]), .I1(n449), .S(n33), .ZN(n87) );
  CKND0BWPHVT U85 ( .I(n34), .ZN(\mult_x_1/n219 ) );
  CKND0BWPHVT U86 ( .I(a[5]), .ZN(n575) );
  MUX2ND0BWPHVT U87 ( .I0(n575), .I1(a[5]), .S(a[6]), .ZN(n41) );
  CKND0BWPHVT U88 ( .I(a[6]), .ZN(n35) );
  MUX2ND0BWPHVT U89 ( .I0(n35), .I1(a[6]), .S(a[7]), .ZN(n36) );
  IND2D0BWPHVT U90 ( .A1(n41), .B1(n36), .ZN(n513) );
  MUX2ND0BWPHVT U91 ( .I0(a[8]), .I1(n520), .S(a[7]), .ZN(n74) );
  CKND2D0BWPHVT U92 ( .A1(n41), .A2(n74), .ZN(n509) );
  NR2D0BWPHVT U93 ( .A1(n514), .A2(n509), .ZN(n39) );
  CKND0BWPHVT U94 ( .I(n74), .ZN(n37) );
  NR2D0BWPHVT U95 ( .A1(n41), .A2(n36), .ZN(n75) );
  CKND2D0BWPHVT U96 ( .A1(n37), .A2(n75), .ZN(n511) );
  CKND2D0BWPHVT U97 ( .A1(n41), .A2(n37), .ZN(n450) );
  OAI22D0BWPHVT U98 ( .A1(n322), .A2(n511), .B1(n105), .B2(n450), .ZN(n38) );
  AOI211D0BWPHVT U99 ( .A1(b[1]), .A2(n451), .B(n39), .C(n38), .ZN(n40) );
  MUX2ND0BWPHVT U100 ( .I0(n520), .I1(a[8]), .S(n40), .ZN(n43) );
  CKND2D0BWPHVT U101 ( .A1(n41), .A2(b[0]), .ZN(n121) );
  CKND0BWPHVT U102 ( .I(n450), .ZN(n518) );
  CKND0BWPHVT U103 ( .I(n509), .ZN(n452) );
  AO222D0BWPHVT U104 ( .A1(n518), .A2(n102), .B1(n452), .B2(b[1]), .C1(n451), 
        .C2(b[0]), .Z(n45) );
  NR2D0BWPHVT U105 ( .A1(n520), .A2(n45), .ZN(n42) );
  CKND2D0BWPHVT U106 ( .A1(n121), .A2(n42), .ZN(n44) );
  NR2D0BWPHVT U107 ( .A1(n43), .A2(n44), .ZN(\mult_x_1/n254 ) );
  AO21D0BWPHVT U108 ( .A1(n43), .A2(n44), .B(\mult_x_1/n254 ), .Z(n134) );
  CKND2D0BWPHVT U109 ( .A1(a[8]), .A2(n45), .ZN(n46) );
  OAI221D0BWPHVT U110 ( .A1(n46), .A2(n121), .B1(a[8]), .B2(n45), .C(n44), 
        .ZN(n137) );
  MUX2ND0BWPHVT U111 ( .I0(a[5]), .I1(n575), .S(a[4]), .ZN(n51) );
  CKND0BWPHVT U112 ( .I(n51), .ZN(n522) );
  CKND0BWPHVT U113 ( .I(a[2]), .ZN(n348) );
  MUX2ND0BWPHVT U114 ( .I0(a[2]), .I1(n348), .S(a[3]), .ZN(n50) );
  NR2D0BWPHVT U115 ( .A1(n522), .A2(n50), .ZN(n571) );
  CKND0BWPHVT U116 ( .I(n50), .ZN(n48) );
  CKND0BWPHVT U117 ( .I(a[3]), .ZN(n47) );
  MUX2ND0BWPHVT U118 ( .I0(a[3]), .I1(n47), .S(a[4]), .ZN(n49) );
  NR2D0BWPHVT U119 ( .A1(n48), .A2(n49), .ZN(n570) );
  NR2D0BWPHVT U120 ( .A1(n50), .A2(n51), .ZN(n568) );
  AOI222D0BWPHVT U121 ( .A1(n571), .A2(b[1]), .B1(n570), .B2(b[0]), .C1(n568), 
        .C2(n102), .ZN(n95) );
  CKND2D0BWPHVT U122 ( .A1(n48), .A2(b[0]), .ZN(n106) );
  ND3D0BWPHVT U123 ( .A1(a[5]), .A2(n95), .A3(n106), .ZN(n111) );
  INR2D0BWPHVT U124 ( .A1(n570), .B1(n512), .ZN(n53) );
  CKND2D0BWPHVT U125 ( .A1(n50), .A2(n49), .ZN(n521) );
  NR2D0BWPHVT U126 ( .A1(n51), .A2(n521), .ZN(n569) );
  CKND0BWPHVT U127 ( .I(n568), .ZN(n525) );
  OAI22D0BWPHVT U128 ( .A1(n527), .A2(n322), .B1(n525), .B2(n105), .ZN(n52) );
  AOI211D0BWPHVT U129 ( .A1(b[2]), .A2(n571), .B(n53), .C(n52), .ZN(n113) );
  CKND2D0BWPHVT U130 ( .A1(a[5]), .A2(n113), .ZN(n112) );
  OR2D0BWPHVT U131 ( .A1(n111), .A2(n112), .Z(n122) );
  AOI22D0BWPHVT U132 ( .A1(n569), .A2(b[1]), .B1(n568), .B2(n517), .ZN(n55) );
  AOI22D0BWPHVT U133 ( .A1(n571), .A2(b[3]), .B1(n570), .B2(b[2]), .ZN(n54) );
  CKND2D0BWPHVT U134 ( .A1(n55), .A2(n54), .ZN(n56) );
  MUX2ND0BWPHVT U135 ( .I0(a[5]), .I1(n575), .S(n56), .ZN(n123) );
  AO21D0BWPHVT U136 ( .A1(n121), .A2(n122), .B(n123), .Z(n136) );
  AOI22D0BWPHVT U137 ( .A1(n571), .A2(b[4]), .B1(n568), .B2(n507), .ZN(n58) );
  AOI22D0BWPHVT U138 ( .A1(b[3]), .A2(n570), .B1(b[2]), .B2(n569), .ZN(n57) );
  CKND2D0BWPHVT U139 ( .A1(n58), .A2(n57), .ZN(n59) );
  MUX2ND0BWPHVT U140 ( .I0(a[5]), .I1(n575), .S(n59), .ZN(n135) );
  AOI22D0BWPHVT U141 ( .A1(n570), .A2(b[4]), .B1(n568), .B2(n502), .ZN(n61) );
  AOI22D0BWPHVT U142 ( .A1(n571), .A2(b[5]), .B1(b[3]), .B2(n569), .ZN(n60) );
  CKND2D0BWPHVT U143 ( .A1(n61), .A2(n60), .ZN(n62) );
  MUX2ND0BWPHVT U144 ( .I0(a[5]), .I1(n575), .S(n62), .ZN(n132) );
  CKND2D0BWPHVT U145 ( .A1(b[8]), .A2(n315), .ZN(n65) );
  CKND2D0BWPHVT U146 ( .A1(is_signed), .A2(a[15]), .ZN(n329) );
  CKND0BWPHVT U147 ( .I(b[7]), .ZN(n491) );
  CKND2D0BWPHVT U148 ( .A1(a[14]), .A2(a[15]), .ZN(n321) );
  OAI211D0BWPHVT U149 ( .A1(n491), .A2(n321), .B(n329), .C(n65), .ZN(n64) );
  OAI21D0BWPHVT U150 ( .A1(n65), .A2(n329), .B(n64), .ZN(n78) );
  CKND2D0BWPHVT U151 ( .A1(b[7]), .A2(n315), .ZN(n67) );
  CKND0BWPHVT U152 ( .I(b[6]), .ZN(n495) );
  OAI211D0BWPHVT U153 ( .A1(n495), .A2(n321), .B(n329), .C(n67), .ZN(n66) );
  OAI21D0BWPHVT U154 ( .A1(n67), .A2(n329), .B(n66), .ZN(n92) );
  CKND0BWPHVT U155 ( .I(b[8]), .ZN(n487) );
  FA1D0BWPHVT U156 ( .A(b[4]), .B(b[5]), .CI(n68), .CO(n127), .S(n502) );
  AOI22D0BWPHVT U157 ( .A1(n396), .A2(b[10]), .B1(n395), .B2(n551), .ZN(n70)
         );
  CKND2D0BWPHVT U158 ( .A1(n397), .A2(b[9]), .ZN(n69) );
  OAI211D0BWPHVT U159 ( .A1(n400), .A2(n487), .B(n70), .C(n69), .ZN(n71) );
  MUX2ND0BWPHVT U160 ( .I0(a[14]), .I1(n402), .S(n71), .ZN(n91) );
  CKND0BWPHVT U161 ( .I(n72), .ZN(\mult_x_1/n156 ) );
  CKND0BWPHVT U162 ( .I(n329), .ZN(n332) );
  CKND0BWPHVT U163 ( .I(n321), .ZN(n328) );
  AOI22D0BWPHVT U164 ( .A1(b[8]), .A2(n328), .B1(b[9]), .B2(n331), .ZN(n73) );
  AOI32D0BWPHVT U165 ( .A1(b[9]), .A2(n332), .A3(n331), .B1(n73), .B2(n329), 
        .ZN(n358) );
  CKND2D0BWPHVT U166 ( .A1(is_signed), .A2(b[15]), .ZN(n455) );
  AOI21D0BWPHVT U167 ( .A1(n75), .A2(n74), .B(n455), .ZN(n76) );
  MUX2ND0BWPHVT U168 ( .I0(a[8]), .I1(n520), .S(n76), .ZN(n357) );
  CKND0BWPHVT U169 ( .I(\mult_x_1/n142 ), .ZN(\mult_x_1/n147 ) );
  FA1D0BWPHVT U170 ( .A(\mult_x_1/n157 ), .B(n78), .CI(n77), .CO(n79), .S(n72)
         );
  CKND0BWPHVT U171 ( .I(n79), .ZN(\mult_x_1/n155 ) );
  CKND2D0BWPHVT U172 ( .A1(b[3]), .A2(n315), .ZN(n81) );
  OAI211D0BWPHVT U173 ( .A1(n321), .A2(n514), .B(n81), .C(n329), .ZN(n80) );
  OAI21D0BWPHVT U174 ( .A1(n329), .A2(n81), .B(n80), .ZN(n312) );
  NR2D0BWPHVT U175 ( .A1(a[0]), .A2(a[1]), .ZN(n82) );
  CKND0BWPHVT U176 ( .I(n455), .ZN(n528) );
  OAI32D0BWPHVT U177 ( .A1(a[2]), .A2(n82), .A3(n455), .B1(n528), .B2(n348), 
        .ZN(n313) );
  CKND2D0BWPHVT U178 ( .A1(n312), .A2(n313), .ZN(\mult_x_1/n176 ) );
  CKND0BWPHVT U179 ( .I(\mult_x_1/n176 ), .ZN(\mult_x_1/n184 ) );
  FA1D0BWPHVT U180 ( .A(n85), .B(n84), .CI(n83), .CO(n88), .S(n86) );
  CKND0BWPHVT U181 ( .I(n86), .ZN(\mult_x_1/n227 ) );
  FA1D0BWPHVT U182 ( .A(n89), .B(n88), .CI(n87), .CO(n34), .S(n90) );
  FA1D0BWPHVT U183 ( .A(\mult_x_1/n157 ), .B(n92), .CI(n91), .CO(n77), .S(n93)
         );
  CKND0BWPHVT U184 ( .I(n93), .ZN(\mult_x_1/n163 ) );
  CKND0BWPHVT U185 ( .I(a[0]), .ZN(n96) );
  NR2D0BWPHVT U186 ( .A1(n322), .A2(n96), .ZN(res[0]) );
  OAI21D0BWPHVT U187 ( .A1(n575), .A2(n106), .B(n95), .ZN(n94) );
  OAI31D0BWPHVT U188 ( .A1(n575), .A2(n95), .A3(n106), .B(n94), .ZN(n116) );
  CKND2D0BWPHVT U189 ( .A1(a[1]), .A2(n96), .ZN(n101) );
  NR3D0BWPHVT U190 ( .A1(a[0]), .A2(a[1]), .A3(n348), .ZN(n182) );
  MUX2ND0BWPHVT U191 ( .I0(n348), .I1(a[2]), .S(a[1]), .ZN(n97) );
  CKND2D0BWPHVT U192 ( .A1(a[0]), .A2(n97), .ZN(n186) );
  CKND0BWPHVT U193 ( .I(n186), .ZN(n178) );
  AOI22D0BWPHVT U194 ( .A1(b[1]), .A2(n182), .B1(n517), .B2(n178), .ZN(n99) );
  NR2D0BWPHVT U195 ( .A1(n97), .A2(n96), .ZN(n183) );
  CKND2D0BWPHVT U196 ( .A1(b[3]), .A2(n183), .ZN(n98) );
  OAI211D0BWPHVT U197 ( .A1(n101), .A2(n514), .B(n99), .C(n98), .ZN(n100) );
  MUX2ND0BWPHVT U198 ( .I0(n348), .I1(a[2]), .S(n100), .ZN(n352) );
  CKND0BWPHVT U199 ( .I(n101), .ZN(n184) );
  AOI222D0BWPHVT U200 ( .A1(n178), .A2(n102), .B1(n183), .B2(b[1]), .C1(b[0]), 
        .C2(n184), .ZN(n355) );
  CKND0BWPHVT U201 ( .I(n355), .ZN(n356) );
  NR3D0BWPHVT U202 ( .A1(res[0]), .A2(n348), .A3(n356), .ZN(n345) );
  AOI22D0BWPHVT U203 ( .A1(b[2]), .A2(n183), .B1(b[0]), .B2(n182), .ZN(n104)
         );
  CKND2D0BWPHVT U204 ( .A1(b[1]), .A2(n184), .ZN(n103) );
  OAI211D0BWPHVT U205 ( .A1(n186), .A2(n105), .B(n104), .C(n103), .ZN(n347) );
  NR2D0BWPHVT U206 ( .A1(n348), .A2(n347), .ZN(n346) );
  CKND2D0BWPHVT U207 ( .A1(n345), .A2(n346), .ZN(n350) );
  CKND2D0BWPHVT U208 ( .A1(n106), .A2(n350), .ZN(n353) );
  CKND2D0BWPHVT U209 ( .A1(n352), .A2(n353), .ZN(n351) );
  AOI22D0BWPHVT U210 ( .A1(n183), .A2(b[4]), .B1(n178), .B2(n507), .ZN(n108)
         );
  AOI22D0BWPHVT U211 ( .A1(b[3]), .A2(n184), .B1(b[2]), .B2(n182), .ZN(n107)
         );
  CKND2D0BWPHVT U212 ( .A1(n108), .A2(n107), .ZN(n109) );
  MUX2ND0BWPHVT U213 ( .I0(a[2]), .I1(n348), .S(n109), .ZN(n115) );
  CKND0BWPHVT U214 ( .I(n110), .ZN(res[4]) );
  OAI211D0BWPHVT U215 ( .A1(a[5]), .A2(n113), .B(n112), .C(n111), .ZN(n114) );
  CKND2D0BWPHVT U216 ( .A1(n122), .A2(n114), .ZN(n126) );
  FA1D0BWPHVT U217 ( .A(n116), .B(n351), .CI(n115), .CO(n125), .S(n110) );
  AOI22D0BWPHVT U218 ( .A1(n184), .A2(b[4]), .B1(n178), .B2(n502), .ZN(n118)
         );
  AOI22D0BWPHVT U219 ( .A1(b[3]), .A2(n182), .B1(n183), .B2(b[5]), .ZN(n117)
         );
  CKND2D0BWPHVT U220 ( .A1(n118), .A2(n117), .ZN(n119) );
  MUX2ND0BWPHVT U221 ( .I0(a[2]), .I1(n348), .S(n119), .ZN(n124) );
  CKND0BWPHVT U222 ( .I(n120), .ZN(res[5]) );
  XOR3D0BWPHVT U223 ( .A1(n123), .A2(n122), .A3(n121), .Z(n140) );
  FA1D0BWPHVT U224 ( .A(n126), .B(n125), .CI(n124), .CO(n139), .S(n120) );
  FA1D0BWPHVT U225 ( .A(b[5]), .B(b[6]), .CI(n127), .CO(n141), .S(n567) );
  AOI22D0BWPHVT U226 ( .A1(n182), .A2(b[4]), .B1(n178), .B2(n567), .ZN(n129)
         );
  AOI22D0BWPHVT U227 ( .A1(n184), .A2(b[5]), .B1(n183), .B2(b[6]), .ZN(n128)
         );
  CKND2D0BWPHVT U228 ( .A1(n129), .A2(n128), .ZN(n130) );
  MUX2ND0BWPHVT U229 ( .I0(a[2]), .I1(n348), .S(n130), .ZN(n138) );
  CKND0BWPHVT U230 ( .I(n131), .ZN(res[6]) );
  CKND0BWPHVT U231 ( .I(\mult_x_1/n160 ), .ZN(n204) );
  CKND0BWPHVT U232 ( .I(\mult_x_1/n154 ), .ZN(n203) );
  CKND0BWPHVT U233 ( .I(\mult_x_1/n166 ), .ZN(n303) );
  CKND0BWPHVT U234 ( .I(\mult_x_1/n161 ), .ZN(n302) );
  CKND0BWPHVT U235 ( .I(\mult_x_1/n171 ), .ZN(n284) );
  CKND0BWPHVT U236 ( .I(\mult_x_1/n167 ), .ZN(n283) );
  CKND0BWPHVT U237 ( .I(\mult_x_1/n179 ), .ZN(n265) );
  CKND0BWPHVT U238 ( .I(\mult_x_1/n172 ), .ZN(n264) );
  CKND0BWPHVT U239 ( .I(\mult_x_1/n180 ), .ZN(n248) );
  CKND0BWPHVT U240 ( .I(\mult_x_1/n193 ), .ZN(n235) );
  CKND0BWPHVT U241 ( .I(\mult_x_1/n194 ), .ZN(n224) );
  CKND0BWPHVT U242 ( .I(\mult_x_1/n202 ), .ZN(n212) );
  CKND0BWPHVT U243 ( .I(\mult_x_1/n210 ), .ZN(n200) );
  CKND0BWPHVT U244 ( .I(\mult_x_1/n218 ), .ZN(n299) );
  CKND0BWPHVT U245 ( .I(\mult_x_1/n225 ), .ZN(n280) );
  CKND0BWPHVT U246 ( .I(\mult_x_1/n232 ), .ZN(n261) );
  CKND0BWPHVT U247 ( .I(\mult_x_1/n239 ), .ZN(n244) );
  CKND0BWPHVT U248 ( .I(\mult_x_1/n244 ), .ZN(n232) );
  FA1D0BWPHVT U249 ( .A(n134), .B(n133), .CI(n132), .CO(n63), .S(n208) );
  FA1D0BWPHVT U250 ( .A(n137), .B(n136), .CI(n135), .CO(n133), .S(n196) );
  FA1D0BWPHVT U251 ( .A(n140), .B(n139), .CI(n138), .CO(n195), .S(n131) );
  FA1D0BWPHVT U252 ( .A(b[6]), .B(b[7]), .CI(n141), .CO(n145), .S(n563) );
  AOI22D0BWPHVT U253 ( .A1(n182), .A2(b[5]), .B1(n178), .B2(n563), .ZN(n143)
         );
  AOI22D0BWPHVT U254 ( .A1(n184), .A2(b[6]), .B1(n183), .B2(b[7]), .ZN(n142)
         );
  CKND2D0BWPHVT U255 ( .A1(n143), .A2(n142), .ZN(n144) );
  MUX2ND0BWPHVT U256 ( .I0(a[2]), .I1(n348), .S(n144), .ZN(n194) );
  FA1D0BWPHVT U257 ( .A(b[7]), .B(b[8]), .CI(n145), .CO(n149), .S(n559) );
  AOI22D0BWPHVT U258 ( .A1(n182), .A2(b[6]), .B1(n178), .B2(n559), .ZN(n147)
         );
  AOI22D0BWPHVT U259 ( .A1(n184), .A2(b[7]), .B1(n183), .B2(b[8]), .ZN(n146)
         );
  CKND2D0BWPHVT U260 ( .A1(n147), .A2(n146), .ZN(n148) );
  MUX2ND0BWPHVT U261 ( .I0(a[2]), .I1(n348), .S(n148), .ZN(n206) );
  FA1D0BWPHVT U262 ( .A(b[8]), .B(b[9]), .CI(n149), .CO(n156), .S(n555) );
  AOI22D0BWPHVT U263 ( .A1(n182), .A2(b[7]), .B1(n178), .B2(n555), .ZN(n151)
         );
  AOI22D0BWPHVT U264 ( .A1(n184), .A2(b[8]), .B1(n183), .B2(b[9]), .ZN(n150)
         );
  CKND2D0BWPHVT U265 ( .A1(n151), .A2(n150), .ZN(n152) );
  MUX2ND0BWPHVT U266 ( .I0(a[2]), .I1(n348), .S(n152), .ZN(n218) );
  AOI22D0BWPHVT U267 ( .A1(n182), .A2(b[8]), .B1(n178), .B2(n551), .ZN(n154)
         );
  AOI22D0BWPHVT U268 ( .A1(n184), .A2(b[9]), .B1(n183), .B2(b[10]), .ZN(n153)
         );
  CKND2D0BWPHVT U269 ( .A1(n154), .A2(n153), .ZN(n155) );
  MUX2ND0BWPHVT U270 ( .I0(a[2]), .I1(n348), .S(n155), .ZN(n230) );
  FA1D0BWPHVT U271 ( .A(b[9]), .B(b[10]), .CI(n156), .CO(n160), .S(n551) );
  AOI22D0BWPHVT U272 ( .A1(n182), .A2(b[9]), .B1(n178), .B2(n547), .ZN(n158)
         );
  AOI22D0BWPHVT U273 ( .A1(n184), .A2(b[10]), .B1(n183), .B2(b[11]), .ZN(n157)
         );
  CKND2D0BWPHVT U274 ( .A1(n158), .A2(n157), .ZN(n159) );
  MUX2ND0BWPHVT U275 ( .I0(a[2]), .I1(n348), .S(n159), .ZN(n242) );
  FA1D0BWPHVT U276 ( .A(b[10]), .B(b[11]), .CI(n160), .CO(n164), .S(n547) );
  AOI22D0BWPHVT U277 ( .A1(n182), .A2(b[10]), .B1(n178), .B2(n543), .ZN(n162)
         );
  AOI22D0BWPHVT U278 ( .A1(n184), .A2(b[11]), .B1(n183), .B2(b[12]), .ZN(n161)
         );
  CKND2D0BWPHVT U279 ( .A1(n162), .A2(n161), .ZN(n163) );
  MUX2ND0BWPHVT U280 ( .I0(a[2]), .I1(n348), .S(n163), .ZN(n259) );
  FA1D0BWPHVT U281 ( .A(b[11]), .B(b[12]), .CI(n164), .CO(n168), .S(n543) );
  AOI22D0BWPHVT U282 ( .A1(n182), .A2(b[11]), .B1(n178), .B2(n539), .ZN(n166)
         );
  AOI22D0BWPHVT U283 ( .A1(n184), .A2(b[12]), .B1(n183), .B2(b[13]), .ZN(n165)
         );
  CKND2D0BWPHVT U284 ( .A1(n166), .A2(n165), .ZN(n167) );
  MUX2ND0BWPHVT U285 ( .I0(a[2]), .I1(n348), .S(n167), .ZN(n278) );
  FA1D0BWPHVT U286 ( .A(b[12]), .B(b[13]), .CI(n168), .CO(n172), .S(n539) );
  AOI22D0BWPHVT U287 ( .A1(n182), .A2(b[12]), .B1(n178), .B2(n535), .ZN(n170)
         );
  AOI22D0BWPHVT U288 ( .A1(n184), .A2(b[13]), .B1(n183), .B2(b[14]), .ZN(n169)
         );
  CKND2D0BWPHVT U289 ( .A1(n170), .A2(n169), .ZN(n171) );
  MUX2ND0BWPHVT U290 ( .I0(a[2]), .I1(n348), .S(n171), .ZN(n297) );
  FA1D0BWPHVT U291 ( .A(b[13]), .B(b[14]), .CI(n172), .CO(n176), .S(n535) );
  AOI22D0BWPHVT U292 ( .A1(n182), .A2(b[13]), .B1(n178), .B2(n531), .ZN(n174)
         );
  AOI22D0BWPHVT U293 ( .A1(n184), .A2(b[14]), .B1(n183), .B2(b[15]), .ZN(n173)
         );
  CKND2D0BWPHVT U294 ( .A1(n174), .A2(n173), .ZN(n175) );
  MUX2ND0BWPHVT U295 ( .I0(a[2]), .I1(n348), .S(n175), .ZN(n198) );
  FA1D0BWPHVT U296 ( .A(b[14]), .B(b[15]), .CI(n176), .CO(n185), .S(n531) );
  CKND0BWPHVT U297 ( .I(b[15]), .ZN(n526) );
  OAI21D0BWPHVT U298 ( .A1(is_signed), .A2(n526), .B(n185), .ZN(n177) );
  OAI31D0BWPHVT U299 ( .A1(is_signed), .A2(n185), .A3(n526), .B(n177), .ZN(
        n458) );
  AOI22D0BWPHVT U300 ( .A1(n182), .A2(b[14]), .B1(n178), .B2(n458), .ZN(n180)
         );
  AOI22D0BWPHVT U301 ( .A1(n184), .A2(b[15]), .B1(n183), .B2(n528), .ZN(n179)
         );
  CKND2D0BWPHVT U302 ( .A1(n180), .A2(n179), .ZN(n181) );
  MUX2ND0BWPHVT U303 ( .I0(a[2]), .I1(n348), .S(n181), .ZN(n210) );
  AOI21D0BWPHVT U304 ( .A1(n182), .A2(b[15]), .B(n348), .ZN(n189) );
  NR2D0BWPHVT U305 ( .A1(n184), .A2(n183), .ZN(n187) );
  OAI21D0BWPHVT U306 ( .A1(is_signed), .A2(n185), .B(b[15]), .ZN(n524) );
  OAI22D0BWPHVT U307 ( .A1(n187), .A2(n455), .B1(n186), .B2(n524), .ZN(n188)
         );
  MUX2ND0BWPHVT U308 ( .I0(n189), .I1(n348), .S(n188), .ZN(n222) );
  AOI22D0BWPHVT U309 ( .A1(n569), .A2(b[14]), .B1(n568), .B2(n458), .ZN(n191)
         );
  AOI22D0BWPHVT U310 ( .A1(n571), .A2(n528), .B1(n570), .B2(b[15]), .ZN(n190)
         );
  CKND2D0BWPHVT U311 ( .A1(n191), .A2(n190), .ZN(n192) );
  MUX2ND0BWPHVT U312 ( .I0(a[5]), .I1(n575), .S(n192), .ZN(n246) );
  CKND0BWPHVT U313 ( .I(n193), .ZN(res[23]) );
  FA1D0BWPHVT U314 ( .A(n196), .B(n195), .CI(n194), .CO(n207), .S(n197) );
  CKND0BWPHVT U315 ( .I(n197), .ZN(res[7]) );
  FA1D0BWPHVT U316 ( .A(n200), .B(n199), .CI(n198), .CO(n211), .S(n201) );
  CKND0BWPHVT U317 ( .I(n201), .ZN(res[15]) );
  CKND0BWPHVT U318 ( .I(\mult_x_1/n153 ), .ZN(n216) );
  FA1D0BWPHVT U319 ( .A(n204), .B(n203), .CI(n202), .CO(n214), .S(n193) );
  CKND0BWPHVT U320 ( .I(n205), .ZN(res[24]) );
  FA1D0BWPHVT U321 ( .A(n208), .B(n207), .CI(n206), .CO(n219), .S(n209) );
  CKND0BWPHVT U322 ( .I(n209), .ZN(res[8]) );
  FA1D0BWPHVT U323 ( .A(n212), .B(n211), .CI(n210), .CO(n223), .S(n213) );
  CKND0BWPHVT U324 ( .I(n213), .ZN(res[16]) );
  CKND0BWPHVT U325 ( .I(\mult_x_1/n149 ), .ZN(n228) );
  CKND0BWPHVT U326 ( .I(\mult_x_1/n146 ), .ZN(n227) );
  FA1D0BWPHVT U327 ( .A(n216), .B(n215), .CI(n214), .CO(n226), .S(n205) );
  CKND0BWPHVT U328 ( .I(n217), .ZN(res[25]) );
  FA1D0BWPHVT U329 ( .A(n220), .B(n219), .CI(n218), .CO(n231), .S(n221) );
  CKND0BWPHVT U330 ( .I(n221), .ZN(res[9]) );
  FA1D0BWPHVT U331 ( .A(n224), .B(n223), .CI(n222), .CO(n234), .S(n225) );
  CKND0BWPHVT U332 ( .I(n225), .ZN(res[17]) );
  CKND0BWPHVT U333 ( .I(\mult_x_1/n145 ), .ZN(n240) );
  CKND0BWPHVT U334 ( .I(\mult_x_1/n141 ), .ZN(n239) );
  FA1D0BWPHVT U335 ( .A(n228), .B(n227), .CI(n226), .CO(n238), .S(n217) );
  CKND0BWPHVT U336 ( .I(n229), .ZN(res[26]) );
  FA1D0BWPHVT U337 ( .A(n232), .B(n231), .CI(n230), .CO(n243), .S(n233) );
  CKND0BWPHVT U338 ( .I(n233), .ZN(res[10]) );
  FA1D0BWPHVT U339 ( .A(n236), .B(n235), .CI(n234), .CO(n247), .S(n237) );
  CKND0BWPHVT U340 ( .I(n237), .ZN(res[18]) );
  CKND0BWPHVT U341 ( .I(\mult_x_1/n140 ), .ZN(n252) );
  CKND0BWPHVT U342 ( .I(\mult_x_1/n138 ), .ZN(n251) );
  FA1D0BWPHVT U343 ( .A(n240), .B(n239), .CI(n238), .CO(n250), .S(n229) );
  CKND0BWPHVT U344 ( .I(n241), .ZN(res[27]) );
  FA1D0BWPHVT U345 ( .A(n244), .B(n243), .CI(n242), .CO(n260), .S(n245) );
  CKND0BWPHVT U346 ( .I(n245), .ZN(res[11]) );
  FA1D0BWPHVT U347 ( .A(n248), .B(n247), .CI(n246), .CO(n263), .S(n249) );
  CKND0BWPHVT U348 ( .I(n249), .ZN(res[19]) );
  CKND0BWPHVT U349 ( .I(\mult_x_1/n137 ), .ZN(n276) );
  FA1D0BWPHVT U350 ( .A(n252), .B(n251), .CI(n250), .CO(n275), .S(n241) );
  CKND2D0BWPHVT U351 ( .A1(b[13]), .A2(n315), .ZN(n254) );
  CKND0BWPHVT U352 ( .I(b[12]), .ZN(n471) );
  OAI211D0BWPHVT U353 ( .A1(n471), .A2(n321), .B(n329), .C(n254), .ZN(n253) );
  OAI21D0BWPHVT U354 ( .A1(n254), .A2(n329), .B(n253), .ZN(n273) );
  CKND0BWPHVT U355 ( .I(b[14]), .ZN(n463) );
  AOI22D0BWPHVT U356 ( .A1(n396), .A2(n528), .B1(n395), .B2(n458), .ZN(n256)
         );
  CKND2D0BWPHVT U357 ( .A1(n397), .A2(b[15]), .ZN(n255) );
  OAI211D0BWPHVT U358 ( .A1(n463), .A2(n400), .B(n256), .C(n255), .ZN(n257) );
  MUX2ND0BWPHVT U359 ( .I0(a[14]), .I1(n402), .S(n257), .ZN(n272) );
  CKND0BWPHVT U360 ( .I(n258), .ZN(res[28]) );
  FA1D0BWPHVT U361 ( .A(n261), .B(n260), .CI(n259), .CO(n279), .S(n262) );
  CKND0BWPHVT U362 ( .I(n262), .ZN(res[12]) );
  FA1D0BWPHVT U363 ( .A(n265), .B(n264), .CI(n263), .CO(n282), .S(n266) );
  CKND0BWPHVT U364 ( .I(n266), .ZN(res[20]) );
  OAI22D0BWPHVT U365 ( .A1(n267), .A2(n524), .B1(n400), .B2(n526), .ZN(n268)
         );
  OAI32D0BWPHVT U366 ( .A1(n268), .A2(n396), .A3(n397), .B1(n528), .B2(n268), 
        .ZN(n269) );
  MUX2ND0BWPHVT U367 ( .I0(n402), .I1(a[14]), .S(n269), .ZN(n287) );
  CKND2D0BWPHVT U368 ( .A1(b[14]), .A2(n315), .ZN(n271) );
  OAI211D0BWPHVT U369 ( .A1(n467), .A2(n321), .B(n329), .C(n271), .ZN(n270) );
  OAI21D0BWPHVT U370 ( .A1(n271), .A2(n329), .B(n270), .ZN(n286) );
  FA1D0BWPHVT U371 ( .A(\mult_x_1/n132 ), .B(n273), .CI(n272), .CO(n289), .S(
        n274) );
  FA1D0BWPHVT U372 ( .A(n276), .B(n275), .CI(n274), .CO(n288), .S(n258) );
  CKND0BWPHVT U373 ( .I(n277), .ZN(res[29]) );
  FA1D0BWPHVT U374 ( .A(n280), .B(n279), .CI(n278), .CO(n298), .S(n281) );
  CKND0BWPHVT U375 ( .I(n281), .ZN(res[13]) );
  FA1D0BWPHVT U376 ( .A(n284), .B(n283), .CI(n282), .CO(n301), .S(n285) );
  CKND0BWPHVT U377 ( .I(n285), .ZN(res[21]) );
  FA1D0BWPHVT U378 ( .A(\mult_x_1/n132 ), .B(n287), .CI(n286), .CO(n338), .S(
        n290) );
  FA1D0BWPHVT U379 ( .A(n290), .B(n289), .CI(n288), .CO(n337), .S(n277) );
  AOI22D0BWPHVT U380 ( .A1(b[15]), .A2(n315), .B1(n328), .B2(b[14]), .ZN(n291)
         );
  AOI32D0BWPHVT U381 ( .A1(b[15]), .A2(n332), .A3(n331), .B1(n291), .B2(n329), 
        .ZN(n340) );
  AOI21D0BWPHVT U382 ( .A1(n293), .A2(n292), .B(n455), .ZN(n294) );
  MUX2ND0BWPHVT U383 ( .I0(a[14]), .I1(n402), .S(n294), .ZN(n339) );
  CKND0BWPHVT U384 ( .I(n295), .ZN(n336) );
  CKND0BWPHVT U385 ( .I(n296), .ZN(res[30]) );
  FA1D0BWPHVT U386 ( .A(n299), .B(n298), .CI(n297), .CO(n199), .S(n300) );
  FA1D0BWPHVT U387 ( .A(n303), .B(n302), .CI(n301), .CO(n202), .S(n304) );
  CKND0BWPHVT U388 ( .I(n304), .ZN(res[22]) );
  AOI22D0BWPHVT U389 ( .A1(b[11]), .A2(n328), .B1(b[12]), .B2(n331), .ZN(n305)
         );
  AOI32D0BWPHVT U390 ( .A1(b[12]), .A2(n332), .A3(n315), .B1(n305), .B2(n329), 
        .ZN(\mult_x_1/n318 ) );
  AOI22D0BWPHVT U391 ( .A1(b[5]), .A2(n328), .B1(b[6]), .B2(n331), .ZN(n306)
         );
  AOI32D0BWPHVT U392 ( .A1(b[6]), .A2(n332), .A3(n331), .B1(n306), .B2(n329), 
        .ZN(\mult_x_1/n324 ) );
  CKND2D0BWPHVT U393 ( .A1(b[2]), .A2(n315), .ZN(n308) );
  OAI211D0BWPHVT U394 ( .A1(n321), .A2(n512), .B(n308), .C(n329), .ZN(n307) );
  OAI21D0BWPHVT U395 ( .A1(n329), .A2(n308), .B(n307), .ZN(n310) );
  NR2D0BWPHVT U396 ( .A1(\mult_x_1/n215 ), .A2(n329), .ZN(n325) );
  CKND2D0BWPHVT U397 ( .A1(b[1]), .A2(n315), .ZN(n320) );
  CKND2D0BWPHVT U398 ( .A1(n325), .A2(n320), .ZN(n309) );
  NR2D0BWPHVT U399 ( .A1(n310), .A2(n309), .ZN(\mult_x_1/n198 ) );
  AOI21D0BWPHVT U400 ( .A1(n310), .A2(n309), .B(\mult_x_1/n198 ), .ZN(
        \mult_x_1/n199 ) );
  AOI22D0BWPHVT U401 ( .A1(b[9]), .A2(n328), .B1(b[10]), .B2(n331), .ZN(n311)
         );
  AOI32D0BWPHVT U402 ( .A1(b[10]), .A2(n332), .A3(n315), .B1(n311), .B2(n329), 
        .ZN(\mult_x_1/n320 ) );
  OAI21D0BWPHVT U403 ( .A1(n313), .A2(n312), .B(\mult_x_1/n176 ), .ZN(
        \mult_x_1/n191 ) );
  AOI22D0BWPHVT U404 ( .A1(b[3]), .A2(n328), .B1(b[4]), .B2(n331), .ZN(n314)
         );
  AOI32D0BWPHVT U405 ( .A1(b[4]), .A2(n332), .A3(n315), .B1(n314), .B2(n329), 
        .ZN(\mult_x_1/n326 ) );
  AOI211D0BWPHVT U406 ( .A1(n449), .A2(n318), .B(n317), .C(n316), .ZN(n319) );
  INR2D0BWPHVT U407 ( .A1(n334), .B1(n319), .ZN(\mult_x_1/n241 ) );
  OR2D0BWPHVT U408 ( .A1(n320), .A2(n329), .Z(n324) );
  OAI211D0BWPHVT U409 ( .A1(n322), .A2(n321), .B(n329), .C(n320), .ZN(n323) );
  CKND2D0BWPHVT U410 ( .A1(n324), .A2(n323), .ZN(n326) );
  OAI22D0BWPHVT U411 ( .A1(n326), .A2(n325), .B1(n324), .B2(\mult_x_1/n215 ), 
        .ZN(\mult_x_1/n207 ) );
  AOI22D0BWPHVT U412 ( .A1(b[10]), .A2(n328), .B1(b[11]), .B2(n331), .ZN(n327)
         );
  AOI32D0BWPHVT U413 ( .A1(b[11]), .A2(n332), .A3(n331), .B1(n327), .B2(n329), 
        .ZN(\mult_x_1/n319 ) );
  AOI22D0BWPHVT U414 ( .A1(b[4]), .A2(n328), .B1(b[5]), .B2(n331), .ZN(n330)
         );
  AOI32D0BWPHVT U415 ( .A1(b[5]), .A2(n332), .A3(n331), .B1(n330), .B2(n329), 
        .ZN(\mult_x_1/n325 ) );
  XOR3D0BWPHVT U416 ( .A1(n335), .A2(n334), .A3(n333), .Z(\mult_x_1/n234 ) );
  FA1D0BWPHVT U417 ( .A(n338), .B(n337), .CI(n336), .CO(n344), .S(n296) );
  FA1D0BWPHVT U418 ( .A(\mult_x_1/n132 ), .B(n340), .CI(n339), .CO(n343), .S(
        n295) );
  MAOI222D0BWPHVT U419 ( .A(a[15]), .B(b[15]), .C(is_signed), .ZN(n341) );
  AO21D0BWPHVT U420 ( .A1(b[15]), .A2(n402), .B(n341), .Z(n342) );
  XNR3D0BWPHVT U421 ( .A1(n344), .A2(n343), .A3(n342), .ZN(res[31]) );
  AOI211D0BWPHVT U422 ( .A1(n348), .A2(n347), .B(n346), .C(n345), .ZN(n349) );
  INR2D0BWPHVT U423 ( .A1(n350), .B1(n349), .ZN(res[2]) );
  OA21D0BWPHVT U424 ( .A1(n353), .A2(n352), .B(n351), .Z(res[3]) );
  CKND2D0BWPHVT U425 ( .A1(a[2]), .A2(res[0]), .ZN(n354) );
  MUX2ND0BWPHVT U426 ( .I0(n356), .I1(n355), .S(n354), .ZN(res[1]) );
  FA1D0BWPHVT U427 ( .A(\mult_x_1/n157 ), .B(n358), .CI(n357), .CO(
        \mult_x_1/n142 ), .S(\mult_x_1/n151 ) );
  CKND2D0BWPHVT U428 ( .A1(a[11]), .A2(\mult_x_1/n251 ), .ZN(n359) );
  MUX2ND0BWPHVT U429 ( .I0(n361), .I1(n360), .S(n359), .ZN(\mult_x_1/n246 ) );
  AOI22D0BWPHVT U430 ( .A1(n396), .A2(b[15]), .B1(n395), .B2(n531), .ZN(n363)
         );
  CKND2D0BWPHVT U431 ( .A1(n397), .A2(b[14]), .ZN(n362) );
  OAI211D0BWPHVT U432 ( .A1(n400), .A2(n467), .B(n363), .C(n362), .ZN(n364) );
  MUX2ND0BWPHVT U433 ( .I0(n402), .I1(a[14]), .S(n364), .ZN(\mult_x_1/n334 )
         );
  AOI22D0BWPHVT U434 ( .A1(n396), .A2(b[14]), .B1(n395), .B2(n535), .ZN(n366)
         );
  CKND2D0BWPHVT U435 ( .A1(n397), .A2(b[13]), .ZN(n365) );
  OAI211D0BWPHVT U436 ( .A1(n400), .A2(n471), .B(n366), .C(n365), .ZN(n367) );
  MUX2ND0BWPHVT U437 ( .I0(n402), .I1(a[14]), .S(n367), .ZN(\mult_x_1/n335 )
         );
  CKND0BWPHVT U438 ( .I(b[11]), .ZN(n475) );
  AOI22D0BWPHVT U439 ( .A1(n396), .A2(b[13]), .B1(n395), .B2(n539), .ZN(n369)
         );
  CKND2D0BWPHVT U440 ( .A1(n397), .A2(b[12]), .ZN(n368) );
  OAI211D0BWPHVT U441 ( .A1(n400), .A2(n475), .B(n369), .C(n368), .ZN(n370) );
  MUX2ND0BWPHVT U442 ( .I0(n402), .I1(a[14]), .S(n370), .ZN(\mult_x_1/n336 )
         );
  CKND0BWPHVT U443 ( .I(b[10]), .ZN(n479) );
  AOI22D0BWPHVT U444 ( .A1(n396), .A2(b[12]), .B1(n395), .B2(n543), .ZN(n372)
         );
  CKND2D0BWPHVT U445 ( .A1(n397), .A2(b[11]), .ZN(n371) );
  OAI211D0BWPHVT U446 ( .A1(n479), .A2(n400), .B(n372), .C(n371), .ZN(n373) );
  MUX2ND0BWPHVT U447 ( .I0(n402), .I1(a[14]), .S(n373), .ZN(\mult_x_1/n337 )
         );
  CKND0BWPHVT U448 ( .I(b[9]), .ZN(n483) );
  AOI22D0BWPHVT U449 ( .A1(n396), .A2(b[11]), .B1(n395), .B2(n547), .ZN(n375)
         );
  CKND2D0BWPHVT U450 ( .A1(n397), .A2(b[10]), .ZN(n374) );
  OAI211D0BWPHVT U451 ( .A1(n483), .A2(n400), .B(n375), .C(n374), .ZN(n376) );
  MUX2ND0BWPHVT U452 ( .I0(n402), .I1(a[14]), .S(n376), .ZN(\mult_x_1/n338 )
         );
  AOI22D0BWPHVT U453 ( .A1(n396), .A2(b[9]), .B1(n395), .B2(n555), .ZN(n378)
         );
  CKND2D0BWPHVT U454 ( .A1(n397), .A2(b[8]), .ZN(n377) );
  OAI211D0BWPHVT U455 ( .A1(n400), .A2(n491), .B(n378), .C(n377), .ZN(n379) );
  MUX2ND0BWPHVT U456 ( .I0(n402), .I1(a[14]), .S(n379), .ZN(\mult_x_1/n340 )
         );
  AOI22D0BWPHVT U457 ( .A1(n396), .A2(b[8]), .B1(n395), .B2(n559), .ZN(n381)
         );
  CKND2D0BWPHVT U458 ( .A1(n397), .A2(b[7]), .ZN(n380) );
  OAI211D0BWPHVT U459 ( .A1(n400), .A2(n495), .B(n381), .C(n380), .ZN(n382) );
  MUX2ND0BWPHVT U460 ( .I0(n402), .I1(a[14]), .S(n382), .ZN(\mult_x_1/n341 )
         );
  CKND0BWPHVT U461 ( .I(b[5]), .ZN(n499) );
  AOI22D0BWPHVT U462 ( .A1(n396), .A2(b[7]), .B1(n395), .B2(n563), .ZN(n384)
         );
  CKND2D0BWPHVT U463 ( .A1(n397), .A2(b[6]), .ZN(n383) );
  OAI211D0BWPHVT U464 ( .A1(n499), .A2(n400), .B(n384), .C(n383), .ZN(n385) );
  MUX2ND0BWPHVT U465 ( .I0(n402), .I1(a[14]), .S(n385), .ZN(\mult_x_1/n342 )
         );
  CKND0BWPHVT U466 ( .I(b[4]), .ZN(n504) );
  AOI22D0BWPHVT U467 ( .A1(n396), .A2(b[6]), .B1(n395), .B2(n567), .ZN(n387)
         );
  CKND2D0BWPHVT U468 ( .A1(n397), .A2(b[5]), .ZN(n386) );
  OAI211D0BWPHVT U469 ( .A1(n504), .A2(n400), .B(n387), .C(n386), .ZN(n388) );
  MUX2ND0BWPHVT U470 ( .I0(n402), .I1(a[14]), .S(n388), .ZN(\mult_x_1/n343 )
         );
  CKND0BWPHVT U471 ( .I(b[3]), .ZN(n510) );
  AOI22D0BWPHVT U472 ( .A1(n397), .A2(b[4]), .B1(n395), .B2(n502), .ZN(n390)
         );
  CKND2D0BWPHVT U473 ( .A1(n396), .A2(b[5]), .ZN(n389) );
  OAI211D0BWPHVT U474 ( .A1(n400), .A2(n510), .B(n390), .C(n389), .ZN(n391) );
  MUX2ND0BWPHVT U475 ( .I0(n402), .I1(a[14]), .S(n391), .ZN(\mult_x_1/n344 )
         );
  AOI22D0BWPHVT U476 ( .A1(n396), .A2(b[4]), .B1(n395), .B2(n507), .ZN(n393)
         );
  CKND2D0BWPHVT U477 ( .A1(b[3]), .A2(n397), .ZN(n392) );
  OAI211D0BWPHVT U478 ( .A1(n400), .A2(n514), .B(n393), .C(n392), .ZN(n394) );
  MUX2ND0BWPHVT U479 ( .I0(n402), .I1(a[14]), .S(n394), .ZN(\mult_x_1/n345 )
         );
  AOI22D0BWPHVT U480 ( .A1(b[3]), .A2(n396), .B1(n517), .B2(n395), .ZN(n399)
         );
  CKND2D0BWPHVT U481 ( .A1(b[2]), .A2(n397), .ZN(n398) );
  OAI211D0BWPHVT U482 ( .A1(n400), .A2(n512), .B(n399), .C(n398), .ZN(n401) );
  MUX2ND0BWPHVT U483 ( .I0(n402), .I1(a[14]), .S(n401), .ZN(\mult_x_1/n346 )
         );
  OAI21D0BWPHVT U484 ( .A1(n404), .A2(n403), .B(n528), .ZN(n405) );
  MUX2ND0BWPHVT U485 ( .I0(n449), .I1(a[11]), .S(n405), .ZN(\mult_x_1/n350 )
         );
  CKND0BWPHVT U486 ( .I(n406), .ZN(n443) );
  OAI22D0BWPHVT U487 ( .A1(n443), .A2(n526), .B1(n407), .B2(n524), .ZN(n408)
         );
  OAI32D0BWPHVT U488 ( .A1(n408), .A2(n410), .A3(n411), .B1(n528), .B2(n408), 
        .ZN(n409) );
  MUX2ND0BWPHVT U489 ( .I0(a[11]), .I1(n449), .S(n409), .ZN(\mult_x_1/n351 )
         );
  CKND0BWPHVT U490 ( .I(n410), .ZN(n442) );
  NR2D0BWPHVT U491 ( .A1(n442), .A2(n455), .ZN(n413) );
  CKND0BWPHVT U492 ( .I(n411), .ZN(n444) );
  OAI22D0BWPHVT U493 ( .A1(n444), .A2(n526), .B1(n443), .B2(n463), .ZN(n412)
         );
  AOI211D0BWPHVT U494 ( .A1(n458), .A2(n447), .B(n413), .C(n412), .ZN(n414) );
  MUX2ND0BWPHVT U495 ( .I0(a[11]), .I1(n449), .S(n414), .ZN(\mult_x_1/n352 )
         );
  NR2D0BWPHVT U496 ( .A1(n442), .A2(n526), .ZN(n416) );
  OAI22D0BWPHVT U497 ( .A1(n444), .A2(n463), .B1(n443), .B2(n467), .ZN(n415)
         );
  AOI211D0BWPHVT U498 ( .A1(n531), .A2(n447), .B(n416), .C(n415), .ZN(n417) );
  MUX2ND0BWPHVT U499 ( .I0(a[11]), .I1(n449), .S(n417), .ZN(\mult_x_1/n353 )
         );
  NR2D0BWPHVT U500 ( .A1(n442), .A2(n463), .ZN(n419) );
  OAI22D0BWPHVT U501 ( .A1(n444), .A2(n467), .B1(n443), .B2(n471), .ZN(n418)
         );
  AOI211D0BWPHVT U502 ( .A1(n535), .A2(n447), .B(n419), .C(n418), .ZN(n420) );
  MUX2ND0BWPHVT U503 ( .I0(a[11]), .I1(n449), .S(n420), .ZN(\mult_x_1/n354 )
         );
  NR2D0BWPHVT U504 ( .A1(n442), .A2(n467), .ZN(n422) );
  OAI22D0BWPHVT U505 ( .A1(n444), .A2(n471), .B1(n443), .B2(n475), .ZN(n421)
         );
  AOI211D0BWPHVT U506 ( .A1(n539), .A2(n447), .B(n422), .C(n421), .ZN(n423) );
  MUX2ND0BWPHVT U507 ( .I0(a[11]), .I1(n449), .S(n423), .ZN(\mult_x_1/n355 )
         );
  NR2D0BWPHVT U508 ( .A1(n442), .A2(n471), .ZN(n425) );
  OAI22D0BWPHVT U509 ( .A1(n444), .A2(n475), .B1(n443), .B2(n479), .ZN(n424)
         );
  AOI211D0BWPHVT U510 ( .A1(n543), .A2(n447), .B(n425), .C(n424), .ZN(n426) );
  MUX2ND0BWPHVT U511 ( .I0(a[11]), .I1(n449), .S(n426), .ZN(\mult_x_1/n356 )
         );
  NR2D0BWPHVT U512 ( .A1(n442), .A2(n475), .ZN(n428) );
  OAI22D0BWPHVT U513 ( .A1(n444), .A2(n479), .B1(n443), .B2(n483), .ZN(n427)
         );
  AOI211D0BWPHVT U514 ( .A1(n547), .A2(n447), .B(n428), .C(n427), .ZN(n429) );
  MUX2ND0BWPHVT U515 ( .I0(a[11]), .I1(n449), .S(n429), .ZN(\mult_x_1/n357 )
         );
  NR2D0BWPHVT U516 ( .A1(n442), .A2(n479), .ZN(n431) );
  OAI22D0BWPHVT U517 ( .A1(n444), .A2(n483), .B1(n443), .B2(n487), .ZN(n430)
         );
  AOI211D0BWPHVT U518 ( .A1(n551), .A2(n447), .B(n431), .C(n430), .ZN(n432) );
  MUX2ND0BWPHVT U519 ( .I0(a[11]), .I1(n449), .S(n432), .ZN(\mult_x_1/n358 )
         );
  NR2D0BWPHVT U520 ( .A1(n442), .A2(n483), .ZN(n434) );
  OAI22D0BWPHVT U521 ( .A1(n444), .A2(n487), .B1(n443), .B2(n491), .ZN(n433)
         );
  AOI211D0BWPHVT U522 ( .A1(n555), .A2(n447), .B(n434), .C(n433), .ZN(n435) );
  MUX2ND0BWPHVT U523 ( .I0(a[11]), .I1(n449), .S(n435), .ZN(\mult_x_1/n359 )
         );
  NR2D0BWPHVT U524 ( .A1(n442), .A2(n487), .ZN(n437) );
  OAI22D0BWPHVT U525 ( .A1(n444), .A2(n491), .B1(n443), .B2(n495), .ZN(n436)
         );
  AOI211D0BWPHVT U526 ( .A1(n559), .A2(n447), .B(n437), .C(n436), .ZN(n438) );
  MUX2ND0BWPHVT U527 ( .I0(a[11]), .I1(n449), .S(n438), .ZN(\mult_x_1/n360 )
         );
  NR2D0BWPHVT U528 ( .A1(n442), .A2(n491), .ZN(n440) );
  OAI22D0BWPHVT U529 ( .A1(n444), .A2(n495), .B1(n443), .B2(n499), .ZN(n439)
         );
  AOI211D0BWPHVT U530 ( .A1(n563), .A2(n447), .B(n440), .C(n439), .ZN(n441) );
  MUX2ND0BWPHVT U531 ( .I0(a[11]), .I1(n449), .S(n441), .ZN(\mult_x_1/n361 )
         );
  NR2D0BWPHVT U532 ( .A1(n442), .A2(n495), .ZN(n446) );
  OAI22D0BWPHVT U533 ( .A1(n444), .A2(n499), .B1(n443), .B2(n504), .ZN(n445)
         );
  AOI211D0BWPHVT U534 ( .A1(n567), .A2(n447), .B(n446), .C(n445), .ZN(n448) );
  MUX2ND0BWPHVT U535 ( .I0(a[11]), .I1(n449), .S(n448), .ZN(\mult_x_1/n362 )
         );
  OAI22D0BWPHVT U536 ( .A1(n511), .A2(n526), .B1(n450), .B2(n524), .ZN(n453)
         );
  OAI32D0BWPHVT U537 ( .A1(n453), .A2(n452), .A3(n451), .B1(n528), .B2(n453), 
        .ZN(n454) );
  MUX2ND0BWPHVT U538 ( .I0(a[8]), .I1(n520), .S(n454), .ZN(\mult_x_1/n370 ) );
  NR2D0BWPHVT U539 ( .A1(n509), .A2(n455), .ZN(n457) );
  OAI22D0BWPHVT U540 ( .A1(n513), .A2(n526), .B1(n511), .B2(n463), .ZN(n456)
         );
  AOI211D0BWPHVT U541 ( .A1(n458), .A2(n518), .B(n457), .C(n456), .ZN(n459) );
  MUX2ND0BWPHVT U542 ( .I0(a[8]), .I1(n520), .S(n459), .ZN(\mult_x_1/n371 ) );
  NR2D0BWPHVT U543 ( .A1(n509), .A2(n526), .ZN(n461) );
  OAI22D0BWPHVT U544 ( .A1(n513), .A2(n463), .B1(n511), .B2(n467), .ZN(n460)
         );
  AOI211D0BWPHVT U545 ( .A1(n531), .A2(n518), .B(n461), .C(n460), .ZN(n462) );
  MUX2ND0BWPHVT U546 ( .I0(a[8]), .I1(n520), .S(n462), .ZN(\mult_x_1/n372 ) );
  NR2D0BWPHVT U547 ( .A1(n509), .A2(n463), .ZN(n465) );
  OAI22D0BWPHVT U548 ( .A1(n513), .A2(n467), .B1(n511), .B2(n471), .ZN(n464)
         );
  AOI211D0BWPHVT U549 ( .A1(n535), .A2(n518), .B(n465), .C(n464), .ZN(n466) );
  MUX2ND0BWPHVT U550 ( .I0(a[8]), .I1(n520), .S(n466), .ZN(\mult_x_1/n373 ) );
  NR2D0BWPHVT U551 ( .A1(n509), .A2(n467), .ZN(n469) );
  OAI22D0BWPHVT U552 ( .A1(n513), .A2(n471), .B1(n511), .B2(n475), .ZN(n468)
         );
  AOI211D0BWPHVT U553 ( .A1(n539), .A2(n518), .B(n469), .C(n468), .ZN(n470) );
  MUX2ND0BWPHVT U554 ( .I0(a[8]), .I1(n520), .S(n470), .ZN(\mult_x_1/n374 ) );
  NR2D0BWPHVT U555 ( .A1(n509), .A2(n471), .ZN(n473) );
  OAI22D0BWPHVT U556 ( .A1(n513), .A2(n475), .B1(n511), .B2(n479), .ZN(n472)
         );
  AOI211D0BWPHVT U557 ( .A1(n543), .A2(n518), .B(n473), .C(n472), .ZN(n474) );
  MUX2ND0BWPHVT U558 ( .I0(a[8]), .I1(n520), .S(n474), .ZN(\mult_x_1/n375 ) );
  NR2D0BWPHVT U559 ( .A1(n509), .A2(n475), .ZN(n477) );
  OAI22D0BWPHVT U560 ( .A1(n513), .A2(n479), .B1(n511), .B2(n483), .ZN(n476)
         );
  AOI211D0BWPHVT U561 ( .A1(n547), .A2(n518), .B(n477), .C(n476), .ZN(n478) );
  MUX2ND0BWPHVT U562 ( .I0(a[8]), .I1(n520), .S(n478), .ZN(\mult_x_1/n376 ) );
  NR2D0BWPHVT U563 ( .A1(n509), .A2(n479), .ZN(n481) );
  OAI22D0BWPHVT U564 ( .A1(n513), .A2(n483), .B1(n511), .B2(n487), .ZN(n480)
         );
  AOI211D0BWPHVT U565 ( .A1(n551), .A2(n518), .B(n481), .C(n480), .ZN(n482) );
  MUX2ND0BWPHVT U566 ( .I0(a[8]), .I1(n520), .S(n482), .ZN(\mult_x_1/n377 ) );
  NR2D0BWPHVT U567 ( .A1(n509), .A2(n483), .ZN(n485) );
  OAI22D0BWPHVT U568 ( .A1(n513), .A2(n487), .B1(n511), .B2(n491), .ZN(n484)
         );
  AOI211D0BWPHVT U569 ( .A1(n555), .A2(n518), .B(n485), .C(n484), .ZN(n486) );
  MUX2ND0BWPHVT U570 ( .I0(a[8]), .I1(n520), .S(n486), .ZN(\mult_x_1/n378 ) );
  NR2D0BWPHVT U571 ( .A1(n509), .A2(n487), .ZN(n489) );
  OAI22D0BWPHVT U572 ( .A1(n513), .A2(n491), .B1(n511), .B2(n495), .ZN(n488)
         );
  AOI211D0BWPHVT U573 ( .A1(n559), .A2(n518), .B(n489), .C(n488), .ZN(n490) );
  MUX2ND0BWPHVT U574 ( .I0(a[8]), .I1(n520), .S(n490), .ZN(\mult_x_1/n379 ) );
  NR2D0BWPHVT U575 ( .A1(n509), .A2(n491), .ZN(n493) );
  OAI22D0BWPHVT U576 ( .A1(n513), .A2(n495), .B1(n511), .B2(n499), .ZN(n492)
         );
  AOI211D0BWPHVT U577 ( .A1(n563), .A2(n518), .B(n493), .C(n492), .ZN(n494) );
  MUX2ND0BWPHVT U578 ( .I0(a[8]), .I1(n520), .S(n494), .ZN(\mult_x_1/n380 ) );
  NR2D0BWPHVT U579 ( .A1(n509), .A2(n495), .ZN(n497) );
  OAI22D0BWPHVT U580 ( .A1(n513), .A2(n499), .B1(n511), .B2(n504), .ZN(n496)
         );
  AOI211D0BWPHVT U581 ( .A1(n567), .A2(n518), .B(n497), .C(n496), .ZN(n498) );
  MUX2ND0BWPHVT U582 ( .I0(a[8]), .I1(n520), .S(n498), .ZN(\mult_x_1/n381 ) );
  NR2D0BWPHVT U583 ( .A1(n509), .A2(n499), .ZN(n501) );
  OAI22D0BWPHVT U584 ( .A1(n510), .A2(n511), .B1(n513), .B2(n504), .ZN(n500)
         );
  AOI211D0BWPHVT U585 ( .A1(n502), .A2(n518), .B(n501), .C(n500), .ZN(n503) );
  MUX2ND0BWPHVT U586 ( .I0(a[8]), .I1(n520), .S(n503), .ZN(\mult_x_1/n382 ) );
  NR2D0BWPHVT U587 ( .A1(n510), .A2(n513), .ZN(n506) );
  OAI22D0BWPHVT U588 ( .A1(n514), .A2(n511), .B1(n509), .B2(n504), .ZN(n505)
         );
  AOI211D0BWPHVT U589 ( .A1(n507), .A2(n518), .B(n506), .C(n505), .ZN(n508) );
  MUX2ND0BWPHVT U590 ( .I0(a[8]), .I1(n520), .S(n508), .ZN(\mult_x_1/n383 ) );
  NR2D0BWPHVT U591 ( .A1(n510), .A2(n509), .ZN(n516) );
  OAI22D0BWPHVT U592 ( .A1(n514), .A2(n513), .B1(n512), .B2(n511), .ZN(n515)
         );
  AOI211D0BWPHVT U593 ( .A1(n518), .A2(n517), .B(n516), .C(n515), .ZN(n519) );
  MUX2ND0BWPHVT U594 ( .I0(a[8]), .I1(n520), .S(n519), .ZN(\mult_x_1/n384 ) );
  OAI21D0BWPHVT U595 ( .A1(n522), .A2(n521), .B(n528), .ZN(n523) );
  MUX2ND0BWPHVT U596 ( .I0(n575), .I1(a[5]), .S(n523), .ZN(\mult_x_1/n388 ) );
  OAI22D0BWPHVT U597 ( .A1(n527), .A2(n526), .B1(n525), .B2(n524), .ZN(n529)
         );
  OAI32D0BWPHVT U598 ( .A1(n529), .A2(n571), .A3(n570), .B1(n528), .B2(n529), 
        .ZN(n530) );
  MUX2ND0BWPHVT U599 ( .I0(a[5]), .I1(n575), .S(n530), .ZN(\mult_x_1/n389 ) );
  AOI22D0BWPHVT U600 ( .A1(n569), .A2(b[13]), .B1(n568), .B2(n531), .ZN(n533)
         );
  AOI22D0BWPHVT U601 ( .A1(n571), .A2(b[15]), .B1(n570), .B2(b[14]), .ZN(n532)
         );
  CKND2D0BWPHVT U602 ( .A1(n533), .A2(n532), .ZN(n534) );
  MUX2ND0BWPHVT U603 ( .I0(n575), .I1(a[5]), .S(n534), .ZN(\mult_x_1/n391 ) );
  AOI22D0BWPHVT U604 ( .A1(n569), .A2(b[12]), .B1(n568), .B2(n535), .ZN(n537)
         );
  AOI22D0BWPHVT U605 ( .A1(n571), .A2(b[14]), .B1(n570), .B2(b[13]), .ZN(n536)
         );
  CKND2D0BWPHVT U606 ( .A1(n537), .A2(n536), .ZN(n538) );
  MUX2ND0BWPHVT U607 ( .I0(n575), .I1(a[5]), .S(n538), .ZN(\mult_x_1/n392 ) );
  AOI22D0BWPHVT U608 ( .A1(n569), .A2(b[11]), .B1(n568), .B2(n539), .ZN(n541)
         );
  AOI22D0BWPHVT U609 ( .A1(n571), .A2(b[13]), .B1(n570), .B2(b[12]), .ZN(n540)
         );
  CKND2D0BWPHVT U610 ( .A1(n541), .A2(n540), .ZN(n542) );
  MUX2ND0BWPHVT U611 ( .I0(n575), .I1(a[5]), .S(n542), .ZN(\mult_x_1/n393 ) );
  AOI22D0BWPHVT U612 ( .A1(n569), .A2(b[10]), .B1(n568), .B2(n543), .ZN(n545)
         );
  AOI22D0BWPHVT U613 ( .A1(n571), .A2(b[12]), .B1(n570), .B2(b[11]), .ZN(n544)
         );
  CKND2D0BWPHVT U614 ( .A1(n545), .A2(n544), .ZN(n546) );
  MUX2ND0BWPHVT U615 ( .I0(n575), .I1(a[5]), .S(n546), .ZN(\mult_x_1/n394 ) );
  AOI22D0BWPHVT U616 ( .A1(n569), .A2(b[9]), .B1(n568), .B2(n547), .ZN(n549)
         );
  AOI22D0BWPHVT U617 ( .A1(n571), .A2(b[11]), .B1(n570), .B2(b[10]), .ZN(n548)
         );
  CKND2D0BWPHVT U618 ( .A1(n549), .A2(n548), .ZN(n550) );
  MUX2ND0BWPHVT U619 ( .I0(n575), .I1(a[5]), .S(n550), .ZN(\mult_x_1/n395 ) );
  AOI22D0BWPHVT U620 ( .A1(n569), .A2(b[8]), .B1(n568), .B2(n551), .ZN(n553)
         );
  AOI22D0BWPHVT U621 ( .A1(n571), .A2(b[10]), .B1(n570), .B2(b[9]), .ZN(n552)
         );
  CKND2D0BWPHVT U622 ( .A1(n553), .A2(n552), .ZN(n554) );
  MUX2ND0BWPHVT U623 ( .I0(n575), .I1(a[5]), .S(n554), .ZN(\mult_x_1/n396 ) );
  AOI22D0BWPHVT U624 ( .A1(n569), .A2(b[7]), .B1(n568), .B2(n555), .ZN(n557)
         );
  AOI22D0BWPHVT U625 ( .A1(n571), .A2(b[9]), .B1(n570), .B2(b[8]), .ZN(n556)
         );
  CKND2D0BWPHVT U626 ( .A1(n557), .A2(n556), .ZN(n558) );
  MUX2ND0BWPHVT U627 ( .I0(n575), .I1(a[5]), .S(n558), .ZN(\mult_x_1/n397 ) );
  AOI22D0BWPHVT U628 ( .A1(n569), .A2(b[6]), .B1(n568), .B2(n559), .ZN(n561)
         );
  AOI22D0BWPHVT U629 ( .A1(n571), .A2(b[8]), .B1(n570), .B2(b[7]), .ZN(n560)
         );
  CKND2D0BWPHVT U630 ( .A1(n561), .A2(n560), .ZN(n562) );
  MUX2ND0BWPHVT U631 ( .I0(n575), .I1(a[5]), .S(n562), .ZN(\mult_x_1/n398 ) );
  AOI22D0BWPHVT U632 ( .A1(n569), .A2(b[5]), .B1(n568), .B2(n563), .ZN(n565)
         );
  AOI22D0BWPHVT U633 ( .A1(n571), .A2(b[7]), .B1(n570), .B2(b[6]), .ZN(n564)
         );
  CKND2D0BWPHVT U634 ( .A1(n565), .A2(n564), .ZN(n566) );
  MUX2ND0BWPHVT U635 ( .I0(n575), .I1(a[5]), .S(n566), .ZN(\mult_x_1/n399 ) );
  AOI22D0BWPHVT U636 ( .A1(n569), .A2(b[4]), .B1(n568), .B2(n567), .ZN(n573)
         );
  AOI22D0BWPHVT U637 ( .A1(n571), .A2(b[6]), .B1(n570), .B2(b[5]), .ZN(n572)
         );
  CKND2D0BWPHVT U638 ( .A1(n573), .A2(n572), .ZN(n574) );
  MUX2ND0BWPHVT U639 ( .I0(n575), .I1(a[5]), .S(n574), .ZN(\mult_x_1/n400 ) );
  CMPE42D1BWPHVT U640 ( .A(\mult_x_1/n176 ), .B(\mult_x_1/n388 ), .C(
        \mult_x_1/n324 ), .CIX(\mult_x_1/n340 ), .D(\mult_x_1/n173 ), .CO(
        \mult_x_1/n168 ), .COX(\mult_x_1/n157 ), .S(\mult_x_1/n169 ) );
  CMPE42D1BWPHVT U641 ( .A(\mult_x_1/n344 ), .B(\mult_x_1/n199 ), .C(
        \mult_x_1/n203 ), .CIX(\mult_x_1/n204 ), .D(\mult_x_1/n360 ), .CO(
        \mult_x_1/n196 ), .COX(\mult_x_1/n195 ), .S(\mult_x_1/n197 ) );
  CMPE42D1BWPHVT U642 ( .A(\mult_x_1/n325 ), .B(\mult_x_1/n184 ), .C(
        \mult_x_1/n181 ), .CIX(\mult_x_1/n182 ), .D(\mult_x_1/n341 ), .CO(
        \mult_x_1/n174 ), .COX(\mult_x_1/n173 ), .S(\mult_x_1/n175 ) );
  CMPE42D1BWPHVT U643 ( .A(\mult_x_1/n198 ), .B(\mult_x_1/n191 ), .C(
        \mult_x_1/n343 ), .CIX(\mult_x_1/n359 ), .D(\mult_x_1/n195 ), .CO(
        \mult_x_1/n189 ), .COX(\mult_x_1/n188 ), .S(\mult_x_1/n190 ) );
  CMPE42D1BWPHVT U644 ( .A(\mult_x_1/n196 ), .B(\mult_x_1/n190 ), .C(
        \mult_x_1/n375 ), .CIX(\mult_x_1/n391 ), .D(\mult_x_1/n192 ), .CO(
        \mult_x_1/n186 ), .COX(\mult_x_1/n185 ), .S(\mult_x_1/n187 ) );
  CMPE42D1BWPHVT U645 ( .A(\mult_x_1/n175 ), .B(\mult_x_1/n357 ), .C(
        \mult_x_1/n178 ), .CIX(\mult_x_1/n389 ), .D(\mult_x_1/n373 ), .CO(
        \mult_x_1/n171 ), .COX(\mult_x_1/n170 ), .S(\mult_x_1/n172 ) );
  CMPE42D1BWPHVT U646 ( .A(\mult_x_1/n156 ), .B(\mult_x_1/n338 ), .C(
        \mult_x_1/n159 ), .CIX(\mult_x_1/n370 ), .D(\mult_x_1/n354 ), .CO(
        \mult_x_1/n153 ), .COX(\mult_x_1/n152 ), .S(\mult_x_1/n154 ) );
  CMPE42D1BWPHVT U647 ( .A(\mult_x_1/n163 ), .B(\mult_x_1/n168 ), .C(
        \mult_x_1/n355 ), .CIX(\mult_x_1/n371 ), .D(\mult_x_1/n165 ), .CO(
        \mult_x_1/n160 ), .COX(\mult_x_1/n159 ), .S(\mult_x_1/n161 ) );
  CMPE42D1BWPHVT U648 ( .A(\mult_x_1/n174 ), .B(\mult_x_1/n169 ), .C(
        \mult_x_1/n356 ), .CIX(\mult_x_1/n372 ), .D(\mult_x_1/n170 ), .CO(
        \mult_x_1/n166 ), .COX(\mult_x_1/n165 ), .S(\mult_x_1/n167 ) );
  CMPE42D1BWPHVT U649 ( .A(\mult_x_1/n319 ), .B(\mult_x_1/n147 ), .C(
        \mult_x_1/n144 ), .CIX(\mult_x_1/n351 ), .D(\mult_x_1/n335 ), .CO(
        \mult_x_1/n140 ), .COX(\mult_x_1/n139 ), .S(\mult_x_1/n141 ) );
  CMPE42D1BWPHVT U650 ( .A(\mult_x_1/n147 ), .B(\mult_x_1/n320 ), .C(
        \mult_x_1/n336 ), .CIX(\mult_x_1/n352 ), .D(\mult_x_1/n148 ), .CO(
        \mult_x_1/n145 ), .COX(\mult_x_1/n144 ), .S(\mult_x_1/n146 ) );
  CMPE42D1BWPHVT U651 ( .A(\mult_x_1/n155 ), .B(\mult_x_1/n151 ), .C(
        \mult_x_1/n337 ), .CIX(\mult_x_1/n353 ), .D(\mult_x_1/n152 ), .CO(
        \mult_x_1/n149 ), .COX(\mult_x_1/n148 ), .S(\mult_x_1/n150 ) );
  CMPE42D1BWPHVT U652 ( .A(\mult_x_1/n142 ), .B(\mult_x_1/n350 ), .C(
        \mult_x_1/n318 ), .CIX(\mult_x_1/n334 ), .D(\mult_x_1/n139 ), .CO(
        \mult_x_1/n137 ), .COX(\mult_x_1/n132 ), .S(\mult_x_1/n138 ) );
  CMPE42D1BWPHVT U653 ( .A(\mult_x_1/n184 ), .B(\mult_x_1/n326 ), .C(
        \mult_x_1/n188 ), .CIX(\mult_x_1/n189 ), .D(\mult_x_1/n342 ), .CO(
        \mult_x_1/n182 ), .COX(\mult_x_1/n181 ), .S(\mult_x_1/n183 ) );
  CMPE42D1BWPHVT U654 ( .A(\mult_x_1/n205 ), .B(\mult_x_1/n377 ), .C(
        \mult_x_1/n208 ), .CIX(\mult_x_1/n209 ), .D(\mult_x_1/n393 ), .CO(
        \mult_x_1/n201 ), .COX(\mult_x_1/n200 ), .S(\mult_x_1/n202 ) );
  CMPE42D1BWPHVT U655 ( .A(\mult_x_1/n213 ), .B(\mult_x_1/n378 ), .C(
        \mult_x_1/n216 ), .CIX(\mult_x_1/n217 ), .D(\mult_x_1/n394 ), .CO(
        \mult_x_1/n209 ), .COX(\mult_x_1/n208 ), .S(\mult_x_1/n210 ) );
  CMPE42D1BWPHVT U656 ( .A(\mult_x_1/n220 ), .B(\mult_x_1/n379 ), .C(
        \mult_x_1/n223 ), .CIX(\mult_x_1/n224 ), .D(\mult_x_1/n395 ), .CO(
        \mult_x_1/n217 ), .COX(\mult_x_1/n216 ), .S(\mult_x_1/n218 ) );
  CMPE42D1BWPHVT U657 ( .A(\mult_x_1/n227 ), .B(\mult_x_1/n380 ), .C(
        \mult_x_1/n230 ), .CIX(\mult_x_1/n231 ), .D(\mult_x_1/n396 ), .CO(
        \mult_x_1/n224 ), .COX(\mult_x_1/n223 ), .S(\mult_x_1/n225 ) );
  CMPE42D1BWPHVT U658 ( .A(\mult_x_1/n234 ), .B(\mult_x_1/n381 ), .C(
        \mult_x_1/n237 ), .CIX(\mult_x_1/n238 ), .D(\mult_x_1/n397 ), .CO(
        \mult_x_1/n231 ), .COX(\mult_x_1/n230 ), .S(\mult_x_1/n232 ) );
  CMPE42D1BWPHVT U659 ( .A(\mult_x_1/n382 ), .B(\mult_x_1/n241 ), .C(
        \mult_x_1/n242 ), .CIX(\mult_x_1/n243 ), .D(\mult_x_1/n398 ), .CO(
        \mult_x_1/n238 ), .COX(\mult_x_1/n237 ), .S(\mult_x_1/n239 ) );
  CMPE42D1BWPHVT U660 ( .A(\mult_x_1/n207 ), .B(\mult_x_1/n345 ), .C(
        \mult_x_1/n211 ), .CIX(\mult_x_1/n212 ), .D(\mult_x_1/n361 ), .CO(
        \mult_x_1/n204 ), .COX(\mult_x_1/n203 ), .S(\mult_x_1/n205 ) );
  CMPE42D1BWPHVT U661 ( .A(\mult_x_1/n246 ), .B(\mult_x_1/n383 ), .C(
        \mult_x_1/n247 ), .CIX(\mult_x_1/n248 ), .D(\mult_x_1/n399 ), .CO(
        \mult_x_1/n243 ), .COX(\mult_x_1/n242 ), .S(\mult_x_1/n244 ) );
  CMPE42D1BWPHVT U662 ( .A(\mult_x_1/n215 ), .B(\mult_x_1/n346 ), .C(
        \mult_x_1/n221 ), .CIX(\mult_x_1/n219 ), .D(\mult_x_1/n362 ), .CO(
        \mult_x_1/n212 ), .COX(\mult_x_1/n211 ), .S(\mult_x_1/n213 ) );
  CMPE42D1BWPHVT U663 ( .A(\mult_x_1/n251 ), .B(\mult_x_1/n384 ), .C(
        \mult_x_1/n254 ), .CIX(\mult_x_1/n252 ), .D(\mult_x_1/n400 ), .CO(
        \mult_x_1/n248 ), .COX(\mult_x_1/n247 ), .S(\mult_x_1/n249 ) );
  CMPE42D1BWPHVT U664 ( .A(\mult_x_1/n183 ), .B(\mult_x_1/n358 ), .C(
        \mult_x_1/n185 ), .CIX(\mult_x_1/n186 ), .D(\mult_x_1/n374 ), .CO(
        \mult_x_1/n179 ), .COX(\mult_x_1/n178 ), .S(\mult_x_1/n180 ) );
  CMPE42D1BWPHVT U665 ( .A(\mult_x_1/n197 ), .B(\mult_x_1/n376 ), .C(
        \mult_x_1/n200 ), .CIX(\mult_x_1/n201 ), .D(\mult_x_1/n392 ), .CO(
        \mult_x_1/n193 ), .COX(\mult_x_1/n192 ), .S(\mult_x_1/n194 ) );
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

  CKND0BWPHVT U1 ( .I(n22), .ZN(n39) );
  CKND0BWPHVT U2 ( .I(a[15]), .ZN(n14) );
  CKND0BWPHVT U3 ( .I(dir_left), .ZN(n156) );
  CKND2D0BWPHVT U4 ( .A1(is_signed), .A2(n156), .ZN(n116) );
  NR2D0BWPHVT U5 ( .A1(dir_left), .A2(b[0]), .ZN(n22) );
  NR2D0BWPHVT U6 ( .A1(b[0]), .A2(n156), .ZN(n43) );
  AOI22D0BWPHVT U7 ( .A1(n22), .A2(a[2]), .B1(n43), .B2(a[13]), .ZN(n2) );
  CKND0BWPHVT U8 ( .I(b[0]), .ZN(n18) );
  NR2D0BWPHVT U9 ( .A1(dir_left), .A2(n18), .ZN(n34) );
  CKND2D0BWPHVT U10 ( .A1(dir_left), .A2(b[0]), .ZN(n25) );
  CKND0BWPHVT U11 ( .I(n25), .ZN(n38) );
  AOI22D0BWPHVT U12 ( .A1(n34), .A2(a[3]), .B1(n38), .B2(a[12]), .ZN(n1) );
  CKND2D0BWPHVT U13 ( .A1(n2), .A2(n1), .ZN(n59) );
  NR2D0BWPHVT U14 ( .A1(b[3]), .A2(b[2]), .ZN(n99) );
  CKND2D0BWPHVT U15 ( .A1(b[1]), .A2(n99), .ZN(n54) );
  OAI22D0BWPHVT U16 ( .A1(n156), .A2(a[0]), .B1(a[15]), .B2(dir_left), .ZN(
        n105) );
  CKND0BWPHVT U17 ( .I(n105), .ZN(n51) );
  AOI222D0BWPHVT U18 ( .A1(n51), .A2(b[0]), .B1(n22), .B2(a[14]), .C1(a[1]), 
        .C2(n43), .ZN(n50) );
  OAI22D0BWPHVT U19 ( .A1(n156), .A2(a[2]), .B1(a[13]), .B2(dir_left), .ZN(n19) );
  CKND0BWPHVT U20 ( .I(n43), .ZN(n28) );
  CKND0BWPHVT U21 ( .I(a[3]), .ZN(n29) );
  CKND0BWPHVT U22 ( .I(a[12]), .ZN(n27) );
  OA222D0BWPHVT U23 ( .A1(n19), .A2(n18), .B1(n28), .B2(n29), .C1(n39), .C2(
        n27), .Z(n53) );
  CKND0BWPHVT U24 ( .I(b[1]), .ZN(n68) );
  AOI22D0BWPHVT U25 ( .A1(b[1]), .A2(n50), .B1(n53), .B2(n68), .ZN(n137) );
  CKND0BWPHVT U26 ( .I(a[4]), .ZN(n26) );
  AOI22D0BWPHVT U27 ( .A1(a[10]), .A2(n22), .B1(a[5]), .B2(n43), .ZN(n3) );
  OAI21D0BWPHVT U28 ( .A1(n25), .A2(n26), .B(n3), .ZN(n4) );
  AOI21D0BWPHVT U29 ( .A1(n34), .A2(a[11]), .B(n4), .ZN(n52) );
  CKND0BWPHVT U30 ( .I(a[6]), .ZN(n36) );
  AOI22D0BWPHVT U31 ( .A1(n22), .A2(a[8]), .B1(n43), .B2(a[7]), .ZN(n5) );
  OAI21D0BWPHVT U32 ( .A1(n25), .A2(n36), .B(n5), .ZN(n6) );
  AOI21D0BWPHVT U33 ( .A1(n34), .A2(a[9]), .B(n6), .ZN(n55) );
  AOI22D0BWPHVT U34 ( .A1(b[1]), .A2(n52), .B1(n55), .B2(n68), .ZN(n81) );
  CKND0BWPHVT U35 ( .I(b[2]), .ZN(n150) );
  AOI22D0BWPHVT U36 ( .A1(b[2]), .A2(n137), .B1(n81), .B2(n150), .ZN(n103) );
  NR2D0BWPHVT U37 ( .A1(b[3]), .A2(n150), .ZN(n97) );
  AOI22D0BWPHVT U38 ( .A1(n22), .A2(a[6]), .B1(a[9]), .B2(n43), .ZN(n57) );
  AOI22D0BWPHVT U39 ( .A1(n34), .A2(a[7]), .B1(n38), .B2(a[8]), .ZN(n56) );
  CKND2D0BWPHVT U40 ( .A1(n57), .A2(n56), .ZN(n9) );
  AOI22D0BWPHVT U41 ( .A1(n22), .A2(a[4]), .B1(n43), .B2(a[11]), .ZN(n8) );
  AOI22D0BWPHVT U42 ( .A1(n34), .A2(a[5]), .B1(a[10]), .B2(n38), .ZN(n7) );
  CKND2D0BWPHVT U43 ( .A1(n8), .A2(n7), .ZN(n58) );
  AOI22D0BWPHVT U44 ( .A1(b[1]), .A2(n9), .B1(n58), .B2(n68), .ZN(n82) );
  AOI22D0BWPHVT U45 ( .A1(b[3]), .A2(n103), .B1(n97), .B2(n82), .ZN(n13) );
  OAI22D0BWPHVT U46 ( .A1(a[15]), .A2(n28), .B1(a[0]), .B2(n39), .ZN(n11) );
  CKND0BWPHVT U47 ( .I(n34), .ZN(n37) );
  OAI22D0BWPHVT U48 ( .A1(a[1]), .A2(n37), .B1(a[14]), .B2(n25), .ZN(n10) );
  OAI211D0BWPHVT U49 ( .A1(n11), .A2(n10), .B(n99), .C(n68), .ZN(n12) );
  OAI211D0BWPHVT U50 ( .A1(n59), .A2(n54), .B(n13), .C(n12), .ZN(n16) );
  CKND2D0BWPHVT U51 ( .A1(n51), .A2(n18), .ZN(n46) );
  NR2D0BWPHVT U52 ( .A1(b[1]), .A2(n46), .ZN(n109) );
  CKND0BWPHVT U53 ( .I(n109), .ZN(n15) );
  NR2D0BWPHVT U54 ( .A1(dir_left), .A2(is_signed), .ZN(n134) );
  CKND0BWPHVT U55 ( .I(n134), .ZN(n129) );
  CKND0BWPHVT U56 ( .I(n99), .ZN(n83) );
  NR2D0BWPHVT U57 ( .A1(n129), .A2(n83), .ZN(n154) );
  CKND0BWPHVT U58 ( .I(n154), .ZN(n143) );
  OAI222D0BWPHVT U59 ( .A1(n14), .A2(n116), .B1(n16), .B2(n156), .C1(n15), 
        .C2(n143), .ZN(res[15]) );
  CKND2D0BWPHVT U60 ( .A1(dir_left), .A2(n99), .ZN(n67) );
  OAI22D0BWPHVT U61 ( .A1(dir_left), .A2(n16), .B1(n67), .B2(n15), .ZN(res[0])
         );
  CKND0BWPHVT U62 ( .I(n116), .ZN(n86) );
  CKND2D0BWPHVT U63 ( .A1(b[3]), .A2(n86), .ZN(n104) );
  CKND0BWPHVT U64 ( .I(n104), .ZN(n66) );
  AOI221D0BWPHVT U65 ( .A1(a[1]), .A2(dir_left), .B1(a[14]), .B2(n156), .C(n18), .ZN(n17) );
  AO21D0BWPHVT U66 ( .A1(n19), .A2(n18), .B(n17), .Z(n65) );
  NR2D0BWPHVT U67 ( .A1(b[1]), .A2(n65), .ZN(n45) );
  AOI21D0BWPHVT U68 ( .A1(b[1]), .A2(n51), .B(n45), .ZN(n91) );
  AOI22D0BWPHVT U69 ( .A1(n22), .A2(a[11]), .B1(n43), .B2(a[4]), .ZN(n20) );
  OAI21D0BWPHVT U70 ( .A1(n25), .A2(n29), .B(n20), .ZN(n21) );
  AOI21D0BWPHVT U71 ( .A1(n34), .A2(a[12]), .B(n21), .ZN(n64) );
  CKND0BWPHVT U72 ( .I(a[5]), .ZN(n40) );
  AOI22D0BWPHVT U73 ( .A1(n22), .A2(a[9]), .B1(n43), .B2(a[6]), .ZN(n23) );
  OAI21D0BWPHVT U74 ( .A1(n25), .A2(n40), .B(n23), .ZN(n24) );
  AOI21D0BWPHVT U75 ( .A1(n34), .A2(a[10]), .B(n24), .ZN(n70) );
  AOI22D0BWPHVT U76 ( .A1(b[1]), .A2(n64), .B1(n70), .B2(n68), .ZN(n88) );
  NR2D0BWPHVT U77 ( .A1(b[2]), .A2(n88), .ZN(n47) );
  AOI21D0BWPHVT U78 ( .A1(b[2]), .A2(n91), .B(n47), .ZN(n120) );
  OAI22D0BWPHVT U79 ( .A1(a[1]), .A2(n39), .B1(a[14]), .B2(n28), .ZN(n33) );
  OAI22D0BWPHVT U80 ( .A1(a[2]), .A2(n37), .B1(a[13]), .B2(n25), .ZN(n32) );
  NR2D0BWPHVT U81 ( .A1(n37), .A2(n26), .ZN(n31) );
  OAI22D0BWPHVT U82 ( .A1(n39), .A2(n29), .B1(n28), .B2(n27), .ZN(n30) );
  AOI211D0BWPHVT U83 ( .A1(a[11]), .A2(n38), .B(n31), .C(n30), .ZN(n72) );
  OAI32D0BWPHVT U84 ( .A1(b[1]), .A2(n33), .A3(n32), .B1(n72), .B2(n68), .ZN(
        n44) );
  NR2D0BWPHVT U85 ( .A1(n34), .A2(n43), .ZN(n35) );
  MUX2ND0BWPHVT U86 ( .I0(a[8]), .I1(a[7]), .S(n35), .ZN(n69) );
  NR2D0BWPHVT U87 ( .A1(n37), .A2(n36), .ZN(n42) );
  MOAI22D0BWPHVT U88 ( .A1(n40), .A2(n39), .B1(n38), .B2(a[9]), .ZN(n41) );
  AOI211D0BWPHVT U89 ( .A1(n43), .A2(a[10]), .B(n42), .C(n41), .ZN(n71) );
  AOI22D0BWPHVT U90 ( .A1(b[1]), .A2(n69), .B1(n71), .B2(n68), .ZN(n89) );
  AOI22D0BWPHVT U91 ( .A1(n99), .A2(n44), .B1(n97), .B2(n89), .ZN(n159) );
  IAO21D0BWPHVT U92 ( .A1(n46), .A2(n68), .B(n45), .ZN(n142) );
  AOI21D0BWPHVT U93 ( .A1(b[2]), .A2(n142), .B(n47), .ZN(n115) );
  CKND2D0BWPHVT U94 ( .A1(b[3]), .A2(n115), .ZN(n157) );
  AOI21D0BWPHVT U95 ( .A1(n159), .A2(n157), .B(dir_left), .ZN(n48) );
  AOI21D0BWPHVT U96 ( .A1(n66), .A2(n120), .B(n48), .ZN(n49) );
  OAI31D0BWPHVT U97 ( .A1(b[1]), .A2(n50), .A3(n67), .B(n49), .ZN(res[1]) );
  NR2D0BWPHVT U98 ( .A1(b[1]), .A2(n50), .ZN(n155) );
  AOI21D0BWPHVT U99 ( .A1(b[1]), .A2(n51), .B(n155), .ZN(n151) );
  AOI22D0BWPHVT U100 ( .A1(b[1]), .A2(n53), .B1(n52), .B2(n68), .ZN(n96) );
  CKND2D0BWPHVT U101 ( .A1(n96), .A2(n150), .ZN(n60) );
  OAI21D0BWPHVT U102 ( .A1(n151), .A2(n150), .B(n60), .ZN(n125) );
  NR2D0BWPHVT U103 ( .A1(b[1]), .A2(n83), .ZN(n74) );
  CKND0BWPHVT U104 ( .I(n54), .ZN(n76) );
  AOI32D0BWPHVT U105 ( .A1(n57), .A2(n68), .A3(n56), .B1(n55), .B2(b[1]), .ZN(
        n98) );
  AOI222D0BWPHVT U106 ( .A1(n59), .A2(n74), .B1(n58), .B2(n76), .C1(n98), .C2(
        n97), .ZN(n61) );
  MAOI22D0BWPHVT U107 ( .A1(n66), .A2(n125), .B1(n116), .B2(n61), .ZN(n63) );
  IOA21D0BWPHVT U108 ( .A1(n155), .A2(b[2]), .B(n60), .ZN(n123) );
  CKND0BWPHVT U109 ( .I(n123), .ZN(n95) );
  CKND0BWPHVT U110 ( .I(b[3]), .ZN(n124) );
  OAI21D0BWPHVT U111 ( .A1(n95), .A2(n124), .B(n61), .ZN(n144) );
  CKND2D0BWPHVT U112 ( .A1(n134), .A2(n144), .ZN(n62) );
  OAI211D0BWPHVT U113 ( .A1(n142), .A2(n67), .B(n63), .C(n62), .ZN(res[2]) );
  AOI22D0BWPHVT U114 ( .A1(b[1]), .A2(n65), .B1(n64), .B2(n68), .ZN(n106) );
  NR2D0BWPHVT U115 ( .A1(b[2]), .A2(n106), .ZN(n132) );
  CKND2D0BWPHVT U116 ( .A1(n105), .A2(b[2]), .ZN(n131) );
  CKND2D0BWPHVT U117 ( .A1(n66), .A2(n131), .ZN(n101) );
  CKND0BWPHVT U118 ( .I(n67), .ZN(n77) );
  AOI22D0BWPHVT U119 ( .A1(b[1]), .A2(n70), .B1(n69), .B2(n68), .ZN(n107) );
  CKND0BWPHVT U120 ( .I(n71), .ZN(n75) );
  CKND0BWPHVT U121 ( .I(n72), .ZN(n73) );
  AOI222D0BWPHVT U122 ( .A1(n97), .A2(n107), .B1(n76), .B2(n75), .C1(n74), 
        .C2(n73), .ZN(n78) );
  MAOI22D0BWPHVT U123 ( .A1(n137), .A2(n77), .B1(n116), .B2(n78), .ZN(n80) );
  AOI22D0BWPHVT U124 ( .A1(b[2]), .A2(n109), .B1(n106), .B2(n150), .ZN(n130)
         );
  OAI21D0BWPHVT U125 ( .A1(n124), .A2(n130), .B(n78), .ZN(n138) );
  CKND2D0BWPHVT U126 ( .A1(n134), .A2(n138), .ZN(n79) );
  OAI211D0BWPHVT U127 ( .A1(n132), .A2(n101), .B(n80), .C(n79), .ZN(res[3]) );
  MOAI22D0BWPHVT U128 ( .A1(n83), .A2(n82), .B1(n81), .B2(n97), .ZN(n85) );
  NR2D0BWPHVT U129 ( .A1(b[2]), .A2(n137), .ZN(n140) );
  NR2D0BWPHVT U130 ( .A1(b[2]), .A2(n124), .ZN(n108) );
  AOI21D0BWPHVT U131 ( .A1(n108), .A2(n137), .B(n85), .ZN(n136) );
  OAI22D0BWPHVT U132 ( .A1(n140), .A2(n101), .B1(n136), .B2(n129), .ZN(n84) );
  AOI21D0BWPHVT U133 ( .A1(n86), .A2(n85), .B(n84), .ZN(n87) );
  OAI31D0BWPHVT U134 ( .A1(b[3]), .A2(n156), .A3(n130), .B(n87), .ZN(res[4])
         );
  CKND0BWPHVT U135 ( .I(n108), .ZN(n90) );
  AOI22D0BWPHVT U136 ( .A1(n99), .A2(n89), .B1(n97), .B2(n88), .ZN(n92) );
  OAI21D0BWPHVT U137 ( .A1(n142), .A2(n90), .B(n92), .ZN(n126) );
  IOA21D0BWPHVT U138 ( .A1(n91), .A2(n150), .B(n131), .ZN(n148) );
  OAI22D0BWPHVT U139 ( .A1(n92), .A2(n116), .B1(n104), .B2(n148), .ZN(n93) );
  AOI21D0BWPHVT U140 ( .A1(n134), .A2(n126), .B(n93), .ZN(n94) );
  OAI31D0BWPHVT U141 ( .A1(b[3]), .A2(n95), .A3(n156), .B(n94), .ZN(res[5]) );
  AOI22D0BWPHVT U142 ( .A1(n99), .A2(n98), .B1(n97), .B2(n96), .ZN(n118) );
  CKND2D0BWPHVT U143 ( .A1(n108), .A2(n155), .ZN(n117) );
  AOI21D0BWPHVT U144 ( .A1(n118), .A2(n117), .B(dir_left), .ZN(n100) );
  AOI31D0BWPHVT U145 ( .A1(dir_left), .A2(n115), .A3(n124), .B(n100), .ZN(n102) );
  AOI32D0BWPHVT U146 ( .A1(n151), .A2(n102), .A3(n150), .B1(n101), .B2(n102), 
        .ZN(res[6]) );
  NR2D0BWPHVT U147 ( .A1(b[3]), .A2(n103), .ZN(n114) );
  NR2D0BWPHVT U148 ( .A1(n105), .A2(n104), .ZN(n153) );
  OAI221D0BWPHVT U149 ( .A1(b[2]), .A2(n107), .B1(n150), .B2(n106), .C(n124), 
        .ZN(n112) );
  CKND2D0BWPHVT U150 ( .A1(n109), .A2(n108), .ZN(n111) );
  AOI21D0BWPHVT U151 ( .A1(n112), .A2(n111), .B(dir_left), .ZN(n110) );
  AO211D0BWPHVT U152 ( .A1(dir_left), .A2(n114), .B(n153), .C(n110), .Z(res[7]) );
  AOI21D0BWPHVT U153 ( .A1(n112), .A2(n111), .B(n156), .ZN(n113) );
  AO211D0BWPHVT U154 ( .A1(n114), .A2(n156), .B(n113), .C(n153), .Z(res[8]) );
  CKND2D0BWPHVT U155 ( .A1(n115), .A2(n124), .ZN(n122) );
  NR2D0BWPHVT U156 ( .A1(b[3]), .A2(n116), .ZN(n141) );
  AOI21D0BWPHVT U157 ( .A1(n118), .A2(n117), .B(n156), .ZN(n119) );
  AOI211D0BWPHVT U158 ( .A1(n120), .A2(n141), .B(n153), .C(n119), .ZN(n121) );
  OAI21D0BWPHVT U159 ( .A1(n129), .A2(n122), .B(n121), .ZN(res[9]) );
  CKND2D0BWPHVT U160 ( .A1(n124), .A2(n123), .ZN(n128) );
  AOI22D0BWPHVT U161 ( .A1(dir_left), .A2(n126), .B1(n141), .B2(n125), .ZN(
        n127) );
  CKND0BWPHVT U162 ( .I(n153), .ZN(n145) );
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


module test_pe_comp_unq1_0 ( op_code, op_a, op_b, op_d_p, carry_out, res, ovfl, 
        res_p );
  input [7:0] op_code;
  input [15:0] op_a;
  input [15:0] op_b;
  output [0:0] carry_out;
  output [15:0] res;
  input op_d_p;
  output ovfl, res_p;
  wire   \add_a[0][15] , \add_a[0][14] , \add_a[0][13] , \add_a[0][12] ,
         \add_a[0][11] , \add_a[0][10] , \add_a[0][9] , \add_a[0][8] ,
         \add_a[0][7] , \add_a[0][6] , \add_a[0][5] , \add_a[0][4] ,
         \add_a[0][3] , \add_a[0][2] , \add_a[0][1] , \add_a[0][0] ,
         \add_b[0][15] , \add_b[0][14] , \add_b[0][13] , \add_b[0][12] ,
         \add_b[0][11] , \add_b[0][10] , \add_b[0][9] , \add_b[0][8] ,
         \add_b[0][7] , \add_b[0][6] , \add_b[0][5] , \add_b[0][4] ,
         \add_b[0][3] , \add_b[0][2] , \add_b[0][1] , \add_b[0][0] ,
         \add_c_in[0] , \add_res[0][15] , \add_res[0][14] , \add_res[0][13] ,
         \add_res[0][12] , \add_res[0][11] , \add_res[0][10] , \add_res[0][9] ,
         \add_res[0][8] , \add_res[0][7] , \add_res[0][6] , \add_res[0][5] ,
         \add_res[0][4] , \add_res[0][3] , \add_res[0][2] , \add_res[0][1] ,
         \add_res[0][0] , cmpr_lte, cmpr_gte, n242, n243, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215;
  wire   [31:0] mult_res;
  wire   [15:0] shift_res;

  CKND0BWPHVT U3 ( .I(n45), .ZN(n156) );
  CKND0BWPHVT U4 ( .I(op_b[11]), .ZN(n211) );
  CKND0BWPHVT U5 ( .I(op_b[14]), .ZN(n168) );
  CKND0BWPHVT U6 ( .I(op_a[13]), .ZN(n204) );
  CKND0BWPHVT U7 ( .I(op_code[3]), .ZN(n7) );
  CKND0BWPHVT U8 ( .I(op_code[0]), .ZN(n22) );
  CKND0BWPHVT U9 ( .I(op_code[4]), .ZN(n13) );
  AOI22D0BWPHVT U10 ( .A1(op_code[2]), .A2(n7), .B1(n22), .B2(n13), .ZN(n4) );
  CKND0BWPHVT U11 ( .I(op_code[1]), .ZN(n10) );
  NR2D0BWPHVT U12 ( .A1(op_code[1]), .A2(op_code[2]), .ZN(n1) );
  OAI221D0BWPHVT U13 ( .A1(op_code[0]), .A2(op_code[4]), .B1(n22), .B2(
        op_code[3]), .C(n1), .ZN(n3) );
  AOI32D0BWPHVT U14 ( .A1(op_code[2]), .A2(op_code[4]), .A3(op_code[0]), .B1(
        op_code[3]), .B2(op_code[4]), .ZN(n2) );
  OAI211D0BWPHVT U15 ( .A1(n4), .A2(n10), .B(n3), .C(n2), .ZN(n146) );
  NR2D0BWPHVT U16 ( .A1(op_code[5]), .A2(n146), .ZN(n19) );
  CKND0BWPHVT U17 ( .I(op_d_p), .ZN(n162) );
  NR3D0BWPHVT U18 ( .A1(op_code[3]), .A2(op_code[2]), .A3(n22), .ZN(n9) );
  NR2D0BWPHVT U19 ( .A1(n10), .A2(op_code[4]), .ZN(n8) );
  CKND2D0BWPHVT U20 ( .A1(n9), .A2(n8), .ZN(n51) );
  CKND0BWPHVT U21 ( .I(op_a[15]), .ZN(n172) );
  ND4D0BWPHVT U22 ( .A1(n10), .A2(n7), .A3(n22), .A4(op_code[2]), .ZN(n14) );
  NR2D0BWPHVT U23 ( .A1(op_code[4]), .A2(n14), .ZN(n39) );
  CKND0BWPHVT U24 ( .I(op_code[2]), .ZN(n20) );
  NR3D0BWPHVT U25 ( .A1(op_code[1]), .A2(op_code[4]), .A3(n20), .ZN(n37) );
  CKND2D0BWPHVT U26 ( .A1(n37), .A2(n7), .ZN(n157) );
  NR2D0BWPHVT U27 ( .A1(n22), .A2(n157), .ZN(n40) );
  AOI22D0BWPHVT U28 ( .A1(n39), .A2(cmpr_gte), .B1(n40), .B2(cmpr_lte), .ZN(
        n50) );
  CKND2D0BWPHVT U29 ( .A1(n22), .A2(n13), .ZN(n5) );
  NR4D0BWPHVT U30 ( .A1(op_code[1]), .A2(op_code[2]), .A3(n7), .A4(n5), .ZN(
        n147) );
  CKND2D0BWPHVT U31 ( .A1(op_code[1]), .A2(op_code[4]), .ZN(n6) );
  NR4D0BWPHVT U32 ( .A1(op_code[3]), .A2(op_code[2]), .A3(op_code[0]), .A4(n6), 
        .ZN(n49) );
  NR2D0BWPHVT U33 ( .A1(n7), .A2(n22), .ZN(n38) );
  CKAN2D0BWPHVT U34 ( .A1(n38), .A2(n8), .Z(n21) );
  CKND2D0BWPHVT U35 ( .A1(n9), .A2(n10), .ZN(n15) );
  NR2D0BWPHVT U36 ( .A1(n13), .A2(n15), .ZN(n175) );
  AOI21D0BWPHVT U37 ( .A1(n21), .A2(op_code[2]), .B(n175), .ZN(n154) );
  ND3D0BWPHVT U38 ( .A1(op_code[1]), .A2(op_code[4]), .A3(n9), .ZN(n137) );
  NR2D0BWPHVT U39 ( .A1(op_code[3]), .A2(op_code[0]), .ZN(n11) );
  CKND2D0BWPHVT U40 ( .A1(n11), .A2(n10), .ZN(n12) );
  NR3D0BWPHVT U41 ( .A1(op_code[2]), .A2(op_code[4]), .A3(n12), .ZN(n160) );
  INR2D0BWPHVT U42 ( .A1(n137), .B1(n160), .ZN(n151) );
  OR2D0BWPHVT U43 ( .A1(n14), .A2(n13), .Z(n152) );
  NR2D0BWPHVT U44 ( .A1(op_code[4]), .A2(n15), .ZN(n45) );
  ND4D0BWPHVT U45 ( .A1(n154), .A2(n151), .A3(n152), .A4(n156), .ZN(n16) );
  OAI31D0BWPHVT U46 ( .A1(n147), .A2(n49), .A3(n16), .B(carry_out[0]), .ZN(n17) );
  OA211D0BWPHVT U47 ( .A1(n51), .A2(n172), .B(n50), .C(n17), .Z(n18) );
  OAI22D0BWPHVT U48 ( .A1(n19), .A2(n162), .B1(op_code[5]), .B2(n18), .ZN(
        res_p) );
  CKND0BWPHVT U49 ( .I(op_code[6]), .ZN(n34) );
  NR2D0BWPHVT U50 ( .A1(\add_res[0][15] ), .A2(n34), .ZN(n52) );
  CKND0BWPHVT U51 ( .I(n51), .ZN(n46) );
  CKND0BWPHVT U52 ( .I(op_code[5]), .ZN(n159) );
  CKND2D0BWPHVT U53 ( .A1(n46), .A2(n159), .ZN(n173) );
  CKND2D0BWPHVT U54 ( .A1(n21), .A2(n20), .ZN(n36) );
  ND3D0BWPHVT U55 ( .A1(op_code[3]), .A2(n37), .A3(n22), .ZN(n48) );
  CKAN2D0BWPHVT U56 ( .A1(n36), .A2(n48), .Z(n150) );
  CKND0BWPHVT U57 ( .I(op_b[15]), .ZN(n169) );
  AOI22D0BWPHVT U58 ( .A1(op_a[15]), .A2(n169), .B1(op_b[15]), .B2(n172), .ZN(
        n176) );
  CKND0BWPHVT U59 ( .I(n176), .ZN(n56) );
  CKND0BWPHVT U60 ( .I(mult_res[15]), .ZN(n60) );
  AOI22D0BWPHVT U61 ( .A1(mult_res[15]), .A2(n176), .B1(n56), .B2(n60), .ZN(
        n25) );
  AOI22D0BWPHVT U62 ( .A1(n56), .A2(n45), .B1(n160), .B2(n176), .ZN(n24) );
  MAOI22D0BWPHVT U63 ( .A1(\add_res[0][15] ), .A2(n172), .B1(n172), .B2(
        \add_res[0][15] ), .ZN(n23) );
  OAI22D0BWPHVT U64 ( .A1(n150), .A2(n25), .B1(n24), .B2(n23), .ZN(n33) );
  NR4D0BWPHVT U65 ( .A1(mult_res[28]), .A2(mult_res[29]), .A3(mult_res[30]), 
        .A4(mult_res[31]), .ZN(n30) );
  NR4D0BWPHVT U66 ( .A1(mult_res[24]), .A2(mult_res[25]), .A3(mult_res[26]), 
        .A4(mult_res[27]), .ZN(n29) );
  NR4D0BWPHVT U67 ( .A1(mult_res[16]), .A2(mult_res[17]), .A3(mult_res[18]), 
        .A4(mult_res[19]), .ZN(n27) );
  NR4D0BWPHVT U68 ( .A1(mult_res[20]), .A2(mult_res[21]), .A3(mult_res[22]), 
        .A4(mult_res[23]), .ZN(n26) );
  AO21D0BWPHVT U69 ( .A1(n27), .A2(n26), .B(n36), .Z(n28) );
  AOI31D0BWPHVT U70 ( .A1(n30), .A2(n29), .A3(n28), .B(n150), .ZN(n31) );
  AO211D0BWPHVT U71 ( .A1(n160), .A2(carry_out[0]), .B(op_code[6]), .C(n31), 
        .Z(n32) );
  OAI211D0BWPHVT U72 ( .A1(n34), .A2(n33), .B(n159), .C(n32), .ZN(n35) );
  OAI31D0BWPHVT U73 ( .A1(n52), .A2(n172), .A3(n173), .B(n35), .ZN(ovfl) );
  NR2D0BWPHVT U74 ( .A1(op_code[5]), .A2(n36), .ZN(n135) );
  CKND0BWPHVT U75 ( .I(n135), .ZN(n61) );
  CKND2D0BWPHVT U76 ( .A1(n38), .A2(n37), .ZN(n148) );
  NR2D0BWPHVT U77 ( .A1(op_code[5]), .A2(n148), .ZN(n134) );
  NR2D0BWPHVT U78 ( .A1(op_code[5]), .A2(n154), .ZN(n132) );
  AOI22D0BWPHVT U79 ( .A1(n134), .A2(mult_res[31]), .B1(n132), .B2(
        shift_res[15]), .ZN(n59) );
  CKND0BWPHVT U80 ( .I(n39), .ZN(n42) );
  CKND0BWPHVT U81 ( .I(n40), .ZN(n41) );
  OAI22D0BWPHVT U82 ( .A1(cmpr_gte), .A2(n42), .B1(cmpr_lte), .B2(n41), .ZN(
        n43) );
  AOI211D0BWPHVT U83 ( .A1(n147), .A2(n162), .B(n49), .C(n43), .ZN(n44) );
  NR2D0BWPHVT U84 ( .A1(op_code[5]), .A2(n44), .ZN(n140) );
  NR2D0BWPHVT U85 ( .A1(op_code[5]), .A2(n152), .ZN(n141) );
  AOI211D0BWPHVT U86 ( .A1(n52), .A2(n46), .B(n45), .C(n160), .ZN(n47) );
  NR2D0BWPHVT U87 ( .A1(op_code[5]), .A2(n47), .ZN(n139) );
  NR2D0BWPHVT U88 ( .A1(op_code[5]), .A2(n48), .ZN(n133) );
  AO22D0BWPHVT U89 ( .A1(\add_res[0][15] ), .A2(n139), .B1(n133), .B2(
        mult_res[23]), .Z(n55) );
  NR2D0BWPHVT U90 ( .A1(op_code[5]), .A2(n49), .ZN(n155) );
  OAI211D0BWPHVT U91 ( .A1(n52), .A2(n51), .B(n155), .C(n50), .ZN(n53) );
  AOI211XD0BWPHVT U92 ( .A1(op_d_p), .A2(n147), .B(n146), .C(n53), .ZN(n136)
         );
  OAI32D0BWPHVT U93 ( .A1(n137), .A2(n172), .A3(n169), .B1(n136), .B2(n172), 
        .ZN(n54) );
  AO211D0BWPHVT U94 ( .A1(n141), .A2(n56), .B(n55), .C(n54), .Z(n57) );
  AOI21D0BWPHVT U95 ( .A1(n140), .A2(op_b[15]), .B(n57), .ZN(n58) );
  OAI211D0BWPHVT U96 ( .A1(n61), .A2(n60), .B(n59), .C(n58), .ZN(res[15]) );
  AOI22D0BWPHVT U97 ( .A1(n133), .A2(mult_res[8]), .B1(n132), .B2(shift_res[0]), .ZN(n66) );
  AOI22D0BWPHVT U98 ( .A1(n135), .A2(mult_res[0]), .B1(n134), .B2(mult_res[16]), .ZN(n65) );
  CKND0BWPHVT U99 ( .I(op_b[0]), .ZN(n184) );
  OAI221D0BWPHVT U100 ( .A1(op_b[0]), .A2(n152), .B1(n184), .B2(n137), .C(n136), .ZN(n62) );
  AOI22D0BWPHVT U101 ( .A1(op_a[0]), .A2(n62), .B1(n139), .B2(\add_res[0][0] ), 
        .ZN(n64) );
  CKND0BWPHVT U102 ( .I(op_a[0]), .ZN(n183) );
  AOI32D0BWPHVT U103 ( .A1(n141), .A2(op_b[0]), .A3(n183), .B1(n140), .B2(
        op_b[0]), .ZN(n63) );
  ND4D0BWPHVT U104 ( .A1(n66), .A2(n65), .A3(n64), .A4(n63), .ZN(res[0]) );
  AOI22D0BWPHVT U105 ( .A1(n133), .A2(mult_res[9]), .B1(n132), .B2(
        shift_res[1]), .ZN(n71) );
  AOI22D0BWPHVT U106 ( .A1(n135), .A2(mult_res[1]), .B1(n134), .B2(
        mult_res[17]), .ZN(n70) );
  CKND0BWPHVT U107 ( .I(op_b[1]), .ZN(n181) );
  OAI221D0BWPHVT U108 ( .A1(op_b[1]), .A2(n152), .B1(n181), .B2(n137), .C(n136), .ZN(n67) );
  AOI22D0BWPHVT U109 ( .A1(n139), .A2(\add_res[0][1] ), .B1(op_a[1]), .B2(n67), 
        .ZN(n69) );
  CKND0BWPHVT U110 ( .I(op_a[1]), .ZN(n180) );
  AOI32D0BWPHVT U111 ( .A1(n141), .A2(op_b[1]), .A3(n180), .B1(n140), .B2(
        op_b[1]), .ZN(n68) );
  ND4D0BWPHVT U112 ( .A1(n71), .A2(n70), .A3(n69), .A4(n68), .ZN(res[1]) );
  AOI22D0BWPHVT U113 ( .A1(n133), .A2(mult_res[10]), .B1(n132), .B2(
        shift_res[2]), .ZN(n76) );
  AOI22D0BWPHVT U114 ( .A1(n135), .A2(mult_res[2]), .B1(n134), .B2(
        mult_res[18]), .ZN(n75) );
  CKND0BWPHVT U115 ( .I(op_b[2]), .ZN(n177) );
  OAI221D0BWPHVT U116 ( .A1(op_b[2]), .A2(n152), .B1(n177), .B2(n137), .C(n136), .ZN(n72) );
  AOI22D0BWPHVT U117 ( .A1(n139), .A2(\add_res[0][2] ), .B1(op_a[2]), .B2(n72), 
        .ZN(n74) );
  CKND0BWPHVT U118 ( .I(op_a[2]), .ZN(n178) );
  AOI32D0BWPHVT U119 ( .A1(n141), .A2(op_b[2]), .A3(n178), .B1(n140), .B2(
        op_b[2]), .ZN(n73) );
  ND4D0BWPHVT U120 ( .A1(n76), .A2(n75), .A3(n74), .A4(n73), .ZN(res[2]) );
  AOI22D0BWPHVT U121 ( .A1(n133), .A2(mult_res[11]), .B1(n132), .B2(
        shift_res[3]), .ZN(n81) );
  AOI22D0BWPHVT U122 ( .A1(n135), .A2(mult_res[3]), .B1(n134), .B2(
        mult_res[19]), .ZN(n80) );
  CKND0BWPHVT U123 ( .I(op_b[3]), .ZN(n193) );
  OAI221D0BWPHVT U124 ( .A1(op_b[3]), .A2(n152), .B1(n193), .B2(n137), .C(n136), .ZN(n77) );
  AOI22D0BWPHVT U125 ( .A1(n139), .A2(\add_res[0][3] ), .B1(op_a[3]), .B2(n77), 
        .ZN(n79) );
  CKND0BWPHVT U126 ( .I(op_a[3]), .ZN(n192) );
  AOI32D0BWPHVT U127 ( .A1(n141), .A2(op_b[3]), .A3(n192), .B1(n140), .B2(
        op_b[3]), .ZN(n78) );
  ND4D0BWPHVT U128 ( .A1(n81), .A2(n80), .A3(n79), .A4(n78), .ZN(res[3]) );
  AOI22D0BWPHVT U129 ( .A1(n133), .A2(mult_res[12]), .B1(n132), .B2(
        shift_res[4]), .ZN(n86) );
  AOI22D0BWPHVT U130 ( .A1(n135), .A2(mult_res[4]), .B1(n134), .B2(
        mult_res[20]), .ZN(n85) );
  CKND0BWPHVT U131 ( .I(op_b[4]), .ZN(n190) );
  OAI221D0BWPHVT U132 ( .A1(op_b[4]), .A2(n152), .B1(n190), .B2(n137), .C(n136), .ZN(n82) );
  AOI22D0BWPHVT U133 ( .A1(n139), .A2(\add_res[0][4] ), .B1(op_a[4]), .B2(n82), 
        .ZN(n84) );
  CKND0BWPHVT U134 ( .I(op_a[4]), .ZN(n189) );
  AOI32D0BWPHVT U135 ( .A1(n141), .A2(op_b[4]), .A3(n189), .B1(n140), .B2(
        op_b[4]), .ZN(n83) );
  ND4D0BWPHVT U136 ( .A1(n86), .A2(n85), .A3(n84), .A4(n83), .ZN(res[4]) );
  AOI22D0BWPHVT U137 ( .A1(n133), .A2(mult_res[13]), .B1(n132), .B2(
        shift_res[5]), .ZN(n91) );
  AOI22D0BWPHVT U138 ( .A1(n135), .A2(mult_res[5]), .B1(n134), .B2(
        mult_res[21]), .ZN(n90) );
  CKND0BWPHVT U139 ( .I(op_b[5]), .ZN(n163) );
  OAI221D0BWPHVT U140 ( .A1(op_b[5]), .A2(n152), .B1(n163), .B2(n137), .C(n136), .ZN(n87) );
  AOI22D0BWPHVT U141 ( .A1(n139), .A2(\add_res[0][5] ), .B1(op_a[5]), .B2(n87), 
        .ZN(n89) );
  CKND0BWPHVT U142 ( .I(op_a[5]), .ZN(n186) );
  AOI32D0BWPHVT U143 ( .A1(n141), .A2(op_b[5]), .A3(n186), .B1(n140), .B2(
        op_b[5]), .ZN(n88) );
  ND4D0BWPHVT U144 ( .A1(n91), .A2(n90), .A3(n89), .A4(n88), .ZN(res[5]) );
  AOI22D0BWPHVT U145 ( .A1(n133), .A2(mult_res[14]), .B1(n132), .B2(
        shift_res[6]), .ZN(n96) );
  AOI22D0BWPHVT U146 ( .A1(n135), .A2(mult_res[6]), .B1(n134), .B2(
        mult_res[22]), .ZN(n95) );
  CKND0BWPHVT U147 ( .I(op_b[6]), .ZN(n164) );
  OAI221D0BWPHVT U148 ( .A1(op_b[6]), .A2(n152), .B1(n164), .B2(n137), .C(n136), .ZN(n92) );
  AOI22D0BWPHVT U149 ( .A1(n139), .A2(\add_res[0][6] ), .B1(op_a[6]), .B2(n92), 
        .ZN(n94) );
  CKND0BWPHVT U150 ( .I(op_a[6]), .ZN(n187) );
  AOI32D0BWPHVT U151 ( .A1(n141), .A2(op_b[6]), .A3(n187), .B1(n140), .B2(
        op_b[6]), .ZN(n93) );
  ND4D0BWPHVT U152 ( .A1(n96), .A2(n95), .A3(n94), .A4(n93), .ZN(res[6]) );
  AOI22D0BWPHVT U153 ( .A1(n133), .A2(mult_res[15]), .B1(n132), .B2(
        shift_res[7]), .ZN(n101) );
  AOI22D0BWPHVT U154 ( .A1(n135), .A2(mult_res[7]), .B1(n134), .B2(
        mult_res[23]), .ZN(n100) );
  CKND0BWPHVT U155 ( .I(op_b[7]), .ZN(n202) );
  OAI221D0BWPHVT U156 ( .A1(op_b[7]), .A2(n152), .B1(n202), .B2(n137), .C(n136), .ZN(n97) );
  AOI22D0BWPHVT U157 ( .A1(n139), .A2(\add_res[0][7] ), .B1(op_a[7]), .B2(n97), 
        .ZN(n99) );
  CKND0BWPHVT U158 ( .I(op_a[7]), .ZN(n201) );
  AOI32D0BWPHVT U159 ( .A1(n141), .A2(op_b[7]), .A3(n201), .B1(n140), .B2(
        op_b[7]), .ZN(n98) );
  ND4D0BWPHVT U160 ( .A1(n101), .A2(n100), .A3(n99), .A4(n98), .ZN(res[7]) );
  AOI22D0BWPHVT U161 ( .A1(mult_res[16]), .A2(n133), .B1(n132), .B2(
        shift_res[8]), .ZN(n106) );
  AOI22D0BWPHVT U162 ( .A1(n135), .A2(mult_res[8]), .B1(n134), .B2(
        mult_res[24]), .ZN(n105) );
  CKND0BWPHVT U163 ( .I(op_b[8]), .ZN(n199) );
  OAI221D0BWPHVT U164 ( .A1(op_b[8]), .A2(n152), .B1(n199), .B2(n137), .C(n136), .ZN(n102) );
  AOI22D0BWPHVT U165 ( .A1(n139), .A2(\add_res[0][8] ), .B1(op_a[8]), .B2(n102), .ZN(n104) );
  CKND0BWPHVT U166 ( .I(op_a[8]), .ZN(n198) );
  AOI32D0BWPHVT U167 ( .A1(n141), .A2(op_b[8]), .A3(n198), .B1(n140), .B2(
        op_b[8]), .ZN(n103) );
  ND4D0BWPHVT U168 ( .A1(n106), .A2(n105), .A3(n104), .A4(n103), .ZN(res[8])
         );
  AOI22D0BWPHVT U169 ( .A1(n133), .A2(mult_res[17]), .B1(n132), .B2(
        shift_res[9]), .ZN(n111) );
  AOI22D0BWPHVT U170 ( .A1(n135), .A2(mult_res[9]), .B1(n134), .B2(
        mult_res[25]), .ZN(n110) );
  CKND0BWPHVT U171 ( .I(op_b[9]), .ZN(n165) );
  OAI221D0BWPHVT U172 ( .A1(op_b[9]), .A2(n152), .B1(n165), .B2(n137), .C(n136), .ZN(n107) );
  AOI22D0BWPHVT U173 ( .A1(n139), .A2(\add_res[0][9] ), .B1(op_a[9]), .B2(n107), .ZN(n109) );
  CKND0BWPHVT U174 ( .I(op_a[9]), .ZN(n195) );
  AOI32D0BWPHVT U175 ( .A1(n141), .A2(op_b[9]), .A3(n195), .B1(n140), .B2(
        op_b[9]), .ZN(n108) );
  ND4D0BWPHVT U176 ( .A1(n111), .A2(n110), .A3(n109), .A4(n108), .ZN(res[9])
         );
  AOI22D0BWPHVT U177 ( .A1(n133), .A2(mult_res[18]), .B1(n132), .B2(
        shift_res[10]), .ZN(n116) );
  AOI22D0BWPHVT U178 ( .A1(n135), .A2(mult_res[10]), .B1(n134), .B2(
        mult_res[26]), .ZN(n115) );
  CKND0BWPHVT U179 ( .I(op_b[10]), .ZN(n166) );
  OAI221D0BWPHVT U180 ( .A1(op_b[10]), .A2(n152), .B1(n166), .B2(n137), .C(
        n136), .ZN(n112) );
  AOI22D0BWPHVT U181 ( .A1(n139), .A2(\add_res[0][10] ), .B1(op_a[10]), .B2(
        n112), .ZN(n114) );
  CKND0BWPHVT U182 ( .I(op_a[10]), .ZN(n196) );
  AOI32D0BWPHVT U183 ( .A1(n141), .A2(op_b[10]), .A3(n196), .B1(n140), .B2(
        op_b[10]), .ZN(n113) );
  ND4D0BWPHVT U184 ( .A1(n116), .A2(n115), .A3(n114), .A4(n113), .ZN(res[10])
         );
  AOI22D0BWPHVT U185 ( .A1(n133), .A2(mult_res[19]), .B1(n132), .B2(
        shift_res[11]), .ZN(n121) );
  AOI22D0BWPHVT U186 ( .A1(n135), .A2(mult_res[11]), .B1(n134), .B2(
        mult_res[27]), .ZN(n120) );
  OAI221D0BWPHVT U187 ( .A1(op_b[11]), .A2(n152), .B1(n211), .B2(n137), .C(
        n136), .ZN(n117) );
  AOI22D0BWPHVT U188 ( .A1(n139), .A2(\add_res[0][11] ), .B1(op_a[11]), .B2(
        n117), .ZN(n119) );
  CKND0BWPHVT U189 ( .I(op_a[11]), .ZN(n210) );
  AOI32D0BWPHVT U190 ( .A1(n141), .A2(op_b[11]), .A3(n210), .B1(n140), .B2(
        op_b[11]), .ZN(n118) );
  ND4D0BWPHVT U191 ( .A1(n121), .A2(n120), .A3(n119), .A4(n118), .ZN(res[11])
         );
  AOI22D0BWPHVT U192 ( .A1(n133), .A2(mult_res[20]), .B1(n132), .B2(
        shift_res[12]), .ZN(n126) );
  AOI22D0BWPHVT U193 ( .A1(n135), .A2(mult_res[12]), .B1(n134), .B2(
        mult_res[28]), .ZN(n125) );
  CKND0BWPHVT U194 ( .I(op_b[12]), .ZN(n208) );
  OAI221D0BWPHVT U195 ( .A1(op_b[12]), .A2(n152), .B1(n208), .B2(n137), .C(
        n136), .ZN(n122) );
  AOI22D0BWPHVT U196 ( .A1(n139), .A2(\add_res[0][12] ), .B1(op_a[12]), .B2(
        n122), .ZN(n124) );
  CKND0BWPHVT U197 ( .I(op_a[12]), .ZN(n207) );
  AOI32D0BWPHVT U198 ( .A1(n141), .A2(op_b[12]), .A3(n207), .B1(n140), .B2(
        op_b[12]), .ZN(n123) );
  ND4D0BWPHVT U199 ( .A1(n126), .A2(n125), .A3(n124), .A4(n123), .ZN(res[12])
         );
  AOI22D0BWPHVT U200 ( .A1(n133), .A2(mult_res[21]), .B1(n132), .B2(
        shift_res[13]), .ZN(n131) );
  AOI22D0BWPHVT U201 ( .A1(n135), .A2(mult_res[13]), .B1(n134), .B2(
        mult_res[29]), .ZN(n130) );
  CKND0BWPHVT U202 ( .I(op_b[13]), .ZN(n167) );
  OAI221D0BWPHVT U203 ( .A1(op_b[13]), .A2(n152), .B1(n167), .B2(n137), .C(
        n136), .ZN(n127) );
  AOI22D0BWPHVT U204 ( .A1(n139), .A2(\add_res[0][13] ), .B1(op_a[13]), .B2(
        n127), .ZN(n129) );
  AOI32D0BWPHVT U205 ( .A1(n141), .A2(op_b[13]), .A3(n204), .B1(n140), .B2(
        op_b[13]), .ZN(n128) );
  ND4D0BWPHVT U206 ( .A1(n131), .A2(n130), .A3(n129), .A4(n128), .ZN(res[13])
         );
  AOI22D0BWPHVT U207 ( .A1(n133), .A2(mult_res[22]), .B1(n132), .B2(
        shift_res[14]), .ZN(n145) );
  AOI22D0BWPHVT U208 ( .A1(n135), .A2(mult_res[14]), .B1(n134), .B2(
        mult_res[30]), .ZN(n144) );
  OAI221D0BWPHVT U209 ( .A1(op_b[14]), .A2(n152), .B1(n168), .B2(n137), .C(
        n136), .ZN(n138) );
  AOI22D0BWPHVT U210 ( .A1(n139), .A2(\add_res[0][14] ), .B1(op_a[14]), .B2(
        n138), .ZN(n143) );
  CKND0BWPHVT U211 ( .I(op_a[14]), .ZN(n205) );
  AOI32D0BWPHVT U212 ( .A1(n141), .A2(op_b[14]), .A3(n205), .B1(n140), .B2(
        op_b[14]), .ZN(n142) );
  ND4D0BWPHVT U213 ( .A1(n145), .A2(n144), .A3(n143), .A4(n142), .ZN(res[14])
         );
  NR2D0BWPHVT U214 ( .A1(n147), .A2(n146), .ZN(n149) );
  AN4D0BWPHVT U215 ( .A1(n151), .A2(n150), .A3(n149), .A4(n148), .Z(n153) );
  AN4D0BWPHVT U216 ( .A1(n155), .A2(n154), .A3(n153), .A4(n152), .Z(n171) );
  CKND2D0BWPHVT U217 ( .A1(n157), .A2(n156), .ZN(n158) );
  CKND2D0BWPHVT U218 ( .A1(n159), .A2(n158), .ZN(n170) );
  AOI22D0BWPHVT U219 ( .A1(op_b[0]), .A2(n171), .B1(n170), .B2(n184), .ZN(
        \add_b[0][0] ) );
  CKND0BWPHVT U220 ( .I(n173), .ZN(n174) );
  AOI22D0BWPHVT U221 ( .A1(op_a[0]), .A2(n174), .B1(n173), .B2(n183), .ZN(
        \add_a[0][0] ) );
  CKND2D0BWPHVT U222 ( .A1(n160), .A2(n159), .ZN(n161) );
  OAI211D0BWPHVT U223 ( .A1(n162), .A2(n161), .B(n170), .C(n173), .ZN(
        \add_c_in[0] ) );
  AOI22D0BWPHVT U224 ( .A1(op_b[1]), .A2(n171), .B1(n170), .B2(n181), .ZN(
        \add_b[0][1] ) );
  AOI22D0BWPHVT U225 ( .A1(op_a[1]), .A2(n174), .B1(n173), .B2(n180), .ZN(
        \add_a[0][1] ) );
  AOI22D0BWPHVT U226 ( .A1(op_b[2]), .A2(n171), .B1(n170), .B2(n177), .ZN(
        \add_b[0][2] ) );
  AOI22D0BWPHVT U227 ( .A1(op_a[2]), .A2(n174), .B1(n173), .B2(n178), .ZN(
        \add_a[0][2] ) );
  AOI22D0BWPHVT U228 ( .A1(op_b[3]), .A2(n171), .B1(n170), .B2(n193), .ZN(
        \add_b[0][3] ) );
  AOI22D0BWPHVT U229 ( .A1(op_a[3]), .A2(n174), .B1(n173), .B2(n192), .ZN(
        \add_a[0][3] ) );
  AOI22D0BWPHVT U230 ( .A1(op_b[4]), .A2(n171), .B1(n170), .B2(n190), .ZN(
        \add_b[0][4] ) );
  AOI22D0BWPHVT U231 ( .A1(op_a[4]), .A2(n174), .B1(n173), .B2(n189), .ZN(
        \add_a[0][4] ) );
  AOI22D0BWPHVT U232 ( .A1(op_b[5]), .A2(n171), .B1(n170), .B2(n163), .ZN(
        \add_b[0][5] ) );
  AOI22D0BWPHVT U233 ( .A1(op_a[5]), .A2(n174), .B1(n173), .B2(n186), .ZN(
        \add_a[0][5] ) );
  AOI22D0BWPHVT U234 ( .A1(op_b[6]), .A2(n171), .B1(n170), .B2(n164), .ZN(
        \add_b[0][6] ) );
  AOI22D0BWPHVT U235 ( .A1(op_a[6]), .A2(n174), .B1(n173), .B2(n187), .ZN(
        \add_a[0][6] ) );
  AOI22D0BWPHVT U236 ( .A1(op_b[7]), .A2(n171), .B1(n170), .B2(n202), .ZN(
        \add_b[0][7] ) );
  AOI22D0BWPHVT U237 ( .A1(op_a[7]), .A2(n174), .B1(n173), .B2(n201), .ZN(
        \add_a[0][7] ) );
  AOI22D0BWPHVT U238 ( .A1(op_b[8]), .A2(n171), .B1(n170), .B2(n199), .ZN(
        \add_b[0][8] ) );
  AOI22D0BWPHVT U239 ( .A1(op_a[8]), .A2(n174), .B1(n173), .B2(n198), .ZN(
        \add_a[0][8] ) );
  AOI22D0BWPHVT U240 ( .A1(op_b[9]), .A2(n171), .B1(n170), .B2(n165), .ZN(
        \add_b[0][9] ) );
  AOI22D0BWPHVT U241 ( .A1(op_a[9]), .A2(n174), .B1(n173), .B2(n195), .ZN(
        \add_a[0][9] ) );
  AOI22D0BWPHVT U242 ( .A1(op_b[10]), .A2(n171), .B1(n170), .B2(n166), .ZN(
        \add_b[0][10] ) );
  AOI22D0BWPHVT U243 ( .A1(op_a[10]), .A2(n174), .B1(n173), .B2(n196), .ZN(
        \add_a[0][10] ) );
  AOI22D0BWPHVT U244 ( .A1(op_b[11]), .A2(n171), .B1(n170), .B2(n211), .ZN(
        \add_b[0][11] ) );
  AOI22D0BWPHVT U245 ( .A1(op_a[11]), .A2(n174), .B1(n173), .B2(n210), .ZN(
        \add_a[0][11] ) );
  AOI22D0BWPHVT U246 ( .A1(op_b[12]), .A2(n171), .B1(n170), .B2(n208), .ZN(
        \add_b[0][12] ) );
  AOI22D0BWPHVT U247 ( .A1(op_a[12]), .A2(n174), .B1(n173), .B2(n207), .ZN(
        \add_a[0][12] ) );
  AOI22D0BWPHVT U248 ( .A1(op_b[13]), .A2(n171), .B1(n170), .B2(n167), .ZN(
        \add_b[0][13] ) );
  AOI22D0BWPHVT U249 ( .A1(op_a[13]), .A2(n174), .B1(n173), .B2(n204), .ZN(
        \add_a[0][13] ) );
  AOI22D0BWPHVT U250 ( .A1(op_b[14]), .A2(n171), .B1(n170), .B2(n168), .ZN(
        \add_b[0][14] ) );
  AOI22D0BWPHVT U251 ( .A1(op_a[14]), .A2(n174), .B1(n173), .B2(n205), .ZN(
        \add_a[0][14] ) );
  AOI22D0BWPHVT U252 ( .A1(op_b[15]), .A2(n171), .B1(n170), .B2(n169), .ZN(
        \add_b[0][15] ) );
  AOI22D0BWPHVT U253 ( .A1(op_a[15]), .A2(n174), .B1(n173), .B2(n172), .ZN(
        \add_a[0][15] ) );
  INR2XD0BWPHVT U254 ( .A1(n175), .B1(op_code[5]), .ZN(n242) );
  OAI221D0BWPHVT U255 ( .A1(op_b[2]), .A2(n178), .B1(n177), .B2(op_a[2]), .C(
        n176), .ZN(n179) );
  AOI221D0BWPHVT U256 ( .A1(op_a[1]), .A2(n181), .B1(n180), .B2(op_b[1]), .C(
        n179), .ZN(n182) );
  OAI221D0BWPHVT U257 ( .A1(op_a[0]), .A2(n184), .B1(n183), .B2(op_b[0]), .C(
        n182), .ZN(n215) );
  AOI22D0BWPHVT U258 ( .A1(op_b[6]), .A2(n187), .B1(op_b[5]), .B2(n186), .ZN(
        n185) );
  OAI221D0BWPHVT U259 ( .A1(n187), .A2(op_b[6]), .B1(n186), .B2(op_b[5]), .C(
        n185), .ZN(n188) );
  AOI221D0BWPHVT U260 ( .A1(op_a[4]), .A2(n190), .B1(n189), .B2(op_b[4]), .C(
        n188), .ZN(n191) );
  OAI221D0BWPHVT U261 ( .A1(op_a[3]), .A2(n193), .B1(n192), .B2(op_b[3]), .C(
        n191), .ZN(n214) );
  AOI22D0BWPHVT U262 ( .A1(op_b[10]), .A2(n196), .B1(op_b[9]), .B2(n195), .ZN(
        n194) );
  OAI221D0BWPHVT U263 ( .A1(n196), .A2(op_b[10]), .B1(n195), .B2(op_b[9]), .C(
        n194), .ZN(n197) );
  AOI221D0BWPHVT U264 ( .A1(op_a[8]), .A2(n199), .B1(n198), .B2(op_b[8]), .C(
        n197), .ZN(n200) );
  OAI221D0BWPHVT U265 ( .A1(op_a[7]), .A2(n202), .B1(n201), .B2(op_b[7]), .C(
        n200), .ZN(n213) );
  AOI22D0BWPHVT U266 ( .A1(op_b[14]), .A2(n205), .B1(op_b[13]), .B2(n204), 
        .ZN(n203) );
  OAI221D0BWPHVT U267 ( .A1(n205), .A2(op_b[14]), .B1(n204), .B2(op_b[13]), 
        .C(n203), .ZN(n206) );
  AOI221D0BWPHVT U268 ( .A1(op_a[12]), .A2(n208), .B1(n207), .B2(op_b[12]), 
        .C(n206), .ZN(n209) );
  OAI221D0BWPHVT U269 ( .A1(op_a[11]), .A2(n211), .B1(n210), .B2(op_b[11]), 
        .C(n209), .ZN(n212) );
  NR4D0BWPHVT U270 ( .A1(n215), .A2(n214), .A3(n213), .A4(n212), .ZN(n243) );
  test_full_add_DataWidth16_0 \GEN_ADD[0].full_add  ( .a({\add_a[0][15] , 
        \add_a[0][14] , \add_a[0][13] , \add_a[0][12] , \add_a[0][11] , 
        \add_a[0][10] , \add_a[0][9] , \add_a[0][8] , \add_a[0][7] , 
        \add_a[0][6] , \add_a[0][5] , \add_a[0][4] , \add_a[0][3] , 
        \add_a[0][2] , \add_a[0][1] , \add_a[0][0] }), .b({\add_b[0][15] , 
        \add_b[0][14] , \add_b[0][13] , \add_b[0][12] , \add_b[0][11] , 
        \add_b[0][10] , \add_b[0][9] , \add_b[0][8] , \add_b[0][7] , 
        \add_b[0][6] , \add_b[0][5] , \add_b[0][4] , \add_b[0][3] , 
        \add_b[0][2] , \add_b[0][1] , \add_b[0][0] }), .c_in(\add_c_in[0] ), 
        .res({\add_res[0][15] , \add_res[0][14] , \add_res[0][13] , 
        \add_res[0][12] , \add_res[0][11] , \add_res[0][10] , \add_res[0][9] , 
        \add_res[0][8] , \add_res[0][7] , \add_res[0][6] , \add_res[0][5] , 
        \add_res[0][4] , \add_res[0][3] , \add_res[0][2] , \add_res[0][1] , 
        \add_res[0][0] }), .c_out(carry_out[0]) );
  test_cmpr_0 cmpr ( .a_msb(op_a[15]), .b_msb(op_b[15]), .diff_msb(
        \add_res[0][15] ), .is_signed(op_code[6]), .eq(n243), .lte(cmpr_lte), 
        .gte(cmpr_gte) );
  test_mult_add_DataWidth16_0 test_mult_add ( .is_signed(op_code[6]), .a(op_a), 
        .b(op_b), .res(mult_res) );
  test_shifter_unq1_DataWidth16_0 test_shifter ( .is_signed(op_code[6]), 
        .dir_left(n242), .a(op_a), .b(op_b[3:0]), .res(shift_res) );
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
  wire   N4, net761, n1, n2, n3, n4, n5, n6, n7, n8, n9;

  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[0]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[7]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[6]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[5]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[4]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[3]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[2]) );
  SDFCNQD0BWPHVT \GEN_LUT[0].lut_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), 
        .CP(net761), .CDN(cfg_rst_n), .Q(read_data[1]) );
  CKND0BWPHVT U2 ( .I(op_b_in[0]), .ZN(n3) );
  CKND0BWPHVT U3 ( .I(op_a_in[0]), .ZN(n2) );
  OAI221D0BWPHVT U4 ( .A1(op_a_in[0]), .A2(read_data[6]), .B1(n2), .B2(
        read_data[7]), .C(op_c_in), .ZN(n6) );
  CKND0BWPHVT U5 ( .I(op_c_in), .ZN(n1) );
  OAI221D0BWPHVT U6 ( .A1(op_a_in[0]), .A2(read_data[2]), .B1(n2), .B2(
        read_data[3]), .C(n1), .ZN(n5) );
  MUX4ND0BWPHVT U7 ( .I0(read_data[0]), .I1(read_data[4]), .I2(read_data[1]), 
        .I3(read_data[5]), .S0(op_c_in), .S1(op_a_in[0]), .ZN(n4) );
  AOI32D0BWPHVT U8 ( .A1(n6), .A2(op_b_in[0]), .A3(n5), .B1(n4), .B2(n3), .ZN(
        res[0]) );
  NR2D0BWPHVT U9 ( .A1(cfg_a[0]), .A2(cfg_a[7]), .ZN(n8) );
  NR4D0BWPHVT U10 ( .A1(cfg_a[2]), .A2(cfg_a[3]), .A3(cfg_a[4]), .A4(cfg_a[6]), 
        .ZN(n7) );
  ND3D0BWPHVT U11 ( .A1(n8), .A2(cfg_en), .A3(n7), .ZN(n9) );
  NR3D0BWPHVT U12 ( .A1(cfg_a[5]), .A2(cfg_a[1]), .A3(n9), .ZN(N4) );
  SNPS_CLOCK_GATE_HIGH_test_lut_DataWidth1_0 \clk_gate_GEN_LUT[0].lut_reg  ( 
        .CLK(cfg_clk), .EN(N4), .ENCLK(net761), .TE(1'b0) );
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
  wire   net743, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34;

  SDFCNQD0BWPHVT \debug_val_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[1]) );
  SDFCNQD0BWPHVT \debug_val_reg[15]  ( .D(cfg_d[15]), .SI(1'b0), .SE(1'b0), 
        .CP(net743), .CDN(cfg_rst_n), .Q(read_data[15]) );
  SDFCNQD0BWPHVT \debug_val_reg[14]  ( .D(cfg_d[14]), .SI(1'b0), .SE(1'b0), 
        .CP(net743), .CDN(cfg_rst_n), .Q(read_data[14]) );
  SDFCNQD0BWPHVT \debug_val_reg[13]  ( .D(cfg_d[13]), .SI(1'b0), .SE(1'b0), 
        .CP(net743), .CDN(cfg_rst_n), .Q(read_data[13]) );
  SDFCNQD0BWPHVT \debug_val_reg[12]  ( .D(cfg_d[12]), .SI(1'b0), .SE(1'b0), 
        .CP(net743), .CDN(cfg_rst_n), .Q(read_data[12]) );
  SDFCNQD0BWPHVT \debug_val_reg[11]  ( .D(cfg_d[11]), .SI(1'b0), .SE(1'b0), 
        .CP(net743), .CDN(cfg_rst_n), .Q(read_data[11]) );
  SDFCNQD0BWPHVT \debug_val_reg[10]  ( .D(cfg_d[10]), .SI(1'b0), .SE(1'b0), 
        .CP(net743), .CDN(cfg_rst_n), .Q(read_data[10]) );
  SDFCNQD0BWPHVT \debug_val_reg[9]  ( .D(cfg_d[9]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[9]) );
  SDFCNQD0BWPHVT \debug_val_reg[8]  ( .D(cfg_d[8]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[8]) );
  SDFCNQD0BWPHVT \debug_val_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[7]) );
  SDFCNQD0BWPHVT \debug_val_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[6]) );
  SDFCNQD0BWPHVT \debug_val_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[5]) );
  SDFCNQD0BWPHVT \debug_val_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[4]) );
  SDFCNQD0BWPHVT \debug_val_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[3]) );
  SDFCNQD0BWPHVT \debug_val_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[2]) );
  SDFCNQD0BWPHVT \debug_val_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), .CP(
        net743), .CDN(cfg_rst_n), .Q(read_data[0]) );
  CKND0BWPHVT U2 ( .I(read_data[10]), .ZN(n22) );
  CKND0BWPHVT U3 ( .I(read_data[1]), .ZN(n3) );
  CKND0BWPHVT U4 ( .I(read_data[0]), .ZN(n2) );
  AOI22D0BWPHVT U5 ( .A1(data_in[1]), .A2(n3), .B1(data_in[0]), .B2(n2), .ZN(
        n1) );
  OAI221D0BWPHVT U6 ( .A1(n3), .A2(data_in[1]), .B1(n2), .B2(data_in[0]), .C(
        n1), .ZN(n16) );
  CKND0BWPHVT U7 ( .I(read_data[5]), .ZN(n6) );
  CKND0BWPHVT U8 ( .I(read_data[4]), .ZN(n5) );
  AOI22D0BWPHVT U9 ( .A1(data_in[5]), .A2(n6), .B1(data_in[4]), .B2(n5), .ZN(
        n4) );
  OAI221D0BWPHVT U10 ( .A1(n6), .A2(data_in[5]), .B1(n5), .B2(data_in[4]), .C(
        n4), .ZN(n15) );
  CKND0BWPHVT U11 ( .I(read_data[2]), .ZN(n9) );
  CKND0BWPHVT U12 ( .I(read_data[3]), .ZN(n8) );
  AOI22D0BWPHVT U13 ( .A1(data_in[2]), .A2(n9), .B1(data_in[3]), .B2(n8), .ZN(
        n7) );
  OAI221D0BWPHVT U14 ( .A1(n9), .A2(data_in[2]), .B1(n8), .B2(data_in[3]), .C(
        n7), .ZN(n14) );
  CKND0BWPHVT U15 ( .I(read_data[6]), .ZN(n12) );
  CKND0BWPHVT U16 ( .I(read_data[7]), .ZN(n11) );
  AOI22D0BWPHVT U17 ( .A1(data_in[6]), .A2(n12), .B1(data_in[7]), .B2(n11), 
        .ZN(n10) );
  OAI221D0BWPHVT U18 ( .A1(n12), .A2(data_in[6]), .B1(n11), .B2(data_in[7]), 
        .C(n10), .ZN(n13) );
  NR4D0BWPHVT U19 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .ZN(n34) );
  CKND0BWPHVT U20 ( .I(read_data[8]), .ZN(n19) );
  CKND0BWPHVT U21 ( .I(read_data[9]), .ZN(n18) );
  AOI22D0BWPHVT U22 ( .A1(data_in[8]), .A2(n19), .B1(data_in[9]), .B2(n18), 
        .ZN(n17) );
  OAI221D0BWPHVT U23 ( .A1(n19), .A2(data_in[8]), .B1(n18), .B2(data_in[9]), 
        .C(n17), .ZN(n32) );
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
        .CLK(cfg_clk), .EN(cfg_en), .ENCLK(net743), .TE(1'b0) );
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


module SNPS_CLOCK_GATE_HIGH_test_pe_unq1_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWPHVT latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module test_pe_unq1 ( clk, rst_n, clk_en, cfg_d, cfg_a, cfg_en, data0, data1, 
        bit0, bit1, bit2, res, irq, res_p, read_data );
  input [31:0] cfg_d;
  input [7:0] cfg_a;
  input [15:0] data0;
  input [15:0] data1;
  output [15:0] res;
  output [31:0] read_data;
  input clk, rst_n, clk_en, cfg_en, bit0, bit1, bit2;
  output irq, res_p;
  wire   N31, _0_net_, op_b_ld, op_d_p, _1_net_, op_d_p_reg, _2_net_, op_e_p,
         op_e_p_reg, _3_net_, op_f_p, op_f_p_reg, \carry_out[0] , V,
         comp_res_p, res_lut, _4_net_, irq_data, _5_net_, irq_bit,
         \read_data_debug_bit[0] , net725, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310;
  wire   [15:0] inp_code;
  wire   [15:0] op_code;
  wire   [15:0] op_a;
  wire   [15:0] op_a_reg;
  wire   [15:0] op_b_val;
  wire   [15:0] comp_res;
  wire   [15:0] op_b;
  wire   [15:0] op_b_reg;
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
        SYNOPSYS_UNCONNECTED__70;

  SDFCNQD0BWPHVT \op_code_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[1]) );
  SDFCNQD0BWPHVT \inp_code_reg[2]  ( .D(cfg_d[18]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[2]) );
  SDFCNQD0BWPHVT \inp_code_reg[1]  ( .D(cfg_d[17]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[1]) );
  SDFCNQD0BWPHVT \inp_code_reg[9]  ( .D(cfg_d[25]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[9]) );
  SDFCNQD0BWPHVT \inp_code_reg[8]  ( .D(cfg_d[24]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[8]) );
  SDFCNQD0BWPHVT \inp_code_reg[11]  ( .D(cfg_d[27]), .SI(1'b0), .SE(1'b0), 
        .CP(net725), .CDN(rst_n), .Q(inp_code[11]) );
  SDFCNQD0BWPHVT \inp_code_reg[10]  ( .D(cfg_d[26]), .SI(1'b0), .SE(1'b0), 
        .CP(net725), .CDN(rst_n), .Q(inp_code[10]) );
  SDFCNQD0BWPHVT \inp_code_reg[13]  ( .D(cfg_d[29]), .SI(1'b0), .SE(1'b0), 
        .CP(net725), .CDN(rst_n), .Q(inp_code[13]) );
  SDFCNQD0BWPHVT \inp_code_reg[12]  ( .D(cfg_d[28]), .SI(1'b0), .SE(1'b0), 
        .CP(net725), .CDN(rst_n), .Q(inp_code[12]) );
  SDFCNQD0BWPHVT \inp_code_reg[0]  ( .D(cfg_d[16]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[0]) );
  SDFCNQD0BWPHVT \inp_code_reg[4]  ( .D(cfg_d[20]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[4]) );
  SDFCNQD0BWPHVT \inp_code_reg[3]  ( .D(cfg_d[19]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[3]) );
  SDFCNQD0BWPHVT \op_code_reg[10]  ( .D(cfg_d[10]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[10]) );
  SDFCNQD0BWPHVT \op_code_reg[11]  ( .D(cfg_d[11]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[11]) );
  SDFCNQD0BWPHVT \op_code_reg[13]  ( .D(cfg_d[13]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[13]) );
  SDFCNQD0BWPHVT \op_code_reg[15]  ( .D(cfg_d[15]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[15]) );
  SDFCNQD0BWPHVT \op_code_reg[14]  ( .D(cfg_d[14]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[14]) );
  SDFCNQD0BWPHVT \inp_code_reg[15]  ( .D(cfg_d[31]), .SI(1'b0), .SE(1'b0), 
        .CP(net725), .CDN(rst_n), .Q(inp_code[15]) );
  SDFCNQD0BWPHVT \inp_code_reg[14]  ( .D(cfg_d[30]), .SI(1'b0), .SE(1'b0), 
        .CP(net725), .CDN(rst_n), .Q(inp_code[14]) );
  SDFCNQD0BWPHVT \inp_code_reg[7]  ( .D(cfg_d[23]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[7]) );
  SDFCNQD0BWPHVT \inp_code_reg[6]  ( .D(cfg_d[22]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[6]) );
  SDFCNQD0BWPHVT \inp_code_reg[5]  ( .D(cfg_d[21]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(inp_code[5]) );
  SDFCNQD0BWPHVT \op_code_reg[12]  ( .D(cfg_d[12]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[12]) );
  SDFCNQD0BWPHVT \op_code_reg[9]  ( .D(cfg_d[9]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[9]) );
  SDFCNQD0BWPHVT \op_code_reg[8]  ( .D(cfg_d[8]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[8]) );
  SDFCNQD0BWPHVT \op_code_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[7]) );
  SDFCNQD0BWPHVT \op_code_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[6]) );
  SDFCNQD0BWPHVT \op_code_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[5]) );
  SDFCNQD0BWPHVT \op_code_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[4]) );
  SDFCNQD0BWPHVT \op_code_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[3]) );
  SDFCNQD0BWPHVT \op_code_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[2]) );
  SDFCNQD0BWPHVT \op_code_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), .CP(
        net725), .CDN(rst_n), .Q(op_code[0]) );
  CKND0BWPHVT U204 ( .I(cfg_d[4]), .ZN(n213) );
  CKND0BWPHVT U205 ( .I(n303), .ZN(n276) );
  CKND0BWPHVT U206 ( .I(comp_res[11]), .ZN(n198) );
  MAOI22D0BWPHVT U207 ( .A1(n204), .A2(n187), .B1(n187), .B2(op_b[8]), .ZN(
        res[8]) );
  CKND0BWPHVT U208 ( .I(cfg_a[4]), .ZN(n228) );
  CKND0BWPHVT U209 ( .I(cfg_a[3]), .ZN(n190) );
  ND4D0BWPHVT U210 ( .A1(cfg_a[6]), .A2(cfg_a[5]), .A3(cfg_a[7]), .A4(n190), 
        .ZN(n310) );
  NR2D0BWPHVT U211 ( .A1(cfg_a[1]), .A2(n310), .ZN(n222) );
  CKND0BWPHVT U212 ( .I(cfg_a[2]), .ZN(n234) );
  CKND2D0BWPHVT U213 ( .A1(n222), .A2(n234), .ZN(n191) );
  OR2D0BWPHVT U214 ( .A1(n191), .A2(cfg_a[0]), .Z(n188) );
  NR2D0BWPHVT U215 ( .A1(n228), .A2(n188), .ZN(n302) );
  CKND0BWPHVT U216 ( .I(cfg_en), .ZN(n308) );
  INR2XD1BWPHVT U217 ( .A1(n302), .B1(n308), .ZN(_0_net_) );
  CKND2D0BWPHVT U218 ( .A1(cfg_a[4]), .A2(cfg_a[0]), .ZN(n186) );
  NR2D0BWPHVT U219 ( .A1(n191), .A2(n186), .ZN(n304) );
  CKND2D0BWPHVT U220 ( .A1(n304), .A2(cfg_en), .ZN(n225) );
  IOA21D1BWPHVT U221 ( .A1(op_code[9]), .A2(clk_en), .B(n225), .ZN(op_b_ld) );
  CKND0BWPHVT U222 ( .I(comp_res[15]), .ZN(n287) );
  CKND0BWPHVT U223 ( .I(op_code[9]), .ZN(n187) );
  MAOI22D0BWPHVT U224 ( .A1(n287), .A2(n187), .B1(n187), .B2(op_b[15]), .ZN(
        res[15]) );
  CKND0BWPHVT U225 ( .I(comp_res[0]), .ZN(n220) );
  MAOI22D0BWPHVT U226 ( .A1(n220), .A2(n187), .B1(n187), .B2(op_b[0]), .ZN(
        res[0]) );
  CKND0BWPHVT U227 ( .I(comp_res[1]), .ZN(n218) );
  MAOI22D0BWPHVT U228 ( .A1(n218), .A2(n187), .B1(n187), .B2(op_b[1]), .ZN(
        res[1]) );
  CKND0BWPHVT U229 ( .I(comp_res[2]), .ZN(n216) );
  MAOI22D0BWPHVT U230 ( .A1(n216), .A2(n187), .B1(n187), .B2(op_b[2]), .ZN(
        res[2]) );
  CKND0BWPHVT U231 ( .I(comp_res[3]), .ZN(n214) );
  MAOI22D0BWPHVT U232 ( .A1(n214), .A2(n187), .B1(n187), .B2(op_b[3]), .ZN(
        res[3]) );
  CKND0BWPHVT U233 ( .I(comp_res[4]), .ZN(n212) );
  MAOI22D0BWPHVT U234 ( .A1(n212), .A2(n187), .B1(n187), .B2(op_b[4]), .ZN(
        res[4]) );
  CKND0BWPHVT U235 ( .I(comp_res[5]), .ZN(n210) );
  MAOI22D0BWPHVT U236 ( .A1(n210), .A2(n187), .B1(n187), .B2(op_b[5]), .ZN(
        res[5]) );
  CKND0BWPHVT U237 ( .I(comp_res[6]), .ZN(n208) );
  MAOI22D0BWPHVT U238 ( .A1(n208), .A2(n187), .B1(n187), .B2(op_b[6]), .ZN(
        res[6]) );
  CKND0BWPHVT U239 ( .I(comp_res[7]), .ZN(n206) );
  MAOI22D0BWPHVT U240 ( .A1(n206), .A2(n187), .B1(n187), .B2(op_b[7]), .ZN(
        res[7]) );
  CKND0BWPHVT U241 ( .I(comp_res[8]), .ZN(n204) );
  CKND0BWPHVT U242 ( .I(comp_res[9]), .ZN(n202) );
  MAOI22D0BWPHVT U243 ( .A1(n202), .A2(n187), .B1(n187), .B2(op_b[9]), .ZN(
        res[9]) );
  CKND0BWPHVT U244 ( .I(comp_res[10]), .ZN(n200) );
  MAOI22D0BWPHVT U245 ( .A1(n200), .A2(n187), .B1(n187), .B2(op_b[10]), .ZN(
        res[10]) );
  MAOI22D0BWPHVT U246 ( .A1(n198), .A2(n187), .B1(n187), .B2(op_b[11]), .ZN(
        res[11]) );
  CKND0BWPHVT U247 ( .I(comp_res[12]), .ZN(n196) );
  MAOI22D0BWPHVT U248 ( .A1(n196), .A2(n187), .B1(n187), .B2(op_b[12]), .ZN(
        res[12]) );
  CKND0BWPHVT U249 ( .I(comp_res[13]), .ZN(n194) );
  MAOI22D0BWPHVT U250 ( .A1(n194), .A2(n187), .B1(n187), .B2(op_b[13]), .ZN(
        res[13]) );
  CKND0BWPHVT U251 ( .I(comp_res[14]), .ZN(n192) );
  MAOI22D0BWPHVT U252 ( .A1(n192), .A2(n187), .B1(n187), .B2(op_b[14]), .ZN(
        res[14]) );
  NR2D0BWPHVT U253 ( .A1(cfg_a[4]), .A2(n188), .ZN(n305) );
  INR2D0BWPHVT U254 ( .A1(n305), .B1(n308), .ZN(_4_net_) );
  ND3D0BWPHVT U255 ( .A1(cfg_a[5]), .A2(cfg_a[6]), .A3(cfg_a[7]), .ZN(n189) );
  ND3D0BWPHVT U256 ( .A1(cfg_a[4]), .A2(cfg_a[0]), .A3(cfg_a[1]), .ZN(n309) );
  NR4D1BWPHVT U257 ( .A1(n234), .A2(n190), .A3(n189), .A4(n309), .ZN(n303) );
  NR2D0BWPHVT U258 ( .A1(n276), .A2(n308), .ZN(N31) );
  CKND0BWPHVT U259 ( .I(cfg_a[0]), .ZN(n231) );
  NR3D0BWPHVT U260 ( .A1(cfg_a[4]), .A2(n231), .A3(n191), .ZN(n227) );
  INR2D0BWPHVT U261 ( .A1(n227), .B1(n308), .ZN(_5_net_) );
  CKND0BWPHVT U262 ( .I(cfg_d[14]), .ZN(n193) );
  IOA21D0BWPHVT U263 ( .A1(op_d_p), .A2(op_code[9]), .B(n225), .ZN(n226) );
  OAI22D0BWPHVT U264 ( .A1(n225), .A2(n193), .B1(n192), .B2(n226), .ZN(
        op_b_val[14]) );
  CKND0BWPHVT U265 ( .I(cfg_d[13]), .ZN(n195) );
  OAI22D0BWPHVT U266 ( .A1(n225), .A2(n195), .B1(n194), .B2(n226), .ZN(
        op_b_val[13]) );
  CKND0BWPHVT U267 ( .I(cfg_d[12]), .ZN(n197) );
  OAI22D0BWPHVT U268 ( .A1(n225), .A2(n197), .B1(n196), .B2(n226), .ZN(
        op_b_val[12]) );
  CKND0BWPHVT U269 ( .I(cfg_d[11]), .ZN(n199) );
  OAI22D0BWPHVT U270 ( .A1(n225), .A2(n199), .B1(n198), .B2(n226), .ZN(
        op_b_val[11]) );
  CKND0BWPHVT U271 ( .I(cfg_d[10]), .ZN(n201) );
  OAI22D0BWPHVT U272 ( .A1(n225), .A2(n201), .B1(n200), .B2(n226), .ZN(
        op_b_val[10]) );
  CKND0BWPHVT U273 ( .I(cfg_d[9]), .ZN(n203) );
  OAI22D0BWPHVT U274 ( .A1(n225), .A2(n203), .B1(n202), .B2(n226), .ZN(
        op_b_val[9]) );
  CKND0BWPHVT U275 ( .I(cfg_d[8]), .ZN(n205) );
  OAI22D0BWPHVT U276 ( .A1(n225), .A2(n205), .B1(n204), .B2(n226), .ZN(
        op_b_val[8]) );
  CKND0BWPHVT U277 ( .I(cfg_d[7]), .ZN(n207) );
  OAI22D0BWPHVT U278 ( .A1(n225), .A2(n207), .B1(n206), .B2(n226), .ZN(
        op_b_val[7]) );
  CKND0BWPHVT U279 ( .I(cfg_d[6]), .ZN(n209) );
  OAI22D0BWPHVT U280 ( .A1(n225), .A2(n209), .B1(n208), .B2(n226), .ZN(
        op_b_val[6]) );
  CKND0BWPHVT U281 ( .I(cfg_d[5]), .ZN(n211) );
  OAI22D0BWPHVT U282 ( .A1(n225), .A2(n211), .B1(n210), .B2(n226), .ZN(
        op_b_val[5]) );
  OAI22D0BWPHVT U283 ( .A1(n225), .A2(n213), .B1(n212), .B2(n226), .ZN(
        op_b_val[4]) );
  CKND0BWPHVT U284 ( .I(cfg_d[3]), .ZN(n215) );
  OAI22D0BWPHVT U285 ( .A1(n225), .A2(n215), .B1(n214), .B2(n226), .ZN(
        op_b_val[3]) );
  CKND0BWPHVT U286 ( .I(cfg_d[2]), .ZN(n217) );
  OAI22D0BWPHVT U287 ( .A1(n225), .A2(n217), .B1(n216), .B2(n226), .ZN(
        op_b_val[2]) );
  CKND0BWPHVT U288 ( .I(cfg_d[1]), .ZN(n219) );
  OAI22D0BWPHVT U289 ( .A1(n225), .A2(n219), .B1(n218), .B2(n226), .ZN(
        op_b_val[1]) );
  CKND0BWPHVT U290 ( .I(cfg_d[0]), .ZN(n221) );
  OAI22D0BWPHVT U291 ( .A1(n225), .A2(n221), .B1(n220), .B2(n226), .ZN(
        op_b_val[0]) );
  ND4D0BWPHVT U292 ( .A1(cfg_a[4]), .A2(cfg_a[2]), .A3(n222), .A4(cfg_en), 
        .ZN(n223) );
  NR2D0BWPHVT U293 ( .A1(cfg_a[0]), .A2(n223), .ZN(_2_net_) );
  NR2D0BWPHVT U294 ( .A1(n231), .A2(n223), .ZN(_3_net_) );
  CKND0BWPHVT U295 ( .I(cfg_d[15]), .ZN(n224) );
  OAI22D0BWPHVT U296 ( .A1(n287), .A2(n226), .B1(n225), .B2(n224), .ZN(
        op_b_val[15]) );
  AOI22D0BWPHVT U297 ( .A1(n227), .A2(\read_data_debug_bit[0] ), .B1(n303), 
        .B2(op_code[0]), .ZN(n239) );
  NR4D0BWPHVT U298 ( .A1(cfg_a[5]), .A2(cfg_a[6]), .A3(cfg_a[3]), .A4(cfg_a[7]), .ZN(n229) );
  ND3D0BWPHVT U299 ( .A1(n229), .A2(n228), .A3(n231), .ZN(n230) );
  NR3D0BWPHVT U300 ( .A1(cfg_a[2]), .A2(cfg_a[1]), .A3(n230), .ZN(n266) );
  AOI22D0BWPHVT U301 ( .A1(n266), .A2(read_data_lut[0]), .B1(n304), .B2(
        op_b_reg[0]), .ZN(n238) );
  AOI22D0BWPHVT U302 ( .A1(n305), .A2(read_data_debug_data[0]), .B1(n302), 
        .B2(op_a_reg[0]), .ZN(n237) );
  AOI22D0BWPHVT U303 ( .A1(cfg_a[0]), .A2(op_f_p_reg), .B1(op_e_p_reg), .B2(
        n231), .ZN(n233) );
  ND3D0BWPHVT U304 ( .A1(cfg_a[0]), .A2(cfg_a[1]), .A3(op_d_p_reg), .ZN(n232)
         );
  OAI32D0BWPHVT U305 ( .A1(n234), .A2(cfg_a[1]), .A3(n233), .B1(cfg_a[2]), 
        .B2(n232), .ZN(n235) );
  IND3D0BWPHVT U306 ( .A1(n310), .B1(cfg_a[4]), .B2(n235), .ZN(n236) );
  ND4D0BWPHVT U307 ( .A1(n239), .A2(n238), .A3(n237), .A4(n236), .ZN(
        read_data[0]) );
  AOI22D0BWPHVT U308 ( .A1(n303), .A2(op_code[1]), .B1(n266), .B2(
        read_data_lut[1]), .ZN(n242) );
  AOI22D0BWPHVT U309 ( .A1(n302), .A2(op_a_reg[1]), .B1(n304), .B2(op_b_reg[1]), .ZN(n241) );
  CKND2D0BWPHVT U310 ( .A1(n305), .A2(read_data_debug_data[1]), .ZN(n240) );
  ND3D0BWPHVT U311 ( .A1(n242), .A2(n241), .A3(n240), .ZN(read_data[1]) );
  AOI22D0BWPHVT U312 ( .A1(n303), .A2(op_code[3]), .B1(n266), .B2(
        read_data_lut[3]), .ZN(n245) );
  AOI22D0BWPHVT U313 ( .A1(n302), .A2(op_a_reg[3]), .B1(n304), .B2(op_b_reg[3]), .ZN(n244) );
  CKND2D0BWPHVT U314 ( .A1(n305), .A2(read_data_debug_data[3]), .ZN(n243) );
  ND3D0BWPHVT U315 ( .A1(n245), .A2(n244), .A3(n243), .ZN(read_data[3]) );
  AOI22D0BWPHVT U316 ( .A1(n303), .A2(op_code[4]), .B1(n266), .B2(
        read_data_lut[4]), .ZN(n248) );
  AOI22D0BWPHVT U317 ( .A1(n302), .A2(op_a_reg[4]), .B1(n304), .B2(op_b_reg[4]), .ZN(n247) );
  CKND2D0BWPHVT U318 ( .A1(n305), .A2(read_data_debug_data[4]), .ZN(n246) );
  ND3D0BWPHVT U319 ( .A1(n248), .A2(n247), .A3(n246), .ZN(read_data[4]) );
  AOI22D0BWPHVT U320 ( .A1(n303), .A2(op_code[2]), .B1(n266), .B2(
        read_data_lut[2]), .ZN(n251) );
  AOI22D0BWPHVT U321 ( .A1(n302), .A2(op_a_reg[2]), .B1(n304), .B2(op_b_reg[2]), .ZN(n250) );
  CKND2D0BWPHVT U322 ( .A1(n305), .A2(read_data_debug_data[2]), .ZN(n249) );
  ND3D0BWPHVT U323 ( .A1(n251), .A2(n250), .A3(n249), .ZN(read_data[2]) );
  AOI22D0BWPHVT U324 ( .A1(n303), .A2(op_code[6]), .B1(n266), .B2(
        read_data_lut[6]), .ZN(n254) );
  AOI22D0BWPHVT U325 ( .A1(n302), .A2(op_a_reg[6]), .B1(n304), .B2(op_b_reg[6]), .ZN(n253) );
  CKND2D0BWPHVT U326 ( .A1(n305), .A2(read_data_debug_data[6]), .ZN(n252) );
  ND3D0BWPHVT U327 ( .A1(n254), .A2(n253), .A3(n252), .ZN(read_data[6]) );
  AOI22D0BWPHVT U328 ( .A1(n303), .A2(op_code[7]), .B1(n266), .B2(
        read_data_lut[7]), .ZN(n257) );
  AOI22D0BWPHVT U329 ( .A1(n302), .A2(op_a_reg[7]), .B1(n304), .B2(op_b_reg[7]), .ZN(n256) );
  CKND2D0BWPHVT U330 ( .A1(n305), .A2(read_data_debug_data[7]), .ZN(n255) );
  ND3D0BWPHVT U331 ( .A1(n257), .A2(n256), .A3(n255), .ZN(read_data[7]) );
  AOI22D0BWPHVT U332 ( .A1(n302), .A2(op_a_reg[8]), .B1(n303), .B2(op_code[8]), 
        .ZN(n259) );
  AOI22D0BWPHVT U333 ( .A1(n305), .A2(read_data_debug_data[8]), .B1(n304), 
        .B2(op_b_reg[8]), .ZN(n258) );
  CKND2D0BWPHVT U334 ( .A1(n259), .A2(n258), .ZN(read_data[8]) );
  AOI22D0BWPHVT U335 ( .A1(n302), .A2(op_a_reg[9]), .B1(n303), .B2(op_code[9]), 
        .ZN(n261) );
  AOI22D0BWPHVT U336 ( .A1(n305), .A2(read_data_debug_data[9]), .B1(n304), 
        .B2(op_b_reg[9]), .ZN(n260) );
  CKND2D0BWPHVT U337 ( .A1(n261), .A2(n260), .ZN(read_data[9]) );
  AOI22D0BWPHVT U338 ( .A1(n302), .A2(op_a_reg[10]), .B1(n303), .B2(
        op_code[10]), .ZN(n263) );
  AOI22D0BWPHVT U339 ( .A1(n305), .A2(read_data_debug_data[10]), .B1(n304), 
        .B2(op_b_reg[10]), .ZN(n262) );
  CKND2D0BWPHVT U340 ( .A1(n263), .A2(n262), .ZN(read_data[10]) );
  AOI22D0BWPHVT U341 ( .A1(n302), .A2(op_a_reg[11]), .B1(n303), .B2(
        op_code[11]), .ZN(n265) );
  AOI22D0BWPHVT U342 ( .A1(n305), .A2(read_data_debug_data[11]), .B1(n304), 
        .B2(op_b_reg[11]), .ZN(n264) );
  CKND2D0BWPHVT U343 ( .A1(n265), .A2(n264), .ZN(read_data[11]) );
  AOI22D0BWPHVT U344 ( .A1(n303), .A2(op_code[5]), .B1(n266), .B2(
        read_data_lut[5]), .ZN(n269) );
  AOI22D0BWPHVT U345 ( .A1(n302), .A2(op_a_reg[5]), .B1(n304), .B2(op_b_reg[5]), .ZN(n268) );
  CKND2D0BWPHVT U346 ( .A1(n305), .A2(read_data_debug_data[5]), .ZN(n267) );
  ND3D0BWPHVT U347 ( .A1(n269), .A2(n268), .A3(n267), .ZN(read_data[5]) );
  AOI22D0BWPHVT U348 ( .A1(op_code[13]), .A2(n303), .B1(n302), .B2(
        op_a_reg[13]), .ZN(n271) );
  AOI22D0BWPHVT U349 ( .A1(n305), .A2(read_data_debug_data[13]), .B1(n304), 
        .B2(op_b_reg[13]), .ZN(n270) );
  CKND2D0BWPHVT U350 ( .A1(n271), .A2(n270), .ZN(read_data[13]) );
  AOI22D0BWPHVT U351 ( .A1(op_code[14]), .A2(n303), .B1(n302), .B2(
        op_a_reg[14]), .ZN(n273) );
  AOI22D0BWPHVT U352 ( .A1(n305), .A2(read_data_debug_data[14]), .B1(n304), 
        .B2(op_b_reg[14]), .ZN(n272) );
  CKND2D0BWPHVT U353 ( .A1(n273), .A2(n272), .ZN(read_data[14]) );
  AOI22D0BWPHVT U354 ( .A1(op_code[15]), .A2(n303), .B1(n302), .B2(
        op_a_reg[15]), .ZN(n275) );
  AOI22D0BWPHVT U355 ( .A1(n305), .A2(read_data_debug_data[15]), .B1(n304), 
        .B2(op_b_reg[15]), .ZN(n274) );
  CKND2D0BWPHVT U356 ( .A1(n275), .A2(n274), .ZN(read_data[15]) );
  INR2D0BWPHVT U357 ( .A1(inp_code[0]), .B1(n276), .ZN(read_data[16]) );
  INR2D0BWPHVT U358 ( .A1(inp_code[1]), .B1(n276), .ZN(read_data[17]) );
  INR2D0BWPHVT U359 ( .A1(inp_code[2]), .B1(n276), .ZN(read_data[18]) );
  INR2D0BWPHVT U360 ( .A1(inp_code[3]), .B1(n276), .ZN(read_data[19]) );
  INR2D0BWPHVT U361 ( .A1(inp_code[4]), .B1(n276), .ZN(read_data[20]) );
  CKAN2D0BWPHVT U362 ( .A1(inp_code[5]), .A2(n303), .Z(read_data[21]) );
  CKAN2D0BWPHVT U363 ( .A1(inp_code[6]), .A2(n303), .Z(read_data[22]) );
  CKAN2D0BWPHVT U364 ( .A1(inp_code[7]), .A2(n303), .Z(read_data[23]) );
  INR2D0BWPHVT U365 ( .A1(inp_code[8]), .B1(n276), .ZN(read_data[24]) );
  INR2D0BWPHVT U366 ( .A1(inp_code[9]), .B1(n276), .ZN(read_data[25]) );
  INR2D0BWPHVT U367 ( .A1(inp_code[10]), .B1(n276), .ZN(read_data[26]) );
  INR2D0BWPHVT U368 ( .A1(inp_code[11]), .B1(n276), .ZN(read_data[27]) );
  INR2D0BWPHVT U369 ( .A1(inp_code[12]), .B1(n276), .ZN(read_data[28]) );
  INR2D0BWPHVT U370 ( .A1(inp_code[13]), .B1(n276), .ZN(read_data[29]) );
  CKAN2D0BWPHVT U371 ( .A1(inp_code[14]), .A2(n303), .Z(read_data[30]) );
  CKAN2D0BWPHVT U372 ( .A1(inp_code[15]), .A2(n303), .Z(read_data[31]) );
  AO22D0BWPHVT U373 ( .A1(op_code[10]), .A2(irq_bit), .B1(op_code[11]), .B2(
        irq_data), .Z(irq) );
  CKND0BWPHVT U374 ( .I(op_code[12]), .ZN(n293) );
  CKND0BWPHVT U375 ( .I(op_code[15]), .ZN(n295) );
  OAI32D0BWPHVT U376 ( .A1(op_code[15]), .A2(op_code[12]), .A3(op_code[14]), 
        .B1(n293), .B2(n295), .ZN(n284) );
  CKND2D0BWPHVT U377 ( .A1(op_code[15]), .A2(\carry_out[0] ), .ZN(n278) );
  NR2D0BWPHVT U378 ( .A1(n293), .A2(n278), .ZN(n277) );
  AOI211D0BWPHVT U379 ( .A1(n293), .A2(n278), .B(op_code[14]), .C(n277), .ZN(
        n283) );
  NR4D0BWPHVT U380 ( .A1(comp_res[15]), .A2(comp_res[14]), .A3(comp_res[13]), 
        .A4(comp_res[12]), .ZN(n282) );
  NR4D0BWPHVT U381 ( .A1(comp_res[11]), .A2(comp_res[10]), .A3(comp_res[9]), 
        .A4(comp_res[8]), .ZN(n281) );
  NR4D0BWPHVT U382 ( .A1(comp_res[7]), .A2(comp_res[6]), .A3(comp_res[5]), 
        .A4(comp_res[4]), .ZN(n280) );
  NR4D0BWPHVT U383 ( .A1(comp_res[3]), .A2(comp_res[2]), .A3(comp_res[1]), 
        .A4(comp_res[0]), .ZN(n279) );
  ND4D0BWPHVT U384 ( .A1(n282), .A2(n281), .A3(n280), .A4(n279), .ZN(n285) );
  MUX2ND0BWPHVT U385 ( .I0(n284), .I1(n283), .S(n285), .ZN(n301) );
  MUX2ND0BWPHVT U386 ( .I0(comp_res[15]), .I1(n287), .S(V), .ZN(n292) );
  ND3D0BWPHVT U387 ( .A1(n293), .A2(n292), .A3(n285), .ZN(n286) );
  OAI211D0BWPHVT U388 ( .A1(n293), .A2(n292), .B(op_code[15]), .C(n286), .ZN(
        n289) );
  OAI221D0BWPHVT U389 ( .A1(comp_res[15]), .A2(n293), .B1(n287), .B2(
        op_code[12]), .C(n295), .ZN(n288) );
  AOI31D0BWPHVT U390 ( .A1(op_code[14]), .A2(n289), .A3(n288), .B(op_code[13]), 
        .ZN(n300) );
  CKND0BWPHVT U391 ( .I(op_code[14]), .ZN(n291) );
  CKND2D0BWPHVT U392 ( .A1(op_code[12]), .A2(n292), .ZN(n290) );
  OAI211D0BWPHVT U393 ( .A1(op_code[12]), .A2(n292), .B(n291), .C(n290), .ZN(
        n298) );
  OAI221D0BWPHVT U394 ( .A1(op_code[12]), .A2(res_lut), .B1(n293), .B2(
        comp_res_p), .C(op_code[14]), .ZN(n297) );
  MUX2ND0BWPHVT U395 ( .I0(\carry_out[0] ), .I1(V), .S(op_code[14]), .ZN(n294)
         );
  CKXOR2D0BWPHVT U396 ( .A1(op_code[12]), .A2(n294), .Z(n296) );
  AO32D0BWPHVT U397 ( .A1(n298), .A2(op_code[15]), .A3(n297), .B1(n296), .B2(
        n295), .Z(n299) );
  AOI22D0BWPHVT U398 ( .A1(n301), .A2(n300), .B1(n299), .B2(op_code[13]), .ZN(
        res_p) );
  AOI22D0BWPHVT U399 ( .A1(op_code[12]), .A2(n303), .B1(n302), .B2(
        op_a_reg[12]), .ZN(n307) );
  AOI22D0BWPHVT U400 ( .A1(n305), .A2(read_data_debug_data[12]), .B1(n304), 
        .B2(op_b_reg[12]), .ZN(n306) );
  CKND2D0BWPHVT U401 ( .A1(n307), .A2(n306), .ZN(read_data[12]) );
  NR4D0BWPHVT U402 ( .A1(cfg_a[2]), .A2(n310), .A3(n309), .A4(n308), .ZN(
        _1_net_) );
  test_opt_reg_DataWidth16_0 test_opt_reg_a ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_0_net_), .val(cfg_d[15:0]), .mode(inp_code[1:0]), 
        .data_in(data0), .res(op_a), .reg_data(op_a_reg) );
  test_opt_reg_file_DataWidth16_0 test_opt_reg_file ( .clk(clk), .clk_en(
        clk_en), .rst_n(rst_n), .load(op_b_ld), .val(op_b_val), .mode(
        inp_code[4:2]), .data_in(data1), .res(op_b), .reg_data(op_b_reg) );
  test_opt_reg_DataWidth1_3 test_opt_reg_d ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_1_net_), .val(cfg_d[0]), .mode(inp_code[9:8]), 
        .data_in(bit0), .res(op_d_p), .reg_data(op_d_p_reg) );
  test_opt_reg_DataWidth1_4 test_opt_reg_e ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_2_net_), .val(cfg_d[0]), .mode(inp_code[11:10]), 
        .data_in(bit1), .res(op_e_p), .reg_data(op_e_p_reg) );
  test_opt_reg_DataWidth1_5 test_opt_reg_f ( .clk(clk), .clk_en(clk_en), 
        .rst_n(rst_n), .load(_3_net_), .val(cfg_d[0]), .mode(inp_code[13:12]), 
        .data_in(bit2), .res(op_f_p), .reg_data(op_f_p_reg) );
  test_pe_comp_unq1_0 test_pe_comp ( .op_code({1'b0, op_code[6:0]}), .op_a(
        op_a), .op_b(op_b), .op_d_p(op_d_p), .carry_out(\carry_out[0] ), .res(
        comp_res), .ovfl(V), .res_p(comp_res_p) );
  test_lut_DataWidth1_0 test_lut ( .cfg_clk(clk), .cfg_rst_n(rst_n), .cfg_d({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        cfg_d[7:0]}), .cfg_a(cfg_a), .cfg_en(cfg_en), .op_a_in(op_d_p), 
        .op_b_in(op_e_p), .op_c_in(op_f_p), .read_data({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
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
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, read_data_lut[7:0]}), .res(res_lut) );
  test_debug_reg_DataWidth16_0 test_debug_data ( .cfg_clk(clk), .cfg_rst_n(
        rst_n), .cfg_d(cfg_d[15:0]), .cfg_en(_4_net_), .data_in(res), 
        .debug_irq(irq_data), .read_data({SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, read_data_debug_data[15:0]}) );
  test_debug_reg_DataWidth1_0 test_debug_bit ( .cfg_clk(clk), .cfg_rst_n(rst_n), .cfg_d(cfg_d[0]), .cfg_en(_5_net_), .data_in(res_p), .debug_irq(irq_bit), 
        .read_data({SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
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
        SYNOPSYS_UNCONNECTED__70, \read_data_debug_bit[0] }) );
  SNPS_CLOCK_GATE_HIGH_test_pe_unq1_0 clk_gate_op_code_reg ( .CLK(clk), .EN(
        N31), .ENCLK(net725), .TE(1'b0) );
endmodule

