/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-5
// Date      : Thu Mar 14 00:14:34 2019
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0_2 ( CLK, EN, ENCLK, TE
 );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
endmodule


module test_opt_reg_DataWidth16_2 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [15:0] val;
  input [1:0] mode;
  input [15:0] data_in;
  output [15:0] res;
  output [15:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   data_in_le, net844, n1, n2, n3, n4;
  wire   [15:0] data_in_reg_next;

  SDFFARX1_HVT \data_in_reg_reg[15]  ( .D(data_in_reg_next[15]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[15]) );
  SDFFARX1_HVT \data_in_reg_reg[14]  ( .D(data_in_reg_next[14]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[14]) );
  SDFFARX1_HVT \data_in_reg_reg[13]  ( .D(data_in_reg_next[13]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[13]) );
  SDFFARX1_HVT \data_in_reg_reg[12]  ( .D(data_in_reg_next[12]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[12]) );
  SDFFARX1_HVT \data_in_reg_reg[11]  ( .D(data_in_reg_next[11]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[11]) );
  SDFFARX1_HVT \data_in_reg_reg[10]  ( .D(data_in_reg_next[10]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[10]) );
  SDFFARX1_HVT \data_in_reg_reg[9]  ( .D(data_in_reg_next[9]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[9]) );
  SDFFARX1_HVT \data_in_reg_reg[8]  ( .D(data_in_reg_next[8]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[8]) );
  SDFFARX1_HVT \data_in_reg_reg[7]  ( .D(data_in_reg_next[7]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[7]) );
  SDFFARX1_HVT \data_in_reg_reg[6]  ( .D(data_in_reg_next[6]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[6]) );
  SDFFARX1_HVT \data_in_reg_reg[5]  ( .D(data_in_reg_next[5]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[5]) );
  SDFFARX1_HVT \data_in_reg_reg[4]  ( .D(data_in_reg_next[4]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[4]) );
  SDFFARX1_HVT \data_in_reg_reg[3]  ( .D(data_in_reg_next[3]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[3]) );
  SDFFARX1_HVT \data_in_reg_reg[2]  ( .D(data_in_reg_next[2]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[2]) );
  SDFFARX1_HVT \data_in_reg_reg[1]  ( .D(data_in_reg_next[1]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[1]) );
  SDFFARX1_HVT \data_in_reg_reg[0]  ( .D(data_in_reg_next[0]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[0]) );
  INVX0_HVT U2 ( .A(mode[0]), .Y(n1) );
  NAND2X0_HVT U3 ( .A1(mode[1]), .A2(n1), .Y(n2) );
  INVX0_HVT U4 ( .A(n2), .Y(n3) );
  AO22X2_HVT U5 ( .A1(n3), .A2(data_in[15]), .A3(n2), .A4(reg_data[15]), .Y(
        res[15]) );
  AO221X1_HVT U6 ( .A1(mode[0]), .A2(mode[1]), .A3(mode[0]), .A4(clk_en), .A5(
        load), .Y(data_in_le) );
  AO22X1_HVT U7 ( .A1(n3), .A2(data_in[0]), .A3(n2), .A4(reg_data[0]), .Y(
        res[0]) );
  AO22X1_HVT U8 ( .A1(n3), .A2(data_in[1]), .A3(n2), .A4(reg_data[1]), .Y(
        res[1]) );
  AO22X1_HVT U9 ( .A1(n3), .A2(data_in[2]), .A3(n2), .A4(reg_data[2]), .Y(
        res[2]) );
  AO22X1_HVT U10 ( .A1(n3), .A2(data_in[3]), .A3(n2), .A4(reg_data[3]), .Y(
        res[3]) );
  AO22X1_HVT U11 ( .A1(n3), .A2(data_in[4]), .A3(n2), .A4(reg_data[4]), .Y(
        res[4]) );
  AO22X1_HVT U12 ( .A1(n3), .A2(data_in[5]), .A3(n2), .A4(reg_data[5]), .Y(
        res[5]) );
  AO22X1_HVT U13 ( .A1(n3), .A2(data_in[6]), .A3(n2), .A4(reg_data[6]), .Y(
        res[6]) );
  AO22X1_HVT U14 ( .A1(n3), .A2(data_in[7]), .A3(n2), .A4(reg_data[7]), .Y(
        res[7]) );
  AO22X1_HVT U15 ( .A1(n3), .A2(data_in[8]), .A3(n2), .A4(reg_data[8]), .Y(
        res[8]) );
  AO22X1_HVT U16 ( .A1(n3), .A2(data_in[9]), .A3(n2), .A4(reg_data[9]), .Y(
        res[9]) );
  AO22X1_HVT U17 ( .A1(n3), .A2(data_in[10]), .A3(n2), .A4(reg_data[10]), .Y(
        res[10]) );
  AO22X1_HVT U18 ( .A1(n3), .A2(data_in[11]), .A3(n2), .A4(reg_data[11]), .Y(
        res[11]) );
  AO22X1_HVT U19 ( .A1(n3), .A2(data_in[12]), .A3(n2), .A4(reg_data[12]), .Y(
        res[12]) );
  AO22X1_HVT U20 ( .A1(n3), .A2(data_in[13]), .A3(n2), .A4(reg_data[13]), .Y(
        res[13]) );
  AO22X1_HVT U21 ( .A1(n3), .A2(data_in[14]), .A3(n2), .A4(reg_data[14]), .Y(
        res[14]) );
  INVX0_HVT U22 ( .A(load), .Y(n4) );
  AO22X1_HVT U23 ( .A1(load), .A2(val[0]), .A3(n4), .A4(data_in[0]), .Y(
        data_in_reg_next[0]) );
  AO22X1_HVT U24 ( .A1(load), .A2(val[1]), .A3(n4), .A4(data_in[1]), .Y(
        data_in_reg_next[1]) );
  AO22X1_HVT U25 ( .A1(load), .A2(val[2]), .A3(n4), .A4(data_in[2]), .Y(
        data_in_reg_next[2]) );
  AO22X1_HVT U26 ( .A1(load), .A2(val[3]), .A3(n4), .A4(data_in[3]), .Y(
        data_in_reg_next[3]) );
  AO22X1_HVT U27 ( .A1(load), .A2(val[4]), .A3(n4), .A4(data_in[4]), .Y(
        data_in_reg_next[4]) );
  AO22X1_HVT U28 ( .A1(load), .A2(val[5]), .A3(n4), .A4(data_in[5]), .Y(
        data_in_reg_next[5]) );
  AO22X1_HVT U29 ( .A1(load), .A2(val[6]), .A3(n4), .A4(data_in[6]), .Y(
        data_in_reg_next[6]) );
  AO22X1_HVT U30 ( .A1(load), .A2(val[7]), .A3(n4), .A4(data_in[7]), .Y(
        data_in_reg_next[7]) );
  AO22X1_HVT U31 ( .A1(load), .A2(val[8]), .A3(n4), .A4(data_in[8]), .Y(
        data_in_reg_next[8]) );
  AO22X1_HVT U32 ( .A1(load), .A2(val[9]), .A3(n4), .A4(data_in[9]), .Y(
        data_in_reg_next[9]) );
  AO22X1_HVT U33 ( .A1(load), .A2(val[10]), .A3(n4), .A4(data_in[10]), .Y(
        data_in_reg_next[10]) );
  AO22X1_HVT U34 ( .A1(load), .A2(val[11]), .A3(n4), .A4(data_in[11]), .Y(
        data_in_reg_next[11]) );
  AO22X1_HVT U35 ( .A1(load), .A2(val[12]), .A3(n4), .A4(data_in[12]), .Y(
        data_in_reg_next[12]) );
  AO22X1_HVT U36 ( .A1(load), .A2(val[13]), .A3(n4), .A4(data_in[13]), .Y(
        data_in_reg_next[13]) );
  AO22X1_HVT U37 ( .A1(load), .A2(val[14]), .A3(n4), .A4(data_in[14]), .Y(
        data_in_reg_next[14]) );
  AO22X1_HVT U38 ( .A1(load), .A2(val[15]), .A3(n4), .A4(data_in[15]), .Y(
        data_in_reg_next[15]) );
  SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0_2 clk_gate_data_in_reg_reg ( 
        .CLK(clk), .EN(data_in_le), .ENCLK(net844), .TE(1'b0) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_opt_reg_file_DataWidth16_0 ( CLK, EN, ENCLK, 
        TE );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
endmodule


module test_opt_reg_file_DataWidth16_0 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [15:0] val;
  input [2:0] mode;
  input [15:0] data_in;
  output [15:0] res;
  output [15:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   data_in_le, net862, n1, n2, n3, n4, n5, n6, n7, n9;
  wire   [15:0] data_in_reg_next;

  SDFFARX1_HVT \data_in_reg_reg[0][15]  ( .D(data_in_reg_next[15]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[15]) );
  SDFFARX1_HVT \data_in_reg_reg[0][14]  ( .D(data_in_reg_next[14]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[14]) );
  SDFFARX1_HVT \data_in_reg_reg[0][13]  ( .D(data_in_reg_next[13]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[13]) );
  SDFFARX1_HVT \data_in_reg_reg[0][12]  ( .D(data_in_reg_next[12]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[12]) );
  SDFFARX1_HVT \data_in_reg_reg[0][11]  ( .D(data_in_reg_next[11]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[11]) );
  SDFFARX1_HVT \data_in_reg_reg[0][10]  ( .D(data_in_reg_next[10]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[10]) );
  SDFFARX1_HVT \data_in_reg_reg[0][9]  ( .D(data_in_reg_next[9]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[9]) );
  SDFFARX1_HVT \data_in_reg_reg[0][8]  ( .D(data_in_reg_next[8]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[8]) );
  SDFFARX1_HVT \data_in_reg_reg[0][7]  ( .D(data_in_reg_next[7]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[7]) );
  SDFFARX1_HVT \data_in_reg_reg[0][6]  ( .D(data_in_reg_next[6]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[6]) );
  SDFFARX1_HVT \data_in_reg_reg[0][5]  ( .D(data_in_reg_next[5]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[5]) );
  SDFFARX1_HVT \data_in_reg_reg[0][4]  ( .D(data_in_reg_next[4]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[4]) );
  SDFFARX1_HVT \data_in_reg_reg[0][3]  ( .D(data_in_reg_next[3]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[3]) );
  SDFFARX1_HVT \data_in_reg_reg[0][2]  ( .D(data_in_reg_next[2]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[2]) );
  SDFFARX1_HVT \data_in_reg_reg[0][1]  ( .D(data_in_reg_next[1]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[1]) );
  SDFFARX1_HVT \data_in_reg_reg[0][0]  ( .D(data_in_reg_next[0]), .SI(1'b0), 
        .SE(1'b0), .CLK(net862), .RSTB(rst_n), .Q(reg_data[0]) );
  INVX0_HVT U2 ( .A(mode[2]), .Y(n2) );
  INVX0_HVT U3 ( .A(mode[0]), .Y(n1) );
  NAND3X0_HVT U4 ( .A1(n2), .A2(n1), .A3(mode[1]), .Y(n6) );
  INVX0_HVT U5 ( .A(n6), .Y(n7) );
  AO22X2_HVT U6 ( .A1(n7), .A2(data_in[0]), .A3(n6), .A4(reg_data[0]), .Y(
        res[0]) );
  AO22X2_HVT U7 ( .A1(n7), .A2(data_in[2]), .A3(n6), .A4(reg_data[2]), .Y(
        res[2]) );
  AO22X2_HVT U8 ( .A1(n7), .A2(data_in[3]), .A3(n6), .A4(reg_data[3]), .Y(
        res[3]) );
  AO22X2_HVT U9 ( .A1(n7), .A2(data_in[15]), .A3(n6), .A4(reg_data[15]), .Y(
        res[15]) );
  AND2X1_HVT U10 ( .A1(n2), .A2(mode[0]), .Y(n4) );
  OR2X1_HVT U11 ( .A1(clk_en), .A2(mode[1]), .Y(n3) );
  AND2X1_HVT U12 ( .A1(n4), .A2(n3), .Y(n5) );
  OR2X1_HVT U13 ( .A1(load), .A2(n5), .Y(data_in_le) );
  AO22X1_HVT U15 ( .A1(n7), .A2(data_in[1]), .A3(n6), .A4(reg_data[1]), .Y(
        res[1]) );
  AO22X1_HVT U16 ( .A1(n7), .A2(data_in[4]), .A3(n6), .A4(reg_data[4]), .Y(
        res[4]) );
  AO22X1_HVT U17 ( .A1(n7), .A2(data_in[5]), .A3(n6), .A4(reg_data[5]), .Y(
        res[5]) );
  AO22X1_HVT U18 ( .A1(n7), .A2(data_in[6]), .A3(n6), .A4(reg_data[6]), .Y(
        res[6]) );
  AO22X1_HVT U19 ( .A1(n7), .A2(data_in[7]), .A3(n6), .A4(reg_data[7]), .Y(
        res[7]) );
  AO22X1_HVT U20 ( .A1(n7), .A2(data_in[8]), .A3(n6), .A4(reg_data[8]), .Y(
        res[8]) );
  AO22X1_HVT U21 ( .A1(n7), .A2(data_in[9]), .A3(n6), .A4(reg_data[9]), .Y(
        res[9]) );
  AO22X1_HVT U22 ( .A1(n7), .A2(data_in[10]), .A3(n6), .A4(reg_data[10]), .Y(
        res[10]) );
  AO22X1_HVT U23 ( .A1(n7), .A2(data_in[11]), .A3(n6), .A4(reg_data[11]), .Y(
        res[11]) );
  AO22X1_HVT U24 ( .A1(n7), .A2(data_in[12]), .A3(n6), .A4(reg_data[12]), .Y(
        res[12]) );
  AO22X1_HVT U25 ( .A1(n7), .A2(data_in[13]), .A3(n6), .A4(reg_data[13]), .Y(
        res[13]) );
  AO22X1_HVT U26 ( .A1(n7), .A2(data_in[14]), .A3(n6), .A4(reg_data[14]), .Y(
        res[14]) );
  INVX0_HVT U27 ( .A(load), .Y(n9) );
  AO22X1_HVT U28 ( .A1(load), .A2(val[0]), .A3(n9), .A4(data_in[0]), .Y(
        data_in_reg_next[0]) );
  AO22X1_HVT U29 ( .A1(load), .A2(val[1]), .A3(n9), .A4(data_in[1]), .Y(
        data_in_reg_next[1]) );
  AO22X1_HVT U30 ( .A1(load), .A2(val[2]), .A3(n9), .A4(data_in[2]), .Y(
        data_in_reg_next[2]) );
  AO22X1_HVT U31 ( .A1(load), .A2(val[3]), .A3(n9), .A4(data_in[3]), .Y(
        data_in_reg_next[3]) );
  AO22X1_HVT U32 ( .A1(load), .A2(val[4]), .A3(n9), .A4(data_in[4]), .Y(
        data_in_reg_next[4]) );
  AO22X1_HVT U33 ( .A1(load), .A2(val[5]), .A3(n9), .A4(data_in[5]), .Y(
        data_in_reg_next[5]) );
  AO22X1_HVT U34 ( .A1(load), .A2(val[6]), .A3(n9), .A4(data_in[6]), .Y(
        data_in_reg_next[6]) );
  AO22X1_HVT U35 ( .A1(load), .A2(val[7]), .A3(n9), .A4(data_in[7]), .Y(
        data_in_reg_next[7]) );
  AO22X1_HVT U36 ( .A1(load), .A2(val[8]), .A3(n9), .A4(data_in[8]), .Y(
        data_in_reg_next[8]) );
  AO22X1_HVT U37 ( .A1(load), .A2(val[9]), .A3(n9), .A4(data_in[9]), .Y(
        data_in_reg_next[9]) );
  AO22X1_HVT U38 ( .A1(load), .A2(val[10]), .A3(n9), .A4(data_in[10]), .Y(
        data_in_reg_next[10]) );
  AO22X1_HVT U39 ( .A1(load), .A2(val[11]), .A3(n9), .A4(data_in[11]), .Y(
        data_in_reg_next[11]) );
  AO22X1_HVT U40 ( .A1(load), .A2(val[12]), .A3(n9), .A4(data_in[12]), .Y(
        data_in_reg_next[12]) );
  AO22X1_HVT U41 ( .A1(load), .A2(val[13]), .A3(n9), .A4(data_in[13]), .Y(
        data_in_reg_next[13]) );
  AO22X1_HVT U42 ( .A1(load), .A2(val[14]), .A3(n9), .A4(data_in[14]), .Y(
        data_in_reg_next[14]) );
  AO22X1_HVT U43 ( .A1(load), .A2(val[15]), .A3(n9), .A4(data_in[15]), .Y(
        data_in_reg_next[15]) );
  SNPS_CLOCK_GATE_HIGH_test_opt_reg_file_DataWidth16_0 \clk_gate_data_in_reg_reg[0]  ( 
        .CLK(clk), .EN(data_in_le), .ENCLK(net862), .TE(1'b0) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_opt_reg_DataWidth16_0_3 ( CLK, EN, ENCLK, TE
 );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
endmodule


module test_opt_reg_DataWidth16_3 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [15:0] val;
  input [1:0] mode;
  input [15:0] data_in;
  output [15:0] res;
  output [15:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   data_in_le, net844, n1, n2, n3, n4;
  wire   [15:0] data_in_reg_next;

  SDFFARX1_HVT \data_in_reg_reg[15]  ( .D(data_in_reg_next[15]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[15]) );
  SDFFARX1_HVT \data_in_reg_reg[14]  ( .D(data_in_reg_next[14]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[14]) );
  SDFFARX1_HVT \data_in_reg_reg[13]  ( .D(data_in_reg_next[13]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[13]) );
  SDFFARX1_HVT \data_in_reg_reg[12]  ( .D(data_in_reg_next[12]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[12]) );
  SDFFARX1_HVT \data_in_reg_reg[11]  ( .D(data_in_reg_next[11]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[11]) );
  SDFFARX1_HVT \data_in_reg_reg[10]  ( .D(data_in_reg_next[10]), .SI(1'b0), 
        .SE(1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[10]) );
  SDFFARX1_HVT \data_in_reg_reg[9]  ( .D(data_in_reg_next[9]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[9]) );
  SDFFARX1_HVT \data_in_reg_reg[8]  ( .D(data_in_reg_next[8]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[8]) );
  SDFFARX1_HVT \data_in_reg_reg[7]  ( .D(data_in_reg_next[7]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[7]) );
  SDFFARX1_HVT \data_in_reg_reg[6]  ( .D(data_in_reg_next[6]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[6]) );
  SDFFARX1_HVT \data_in_reg_reg[5]  ( .D(data_in_reg_next[5]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[5]) );
  SDFFARX1_HVT \data_in_reg_reg[4]  ( .D(data_in_reg_next[4]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[4]) );
  SDFFARX1_HVT \data_in_reg_reg[3]  ( .D(data_in_reg_next[3]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[3]) );
  SDFFARX1_HVT \data_in_reg_reg[2]  ( .D(data_in_reg_next[2]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[2]) );
  SDFFARX1_HVT \data_in_reg_reg[1]  ( .D(data_in_reg_next[1]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[1]) );
  SDFFARX1_HVT \data_in_reg_reg[0]  ( .D(data_in_reg_next[0]), .SI(1'b0), .SE(
        1'b0), .CLK(net844), .RSTB(rst_n), .Q(reg_data[0]) );
  AO221X1_HVT U2 ( .A1(mode[0]), .A2(mode[1]), .A3(mode[0]), .A4(clk_en), .A5(
        load), .Y(data_in_le) );
  INVX0_HVT U3 ( .A(mode[0]), .Y(n1) );
  NAND2X0_HVT U4 ( .A1(mode[1]), .A2(n1), .Y(n2) );
  INVX0_HVT U5 ( .A(n2), .Y(n3) );
  AO22X1_HVT U6 ( .A1(n3), .A2(data_in[0]), .A3(n2), .A4(reg_data[0]), .Y(
        res[0]) );
  AO22X1_HVT U7 ( .A1(n3), .A2(data_in[1]), .A3(n2), .A4(reg_data[1]), .Y(
        res[1]) );
  AO22X1_HVT U8 ( .A1(n3), .A2(data_in[2]), .A3(n2), .A4(reg_data[2]), .Y(
        res[2]) );
  AO22X1_HVT U9 ( .A1(n3), .A2(data_in[3]), .A3(n2), .A4(reg_data[3]), .Y(
        res[3]) );
  AO22X1_HVT U10 ( .A1(n3), .A2(data_in[4]), .A3(n2), .A4(reg_data[4]), .Y(
        res[4]) );
  AO22X1_HVT U11 ( .A1(n3), .A2(data_in[5]), .A3(n2), .A4(reg_data[5]), .Y(
        res[5]) );
  AO22X1_HVT U12 ( .A1(n3), .A2(data_in[6]), .A3(n2), .A4(reg_data[6]), .Y(
        res[6]) );
  AO22X1_HVT U13 ( .A1(n3), .A2(data_in[7]), .A3(n2), .A4(reg_data[7]), .Y(
        res[7]) );
  AO22X1_HVT U14 ( .A1(n3), .A2(data_in[8]), .A3(n2), .A4(reg_data[8]), .Y(
        res[8]) );
  AO22X1_HVT U15 ( .A1(n3), .A2(data_in[9]), .A3(n2), .A4(reg_data[9]), .Y(
        res[9]) );
  AO22X1_HVT U16 ( .A1(n3), .A2(data_in[10]), .A3(n2), .A4(reg_data[10]), .Y(
        res[10]) );
  AO22X1_HVT U17 ( .A1(n3), .A2(data_in[11]), .A3(n2), .A4(reg_data[11]), .Y(
        res[11]) );
  AO22X1_HVT U18 ( .A1(n3), .A2(data_in[12]), .A3(n2), .A4(reg_data[12]), .Y(
        res[12]) );
  AO22X1_HVT U19 ( .A1(n3), .A2(data_in[13]), .A3(n2), .A4(reg_data[13]), .Y(
        res[13]) );
  AO22X1_HVT U20 ( .A1(n3), .A2(data_in[14]), .A3(n2), .A4(reg_data[14]), .Y(
        res[14]) );
  AO22X1_HVT U21 ( .A1(n3), .A2(data_in[15]), .A3(n2), .A4(reg_data[15]), .Y(
        res[15]) );
  INVX0_HVT U22 ( .A(load), .Y(n4) );
  AO22X1_HVT U23 ( .A1(load), .A2(val[0]), .A3(n4), .A4(data_in[0]), .Y(
        data_in_reg_next[0]) );
  AO22X1_HVT U24 ( .A1(load), .A2(val[1]), .A3(n4), .A4(data_in[1]), .Y(
        data_in_reg_next[1]) );
  AO22X1_HVT U25 ( .A1(load), .A2(val[2]), .A3(n4), .A4(data_in[2]), .Y(
        data_in_reg_next[2]) );
  AO22X1_HVT U26 ( .A1(load), .A2(val[3]), .A3(n4), .A4(data_in[3]), .Y(
        data_in_reg_next[3]) );
  AO22X1_HVT U27 ( .A1(load), .A2(val[4]), .A3(n4), .A4(data_in[4]), .Y(
        data_in_reg_next[4]) );
  AO22X1_HVT U28 ( .A1(load), .A2(val[5]), .A3(n4), .A4(data_in[5]), .Y(
        data_in_reg_next[5]) );
  AO22X1_HVT U29 ( .A1(load), .A2(val[6]), .A3(n4), .A4(data_in[6]), .Y(
        data_in_reg_next[6]) );
  AO22X1_HVT U30 ( .A1(load), .A2(val[7]), .A3(n4), .A4(data_in[7]), .Y(
        data_in_reg_next[7]) );
  AO22X1_HVT U31 ( .A1(load), .A2(val[8]), .A3(n4), .A4(data_in[8]), .Y(
        data_in_reg_next[8]) );
  AO22X1_HVT U32 ( .A1(load), .A2(val[9]), .A3(n4), .A4(data_in[9]), .Y(
        data_in_reg_next[9]) );
  AO22X1_HVT U33 ( .A1(load), .A2(val[10]), .A3(n4), .A4(data_in[10]), .Y(
        data_in_reg_next[10]) );
  AO22X1_HVT U34 ( .A1(load), .A2(val[11]), .A3(n4), .A4(data_in[11]), .Y(
        data_in_reg_next[11]) );
  AO22X1_HVT U35 ( .A1(load), .A2(val[12]), .A3(n4), .A4(data_in[12]), .Y(
        data_in_reg_next[12]) );
  AO22X1_HVT U36 ( .A1(load), .A2(val[13]), .A3(n4), .A4(data_in[13]), .Y(
        data_in_reg_next[13]) );
  AO22X1_HVT U37 ( .A1(load), .A2(val[14]), .A3(n4), .A4(data_in[14]), .Y(
        data_in_reg_next[14]) );
  AO22X1_HVT U38 ( .A1(load), .A2(val[15]), .A3(n4), .A4(data_in[15]), .Y(
        data_in_reg_next[15]) );
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
  wire   n8, n1, n2, n3, n4, n5;

  SDFFARX1_HVT \data_in_reg_reg[0]  ( .D(n8), .SI(1'b0), .SE(1'b0), .CLK(clk), 
        .RSTB(rst_n), .Q(reg_data[0]) );
  INVX0_HVT U2 ( .A(mode[0]), .Y(n1) );
  NAND2X0_HVT U3 ( .A1(mode[1]), .A2(n1), .Y(n2) );
  MUX21X1_HVT U4 ( .A1(data_in[0]), .A2(reg_data[0]), .S0(n2), .Y(res[0]) );
  INVX0_HVT U5 ( .A(load), .Y(n3) );
  AO22X1_HVT U6 ( .A1(load), .A2(val[0]), .A3(n3), .A4(data_in[0]), .Y(n5) );
  AO221X1_HVT U7 ( .A1(mode[0]), .A2(clk_en), .A3(mode[0]), .A4(mode[1]), .A5(
        load), .Y(n4) );
  MUX21X1_HVT U8 ( .A1(reg_data[0]), .A2(n5), .S0(n4), .Y(n8) );
endmodule


module test_opt_reg_DataWidth1_4 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [0:0] val;
  input [1:0] mode;
  input [0:0] data_in;
  output [0:0] res;
  output [0:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   n1, n2, n3, n4, n5, n6;

  SDFFARX1_HVT \data_in_reg_reg[0]  ( .D(n6), .SI(1'b0), .SE(1'b0), .CLK(clk), 
        .RSTB(rst_n), .Q(reg_data[0]) );
  INVX0_HVT U2 ( .A(mode[0]), .Y(n1) );
  NAND2X0_HVT U3 ( .A1(mode[1]), .A2(n1), .Y(n2) );
  MUX21X1_HVT U4 ( .A1(data_in[0]), .A2(reg_data[0]), .S0(n2), .Y(res[0]) );
  INVX0_HVT U5 ( .A(load), .Y(n3) );
  AO22X1_HVT U6 ( .A1(load), .A2(val[0]), .A3(n3), .A4(data_in[0]), .Y(n5) );
  AO221X1_HVT U7 ( .A1(mode[0]), .A2(clk_en), .A3(mode[0]), .A4(mode[1]), .A5(
        load), .Y(n4) );
  MUX21X1_HVT U8 ( .A1(reg_data[0]), .A2(n5), .S0(n4), .Y(n6) );
endmodule


module test_opt_reg_DataWidth1_5 ( clk, clk_en, rst_n, load, val, mode, 
        data_in, res, reg_data );
  input [0:0] val;
  input [1:0] mode;
  input [0:0] data_in;
  output [0:0] res;
  output [0:0] reg_data;
  input clk, clk_en, rst_n, load;
  wire   n1, n2, n3, n4, n5, n6;

  SDFFARX1_HVT \data_in_reg_reg[0]  ( .D(n6), .SI(1'b0), .SE(1'b0), .CLK(clk), 
        .RSTB(rst_n), .Q(reg_data[0]) );
  INVX0_HVT U2 ( .A(mode[0]), .Y(n1) );
  NAND2X0_HVT U3 ( .A1(mode[1]), .A2(n1), .Y(n2) );
  MUX21X1_HVT U4 ( .A1(data_in[0]), .A2(reg_data[0]), .S0(n2), .Y(res[0]) );
  INVX0_HVT U5 ( .A(load), .Y(n3) );
  AO22X1_HVT U6 ( .A1(load), .A2(val[0]), .A3(n3), .A4(data_in[0]), .Y(n5) );
  AO221X1_HVT U7 ( .A1(mode[0]), .A2(clk_en), .A3(mode[0]), .A4(mode[1]), .A5(
        load), .Y(n4) );
  MUX21X1_HVT U8 ( .A1(reg_data[0]), .A2(n5), .S0(n4), .Y(n6) );
endmodule


module test_full_add_DataWidth16_2 ( a, b, c_in, res, c_out );
  input [15:0] a;
  input [15:0] b;
  output [15:0] res;
  input c_in;
  output c_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  FADDX1_HVT U1 ( .A(b[15]), .B(a[15]), .CI(n1), .CO(c_out), .S(res[15]) );
  FADDX1_HVT U2 ( .A(b[14]), .B(a[14]), .CI(n2), .CO(n1), .S(res[14]) );
  FADDX1_HVT U3 ( .A(b[13]), .B(a[13]), .CI(n3), .CO(n2), .S(res[13]) );
  FADDX1_HVT U4 ( .A(b[12]), .B(a[12]), .CI(n4), .CO(n3), .S(res[12]) );
  FADDX1_HVT U5 ( .A(b[11]), .B(a[11]), .CI(n5), .CO(n4), .S(res[11]) );
  FADDX1_HVT U6 ( .A(b[10]), .B(a[10]), .CI(n6), .CO(n5), .S(res[10]) );
  FADDX1_HVT U7 ( .A(b[9]), .B(a[9]), .CI(n7), .CO(n6), .S(res[9]) );
  FADDX1_HVT U8 ( .A(b[8]), .B(a[8]), .CI(n8), .CO(n7), .S(res[8]) );
  FADDX1_HVT U9 ( .A(b[7]), .B(a[7]), .CI(n9), .CO(n8), .S(res[7]) );
  FADDX1_HVT U10 ( .A(b[6]), .B(a[6]), .CI(n10), .CO(n9), .S(res[6]) );
  FADDX1_HVT U11 ( .A(b[5]), .B(a[5]), .CI(n11), .CO(n10), .S(res[5]) );
  FADDX1_HVT U12 ( .A(b[4]), .B(a[4]), .CI(n12), .CO(n11), .S(res[4]) );
  FADDX1_HVT U13 ( .A(b[3]), .B(a[3]), .CI(n13), .CO(n12), .S(res[3]) );
  FADDX1_HVT U14 ( .A(b[2]), .B(a[2]), .CI(n14), .CO(n13), .S(res[2]) );
  FADDX1_HVT U15 ( .A(b[1]), .B(a[1]), .CI(n15), .CO(n14), .S(res[1]) );
  FADDX1_HVT U16 ( .A(c_in), .B(b[0]), .CI(a[0]), .CO(n15), .S(res[0]) );
endmodule


module test_full_add_DataWidth16_3 ( a, b, c_in, res, c_out );
  input [15:0] a;
  input [15:0] b;
  output [15:0] res;
  input c_in;
  output c_out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  FADDX1_HVT U1 ( .A(b[15]), .B(a[15]), .CI(n1), .CO(c_out), .S(res[15]) );
  FADDX1_HVT U2 ( .A(b[14]), .B(a[14]), .CI(n2), .CO(n1), .S(res[14]) );
  FADDX1_HVT U3 ( .A(b[13]), .B(a[13]), .CI(n3), .CO(n2), .S(res[13]) );
  FADDX1_HVT U4 ( .A(b[12]), .B(a[12]), .CI(n4), .CO(n3), .S(res[12]) );
  FADDX1_HVT U5 ( .A(b[11]), .B(a[11]), .CI(n5), .CO(n4), .S(res[11]) );
  FADDX1_HVT U6 ( .A(b[10]), .B(a[10]), .CI(n6), .CO(n5), .S(res[10]) );
  FADDX1_HVT U7 ( .A(b[9]), .B(a[9]), .CI(n7), .CO(n6), .S(res[9]) );
  FADDX1_HVT U8 ( .A(b[8]), .B(a[8]), .CI(n8), .CO(n7), .S(res[8]) );
  FADDX1_HVT U9 ( .A(b[7]), .B(a[7]), .CI(n9), .CO(n8), .S(res[7]) );
  FADDX1_HVT U10 ( .A(b[6]), .B(a[6]), .CI(n10), .CO(n9), .S(res[6]) );
  FADDX1_HVT U11 ( .A(b[5]), .B(a[5]), .CI(n11), .CO(n10), .S(res[5]) );
  FADDX1_HVT U12 ( .A(b[4]), .B(a[4]), .CI(n12), .CO(n11), .S(res[4]) );
  FADDX1_HVT U13 ( .A(b[3]), .B(a[3]), .CI(n13), .CO(n12), .S(res[3]) );
  FADDX1_HVT U14 ( .A(b[2]), .B(a[2]), .CI(n14), .CO(n13), .S(res[2]) );
  FADDX1_HVT U15 ( .A(b[1]), .B(a[1]), .CI(n15), .CO(n14), .S(res[1]) );
  FADDX1_HVT U16 ( .A(c_in), .B(b[0]), .CI(a[0]), .CO(n15), .S(res[0]) );
endmodule


module test_cmpr_0 ( a_msb, b_msb, diff_msb, is_signed, eq, lte, gte_BAR );
  input a_msb, b_msb, diff_msb, is_signed, eq;
  output lte, gte_BAR;
  wire   n1;

  INVX0_HVT U1 ( .A(is_signed), .Y(n1) );
  MUX41X1_HVT U2 ( .A1(diff_msb), .A3(is_signed), .A2(n1), .A4(diff_msb), .S0(
        a_msb), .S1(b_msb), .Y(gte_BAR) );
  OR2X1_HVT U3 ( .A1(eq), .A2(gte_BAR), .Y(lte) );
endmodule


module test_mult_add_DataWidth16_0 ( is_signed, a, b, c, res, c_out );
  input [15:0] a;
  input [15:0] b;
  input [15:0] c;
  output [31:0] res;
  input is_signed;
  output c_out;
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753;

  INVX4_HVT U1 ( .A(n484), .Y(n652) );
  INVX4_HVT U2 ( .A(n563), .Y(n742) );
  INVX2_HVT U3 ( .A(a[14]), .Y(n250) );
  INVX2_HVT U4 ( .A(n250), .Y(n745) );
  INVX2_HVT U5 ( .A(a[11]), .Y(n297) );
  INVX2_HVT U6 ( .A(n297), .Y(n383) );
  INVX0_HVT U7 ( .A(a[12]), .Y(n1) );
  AO22X1_HVT U8 ( .A1(n383), .A2(a[12]), .A3(n297), .A4(n1), .Y(n16) );
  INVX0_HVT U9 ( .A(n16), .Y(n248) );
  HADDX1_HVT U10 ( .A0(a[12]), .B0(a[13]), .SO(n17) );
  NOR2X0_HVT U11 ( .A1(n248), .A2(n17), .Y(n18) );
  NAND2X0_HVT U12 ( .A1(is_signed), .A2(b[15]), .Y(n744) );
  INVX2_HVT U13 ( .A(n744), .Y(n746) );
  MUX41X1_HVT U14 ( .A1(n745), .A3(n745), .A2(n250), .A4(a[13]), .S0(n18), 
        .S1(n746), .Y(n11) );
  INVX0_HVT U15 ( .A(a[8]), .Y(n386) );
  INVX2_HVT U16 ( .A(n386), .Y(n481) );
  INVX0_HVT U17 ( .A(a[9]), .Y(n2) );
  AO22X1_HVT U18 ( .A1(n481), .A2(a[9]), .A3(n386), .A4(n2), .Y(n63) );
  INVX0_HVT U19 ( .A(n63), .Y(n295) );
  HADDX1_HVT U20 ( .A0(a[9]), .B0(a[10]), .SO(n64) );
  NOR2X0_HVT U21 ( .A1(n295), .A2(n64), .Y(n65) );
  MUX41X1_HVT U22 ( .A1(n383), .A3(n383), .A2(n297), .A4(a[10]), .S0(n65), 
        .S1(n746), .Y(n37) );
  AND2X2_HVT U23 ( .A1(is_signed), .A2(a[15]), .Y(n743) );
  INVX0_HVT U24 ( .A(n743), .Y(n128) );
  INVX0_HVT U25 ( .A(a[15]), .Y(n3) );
  AO22X1_HVT U26 ( .A1(a[15]), .A2(n250), .A3(n3), .A4(n745), .Y(n144) );
  INVX0_HVT U27 ( .A(n144), .Y(n126) );
  INVX0_HVT U28 ( .A(n126), .Y(n143) );
  INVX0_HVT U29 ( .A(b[12]), .Y(n625) );
  NAND2X0_HVT U30 ( .A1(n745), .A2(a[15]), .Y(n125) );
  INVX0_HVT U31 ( .A(b[11]), .Y(n620) );
  OA22X1_HVT U32 ( .A1(n126), .A2(n625), .A3(n125), .A4(n620), .Y(n4) );
  OA222X1_HVT U33 ( .A1(n128), .A2(b[12]), .A3(n128), .A4(n143), .A5(n4), .A6(
        n743), .Y(n36) );
  INVX0_HVT U34 ( .A(b[10]), .Y(n615) );
  INVX0_HVT U35 ( .A(b[9]), .Y(n610) );
  OA22X1_HVT U36 ( .A1(n126), .A2(n615), .A3(n125), .A4(n610), .Y(n5) );
  OA222X1_HVT U37 ( .A1(n128), .A2(b[10]), .A3(n128), .A4(n144), .A5(n5), .A6(
        n743), .Y(n38) );
  NAND2X0_HVT U38 ( .A1(b[15]), .A2(n143), .Y(n9) );
  INVX0_HVT U39 ( .A(n9), .Y(n7) );
  INVX0_HVT U40 ( .A(n743), .Y(n147) );
  INVX0_HVT U41 ( .A(n125), .Y(n145) );
  NAND2X0_HVT U42 ( .A1(n145), .A2(b[14]), .Y(n6) );
  OA221X1_HVT U43 ( .A1(n7), .A2(n147), .A3(n743), .A4(n9), .A5(n6), .Y(n10)
         );
  AO22X1_HVT U44 ( .A1(b[15]), .A2(n145), .A3(n746), .A4(n144), .Y(n8) );
  AO22X1_HVT U45 ( .A1(n743), .A2(n9), .A3(n147), .A4(n8), .Y(n747) );
  FADDX1_HVT U46 ( .A(n11), .B(n35), .CI(n10), .CO(n753), .S(n12) );
  INVX0_HVT U47 ( .A(n12), .Y(n655) );
  NAND2X0_HVT U48 ( .A1(b[14]), .A2(n143), .Y(n14) );
  AO22X1_HVT U49 ( .A1(n145), .A2(b[13]), .A3(b[14]), .A4(n144), .Y(n13) );
  AO22X1_HVT U50 ( .A1(n743), .A2(n14), .A3(n147), .A4(n13), .Y(n25) );
  INVX0_HVT U51 ( .A(a[13]), .Y(n15) );
  AO22X1_HVT U52 ( .A1(n745), .A2(n15), .A3(n250), .A4(a[13]), .Y(n19) );
  OR2X1_HVT U53 ( .A1(n16), .A2(n19), .Y(n269) );
  NAND2X0_HVT U54 ( .A1(n17), .A2(n16), .Y(n271) );
  NAND2X0_HVT U55 ( .A1(n269), .A2(n271), .Y(n22) );
  OA21X1_HVT U56 ( .A1(b[2]), .A2(b[0]), .A3(b[1]), .Y(n256) );
  OA21X1_HVT U57 ( .A1(is_signed), .A2(n29), .A3(b[15]), .Y(n440) );
  NAND2X0_HVT U58 ( .A1(n248), .A2(n19), .Y(n268) );
  INVX0_HVT U59 ( .A(n268), .Y(n21) );
  NAND2X0_HVT U60 ( .A1(n19), .A2(n18), .Y(n270) );
  INVX0_HVT U61 ( .A(n270), .Y(n20) );
  AO222X1_HVT U62 ( .A1(n22), .A2(n746), .A3(n440), .A4(n21), .A5(b[15]), .A6(
        n20), .Y(n23) );
  HADDX1_HVT U63 ( .A0(n745), .B0(n23), .SO(n24) );
  FADDX1_HVT U64 ( .A(n35), .B(n25), .CI(n24), .CO(n654), .S(n658) );
  NAND2X0_HVT U65 ( .A1(b[13]), .A2(n143), .Y(n27) );
  AO22X1_HVT U66 ( .A1(n145), .A2(b[12]), .A3(b[13]), .A4(n144), .Y(n26) );
  AO22X1_HVT U67 ( .A1(n743), .A2(n27), .A3(n147), .A4(n26), .Y(n34) );
  NAND2X0_HVT U68 ( .A1(n744), .A2(b[15]), .Y(n28) );
  HADDX1_HVT U69 ( .A0(n29), .B0(n28), .SO(n643) );
  OA22X1_HVT U70 ( .A1(n744), .A2(n269), .A3(n643), .A4(n268), .Y(n31) );
  INVX0_HVT U71 ( .A(b[15]), .Y(n648) );
  INVX0_HVT U72 ( .A(b[14]), .Y(n646) );
  OA22X1_HVT U73 ( .A1(n648), .A2(n271), .A3(n646), .A4(n270), .Y(n30) );
  NAND2X0_HVT U74 ( .A1(n31), .A2(n30), .Y(n32) );
  HADDX1_HVT U75 ( .A0(n745), .B0(n32), .SO(n33) );
  FADDX1_HVT U76 ( .A(n35), .B(n34), .CI(n33), .CO(n657), .S(n661) );
  FADDX1_HVT U77 ( .A(n37), .B(n36), .CI(n38), .CO(n35), .S(n58) );
  INVX0_HVT U78 ( .A(n38), .Y(n83) );
  INVX0_HVT U79 ( .A(a[5]), .Y(n484) );
  INVX0_HVT U80 ( .A(a[6]), .Y(n39) );
  AO22X1_HVT U81 ( .A1(n652), .A2(a[6]), .A3(n484), .A4(n39), .Y(n168) );
  INVX0_HVT U82 ( .A(n168), .Y(n384) );
  INVX0_HVT U83 ( .A(a[7]), .Y(n167) );
  OA22X1_HVT U84 ( .A1(n39), .A2(n167), .A3(a[6]), .A4(a[7]), .Y(n169) );
  NOR2X0_HVT U85 ( .A1(n384), .A2(n169), .Y(n170) );
  MUX41X1_HVT U86 ( .A1(n481), .A3(n481), .A2(n386), .A4(a[7]), .S0(n170), 
        .S1(n746), .Y(n86) );
  INVX0_HVT U87 ( .A(a[2]), .Y(n563) );
  INVX0_HVT U88 ( .A(a[3]), .Y(n40) );
  AO22X1_HVT U89 ( .A1(a[3]), .A2(n742), .A3(n40), .A4(n563), .Y(n338) );
  INVX0_HVT U90 ( .A(n338), .Y(n482) );
  HADDX1_HVT U91 ( .A0(a[3]), .B0(a[4]), .SO(n339) );
  NOR2X0_HVT U92 ( .A1(n482), .A2(n339), .Y(n340) );
  MUX41X1_HVT U93 ( .A1(n652), .A3(n652), .A2(n484), .A4(a[4]), .S0(n340), 
        .S1(n746), .Y(n122) );
  INVX0_HVT U94 ( .A(b[6]), .Y(n595) );
  INVX0_HVT U95 ( .A(b[5]), .Y(n590) );
  OA22X1_HVT U96 ( .A1(n126), .A2(n595), .A3(n125), .A4(n590), .Y(n41) );
  OA222X1_HVT U97 ( .A1(n128), .A2(b[6]), .A3(n128), .A4(n143), .A5(n41), .A6(
        n743), .Y(n121) );
  INVX0_HVT U98 ( .A(b[4]), .Y(n585) );
  INVX0_HVT U99 ( .A(b[3]), .Y(n580) );
  OA22X1_HVT U100 ( .A1(n126), .A2(n585), .A3(n125), .A4(n580), .Y(n42) );
  OA222X1_HVT U101 ( .A1(n128), .A2(b[4]), .A3(n147), .A4(n143), .A5(n42), 
        .A6(n743), .Y(n224) );
  INVX0_HVT U102 ( .A(b[8]), .Y(n605) );
  OA22X1_HVT U103 ( .A1(n126), .A2(n610), .A3(n125), .A4(n605), .Y(n43) );
  OA222X1_HVT U104 ( .A1(n128), .A2(b[9]), .A3(n128), .A4(n144), .A5(n43), 
        .A6(n743), .Y(n85) );
  FADDX1_HVT U105 ( .A(b[12]), .B(b[13]), .CI(n44), .CO(n71), .S(n45) );
  INVX0_HVT U106 ( .A(n45), .Y(n621) );
  INVX0_HVT U107 ( .A(b[13]), .Y(n630) );
  OA22X1_HVT U108 ( .A1(n621), .A2(n268), .A3(n630), .A4(n269), .Y(n47) );
  OA22X1_HVT U109 ( .A1(n620), .A2(n270), .A3(n625), .A4(n271), .Y(n46) );
  NAND2X0_HVT U110 ( .A1(n47), .A2(n46), .Y(n48) );
  HADDX1_HVT U111 ( .A0(n250), .B0(n48), .SO(n81) );
  OA22X1_HVT U112 ( .A1(n126), .A2(n620), .A3(n125), .A4(n615), .Y(n49) );
  OA222X1_HVT U113 ( .A1(n128), .A2(b[11]), .A3(n128), .A4(n144), .A5(n49), 
        .A6(n743), .Y(n60) );
  FADDX1_HVT U114 ( .A(b[14]), .B(b[15]), .CI(n50), .CO(n29), .S(n51) );
  INVX0_HVT U115 ( .A(n51), .Y(n631) );
  OA22X1_HVT U116 ( .A1(n648), .A2(n269), .A3(n631), .A4(n268), .Y(n53) );
  OA22X1_HVT U117 ( .A1(n646), .A2(n271), .A3(n630), .A4(n270), .Y(n52) );
  NAND2X0_HVT U118 ( .A1(n53), .A2(n52), .Y(n54) );
  HADDX1_HVT U119 ( .A0(n250), .B0(n54), .SO(n56) );
  INVX0_HVT U120 ( .A(n55), .Y(n660) );
  FADDX1_HVT U121 ( .A(n58), .B(n57), .CI(n56), .CO(n55), .S(n59) );
  INVX0_HVT U122 ( .A(n59), .Y(n664) );
  FADDX1_HVT U123 ( .A(n83), .B(n61), .CI(n60), .CO(n57), .S(n79) );
  INVX0_HVT U124 ( .A(a[10]), .Y(n62) );
  AO22X1_HVT U125 ( .A1(n383), .A2(n62), .A3(n297), .A4(a[10]), .Y(n66) );
  OR2X1_HVT U126 ( .A1(n63), .A2(n66), .Y(n318) );
  NAND2X0_HVT U127 ( .A1(n64), .A2(n63), .Y(n320) );
  NAND2X0_HVT U128 ( .A1(n318), .A2(n320), .Y(n69) );
  NAND2X0_HVT U129 ( .A1(n295), .A2(n66), .Y(n317) );
  INVX0_HVT U130 ( .A(n317), .Y(n68) );
  NAND2X0_HVT U131 ( .A1(n66), .A2(n65), .Y(n319) );
  INVX0_HVT U132 ( .A(n319), .Y(n67) );
  AO222X1_HVT U133 ( .A1(n69), .A2(n746), .A3(n440), .A4(n68), .A5(b[15]), 
        .A6(n67), .Y(n70) );
  HADDX1_HVT U134 ( .A0(n297), .B0(n70), .SO(n78) );
  FADDX1_HVT U135 ( .A(b[13]), .B(b[14]), .CI(n71), .CO(n50), .S(n72) );
  INVX0_HVT U136 ( .A(n72), .Y(n626) );
  OA22X1_HVT U137 ( .A1(n646), .A2(n269), .A3(n626), .A4(n268), .Y(n74) );
  OA22X1_HVT U138 ( .A1(n630), .A2(n271), .A3(n625), .A4(n270), .Y(n73) );
  NAND2X0_HVT U139 ( .A1(n74), .A2(n73), .Y(n75) );
  HADDX1_HVT U140 ( .A0(n250), .B0(n75), .SO(n77) );
  INVX0_HVT U141 ( .A(n76), .Y(n663) );
  FADDX1_HVT U142 ( .A(n79), .B(n78), .CI(n77), .CO(n76), .S(n80) );
  INVX0_HVT U143 ( .A(n80), .Y(n667) );
  FADDX1_HVT U144 ( .A(n83), .B(n82), .CI(n81), .CO(n61), .S(n84) );
  INVX0_HVT U145 ( .A(n84), .Y(n105) );
  FADDX1_HVT U146 ( .A(n86), .B(n120), .CI(n85), .CO(n82), .S(n87) );
  INVX0_HVT U147 ( .A(n87), .Y(n108) );
  FADDX1_HVT U148 ( .A(b[10]), .B(b[11]), .CI(n88), .CO(n95), .S(n89) );
  INVX0_HVT U149 ( .A(n89), .Y(n611) );
  OA22X1_HVT U150 ( .A1(n620), .A2(n269), .A3(n611), .A4(n268), .Y(n91) );
  OA22X1_HVT U151 ( .A1(n615), .A2(n271), .A3(n610), .A4(n270), .Y(n90) );
  NAND2X0_HVT U152 ( .A1(n91), .A2(n90), .Y(n92) );
  HADDX1_HVT U153 ( .A0(n745), .B0(n92), .SO(n110) );
  NAND2X0_HVT U154 ( .A1(b[8]), .A2(n143), .Y(n94) );
  AO22X1_HVT U155 ( .A1(n145), .A2(b[7]), .A3(b[8]), .A4(n144), .Y(n93) );
  AO22X1_HVT U156 ( .A1(n743), .A2(n94), .A3(n147), .A4(n93), .Y(n109) );
  FADDX1_HVT U157 ( .A(b[11]), .B(b[12]), .CI(n95), .CO(n44), .S(n96) );
  INVX0_HVT U158 ( .A(n96), .Y(n616) );
  OA22X1_HVT U159 ( .A1(n625), .A2(n269), .A3(n616), .A4(n268), .Y(n98) );
  OA22X1_HVT U160 ( .A1(n620), .A2(n271), .A3(n615), .A4(n270), .Y(n97) );
  NAND2X0_HVT U161 ( .A1(n98), .A2(n97), .Y(n99) );
  HADDX1_HVT U162 ( .A0(n745), .B0(n99), .SO(n106) );
  OA22X1_HVT U163 ( .A1(n744), .A2(n318), .A3(n643), .A4(n317), .Y(n101) );
  OA22X1_HVT U164 ( .A1(n648), .A2(n320), .A3(n646), .A4(n319), .Y(n100) );
  NAND2X0_HVT U165 ( .A1(n101), .A2(n100), .Y(n102) );
  HADDX1_HVT U166 ( .A0(n383), .B0(n102), .SO(n103) );
  FADDX1_HVT U167 ( .A(n105), .B(n104), .CI(n103), .CO(n666), .S(n670) );
  FADDX1_HVT U168 ( .A(n108), .B(n107), .CI(n106), .CO(n104), .S(n162) );
  FADDX1_HVT U169 ( .A(n120), .B(n110), .CI(n109), .CO(n107), .S(n165) );
  NAND2X0_HVT U170 ( .A1(b[7]), .A2(n143), .Y(n112) );
  AO22X1_HVT U171 ( .A1(n145), .A2(b[6]), .A3(b[7]), .A4(n144), .Y(n111) );
  AO22X1_HVT U172 ( .A1(n743), .A2(n112), .A3(n147), .A4(n111), .Y(n119) );
  FADDX1_HVT U173 ( .A(b[9]), .B(b[10]), .CI(n113), .CO(n88), .S(n114) );
  INVX0_HVT U174 ( .A(n114), .Y(n606) );
  OA22X1_HVT U175 ( .A1(n615), .A2(n269), .A3(n606), .A4(n268), .Y(n116) );
  OA22X1_HVT U176 ( .A1(n610), .A2(n271), .A3(n605), .A4(n270), .Y(n115) );
  NAND2X0_HVT U177 ( .A1(n116), .A2(n115), .Y(n117) );
  HADDX1_HVT U178 ( .A0(n745), .B0(n117), .SO(n118) );
  FADDX1_HVT U179 ( .A(n120), .B(n119), .CI(n118), .CO(n164), .S(n186) );
  FADDX1_HVT U180 ( .A(n122), .B(n121), .CI(n224), .CO(n120), .S(n123) );
  INVX0_HVT U181 ( .A(n123), .Y(n190) );
  AND2X1_HVT U182 ( .A1(is_signed), .A2(c[15]), .Y(n246) );
  INVX0_HVT U183 ( .A(a[1]), .Y(n438) );
  INVX0_HVT U184 ( .A(a[0]), .Y(n561) );
  NAND2X0_HVT U185 ( .A1(n438), .A2(n561), .Y(n124) );
  OA222X1_HVT U186 ( .A1(n742), .A2(n746), .A3(n742), .A4(n124), .A5(n744), 
        .A6(n563), .Y(n131) );
  INVX0_HVT U187 ( .A(b[2]), .Y(n575) );
  OA22X1_HVT U188 ( .A1(n126), .A2(n580), .A3(n125), .A4(n575), .Y(n127) );
  OA222X1_HVT U189 ( .A1(n128), .A2(b[3]), .A3(n128), .A4(n143), .A5(n127), 
        .A6(n743), .Y(n130) );
  INVX0_HVT U190 ( .A(n129), .Y(n223) );
  FADDX1_HVT U191 ( .A(n246), .B(n131), .CI(n130), .CO(n129), .S(n132) );
  INVX0_HVT U192 ( .A(n132), .Y(n241) );
  NAND2X0_HVT U193 ( .A1(n143), .A2(b[0]), .Y(n133) );
  HADDX1_HVT U194 ( .A0(n133), .B0(n147), .SO(n247) );
  NAND2X0_HVT U195 ( .A1(b[1]), .A2(n143), .Y(n135) );
  AO22X1_HVT U196 ( .A1(n145), .A2(b[0]), .A3(b[1]), .A4(n144), .Y(n134) );
  AO22X1_HVT U197 ( .A1(n743), .A2(n135), .A3(n147), .A4(n134), .Y(n244) );
  NAND2X0_HVT U198 ( .A1(b[2]), .A2(n143), .Y(n137) );
  AO22X1_HVT U199 ( .A1(n145), .A2(b[1]), .A3(b[2]), .A4(n144), .Y(n136) );
  AO22X1_HVT U200 ( .A1(n743), .A2(n137), .A3(n147), .A4(n136), .Y(n242) );
  FADDX1_HVT U201 ( .A(b[5]), .B(b[6]), .CI(n138), .CO(n229), .S(n139) );
  INVX0_HVT U202 ( .A(n139), .Y(n586) );
  OA22X1_HVT U203 ( .A1(n595), .A2(n269), .A3(n586), .A4(n268), .Y(n141) );
  OA22X1_HVT U204 ( .A1(n590), .A2(n271), .A3(n585), .A4(n270), .Y(n140) );
  NAND2X0_HVT U205 ( .A1(n141), .A2(n140), .Y(n142) );
  HADDX1_HVT U206 ( .A0(n745), .B0(n142), .SO(n239) );
  NAND2X0_HVT U207 ( .A1(b[5]), .A2(n143), .Y(n148) );
  AO22X1_HVT U208 ( .A1(n145), .A2(b[4]), .A3(b[5]), .A4(n144), .Y(n146) );
  AO22X1_HVT U209 ( .A1(n743), .A2(n148), .A3(n147), .A4(n146), .Y(n192) );
  FADDX1_HVT U210 ( .A(b[8]), .B(b[9]), .CI(n149), .CO(n113), .S(n150) );
  INVX0_HVT U211 ( .A(n150), .Y(n601) );
  OA22X1_HVT U212 ( .A1(n610), .A2(n269), .A3(n601), .A4(n268), .Y(n152) );
  INVX0_HVT U213 ( .A(b[7]), .Y(n600) );
  OA22X1_HVT U214 ( .A1(n605), .A2(n271), .A3(n600), .A4(n270), .Y(n151) );
  NAND2X0_HVT U215 ( .A1(n152), .A2(n151), .Y(n153) );
  HADDX1_HVT U216 ( .A0(n745), .B0(n153), .SO(n188) );
  OA22X1_HVT U217 ( .A1(n621), .A2(n317), .A3(n630), .A4(n318), .Y(n155) );
  OA22X1_HVT U218 ( .A1(n620), .A2(n319), .A3(n625), .A4(n320), .Y(n154) );
  NAND2X0_HVT U219 ( .A1(n155), .A2(n154), .Y(n156) );
  HADDX1_HVT U220 ( .A0(n383), .B0(n156), .SO(n184) );
  OA22X1_HVT U221 ( .A1(n648), .A2(n318), .A3(n631), .A4(n317), .Y(n158) );
  OA22X1_HVT U222 ( .A1(n646), .A2(n320), .A3(n630), .A4(n319), .Y(n157) );
  NAND2X0_HVT U223 ( .A1(n158), .A2(n157), .Y(n159) );
  HADDX1_HVT U224 ( .A0(n383), .B0(n159), .SO(n160) );
  FADDX1_HVT U225 ( .A(n162), .B(n161), .CI(n160), .CO(n669), .S(n673) );
  FADDX1_HVT U226 ( .A(n165), .B(n164), .CI(n163), .CO(n161), .S(n166) );
  INVX0_HVT U227 ( .A(n166), .Y(n182) );
  AO22X1_HVT U228 ( .A1(n481), .A2(n167), .A3(n386), .A4(a[7]), .Y(n171) );
  OR2X1_HVT U229 ( .A1(n168), .A2(n171), .Y(n421) );
  NAND2X0_HVT U230 ( .A1(n169), .A2(n168), .Y(n423) );
  NAND2X0_HVT U231 ( .A1(n421), .A2(n423), .Y(n174) );
  NAND2X0_HVT U232 ( .A1(n384), .A2(n171), .Y(n422) );
  INVX0_HVT U233 ( .A(n422), .Y(n173) );
  NAND2X0_HVT U234 ( .A1(n171), .A2(n170), .Y(n424) );
  INVX0_HVT U235 ( .A(n424), .Y(n172) );
  AO222X1_HVT U236 ( .A1(n174), .A2(n746), .A3(n173), .A4(n440), .A5(b[15]), 
        .A6(n172), .Y(n175) );
  HADDX1_HVT U237 ( .A0(n386), .B0(n175), .SO(n181) );
  OA22X1_HVT U238 ( .A1(n646), .A2(n318), .A3(n626), .A4(n317), .Y(n177) );
  OA22X1_HVT U239 ( .A1(n630), .A2(n320), .A3(n625), .A4(n319), .Y(n176) );
  NAND2X0_HVT U240 ( .A1(n177), .A2(n176), .Y(n178) );
  HADDX1_HVT U241 ( .A0(n297), .B0(n178), .SO(n180) );
  INVX0_HVT U242 ( .A(n179), .Y(n672) );
  FADDX1_HVT U243 ( .A(n182), .B(n181), .CI(n180), .CO(n179), .S(n183) );
  INVX0_HVT U244 ( .A(n183), .Y(n676) );
  FADDX1_HVT U245 ( .A(n186), .B(n185), .CI(n184), .CO(n163), .S(n187) );
  INVX0_HVT U246 ( .A(n187), .Y(n212) );
  FADDX1_HVT U247 ( .A(n190), .B(n189), .CI(n188), .CO(n185), .S(n191) );
  INVX0_HVT U248 ( .A(n191), .Y(n216) );
  FADDX1_HVT U249 ( .A(n224), .B(n193), .CI(n192), .CO(n189), .S(n194) );
  INVX0_HVT U250 ( .A(n194), .Y(n220) );
  OA22X1_HVT U251 ( .A1(n620), .A2(n318), .A3(n611), .A4(n317), .Y(n196) );
  OA22X1_HVT U252 ( .A1(n615), .A2(n320), .A3(n610), .A4(n319), .Y(n195) );
  NAND2X0_HVT U253 ( .A1(n196), .A2(n195), .Y(n197) );
  HADDX1_HVT U254 ( .A0(n297), .B0(n197), .SO(n219) );
  FADDX1_HVT U255 ( .A(b[7]), .B(b[8]), .CI(n198), .CO(n149), .S(n199) );
  INVX0_HVT U256 ( .A(n199), .Y(n596) );
  OA22X1_HVT U257 ( .A1(n605), .A2(n269), .A3(n596), .A4(n268), .Y(n201) );
  OA22X1_HVT U258 ( .A1(n600), .A2(n271), .A3(n595), .A4(n270), .Y(n200) );
  NAND2X0_HVT U259 ( .A1(n201), .A2(n200), .Y(n202) );
  HADDX1_HVT U260 ( .A0(n250), .B0(n202), .SO(n218) );
  OA22X1_HVT U261 ( .A1(n625), .A2(n318), .A3(n616), .A4(n317), .Y(n204) );
  OA22X1_HVT U262 ( .A1(n620), .A2(n320), .A3(n615), .A4(n319), .Y(n203) );
  NAND2X0_HVT U263 ( .A1(n204), .A2(n203), .Y(n205) );
  HADDX1_HVT U264 ( .A0(n297), .B0(n205), .SO(n214) );
  OA22X1_HVT U265 ( .A1(n744), .A2(n421), .A3(n643), .A4(n422), .Y(n207) );
  OA22X1_HVT U266 ( .A1(n648), .A2(n423), .A3(n646), .A4(n424), .Y(n206) );
  NAND2X0_HVT U267 ( .A1(n207), .A2(n206), .Y(n208) );
  HADDX1_HVT U268 ( .A0(n386), .B0(n208), .SO(n210) );
  INVX0_HVT U269 ( .A(n209), .Y(n675) );
  FADDX1_HVT U270 ( .A(n212), .B(n211), .CI(n210), .CO(n209), .S(n213) );
  INVX0_HVT U271 ( .A(n213), .Y(n679) );
  FADDX1_HVT U272 ( .A(n216), .B(n215), .CI(n214), .CO(n211), .S(n217) );
  INVX0_HVT U273 ( .A(n217), .Y(n332) );
  FADDX1_HVT U274 ( .A(n220), .B(n219), .CI(n218), .CO(n215), .S(n221) );
  INVX0_HVT U275 ( .A(n221), .Y(n335) );
  FADDX1_HVT U276 ( .A(n224), .B(n223), .CI(n222), .CO(n193), .S(n225) );
  INVX0_HVT U277 ( .A(n225), .Y(n237) );
  OA22X1_HVT U278 ( .A1(n615), .A2(n318), .A3(n606), .A4(n317), .Y(n227) );
  OA22X1_HVT U279 ( .A1(n610), .A2(n320), .A3(n605), .A4(n319), .Y(n226) );
  NAND2X0_HVT U280 ( .A1(n227), .A2(n226), .Y(n228) );
  HADDX1_HVT U281 ( .A0(n297), .B0(n228), .SO(n236) );
  FADDX1_HVT U282 ( .A(b[6]), .B(b[7]), .CI(n229), .CO(n198), .S(n230) );
  INVX0_HVT U283 ( .A(n230), .Y(n591) );
  OA22X1_HVT U284 ( .A1(n600), .A2(n269), .A3(n591), .A4(n268), .Y(n232) );
  OA22X1_HVT U285 ( .A1(n595), .A2(n271), .A3(n590), .A4(n270), .Y(n231) );
  NAND2X0_HVT U286 ( .A1(n232), .A2(n231), .Y(n233) );
  HADDX1_HVT U287 ( .A0(n250), .B0(n233), .SO(n235) );
  INVX0_HVT U288 ( .A(n234), .Y(n334) );
  FADDX1_HVT U289 ( .A(n237), .B(n236), .CI(n235), .CO(n234), .S(n238) );
  INVX0_HVT U290 ( .A(n238), .Y(n356) );
  FADDX1_HVT U291 ( .A(n241), .B(n240), .CI(n239), .CO(n222), .S(n280) );
  FADDX1_HVT U292 ( .A(n246), .B(n243), .CI(n242), .CO(n240), .S(n283) );
  FADDX1_HVT U293 ( .A(n246), .B(n245), .CI(n244), .CO(n243), .S(n286) );
  FADDX1_HVT U294 ( .A(c[15]), .B(n743), .CI(n247), .CO(n245), .S(n289) );
  NAND2X0_HVT U295 ( .A1(n248), .A2(b[0]), .Y(n249) );
  HADDX1_HVT U296 ( .A0(n250), .B0(n249), .SO(n294) );
  INVX0_HVT U297 ( .A(b[1]), .Y(n570) );
  INVX0_HVT U298 ( .A(b[0]), .Y(n565) );
  AO22X1_HVT U299 ( .A1(b[1]), .A2(b[0]), .A3(n570), .A4(n565), .Y(n562) );
  OA222X1_HVT U300 ( .A1(n570), .A2(n269), .A3(n565), .A4(n271), .A5(n268), 
        .A6(n562), .Y(n251) );
  HADDX1_HVT U301 ( .A0(n251), .B0(n250), .SO(n292) );
  NAND2X0_HVT U302 ( .A1(b[1]), .A2(n565), .Y(n252) );
  HADDX1_HVT U303 ( .A0(b[2]), .B0(n252), .SO(n566) );
  OA22X1_HVT U304 ( .A1(n575), .A2(n269), .A3(n566), .A4(n268), .Y(n254) );
  OA22X1_HVT U305 ( .A1(n570), .A2(n271), .A3(n565), .A4(n270), .Y(n253) );
  NAND2X0_HVT U306 ( .A1(n254), .A2(n253), .Y(n255) );
  HADDX1_HVT U307 ( .A0(n745), .B0(n255), .SO(n290) );
  FADDX1_HVT U308 ( .A(b[2]), .B(b[3]), .CI(n256), .CO(n261), .S(n257) );
  INVX0_HVT U309 ( .A(n257), .Y(n571) );
  OA22X1_HVT U310 ( .A1(n580), .A2(n269), .A3(n571), .A4(n268), .Y(n259) );
  OA22X1_HVT U311 ( .A1(n575), .A2(n271), .A3(n570), .A4(n270), .Y(n258) );
  NAND2X0_HVT U312 ( .A1(n259), .A2(n258), .Y(n260) );
  HADDX1_HVT U313 ( .A0(n745), .B0(n260), .SO(n287) );
  FADDX1_HVT U314 ( .A(b[3]), .B(b[4]), .CI(n261), .CO(n266), .S(n262) );
  INVX0_HVT U315 ( .A(n262), .Y(n576) );
  OA22X1_HVT U316 ( .A1(n585), .A2(n269), .A3(n576), .A4(n268), .Y(n264) );
  OA22X1_HVT U317 ( .A1(n580), .A2(n271), .A3(n575), .A4(n270), .Y(n263) );
  NAND2X0_HVT U318 ( .A1(n264), .A2(n263), .Y(n265) );
  HADDX1_HVT U319 ( .A0(n745), .B0(n265), .SO(n284) );
  FADDX1_HVT U320 ( .A(b[4]), .B(b[5]), .CI(n266), .CO(n138), .S(n267) );
  INVX0_HVT U321 ( .A(n267), .Y(n581) );
  OA22X1_HVT U322 ( .A1(n590), .A2(n269), .A3(n581), .A4(n268), .Y(n273) );
  OA22X1_HVT U323 ( .A1(n585), .A2(n271), .A3(n580), .A4(n270), .Y(n272) );
  NAND2X0_HVT U324 ( .A1(n273), .A2(n272), .Y(n274) );
  HADDX1_HVT U325 ( .A0(n745), .B0(n274), .SO(n281) );
  OA22X1_HVT U326 ( .A1(n610), .A2(n318), .A3(n601), .A4(n317), .Y(n276) );
  OA22X1_HVT U327 ( .A1(n605), .A2(n320), .A3(n600), .A4(n319), .Y(n275) );
  NAND2X0_HVT U328 ( .A1(n276), .A2(n275), .Y(n277) );
  HADDX1_HVT U329 ( .A0(n383), .B0(n277), .SO(n278) );
  FADDX1_HVT U330 ( .A(n280), .B(n279), .CI(n278), .CO(n355), .S(n359) );
  FADDX1_HVT U331 ( .A(n283), .B(n282), .CI(n281), .CO(n279), .S(n362) );
  FADDX1_HVT U332 ( .A(n286), .B(n285), .CI(n284), .CO(n282), .S(n365) );
  FADDX1_HVT U333 ( .A(n289), .B(n288), .CI(n287), .CO(n285), .S(n368) );
  FADDX1_HVT U334 ( .A(c[14]), .B(n291), .CI(n290), .CO(n288), .S(n371) );
  FADDX1_HVT U335 ( .A(c[13]), .B(n293), .CI(n292), .CO(n291), .S(n374) );
  FADDX1_HVT U336 ( .A(n745), .B(c[12]), .CI(n294), .CO(n293), .S(n377) );
  NAND2X0_HVT U337 ( .A1(n295), .A2(b[0]), .Y(n296) );
  HADDX1_HVT U338 ( .A0(n297), .B0(n296), .SO(n382) );
  OA222X1_HVT U339 ( .A1(n570), .A2(n318), .A3(n565), .A4(n320), .A5(n317), 
        .A6(n562), .Y(n298) );
  HADDX1_HVT U340 ( .A0(n298), .B0(n297), .SO(n380) );
  OA22X1_HVT U341 ( .A1(n575), .A2(n318), .A3(n566), .A4(n317), .Y(n300) );
  OA22X1_HVT U342 ( .A1(n570), .A2(n320), .A3(n565), .A4(n319), .Y(n299) );
  NAND2X0_HVT U343 ( .A1(n300), .A2(n299), .Y(n301) );
  HADDX1_HVT U344 ( .A0(n383), .B0(n301), .SO(n378) );
  OA22X1_HVT U345 ( .A1(n580), .A2(n318), .A3(n571), .A4(n317), .Y(n303) );
  OA22X1_HVT U346 ( .A1(n575), .A2(n320), .A3(n570), .A4(n319), .Y(n302) );
  NAND2X0_HVT U347 ( .A1(n303), .A2(n302), .Y(n304) );
  HADDX1_HVT U348 ( .A0(n383), .B0(n304), .SO(n375) );
  OA22X1_HVT U349 ( .A1(n585), .A2(n318), .A3(n576), .A4(n317), .Y(n306) );
  OA22X1_HVT U350 ( .A1(n580), .A2(n320), .A3(n575), .A4(n319), .Y(n305) );
  NAND2X0_HVT U351 ( .A1(n306), .A2(n305), .Y(n307) );
  HADDX1_HVT U352 ( .A0(n383), .B0(n307), .SO(n372) );
  OA22X1_HVT U353 ( .A1(n590), .A2(n318), .A3(n581), .A4(n317), .Y(n309) );
  OA22X1_HVT U354 ( .A1(n585), .A2(n320), .A3(n580), .A4(n319), .Y(n308) );
  NAND2X0_HVT U355 ( .A1(n309), .A2(n308), .Y(n310) );
  HADDX1_HVT U356 ( .A0(n383), .B0(n310), .SO(n369) );
  OA22X1_HVT U357 ( .A1(n595), .A2(n318), .A3(n586), .A4(n317), .Y(n312) );
  OA22X1_HVT U358 ( .A1(n590), .A2(n320), .A3(n585), .A4(n319), .Y(n311) );
  NAND2X0_HVT U359 ( .A1(n312), .A2(n311), .Y(n313) );
  HADDX1_HVT U360 ( .A0(n383), .B0(n313), .SO(n366) );
  OA22X1_HVT U361 ( .A1(n600), .A2(n318), .A3(n591), .A4(n317), .Y(n315) );
  OA22X1_HVT U362 ( .A1(n595), .A2(n320), .A3(n590), .A4(n319), .Y(n314) );
  NAND2X0_HVT U363 ( .A1(n315), .A2(n314), .Y(n316) );
  HADDX1_HVT U364 ( .A0(n383), .B0(n316), .SO(n363) );
  OA22X1_HVT U365 ( .A1(n605), .A2(n318), .A3(n596), .A4(n317), .Y(n322) );
  OA22X1_HVT U366 ( .A1(n600), .A2(n320), .A3(n595), .A4(n319), .Y(n321) );
  NAND2X0_HVT U367 ( .A1(n322), .A2(n321), .Y(n323) );
  HADDX1_HVT U368 ( .A0(n383), .B0(n323), .SO(n360) );
  OA22X1_HVT U369 ( .A1(n625), .A2(n421), .A3(n616), .A4(n422), .Y(n325) );
  OA22X1_HVT U370 ( .A1(n620), .A2(n423), .A3(n615), .A4(n424), .Y(n324) );
  NAND2X0_HVT U371 ( .A1(n325), .A2(n324), .Y(n326) );
  HADDX1_HVT U372 ( .A0(n481), .B0(n326), .SO(n357) );
  OA22X1_HVT U373 ( .A1(n648), .A2(n421), .A3(n422), .A4(n631), .Y(n328) );
  OA22X1_HVT U374 ( .A1(n646), .A2(n423), .A3(n630), .A4(n424), .Y(n327) );
  NAND2X0_HVT U375 ( .A1(n328), .A2(n327), .Y(n329) );
  HADDX1_HVT U376 ( .A0(n481), .B0(n329), .SO(n330) );
  FADDX1_HVT U377 ( .A(n332), .B(n331), .CI(n330), .CO(n678), .S(n682) );
  FADDX1_HVT U378 ( .A(n335), .B(n334), .CI(n333), .CO(n331), .S(n336) );
  INVX0_HVT U379 ( .A(n336), .Y(n352) );
  INVX0_HVT U380 ( .A(a[4]), .Y(n337) );
  AO22X1_HVT U381 ( .A1(n652), .A2(n337), .A3(n484), .A4(a[4]), .Y(n341) );
  OR2X1_HVT U382 ( .A1(n338), .A2(n341), .Y(n644) );
  NAND2X0_HVT U383 ( .A1(n339), .A2(n338), .Y(n647) );
  NAND2X0_HVT U384 ( .A1(n644), .A2(n647), .Y(n344) );
  NAND2X0_HVT U385 ( .A1(n482), .A2(n341), .Y(n642) );
  INVX0_HVT U386 ( .A(n642), .Y(n343) );
  NAND2X0_HVT U387 ( .A1(n341), .A2(n340), .Y(n645) );
  INVX0_HVT U388 ( .A(n645), .Y(n342) );
  AO222X1_HVT U389 ( .A1(n344), .A2(n746), .A3(n343), .A4(n440), .A5(b[15]), 
        .A6(n342), .Y(n345) );
  HADDX1_HVT U390 ( .A0(n484), .B0(n345), .SO(n351) );
  OA22X1_HVT U391 ( .A1(n646), .A2(n421), .A3(n626), .A4(n422), .Y(n347) );
  OA22X1_HVT U392 ( .A1(n630), .A2(n423), .A3(n625), .A4(n424), .Y(n346) );
  NAND2X0_HVT U393 ( .A1(n347), .A2(n346), .Y(n348) );
  HADDX1_HVT U394 ( .A0(n386), .B0(n348), .SO(n350) );
  INVX0_HVT U395 ( .A(n349), .Y(n681) );
  FADDX1_HVT U396 ( .A(n352), .B(n351), .CI(n350), .CO(n349), .S(n353) );
  INVX0_HVT U397 ( .A(n353), .Y(n685) );
  FADDX1_HVT U398 ( .A(n356), .B(n355), .CI(n354), .CO(n333), .S(n430) );
  FADDX1_HVT U399 ( .A(n359), .B(n358), .CI(n357), .CO(n354), .S(n433) );
  FADDX1_HVT U400 ( .A(n362), .B(n361), .CI(n360), .CO(n358), .S(n436) );
  FADDX1_HVT U401 ( .A(n365), .B(n364), .CI(n363), .CO(n361), .S(n454) );
  FADDX1_HVT U402 ( .A(n368), .B(n367), .CI(n366), .CO(n364), .S(n457) );
  FADDX1_HVT U403 ( .A(n371), .B(n370), .CI(n369), .CO(n367), .S(n460) );
  FADDX1_HVT U404 ( .A(n374), .B(n373), .CI(n372), .CO(n370), .S(n463) );
  FADDX1_HVT U405 ( .A(n377), .B(n376), .CI(n375), .CO(n373), .S(n466) );
  FADDX1_HVT U406 ( .A(c[11]), .B(n379), .CI(n378), .CO(n376), .S(n469) );
  FADDX1_HVT U407 ( .A(c[10]), .B(n381), .CI(n380), .CO(n379), .S(n472) );
  FADDX1_HVT U408 ( .A(n383), .B(c[9]), .CI(n382), .CO(n381), .S(n475) );
  NAND2X0_HVT U409 ( .A1(n384), .A2(b[0]), .Y(n385) );
  HADDX1_HVT U410 ( .A0(n386), .B0(n385), .SO(n480) );
  OA222X1_HVT U411 ( .A1(n570), .A2(n421), .A3(n565), .A4(n423), .A5(n422), 
        .A6(n562), .Y(n387) );
  HADDX1_HVT U412 ( .A0(n387), .B0(n386), .SO(n478) );
  OA22X1_HVT U413 ( .A1(n575), .A2(n421), .A3(n566), .A4(n422), .Y(n389) );
  OA22X1_HVT U414 ( .A1(n570), .A2(n423), .A3(n565), .A4(n424), .Y(n388) );
  NAND2X0_HVT U415 ( .A1(n389), .A2(n388), .Y(n390) );
  HADDX1_HVT U416 ( .A0(n481), .B0(n390), .SO(n476) );
  OA22X1_HVT U417 ( .A1(n580), .A2(n421), .A3(n571), .A4(n422), .Y(n392) );
  OA22X1_HVT U418 ( .A1(n575), .A2(n423), .A3(n570), .A4(n424), .Y(n391) );
  NAND2X0_HVT U419 ( .A1(n392), .A2(n391), .Y(n393) );
  HADDX1_HVT U420 ( .A0(n481), .B0(n393), .SO(n473) );
  OA22X1_HVT U421 ( .A1(n585), .A2(n421), .A3(n576), .A4(n422), .Y(n395) );
  OA22X1_HVT U422 ( .A1(n580), .A2(n423), .A3(n575), .A4(n424), .Y(n394) );
  NAND2X0_HVT U423 ( .A1(n395), .A2(n394), .Y(n396) );
  HADDX1_HVT U424 ( .A0(n481), .B0(n396), .SO(n470) );
  OA22X1_HVT U425 ( .A1(n590), .A2(n421), .A3(n581), .A4(n422), .Y(n398) );
  OA22X1_HVT U426 ( .A1(n585), .A2(n423), .A3(n580), .A4(n424), .Y(n397) );
  NAND2X0_HVT U427 ( .A1(n398), .A2(n397), .Y(n399) );
  HADDX1_HVT U428 ( .A0(n481), .B0(n399), .SO(n467) );
  OA22X1_HVT U429 ( .A1(n595), .A2(n421), .A3(n586), .A4(n422), .Y(n401) );
  OA22X1_HVT U430 ( .A1(n590), .A2(n423), .A3(n585), .A4(n424), .Y(n400) );
  NAND2X0_HVT U431 ( .A1(n401), .A2(n400), .Y(n402) );
  HADDX1_HVT U432 ( .A0(n481), .B0(n402), .SO(n464) );
  OA22X1_HVT U433 ( .A1(n600), .A2(n421), .A3(n591), .A4(n422), .Y(n404) );
  OA22X1_HVT U434 ( .A1(n595), .A2(n423), .A3(n590), .A4(n424), .Y(n403) );
  NAND2X0_HVT U435 ( .A1(n404), .A2(n403), .Y(n405) );
  HADDX1_HVT U436 ( .A0(n481), .B0(n405), .SO(n461) );
  OA22X1_HVT U437 ( .A1(n605), .A2(n421), .A3(n596), .A4(n422), .Y(n407) );
  OA22X1_HVT U438 ( .A1(n600), .A2(n423), .A3(n595), .A4(n424), .Y(n406) );
  NAND2X0_HVT U439 ( .A1(n407), .A2(n406), .Y(n408) );
  HADDX1_HVT U440 ( .A0(n481), .B0(n408), .SO(n458) );
  OA22X1_HVT U441 ( .A1(n610), .A2(n421), .A3(n601), .A4(n422), .Y(n410) );
  OA22X1_HVT U442 ( .A1(n605), .A2(n423), .A3(n600), .A4(n424), .Y(n409) );
  NAND2X0_HVT U443 ( .A1(n410), .A2(n409), .Y(n411) );
  HADDX1_HVT U444 ( .A0(n481), .B0(n411), .SO(n455) );
  OA22X1_HVT U445 ( .A1(n615), .A2(n421), .A3(n606), .A4(n422), .Y(n413) );
  OA22X1_HVT U446 ( .A1(n610), .A2(n423), .A3(n605), .A4(n424), .Y(n412) );
  NAND2X0_HVT U447 ( .A1(n413), .A2(n412), .Y(n414) );
  HADDX1_HVT U448 ( .A0(n481), .B0(n414), .SO(n452) );
  OA22X1_HVT U449 ( .A1(n620), .A2(n421), .A3(n611), .A4(n422), .Y(n416) );
  OA22X1_HVT U450 ( .A1(n615), .A2(n423), .A3(n610), .A4(n424), .Y(n415) );
  NAND2X0_HVT U451 ( .A1(n416), .A2(n415), .Y(n417) );
  HADDX1_HVT U452 ( .A0(n481), .B0(n417), .SO(n434) );
  OA22X1_HVT U453 ( .A1(n648), .A2(n644), .A3(n642), .A4(n631), .Y(n419) );
  OA22X1_HVT U454 ( .A1(n646), .A2(n647), .A3(n645), .A4(n630), .Y(n418) );
  NAND2X0_HVT U455 ( .A1(n419), .A2(n418), .Y(n420) );
  HADDX1_HVT U456 ( .A0(n652), .B0(n420), .SO(n431) );
  OA22X1_HVT U457 ( .A1(n621), .A2(n422), .A3(n630), .A4(n421), .Y(n426) );
  OA22X1_HVT U458 ( .A1(n620), .A2(n424), .A3(n625), .A4(n423), .Y(n425) );
  NAND2X0_HVT U459 ( .A1(n426), .A2(n425), .Y(n427) );
  HADDX1_HVT U460 ( .A0(n481), .B0(n427), .SO(n428) );
  FADDX1_HVT U461 ( .A(n430), .B(n429), .CI(n428), .CO(n684), .S(n688) );
  FADDX1_HVT U462 ( .A(n433), .B(n432), .CI(n431), .CO(n429), .S(n691) );
  FADDX1_HVT U463 ( .A(n436), .B(n435), .CI(n434), .CO(n432), .S(n437) );
  INVX0_HVT U464 ( .A(n437), .Y(n450) );
  AO221X1_HVT U465 ( .A1(a[1]), .A2(n563), .A3(n438), .A4(n742), .A5(n561), 
        .Y(n638) );
  NAND2X0_HVT U466 ( .A1(a[1]), .A2(n561), .Y(n637) );
  NAND2X0_HVT U467 ( .A1(n638), .A2(n637), .Y(n442) );
  AO221X1_HVT U468 ( .A1(a[1]), .A2(n742), .A3(n438), .A4(n563), .A5(n561), 
        .Y(n636) );
  INVX0_HVT U469 ( .A(n636), .Y(n441) );
  NAND3X0_HVT U470 ( .A1(n742), .A2(n438), .A3(n561), .Y(n635) );
  INVX0_HVT U471 ( .A(n635), .Y(n439) );
  AO222X1_HVT U472 ( .A1(n442), .A2(n746), .A3(n441), .A4(n440), .A5(n439), 
        .A6(b[15]), .Y(n443) );
  HADDX1_HVT U473 ( .A0(n563), .B0(n443), .SO(n449) );
  OA22X1_HVT U474 ( .A1(n642), .A2(n626), .A3(n644), .A4(n646), .Y(n445) );
  OA22X1_HVT U475 ( .A1(n645), .A2(n625), .A3(n647), .A4(n630), .Y(n444) );
  NAND2X0_HVT U476 ( .A1(n445), .A2(n444), .Y(n446) );
  HADDX1_HVT U477 ( .A0(n484), .B0(n446), .SO(n448) );
  INVX0_HVT U478 ( .A(n447), .Y(n690) );
  FADDX1_HVT U479 ( .A(n450), .B(n449), .CI(n448), .CO(n447), .S(n451) );
  INVX0_HVT U480 ( .A(n451), .Y(n694) );
  FADDX1_HVT U481 ( .A(n454), .B(n453), .CI(n452), .CO(n435), .S(n524) );
  FADDX1_HVT U482 ( .A(n457), .B(n456), .CI(n455), .CO(n453), .S(n527) );
  FADDX1_HVT U483 ( .A(n460), .B(n459), .CI(n458), .CO(n456), .S(n530) );
  FADDX1_HVT U484 ( .A(n463), .B(n462), .CI(n461), .CO(n459), .S(n533) );
  FADDX1_HVT U485 ( .A(n466), .B(n465), .CI(n464), .CO(n462), .S(n536) );
  FADDX1_HVT U486 ( .A(n469), .B(n468), .CI(n467), .CO(n465), .S(n539) );
  FADDX1_HVT U487 ( .A(n472), .B(n471), .CI(n470), .CO(n468), .S(n542) );
  FADDX1_HVT U488 ( .A(n475), .B(n474), .CI(n473), .CO(n471), .S(n545) );
  FADDX1_HVT U489 ( .A(c[8]), .B(n477), .CI(n476), .CO(n474), .S(n548) );
  FADDX1_HVT U490 ( .A(c[7]), .B(n479), .CI(n478), .CO(n477), .S(n551) );
  FADDX1_HVT U491 ( .A(n481), .B(c[6]), .CI(n480), .CO(n479), .S(n554) );
  NAND2X0_HVT U492 ( .A1(b[0]), .A2(n482), .Y(n483) );
  HADDX1_HVT U493 ( .A0(n484), .B0(n483), .SO(n559) );
  OA222X1_HVT U494 ( .A1(n642), .A2(n562), .A3(n644), .A4(n570), .A5(n647), 
        .A6(n565), .Y(n485) );
  HADDX1_HVT U495 ( .A0(n485), .B0(n484), .SO(n557) );
  OA22X1_HVT U496 ( .A1(n642), .A2(n566), .A3(n644), .A4(n575), .Y(n487) );
  OA22X1_HVT U497 ( .A1(n645), .A2(n565), .A3(n647), .A4(n570), .Y(n486) );
  NAND2X0_HVT U498 ( .A1(n487), .A2(n486), .Y(n488) );
  HADDX1_HVT U499 ( .A0(n652), .B0(n488), .SO(n555) );
  OA22X1_HVT U500 ( .A1(n642), .A2(n571), .A3(n644), .A4(n580), .Y(n490) );
  OA22X1_HVT U501 ( .A1(n645), .A2(n570), .A3(n647), .A4(n575), .Y(n489) );
  NAND2X0_HVT U502 ( .A1(n490), .A2(n489), .Y(n491) );
  HADDX1_HVT U503 ( .A0(n652), .B0(n491), .SO(n552) );
  OA22X1_HVT U504 ( .A1(n642), .A2(n576), .A3(n644), .A4(n585), .Y(n493) );
  OA22X1_HVT U505 ( .A1(n645), .A2(n575), .A3(n647), .A4(n580), .Y(n492) );
  NAND2X0_HVT U506 ( .A1(n493), .A2(n492), .Y(n494) );
  HADDX1_HVT U507 ( .A0(n652), .B0(n494), .SO(n549) );
  OA22X1_HVT U508 ( .A1(n642), .A2(n581), .A3(n644), .A4(n590), .Y(n496) );
  OA22X1_HVT U509 ( .A1(n645), .A2(n580), .A3(n647), .A4(n585), .Y(n495) );
  NAND2X0_HVT U510 ( .A1(n496), .A2(n495), .Y(n497) );
  HADDX1_HVT U511 ( .A0(n652), .B0(n497), .SO(n546) );
  OA22X1_HVT U512 ( .A1(n642), .A2(n586), .A3(n644), .A4(n595), .Y(n499) );
  OA22X1_HVT U513 ( .A1(n645), .A2(n585), .A3(n647), .A4(n590), .Y(n498) );
  NAND2X0_HVT U514 ( .A1(n499), .A2(n498), .Y(n500) );
  HADDX1_HVT U515 ( .A0(n652), .B0(n500), .SO(n543) );
  OA22X1_HVT U516 ( .A1(n642), .A2(n591), .A3(n644), .A4(n600), .Y(n502) );
  OA22X1_HVT U517 ( .A1(n645), .A2(n590), .A3(n647), .A4(n595), .Y(n501) );
  NAND2X0_HVT U518 ( .A1(n502), .A2(n501), .Y(n503) );
  HADDX1_HVT U519 ( .A0(n652), .B0(n503), .SO(n540) );
  OA22X1_HVT U520 ( .A1(n642), .A2(n596), .A3(n644), .A4(n605), .Y(n505) );
  OA22X1_HVT U521 ( .A1(n645), .A2(n595), .A3(n647), .A4(n600), .Y(n504) );
  NAND2X0_HVT U522 ( .A1(n505), .A2(n504), .Y(n506) );
  HADDX1_HVT U523 ( .A0(n652), .B0(n506), .SO(n537) );
  OA22X1_HVT U524 ( .A1(n642), .A2(n601), .A3(n644), .A4(n610), .Y(n508) );
  OA22X1_HVT U525 ( .A1(n645), .A2(n600), .A3(n647), .A4(n605), .Y(n507) );
  NAND2X0_HVT U526 ( .A1(n508), .A2(n507), .Y(n509) );
  HADDX1_HVT U527 ( .A0(n652), .B0(n509), .SO(n534) );
  OA22X1_HVT U528 ( .A1(n642), .A2(n606), .A3(n644), .A4(n615), .Y(n511) );
  OA22X1_HVT U529 ( .A1(n645), .A2(n605), .A3(n647), .A4(n610), .Y(n510) );
  NAND2X0_HVT U530 ( .A1(n511), .A2(n510), .Y(n512) );
  HADDX1_HVT U531 ( .A0(n652), .B0(n512), .SO(n531) );
  OA22X1_HVT U532 ( .A1(n642), .A2(n611), .A3(n644), .A4(n620), .Y(n514) );
  OA22X1_HVT U533 ( .A1(n645), .A2(n610), .A3(n647), .A4(n615), .Y(n513) );
  NAND2X0_HVT U534 ( .A1(n514), .A2(n513), .Y(n515) );
  HADDX1_HVT U535 ( .A0(n652), .B0(n515), .SO(n528) );
  OA22X1_HVT U536 ( .A1(n642), .A2(n616), .A3(n644), .A4(n625), .Y(n517) );
  OA22X1_HVT U537 ( .A1(n645), .A2(n615), .A3(n647), .A4(n620), .Y(n516) );
  NAND2X0_HVT U538 ( .A1(n517), .A2(n516), .Y(n518) );
  HADDX1_HVT U539 ( .A0(n652), .B0(n518), .SO(n525) );
  OA22X1_HVT U540 ( .A1(n642), .A2(n621), .A3(n644), .A4(n630), .Y(n520) );
  OA22X1_HVT U541 ( .A1(n645), .A2(n620), .A3(n647), .A4(n625), .Y(n519) );
  NAND2X0_HVT U542 ( .A1(n520), .A2(n519), .Y(n521) );
  HADDX1_HVT U543 ( .A0(n652), .B0(n521), .SO(n522) );
  FADDX1_HVT U544 ( .A(n524), .B(n523), .CI(n522), .CO(n693), .S(n697) );
  FADDX1_HVT U545 ( .A(n527), .B(n526), .CI(n525), .CO(n523), .S(n700) );
  FADDX1_HVT U546 ( .A(n530), .B(n529), .CI(n528), .CO(n526), .S(n703) );
  FADDX1_HVT U547 ( .A(n533), .B(n532), .CI(n531), .CO(n529), .S(n706) );
  FADDX1_HVT U548 ( .A(n536), .B(n535), .CI(n534), .CO(n532), .S(n709) );
  FADDX1_HVT U549 ( .A(n539), .B(n538), .CI(n537), .CO(n535), .S(n712) );
  FADDX1_HVT U550 ( .A(n542), .B(n541), .CI(n540), .CO(n538), .S(n715) );
  FADDX1_HVT U551 ( .A(n545), .B(n544), .CI(n543), .CO(n541), .S(n718) );
  FADDX1_HVT U552 ( .A(n548), .B(n547), .CI(n546), .CO(n544), .S(n721) );
  FADDX1_HVT U553 ( .A(n551), .B(n550), .CI(n549), .CO(n547), .S(n724) );
  FADDX1_HVT U554 ( .A(n554), .B(n553), .CI(n552), .CO(n550), .S(n727) );
  FADDX1_HVT U555 ( .A(c[5]), .B(n556), .CI(n555), .CO(n553), .S(n730) );
  FADDX1_HVT U556 ( .A(c[4]), .B(n558), .CI(n557), .CO(n556), .S(n733) );
  FADDX1_HVT U557 ( .A(n652), .B(c[3]), .CI(n559), .CO(n558), .S(n736) );
  AND2X1_HVT U558 ( .A1(a[0]), .A2(n563), .Y(n560) );
  AO222X1_HVT U559 ( .A1(n742), .A2(n565), .A3(n742), .A4(n561), .A5(b[0]), 
        .A6(n560), .Y(n741) );
  OA222X1_HVT U560 ( .A1(n565), .A2(n637), .A3(n570), .A4(n638), .A5(n562), 
        .A6(n636), .Y(n564) );
  HADDX1_HVT U561 ( .A0(n564), .B0(n563), .SO(n739) );
  OA22X1_HVT U562 ( .A1(n636), .A2(n566), .A3(n565), .A4(n635), .Y(n568) );
  OA22X1_HVT U563 ( .A1(n638), .A2(n575), .A3(n570), .A4(n637), .Y(n567) );
  NAND2X0_HVT U564 ( .A1(n568), .A2(n567), .Y(n569) );
  HADDX1_HVT U565 ( .A0(n742), .B0(n569), .SO(n737) );
  OA22X1_HVT U566 ( .A1(n636), .A2(n571), .A3(n570), .A4(n635), .Y(n573) );
  OA22X1_HVT U567 ( .A1(n638), .A2(n580), .A3(n575), .A4(n637), .Y(n572) );
  NAND2X0_HVT U568 ( .A1(n573), .A2(n572), .Y(n574) );
  HADDX1_HVT U569 ( .A0(n742), .B0(n574), .SO(n734) );
  OA22X1_HVT U570 ( .A1(n636), .A2(n576), .A3(n575), .A4(n635), .Y(n578) );
  OA22X1_HVT U571 ( .A1(n638), .A2(n585), .A3(n580), .A4(n637), .Y(n577) );
  NAND2X0_HVT U572 ( .A1(n578), .A2(n577), .Y(n579) );
  HADDX1_HVT U573 ( .A0(n742), .B0(n579), .SO(n731) );
  OA22X1_HVT U574 ( .A1(n636), .A2(n581), .A3(n580), .A4(n635), .Y(n583) );
  OA22X1_HVT U575 ( .A1(n638), .A2(n590), .A3(n585), .A4(n637), .Y(n582) );
  NAND2X0_HVT U576 ( .A1(n583), .A2(n582), .Y(n584) );
  HADDX1_HVT U577 ( .A0(n742), .B0(n584), .SO(n728) );
  OA22X1_HVT U578 ( .A1(n636), .A2(n586), .A3(n585), .A4(n635), .Y(n588) );
  OA22X1_HVT U579 ( .A1(n638), .A2(n595), .A3(n590), .A4(n637), .Y(n587) );
  NAND2X0_HVT U580 ( .A1(n588), .A2(n587), .Y(n589) );
  HADDX1_HVT U581 ( .A0(n742), .B0(n589), .SO(n725) );
  OA22X1_HVT U582 ( .A1(n636), .A2(n591), .A3(n590), .A4(n635), .Y(n593) );
  OA22X1_HVT U583 ( .A1(n638), .A2(n600), .A3(n595), .A4(n637), .Y(n592) );
  NAND2X0_HVT U584 ( .A1(n593), .A2(n592), .Y(n594) );
  HADDX1_HVT U585 ( .A0(n742), .B0(n594), .SO(n722) );
  OA22X1_HVT U586 ( .A1(n636), .A2(n596), .A3(n595), .A4(n635), .Y(n598) );
  OA22X1_HVT U587 ( .A1(n638), .A2(n605), .A3(n600), .A4(n637), .Y(n597) );
  NAND2X0_HVT U588 ( .A1(n598), .A2(n597), .Y(n599) );
  HADDX1_HVT U589 ( .A0(n742), .B0(n599), .SO(n719) );
  OA22X1_HVT U590 ( .A1(n636), .A2(n601), .A3(n600), .A4(n635), .Y(n603) );
  OA22X1_HVT U591 ( .A1(n638), .A2(n610), .A3(n605), .A4(n637), .Y(n602) );
  NAND2X0_HVT U592 ( .A1(n603), .A2(n602), .Y(n604) );
  HADDX1_HVT U593 ( .A0(n742), .B0(n604), .SO(n716) );
  OA22X1_HVT U594 ( .A1(n636), .A2(n606), .A3(n605), .A4(n635), .Y(n608) );
  OA22X1_HVT U595 ( .A1(n638), .A2(n615), .A3(n610), .A4(n637), .Y(n607) );
  NAND2X0_HVT U596 ( .A1(n608), .A2(n607), .Y(n609) );
  HADDX1_HVT U597 ( .A0(n742), .B0(n609), .SO(n713) );
  OA22X1_HVT U598 ( .A1(n636), .A2(n611), .A3(n610), .A4(n635), .Y(n613) );
  OA22X1_HVT U599 ( .A1(n638), .A2(n620), .A3(n615), .A4(n637), .Y(n612) );
  NAND2X0_HVT U600 ( .A1(n613), .A2(n612), .Y(n614) );
  HADDX1_HVT U601 ( .A0(n742), .B0(n614), .SO(n710) );
  OA22X1_HVT U602 ( .A1(n636), .A2(n616), .A3(n615), .A4(n635), .Y(n618) );
  OA22X1_HVT U603 ( .A1(n638), .A2(n625), .A3(n620), .A4(n637), .Y(n617) );
  NAND2X0_HVT U604 ( .A1(n618), .A2(n617), .Y(n619) );
  HADDX1_HVT U605 ( .A0(n742), .B0(n619), .SO(n707) );
  OA22X1_HVT U606 ( .A1(n636), .A2(n621), .A3(n620), .A4(n635), .Y(n623) );
  OA22X1_HVT U607 ( .A1(n638), .A2(n630), .A3(n625), .A4(n637), .Y(n622) );
  NAND2X0_HVT U608 ( .A1(n623), .A2(n622), .Y(n624) );
  HADDX1_HVT U609 ( .A0(n742), .B0(n624), .SO(n704) );
  OA22X1_HVT U610 ( .A1(n636), .A2(n626), .A3(n625), .A4(n635), .Y(n628) );
  OA22X1_HVT U611 ( .A1(n638), .A2(n646), .A3(n630), .A4(n637), .Y(n627) );
  NAND2X0_HVT U612 ( .A1(n628), .A2(n627), .Y(n629) );
  HADDX1_HVT U613 ( .A0(n742), .B0(n629), .SO(n701) );
  OA22X1_HVT U614 ( .A1(n636), .A2(n631), .A3(n630), .A4(n635), .Y(n633) );
  OA22X1_HVT U615 ( .A1(n638), .A2(n648), .A3(n646), .A4(n637), .Y(n632) );
  NAND2X0_HVT U616 ( .A1(n633), .A2(n632), .Y(n634) );
  HADDX1_HVT U617 ( .A0(n742), .B0(n634), .SO(n698) );
  OA22X1_HVT U618 ( .A1(n636), .A2(n643), .A3(n646), .A4(n635), .Y(n640) );
  OA22X1_HVT U619 ( .A1(n638), .A2(n744), .A3(n648), .A4(n637), .Y(n639) );
  NAND2X0_HVT U620 ( .A1(n640), .A2(n639), .Y(n641) );
  HADDX1_HVT U621 ( .A0(n742), .B0(n641), .SO(n695) );
  OA22X1_HVT U622 ( .A1(n744), .A2(n644), .A3(n643), .A4(n642), .Y(n650) );
  OA22X1_HVT U623 ( .A1(n648), .A2(n647), .A3(n646), .A4(n645), .Y(n649) );
  NAND2X0_HVT U624 ( .A1(n650), .A2(n649), .Y(n651) );
  HADDX1_HVT U625 ( .A0(n652), .B0(n651), .SO(n686) );
  FADDX1_HVT U626 ( .A(n753), .B(n747), .CI(n748), .S(res[31]) );
  FADDX1_HVT U627 ( .A(n655), .B(n654), .CI(n653), .CO(n748), .S(res[30]) );
  FADDX1_HVT U628 ( .A(n658), .B(n657), .CI(n656), .CO(n653), .S(res[29]) );
  FADDX1_HVT U629 ( .A(n661), .B(n660), .CI(n659), .CO(n656), .S(res[28]) );
  FADDX1_HVT U630 ( .A(n664), .B(n663), .CI(n662), .CO(n659), .S(res[27]) );
  FADDX1_HVT U631 ( .A(n667), .B(n666), .CI(n665), .CO(n662), .S(res[26]) );
  FADDX1_HVT U632 ( .A(n670), .B(n669), .CI(n668), .CO(n665), .S(res[25]) );
  FADDX1_HVT U633 ( .A(n673), .B(n672), .CI(n671), .CO(n668), .S(res[24]) );
  FADDX1_HVT U634 ( .A(n676), .B(n675), .CI(n674), .CO(n671), .S(res[23]) );
  FADDX1_HVT U635 ( .A(n679), .B(n678), .CI(n677), .CO(n674), .S(res[22]) );
  FADDX1_HVT U636 ( .A(n682), .B(n681), .CI(n680), .CO(n677), .S(res[21]) );
  FADDX1_HVT U637 ( .A(n685), .B(n684), .CI(n683), .CO(n680), .S(res[20]) );
  FADDX1_HVT U638 ( .A(n688), .B(n687), .CI(n686), .CO(n683), .S(res[19]) );
  FADDX1_HVT U639 ( .A(n691), .B(n690), .CI(n689), .CO(n687), .S(res[18]) );
  FADDX1_HVT U640 ( .A(n694), .B(n693), .CI(n692), .CO(n689), .S(res[17]) );
  FADDX1_HVT U641 ( .A(n697), .B(n696), .CI(n695), .CO(n692), .S(res[16]) );
  FADDX1_HVT U642 ( .A(n700), .B(n699), .CI(n698), .CO(n696), .S(res[15]) );
  FADDX1_HVT U643 ( .A(n703), .B(n702), .CI(n701), .CO(n699), .S(res[14]) );
  FADDX1_HVT U644 ( .A(n706), .B(n705), .CI(n704), .CO(n702), .S(res[13]) );
  FADDX1_HVT U645 ( .A(n709), .B(n708), .CI(n707), .CO(n705), .S(res[12]) );
  FADDX1_HVT U646 ( .A(n712), .B(n711), .CI(n710), .CO(n708), .S(res[11]) );
  FADDX1_HVT U647 ( .A(n715), .B(n714), .CI(n713), .CO(n711), .S(res[10]) );
  FADDX1_HVT U648 ( .A(n718), .B(n717), .CI(n716), .CO(n714), .S(res[9]) );
  FADDX1_HVT U649 ( .A(n721), .B(n720), .CI(n719), .CO(n717), .S(res[8]) );
  FADDX1_HVT U650 ( .A(n724), .B(n723), .CI(n722), .CO(n720), .S(res[7]) );
  FADDX1_HVT U651 ( .A(n727), .B(n726), .CI(n725), .CO(n723), .S(res[6]) );
  FADDX1_HVT U652 ( .A(n730), .B(n729), .CI(n728), .CO(n726), .S(res[5]) );
  FADDX1_HVT U653 ( .A(n733), .B(n732), .CI(n731), .CO(n729), .S(res[4]) );
  FADDX1_HVT U654 ( .A(n736), .B(n735), .CI(n734), .CO(n732), .S(res[3]) );
  FADDX1_HVT U655 ( .A(c[2]), .B(n738), .CI(n737), .CO(n735), .S(res[2]) );
  FADDX1_HVT U656 ( .A(c[1]), .B(n740), .CI(n739), .CO(n738), .S(res[1]) );
  FADDX1_HVT U657 ( .A(n742), .B(c[0]), .CI(n741), .CO(n740), .S(res[0]) );
  AO22X1_HVT U658 ( .A1(n746), .A2(n745), .A3(n744), .A4(n743), .Y(n752) );
  NAND2X0_HVT U659 ( .A1(n753), .A2(n747), .Y(n750) );
  INVX0_HVT U660 ( .A(n748), .Y(n749) );
  AND2X1_HVT U661 ( .A1(n750), .A2(n749), .Y(n751) );
  AO222X1_HVT U662 ( .A1(n753), .A2(n752), .A3(n753), .A4(n751), .A5(n752), 
        .A6(n751), .Y(c_out) );
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
         n145, n146, n147, n148;

  INVX2_HVT U1 ( .A(dir_left), .Y(n146) );
  INVX0_HVT U2 ( .A(b[0]), .Y(n18) );
  NAND2X0_HVT U3 ( .A1(n146), .A2(n18), .Y(n5) );
  INVX0_HVT U4 ( .A(n5), .Y(n86) );
  AND2X1_HVT U5 ( .A1(dir_left), .A2(n18), .Y(n103) );
  AO22X1_HVT U6 ( .A1(n86), .A2(a[3]), .A3(n103), .A4(a[12]), .Y(n2) );
  AND2X1_HVT U7 ( .A1(b[0]), .A2(n146), .Y(n88) );
  NAND2X0_HVT U8 ( .A1(dir_left), .A2(b[0]), .Y(n6) );
  INVX0_HVT U9 ( .A(n6), .Y(n87) );
  AO22X1_HVT U10 ( .A1(n88), .A2(a[4]), .A3(n87), .A4(a[11]), .Y(n1) );
  OR2X1_HVT U11 ( .A1(n2), .A2(n1), .Y(n74) );
  INVX0_HVT U12 ( .A(b[3]), .Y(n120) );
  INVX0_HVT U13 ( .A(b[2]), .Y(n81) );
  NAND2X0_HVT U14 ( .A1(n120), .A2(n81), .Y(n46) );
  INVX0_HVT U15 ( .A(n46), .Y(n127) );
  INVX0_HVT U16 ( .A(b[1]), .Y(n77) );
  AND2X1_HVT U17 ( .A1(n127), .A2(n77), .Y(n101) );
  NAND2X0_HVT U18 ( .A1(b[2]), .A2(n120), .Y(n40) );
  INVX0_HVT U19 ( .A(n40), .Y(n125) );
  AO22X1_HVT U20 ( .A1(n86), .A2(a[9]), .A3(n103), .A4(a[6]), .Y(n4) );
  AO22X1_HVT U21 ( .A1(n88), .A2(a[10]), .A3(n87), .A4(a[5]), .Y(n3) );
  OR2X1_HVT U22 ( .A1(n4), .A2(n3), .Y(n31) );
  NAND2X0_HVT U23 ( .A1(n6), .A2(n5), .Y(n7) );
  MUX21X1_HVT U24 ( .A1(a[8]), .A2(a[7]), .S0(n7), .Y(n78) );
  AO22X1_HVT U25 ( .A1(b[1]), .A2(n31), .A3(n77), .A4(n78), .Y(n17) );
  AO22X1_HVT U26 ( .A1(n86), .A2(a[5]), .A3(n103), .A4(a[10]), .Y(n9) );
  AO22X1_HVT U27 ( .A1(n88), .A2(a[6]), .A3(n87), .A4(a[9]), .Y(n8) );
  OR2X1_HVT U28 ( .A1(n9), .A2(n8), .Y(n76) );
  AND2X1_HVT U29 ( .A1(n127), .A2(b[1]), .Y(n93) );
  AOI222X1_HVT U30 ( .A1(n74), .A2(n101), .A3(n125), .A4(n17), .A5(n76), .A6(
        n93), .Y(n55) );
  NAND2X0_HVT U31 ( .A1(is_signed), .A2(n146), .Y(n12) );
  NAND2X0_HVT U32 ( .A1(n146), .A2(n12), .Y(n34) );
  INVX0_HVT U33 ( .A(n34), .Y(n99) );
  AO22X1_HVT U34 ( .A1(dir_left), .A2(a[0]), .A3(n146), .A4(a[15]), .Y(n112)
         );
  NAND2X0_HVT U35 ( .A1(n18), .A2(n112), .Y(n30) );
  INVX0_HVT U36 ( .A(n30), .Y(n98) );
  INVX0_HVT U37 ( .A(b[1]), .Y(n75) );
  AO22X1_HVT U38 ( .A1(dir_left), .A2(a[2]), .A3(n146), .A4(a[13]), .Y(n13) );
  AO222X1_HVT U39 ( .A1(n18), .A2(n13), .A3(a[14]), .A4(n88), .A5(n87), .A6(
        a[1]), .Y(n29) );
  AO22X1_HVT U40 ( .A1(a[4]), .A2(n103), .A3(a[11]), .A4(n86), .Y(n11) );
  AO22X1_HVT U41 ( .A1(n88), .A2(a[12]), .A3(n87), .A4(a[3]), .Y(n10) );
  OR2X1_HVT U42 ( .A1(n11), .A2(n10), .Y(n32) );
  OA22X1_HVT U43 ( .A1(n75), .A2(n29), .A3(b[1]), .A4(n32), .Y(n51) );
  OA222X1_HVT U44 ( .A1(n81), .A2(n77), .A3(n81), .A4(n98), .A5(b[2]), .A6(n51), .Y(n54) );
  NAND2X0_HVT U45 ( .A1(n99), .A2(n54), .Y(n50) );
  OA22X1_HVT U46 ( .A1(dir_left), .A2(n55), .A3(n50), .A4(n120), .Y(n16) );
  INVX0_HVT U47 ( .A(n12), .Y(n105) );
  NAND3X0_HVT U48 ( .A1(b[3]), .A2(n105), .A3(n112), .Y(n143) );
  INVX0_HVT U49 ( .A(n143), .Y(n140) );
  NAND2X0_HVT U50 ( .A1(b[2]), .A2(n140), .Y(n118) );
  AO222X1_HVT U51 ( .A1(n112), .A2(b[0]), .A3(n103), .A4(a[1]), .A5(n86), .A6(
        a[14]), .Y(n42) );
  AO222X1_HVT U52 ( .A1(n13), .A2(b[0]), .A3(a[3]), .A4(n103), .A5(n86), .A6(
        a[12]), .Y(n39) );
  AO22X1_HVT U53 ( .A1(b[1]), .A2(n42), .A3(n77), .A4(n39), .Y(n84) );
  NAND3X0_HVT U54 ( .A1(dir_left), .A2(n127), .A3(n84), .Y(n15) );
  AND2X1_HVT U55 ( .A1(b[3]), .A2(n81), .Y(n130) );
  NAND3X0_HVT U56 ( .A1(n105), .A2(n130), .A3(n51), .Y(n14) );
  NAND4X0_HVT U57 ( .A1(n16), .A2(n118), .A3(n15), .A4(n14), .Y(res[3]) );
  AO22X1_HVT U58 ( .A1(n127), .A2(n17), .A3(n125), .A4(n51), .Y(n22) );
  INVX0_HVT U59 ( .A(n22), .Y(n21) );
  AND2X1_HVT U60 ( .A1(n81), .A2(n77), .Y(n19) );
  NAND4X0_HVT U61 ( .A1(b[3]), .A2(n19), .A3(n112), .A4(n18), .Y(n20) );
  NAND2X0_HVT U62 ( .A1(n21), .A2(n20), .Y(n142) );
  AOI22X1_HVT U63 ( .A1(n105), .A2(n22), .A3(n99), .A4(n142), .Y(n28) );
  AO22X1_HVT U64 ( .A1(n86), .A2(a[10]), .A3(n103), .A4(a[5]), .Y(n24) );
  AO22X1_HVT U65 ( .A1(n88), .A2(a[11]), .A3(a[4]), .A4(n87), .Y(n23) );
  OR2X1_HVT U66 ( .A1(n24), .A2(n23), .Y(n38) );
  AO22X1_HVT U67 ( .A1(n86), .A2(a[8]), .A3(n103), .A4(a[7]), .Y(n26) );
  AO22X1_HVT U68 ( .A1(n88), .A2(a[9]), .A3(n87), .A4(a[6]), .Y(n25) );
  OR2X1_HVT U69 ( .A1(n26), .A2(n25), .Y(n37) );
  AO22X1_HVT U70 ( .A1(b[1]), .A2(n38), .A3(n77), .A4(n37), .Y(n94) );
  AO22X1_HVT U71 ( .A1(n127), .A2(n94), .A3(n125), .A4(n84), .Y(n141) );
  NAND2X0_HVT U72 ( .A1(dir_left), .A2(n141), .Y(n27) );
  NAND3X0_HVT U73 ( .A1(n28), .A2(n143), .A3(n27), .Y(res[7]) );
  NAND2X0_HVT U74 ( .A1(n75), .A2(n29), .Y(n59) );
  OA21X1_HVT U75 ( .A1(n30), .A2(n77), .A3(n59), .Y(n128) );
  OA22X1_HVT U76 ( .A1(n75), .A2(n32), .A3(b[1]), .A4(n31), .Y(n124) );
  INVX0_HVT U77 ( .A(n124), .Y(n80) );
  OA22X1_HVT U78 ( .A1(n128), .A2(n40), .A3(n46), .A4(n80), .Y(n135) );
  NAND2X0_HVT U79 ( .A1(b[1]), .A2(n112), .Y(n33) );
  OA222X1_HVT U80 ( .A1(n81), .A2(n59), .A3(n81), .A4(n33), .A5(b[2]), .A6(n80), .Y(n106) );
  NAND2X0_HVT U81 ( .A1(n105), .A2(n120), .Y(n69) );
  OA22X1_HVT U82 ( .A1(n135), .A2(n34), .A3(n106), .A4(n69), .Y(n45) );
  AO22X1_HVT U83 ( .A1(n86), .A2(a[6]), .A3(n103), .A4(a[9]), .Y(n36) );
  AO22X1_HVT U84 ( .A1(n88), .A2(a[7]), .A3(n87), .A4(a[8]), .Y(n35) );
  OR2X1_HVT U85 ( .A1(n36), .A2(n35), .Y(n49) );
  AO22X1_HVT U86 ( .A1(b[1]), .A2(n37), .A3(n77), .A4(n49), .Y(n62) );
  INVX0_HVT U87 ( .A(n62), .Y(n41) );
  OAI22X1_HVT U88 ( .A1(n77), .A2(n39), .A3(b[1]), .A4(n38), .Y(n64) );
  OA22X1_HVT U89 ( .A1(n46), .A2(n41), .A3(n40), .A4(n64), .Y(n137) );
  NAND2X0_HVT U90 ( .A1(n75), .A2(n42), .Y(n107) );
  INVX0_HVT U91 ( .A(n107), .Y(n43) );
  NAND2X0_HVT U92 ( .A1(n130), .A2(n43), .Y(n136) );
  AO21X1_HVT U93 ( .A1(n137), .A2(n136), .A3(n146), .Y(n44) );
  NAND3X0_HVT U94 ( .A1(n45), .A2(n143), .A3(n44), .Y(res[9]) );
  NAND3X0_HVT U95 ( .A1(n105), .A2(n112), .A3(n46), .Y(n58) );
  AO22X1_HVT U96 ( .A1(a[4]), .A2(n86), .A3(a[11]), .A4(n103), .Y(n48) );
  AO22X1_HVT U97 ( .A1(n88), .A2(a[5]), .A3(n87), .A4(a[10]), .Y(n47) );
  OR2X1_HVT U98 ( .A1(n48), .A2(n47), .Y(n63) );
  AO22X1_HVT U99 ( .A1(b[1]), .A2(n49), .A3(n77), .A4(n63), .Y(n85) );
  AOI222X1_HVT U100 ( .A1(n127), .A2(n85), .A3(n125), .A4(n94), .A5(n130), 
        .A6(n84), .Y(n116) );
  OA22X1_HVT U101 ( .A1(b[3]), .A2(n50), .A3(n116), .A4(n146), .Y(n53) );
  NAND3X0_HVT U102 ( .A1(n105), .A2(n127), .A3(n51), .Y(n52) );
  NAND3X0_HVT U103 ( .A1(n58), .A2(n53), .A3(n52), .Y(res[11]) );
  INVX0_HVT U104 ( .A(n54), .Y(n117) );
  AO221X1_HVT U105 ( .A1(n55), .A2(n120), .A3(n55), .A4(n117), .A5(n146), .Y(
        n57) );
  NAND3X0_HVT U106 ( .A1(n127), .A2(n84), .A3(n146), .Y(n56) );
  NAND3X0_HVT U107 ( .A1(n58), .A2(n57), .A3(n56), .Y(res[12]) );
  INVX0_HVT U108 ( .A(n112), .Y(n67) );
  OA222X1_HVT U109 ( .A1(n67), .A2(n77), .A3(n67), .A4(n81), .A5(b[2]), .A6(
        n59), .Y(n123) );
  NAND2X0_HVT U110 ( .A1(n99), .A2(n127), .Y(n68) );
  OA22X1_HVT U111 ( .A1(n123), .A2(n69), .A3(n128), .A4(n68), .Y(n66) );
  AO22X1_HVT U112 ( .A1(n86), .A2(a[2]), .A3(n103), .A4(a[13]), .Y(n61) );
  AO22X1_HVT U113 ( .A1(n88), .A2(a[3]), .A3(n87), .A4(a[12]), .Y(n60) );
  OR2X1_HVT U114 ( .A1(n61), .A2(n60), .Y(n92) );
  AOI222X1_HVT U115 ( .A1(n63), .A2(n93), .A3(n62), .A4(n125), .A5(n92), .A6(
        n101), .Y(n115) );
  AO22X1_HVT U116 ( .A1(b[2]), .A2(n107), .A3(n81), .A4(n64), .Y(n122) );
  AO221X1_HVT U117 ( .A1(n115), .A2(n120), .A3(n115), .A4(n122), .A5(n146), 
        .Y(n65) );
  NAND3X0_HVT U118 ( .A1(n66), .A2(n143), .A3(n65), .Y(res[13]) );
  OA222X1_HVT U119 ( .A1(n67), .A2(n75), .A3(n67), .A4(n81), .A5(b[2]), .A6(
        n107), .Y(n134) );
  OA22X1_HVT U120 ( .A1(n134), .A2(n69), .A3(n107), .A4(n68), .Y(n83) );
  NAND2X0_HVT U121 ( .A1(n88), .A2(a[2]), .Y(n71) );
  NAND2X0_HVT U122 ( .A1(n103), .A2(a[14]), .Y(n70) );
  NAND3X0_HVT U123 ( .A1(n71), .A2(n70), .A3(n77), .Y(n73) );
  AO22X1_HVT U124 ( .A1(n87), .A2(a[13]), .A3(n86), .A4(a[1]), .Y(n72) );
  OA22X1_HVT U125 ( .A1(n75), .A2(n74), .A3(n73), .A4(n72), .Y(n79) );
  AO22X1_HVT U126 ( .A1(b[1]), .A2(n78), .A3(n77), .A4(n76), .Y(n126) );
  AOI22X1_HVT U127 ( .A1(n127), .A2(n79), .A3(n125), .A4(n126), .Y(n109) );
  AO221X1_HVT U128 ( .A1(b[2]), .A2(n128), .A3(n81), .A4(n80), .A5(n120), .Y(
        n108) );
  AO21X1_HVT U129 ( .A1(n109), .A2(n108), .A3(n146), .Y(n82) );
  NAND3X0_HVT U130 ( .A1(n83), .A2(n143), .A3(n82), .Y(res[14]) );
  OAI221X1_HVT U131 ( .A1(b[3]), .A2(n85), .A3(n120), .A4(n84), .A5(b[2]), .Y(
        n97) );
  AO22X1_HVT U132 ( .A1(n86), .A2(a[0]), .A3(n103), .A4(a[15]), .Y(n90) );
  AO22X1_HVT U133 ( .A1(n88), .A2(a[1]), .A3(n87), .A4(a[14]), .Y(n89) );
  OR2X1_HVT U134 ( .A1(n90), .A2(n89), .Y(n91) );
  AOI22X1_HVT U135 ( .A1(n93), .A2(n92), .A3(n101), .A4(n91), .Y(n96) );
  NAND2X0_HVT U136 ( .A1(n130), .A2(n94), .Y(n95) );
  NAND3X0_HVT U137 ( .A1(n97), .A2(n96), .A3(n95), .Y(n102) );
  AO22X1_HVT U138 ( .A1(dir_left), .A2(n102), .A3(n105), .A4(a[15]), .Y(n100)
         );
  OA222X1_HVT U139 ( .A1(n100), .A2(n99), .A3(n100), .A4(n98), .A5(n100), .A6(
        n101), .Y(res[15]) );
  AND2X1_HVT U140 ( .A1(n101), .A2(n112), .Y(n104) );
  AO22X1_HVT U141 ( .A1(n104), .A2(n103), .A3(n146), .A4(n102), .Y(res[0]) );
  NAND2X0_HVT U142 ( .A1(dir_left), .A2(n127), .Y(n114) );
  NAND2X0_HVT U143 ( .A1(n105), .A2(b[3]), .Y(n133) );
  OA22X1_HVT U144 ( .A1(n107), .A2(n114), .A3(n106), .A4(n133), .Y(n111) );
  AO21X1_HVT U145 ( .A1(n109), .A2(n108), .A3(dir_left), .Y(n110) );
  NAND2X0_HVT U146 ( .A1(n111), .A2(n110), .Y(res[1]) );
  NAND4X0_HVT U147 ( .A1(b[2]), .A2(is_signed), .A3(b[1]), .A4(n112), .Y(n113)
         );
  AO21X1_HVT U148 ( .A1(n122), .A2(n113), .A3(dir_left), .Y(n148) );
  OAI222X1_HVT U149 ( .A1(n120), .A2(n148), .A3(dir_left), .A4(n115), .A5(n114), .A6(n128), .Y(res[2]) );
  AO222X1_HVT U150 ( .A1(dir_left), .A2(b[3]), .A3(dir_left), .A4(n117), .A5(
        n116), .A6(n146), .Y(n119) );
  NAND2X0_HVT U151 ( .A1(n119), .A2(n118), .Y(res[4]) );
  NAND2X0_HVT U152 ( .A1(dir_left), .A2(n120), .Y(n121) );
  OA22X1_HVT U153 ( .A1(n123), .A2(n133), .A3(n122), .A4(n121), .Y(n132) );
  AOI22X1_HVT U154 ( .A1(n127), .A2(n126), .A3(n125), .A4(n124), .Y(n145) );
  INVX0_HVT U155 ( .A(n128), .Y(n129) );
  NAND2X0_HVT U156 ( .A1(n130), .A2(n129), .Y(n144) );
  AO21X1_HVT U157 ( .A1(n145), .A2(n144), .A3(dir_left), .Y(n131) );
  NAND2X0_HVT U158 ( .A1(n132), .A2(n131), .Y(res[5]) );
  OA22X1_HVT U159 ( .A1(n135), .A2(n146), .A3(n134), .A4(n133), .Y(n139) );
  AO21X1_HVT U160 ( .A1(n137), .A2(n136), .A3(dir_left), .Y(n138) );
  NAND2X0_HVT U161 ( .A1(n139), .A2(n138), .Y(res[6]) );
  AO221X1_HVT U162 ( .A1(dir_left), .A2(n142), .A3(n146), .A4(n141), .A5(n140), 
        .Y(res[8]) );
  OA221X1_HVT U163 ( .A1(n146), .A2(n145), .A3(n146), .A4(n144), .A5(n143), 
        .Y(n147) );
  OAI21X1_HVT U164 ( .A1(b[3]), .A2(n148), .A3(n147), .Y(res[10]) );
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
         \add_res[0][0] , cmpr_lte, cmpr_gte, mult_c_out, n292, n294, n2, n3,
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
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n293, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305;
  wire   [1:0] add_c_in;
  wire   [31:0] mult_res;
  wire   [15:0] shift_res;

  INVX0_HVT U3 ( .A(cmpr_gte), .Y(n2) );
  INVX0_HVT U4 ( .A(op_code[3]), .Y(n119) );
  INVX0_HVT U5 ( .A(op_code[2]), .Y(n72) );
  NAND3X0_HVT U6 ( .A1(op_code[0]), .A2(n119), .A3(n72), .Y(n61) );
  INVX0_HVT U7 ( .A(n61), .Y(n69) );
  INVX0_HVT U8 ( .A(op_code[4]), .Y(n33) );
  AND3X1_HVT U9 ( .A1(op_code[1]), .A2(n69), .A3(n33), .Y(n144) );
  INVX2_HVT U10 ( .A(op_code[5]), .Y(n303) );
  AND2X1_HVT U11 ( .A1(n144), .A2(n303), .Y(n284) );
  AND2X2_HVT U12 ( .A1(n284), .A2(\add_res[0][15] ), .Y(add_c_in[1]) );
  INVX0_HVT U13 ( .A(op_code[1]), .Y(n73) );
  NAND3X0_HVT U14 ( .A1(op_code[4]), .A2(n69), .A3(n73), .Y(n67) );
  NOR2X2_HVT U15 ( .A1(op_code[5]), .A2(n67), .Y(n292) );
  INVX0_HVT U16 ( .A(op_b[1]), .Y(n90) );
  INVX2_HVT U17 ( .A(n90), .Y(n305) );
  INVX0_HVT U18 ( .A(\add_res[0][15] ), .Y(n31) );
  NOR2X0_HVT U19 ( .A1(n284), .A2(n31), .Y(\add_a[1][15] ) );
  INVX0_HVT U20 ( .A(op_a[0]), .Y(n3) );
  INVX0_HVT U21 ( .A(op_b[0]), .Y(n87) );
  AO22X1_HVT U22 ( .A1(op_b[0]), .A2(n3), .A3(n87), .A4(op_a[0]), .Y(n145) );
  INVX0_HVT U23 ( .A(op_a[1]), .Y(n4) );
  AO22X1_HVT U24 ( .A1(n305), .A2(n4), .A3(n90), .A4(op_a[1]), .Y(n154) );
  INVX0_HVT U25 ( .A(op_a[2]), .Y(n5) );
  INVX0_HVT U26 ( .A(op_b[2]), .Y(n84) );
  AO22X1_HVT U27 ( .A1(op_b[2]), .A2(n5), .A3(n84), .A4(op_a[2]), .Y(n162) );
  INVX0_HVT U28 ( .A(op_a[3]), .Y(n6) );
  INVX0_HVT U29 ( .A(op_b[3]), .Y(n85) );
  AO22X1_HVT U30 ( .A1(op_b[3]), .A2(n6), .A3(n85), .A4(op_a[3]), .Y(n170) );
  NOR4X1_HVT U31 ( .A1(n145), .A2(n154), .A3(n162), .A4(n170), .Y(n21) );
  INVX0_HVT U32 ( .A(op_a[4]), .Y(n7) );
  INVX0_HVT U33 ( .A(op_b[4]), .Y(n97) );
  AO22X1_HVT U34 ( .A1(op_b[4]), .A2(n7), .A3(n97), .A4(op_a[4]), .Y(n178) );
  INVX0_HVT U35 ( .A(op_a[5]), .Y(n8) );
  INVX0_HVT U36 ( .A(op_b[5]), .Y(n96) );
  AO22X1_HVT U37 ( .A1(op_b[5]), .A2(n8), .A3(n96), .A4(op_a[5]), .Y(n186) );
  INVX0_HVT U38 ( .A(op_a[6]), .Y(n9) );
  INVX0_HVT U39 ( .A(op_b[6]), .Y(n94) );
  AO22X1_HVT U40 ( .A1(op_b[6]), .A2(n9), .A3(n94), .A4(op_a[6]), .Y(n194) );
  INVX0_HVT U41 ( .A(op_a[7]), .Y(n10) );
  INVX0_HVT U42 ( .A(op_b[7]), .Y(n93) );
  AO22X1_HVT U43 ( .A1(op_b[7]), .A2(n10), .A3(n93), .A4(op_a[7]), .Y(n202) );
  NOR4X1_HVT U44 ( .A1(n178), .A2(n186), .A3(n194), .A4(n202), .Y(n20) );
  INVX0_HVT U45 ( .A(op_a[8]), .Y(n11) );
  INVX0_HVT U46 ( .A(op_b[8]), .Y(n103) );
  AO22X1_HVT U47 ( .A1(op_b[8]), .A2(n11), .A3(n103), .A4(op_a[8]), .Y(n210)
         );
  INVX0_HVT U48 ( .A(op_a[9]), .Y(n12) );
  INVX0_HVT U49 ( .A(op_b[9]), .Y(n102) );
  AO22X1_HVT U50 ( .A1(op_b[9]), .A2(n12), .A3(n102), .A4(op_a[9]), .Y(n218)
         );
  INVX0_HVT U51 ( .A(op_a[10]), .Y(n13) );
  INVX0_HVT U52 ( .A(op_b[10]), .Y(n100) );
  AO22X1_HVT U53 ( .A1(op_b[10]), .A2(n13), .A3(n100), .A4(op_a[10]), .Y(n226)
         );
  INVX0_HVT U54 ( .A(op_a[11]), .Y(n14) );
  INVX0_HVT U55 ( .A(op_b[11]), .Y(n99) );
  AO22X1_HVT U56 ( .A1(op_b[11]), .A2(n14), .A3(n99), .A4(op_a[11]), .Y(n234)
         );
  NOR4X1_HVT U57 ( .A1(n210), .A2(n218), .A3(n226), .A4(n234), .Y(n19) );
  INVX0_HVT U58 ( .A(op_a[15]), .Y(n32) );
  INVX0_HVT U59 ( .A(op_b[15]), .Y(n78) );
  OA22X1_HVT U60 ( .A1(n32), .A2(op_b[15]), .A3(op_a[15]), .A4(n78), .Y(n34)
         );
  INVX0_HVT U61 ( .A(n34), .Y(n271) );
  INVX0_HVT U62 ( .A(op_a[12]), .Y(n15) );
  INVX0_HVT U63 ( .A(op_b[12]), .Y(n81) );
  AO22X1_HVT U64 ( .A1(op_b[12]), .A2(n15), .A3(n81), .A4(op_a[12]), .Y(n242)
         );
  INVX0_HVT U65 ( .A(op_a[13]), .Y(n16) );
  INVX0_HVT U66 ( .A(op_b[13]), .Y(n75) );
  AO22X1_HVT U67 ( .A1(op_b[13]), .A2(n16), .A3(n75), .A4(op_a[13]), .Y(n250)
         );
  INVX0_HVT U68 ( .A(op_a[14]), .Y(n17) );
  INVX0_HVT U69 ( .A(op_b[14]), .Y(n76) );
  AO22X1_HVT U70 ( .A1(op_b[14]), .A2(n17), .A3(n76), .A4(op_a[14]), .Y(n259)
         );
  NOR4X1_HVT U71 ( .A1(n271), .A2(n242), .A3(n250), .A4(n259), .Y(n18) );
  AND4X1_HVT U72 ( .A1(n21), .A2(n20), .A3(n19), .A4(n18), .Y(n294) );
  NAND2X0_HVT U73 ( .A1(n33), .A2(n73), .Y(n28) );
  INVX0_HVT U74 ( .A(n28), .Y(n129) );
  INVX0_HVT U75 ( .A(op_code[0]), .Y(n71) );
  NAND2X0_HVT U76 ( .A1(n72), .A2(n71), .Y(n22) );
  AND3X1_HVT U77 ( .A1(n129), .A2(n119), .A3(n22), .Y(n23) );
  OA21X2_HVT U78 ( .A1(n144), .A2(n23), .A3(n303), .Y(n24) );
  NAND2X0_HVT U79 ( .A1(n119), .A2(n71), .Y(n56) );
  INVX0_HVT U80 ( .A(n56), .Y(n118) );
  NAND3X0_HVT U81 ( .A1(n129), .A2(n118), .A3(n72), .Y(n29) );
  INVX0_HVT U82 ( .A(n29), .Y(n121) );
  OA221X1_HVT U83 ( .A1(n24), .A2(n121), .A3(n24), .A4(op_d_p), .A5(n303), .Y(
        add_c_in[0]) );
  INVX0_HVT U84 ( .A(n24), .Y(n25) );
  AO22X1_HVT U85 ( .A1(op_b[0]), .A2(n25), .A3(n87), .A4(n24), .Y(
        \add_b[0][0] ) );
  AO22X1_HVT U86 ( .A1(n305), .A2(n25), .A3(n90), .A4(n24), .Y(\add_b[0][1] )
         );
  AO22X1_HVT U87 ( .A1(op_b[2]), .A2(n25), .A3(n84), .A4(n24), .Y(
        \add_b[0][2] ) );
  AO22X1_HVT U88 ( .A1(op_b[3]), .A2(n25), .A3(n85), .A4(n24), .Y(
        \add_b[0][3] ) );
  AO22X1_HVT U89 ( .A1(op_b[4]), .A2(n25), .A3(n97), .A4(n24), .Y(
        \add_b[0][4] ) );
  AO22X1_HVT U90 ( .A1(op_b[5]), .A2(n25), .A3(n96), .A4(n24), .Y(
        \add_b[0][5] ) );
  AO22X1_HVT U91 ( .A1(op_b[6]), .A2(n25), .A3(n94), .A4(n24), .Y(
        \add_b[0][6] ) );
  AO22X1_HVT U92 ( .A1(op_b[7]), .A2(n25), .A3(n93), .A4(n24), .Y(
        \add_b[0][7] ) );
  AO22X1_HVT U93 ( .A1(op_b[8]), .A2(n25), .A3(n103), .A4(n24), .Y(
        \add_b[0][8] ) );
  AO22X1_HVT U94 ( .A1(op_b[9]), .A2(n25), .A3(n102), .A4(n24), .Y(
        \add_b[0][9] ) );
  AO22X1_HVT U95 ( .A1(op_b[10]), .A2(n25), .A3(n100), .A4(n24), .Y(
        \add_b[0][10] ) );
  AO22X1_HVT U96 ( .A1(op_b[11]), .A2(n25), .A3(n99), .A4(n24), .Y(
        \add_b[0][11] ) );
  AO22X1_HVT U97 ( .A1(op_b[12]), .A2(n25), .A3(n81), .A4(n24), .Y(
        \add_b[0][12] ) );
  AO22X1_HVT U98 ( .A1(op_b[13]), .A2(n25), .A3(n75), .A4(n24), .Y(
        \add_b[0][13] ) );
  AO22X1_HVT U99 ( .A1(op_b[14]), .A2(n25), .A3(n76), .A4(n24), .Y(
        \add_b[0][14] ) );
  AO22X1_HVT U100 ( .A1(op_b[15]), .A2(n25), .A3(n78), .A4(n24), .Y(
        \add_b[0][15] ) );
  INVX0_HVT U101 ( .A(\add_res[1][15] ), .Y(n26) );
  INVX0_HVT U102 ( .A(op_c[15]), .Y(n79) );
  OA222X1_HVT U103 ( .A1(\add_res[1][15] ), .A2(\add_res[0][15] ), .A3(n26), 
        .A4(n79), .A5(n31), .A6(op_c[15]), .Y(n27) );
  AND3X1_HVT U104 ( .A1(n129), .A2(n119), .A3(n72), .Y(n143) );
  NAND2X0_HVT U105 ( .A1(n27), .A2(n143), .Y(n38) );
  AO221X1_HVT U106 ( .A1(n61), .A2(n271), .A3(n29), .A4(n34), .A5(n28), .Y(n30) );
  AO221X1_HVT U107 ( .A1(op_a[15]), .A2(\add_res[0][15] ), .A3(n32), .A4(n31), 
        .A5(n30), .Y(n37) );
  INVX0_HVT U108 ( .A(mult_res[15]), .Y(n35) );
  NAND3X0_HVT U109 ( .A1(op_code[3]), .A2(op_code[0]), .A3(n33), .Y(n62) );
  INVX0_HVT U110 ( .A(n62), .Y(n66) );
  NAND3X0_HVT U111 ( .A1(op_code[1]), .A2(n66), .A3(n72), .Y(n113) );
  NAND3X0_HVT U112 ( .A1(op_code[3]), .A2(op_code[2]), .A3(n129), .Y(n112) );
  INVX0_HVT U113 ( .A(n112), .Y(n140) );
  NAND2X0_HVT U114 ( .A1(n140), .A2(n71), .Y(n146) );
  AO222X1_HVT U115 ( .A1(mult_res[15]), .A2(n271), .A3(n35), .A4(n34), .A5(
        n113), .A6(n146), .Y(n36) );
  NAND3X0_HVT U116 ( .A1(n38), .A2(n37), .A3(n36), .Y(n54) );
  INVX0_HVT U117 ( .A(op_code[6]), .Y(n53) );
  OR2X1_HVT U118 ( .A1(n1), .A2(carry_out[1]), .Y(n46) );
  NOR4X1_HVT U119 ( .A1(mult_res[19]), .A2(mult_res[18]), .A3(mult_res[17]), 
        .A4(mult_res[16]), .Y(n40) );
  NOR4X1_HVT U120 ( .A1(mult_res[23]), .A2(mult_res[22]), .A3(mult_res[21]), 
        .A4(mult_res[20]), .Y(n39) );
  NAND2X0_HVT U121 ( .A1(n40), .A2(n39), .Y(n45) );
  INVX0_HVT U122 ( .A(n113), .Y(n272) );
  NOR4X1_HVT U123 ( .A1(mult_res[27]), .A2(mult_res[26]), .A3(mult_res[25]), 
        .A4(mult_res[24]), .Y(n42) );
  NOR4X1_HVT U124 ( .A1(mult_res[31]), .A2(mult_res[30]), .A3(mult_res[29]), 
        .A4(mult_res[28]), .Y(n41) );
  NAND2X0_HVT U125 ( .A1(n42), .A2(n41), .Y(n44) );
  NAND2X0_HVT U126 ( .A1(n113), .A2(n146), .Y(n43) );
  AO222X1_HVT U127 ( .A1(n46), .A2(n121), .A3(n45), .A4(n272), .A5(n44), .A6(
        n43), .Y(n52) );
  AND2X1_HVT U128 ( .A1(n144), .A2(\add_res[0][15] ), .Y(n111) );
  INVX0_HVT U129 ( .A(\add_res[0][8] ), .Y(n295) );
  INVX0_HVT U130 ( .A(\add_res[0][7] ), .Y(n293) );
  INVX0_HVT U131 ( .A(\add_res[0][6] ), .Y(n291) );
  INVX0_HVT U132 ( .A(\add_res[0][5] ), .Y(n290) );
  AND4X1_HVT U133 ( .A1(n295), .A2(n293), .A3(n291), .A4(n290), .Y(n50) );
  INVX0_HVT U134 ( .A(\add_res[0][4] ), .Y(n289) );
  INVX0_HVT U135 ( .A(\add_res[0][3] ), .Y(n288) );
  INVX0_HVT U136 ( .A(\add_res[0][2] ), .Y(n287) );
  INVX0_HVT U137 ( .A(\add_res[0][1] ), .Y(n286) );
  AND4X1_HVT U138 ( .A1(n289), .A2(n288), .A3(n287), .A4(n286), .Y(n49) );
  INVX0_HVT U139 ( .A(\add_res[0][12] ), .Y(n299) );
  INVX0_HVT U140 ( .A(\add_res[0][11] ), .Y(n298) );
  INVX0_HVT U141 ( .A(\add_res[0][10] ), .Y(n297) );
  INVX0_HVT U142 ( .A(\add_res[0][9] ), .Y(n296) );
  NAND4X0_HVT U143 ( .A1(n299), .A2(n298), .A3(n297), .A4(n296), .Y(n47) );
  NOR4X1_HVT U144 ( .A1(\add_res[0][0] ), .A2(\add_res[0][14] ), .A3(
        \add_res[0][13] ), .A4(n47), .Y(n48) );
  AND4X1_HVT U145 ( .A1(n111), .A2(n50), .A3(n49), .A4(n48), .Y(n51) );
  AO221X1_HVT U146 ( .A1(op_code[6]), .A2(n54), .A3(n53), .A4(n52), .A5(n51), 
        .Y(n55) );
  AO22X1_HVT U147 ( .A1(\add_res[1][15] ), .A2(n284), .A3(n303), .A4(n55), .Y(
        ovfl) );
  NAND3X0_HVT U148 ( .A1(op_code[2]), .A2(op_code[4]), .A3(n56), .Y(n65) );
  NAND2X0_HVT U149 ( .A1(op_code[3]), .A2(op_code[0]), .Y(n58) );
  NAND2X0_HVT U150 ( .A1(op_code[4]), .A2(n118), .Y(n57) );
  NAND2X0_HVT U151 ( .A1(n58), .A2(n57), .Y(n59) );
  NAND3X0_HVT U152 ( .A1(n72), .A2(n73), .A3(n59), .Y(n64) );
  NAND3X0_HVT U153 ( .A1(op_code[4]), .A2(n119), .A3(n72), .Y(n60) );
  NAND4X0_HVT U154 ( .A1(op_code[1]), .A2(n62), .A3(n61), .A4(n60), .Y(n63) );
  NAND4X0_HVT U155 ( .A1(n303), .A2(n65), .A3(n64), .A4(n63), .Y(n127) );
  NAND3X0_HVT U156 ( .A1(op_code[2]), .A2(n66), .A3(op_code[1]), .Y(n68) );
  NAND2X0_HVT U157 ( .A1(n68), .A2(n67), .Y(n273) );
  NAND4X0_HVT U158 ( .A1(op_code[4]), .A2(op_code[2]), .A3(n118), .A4(n73), 
        .Y(n142) );
  NAND3X0_HVT U159 ( .A1(op_code[4]), .A2(op_code[1]), .A3(n69), .Y(n139) );
  NAND4X0_HVT U160 ( .A1(op_code[1]), .A2(op_code[4]), .A3(n118), .A4(n72), 
        .Y(n137) );
  NAND4X0_HVT U161 ( .A1(op_code[3]), .A2(n129), .A3(n71), .A4(n72), .Y(n135)
         );
  NAND4X0_HVT U162 ( .A1(n142), .A2(n139), .A3(n137), .A4(n135), .Y(n70) );
  OR2X1_HVT U163 ( .A1(n273), .A2(n70), .Y(n125) );
  AND3X1_HVT U164 ( .A1(op_code[3]), .A2(n72), .A3(n71), .Y(n128) );
  NAND3X0_HVT U165 ( .A1(op_code[4]), .A2(n128), .A3(n73), .Y(n141) );
  INVX0_HVT U166 ( .A(op_c[12]), .Y(n82) );
  OAI22X1_HVT U167 ( .A1(n76), .A2(op_c[14]), .A3(n75), .A4(op_c[13]), .Y(n74)
         );
  AO221X1_HVT U168 ( .A1(n76), .A2(op_c[14]), .A3(op_c[13]), .A4(n75), .A5(n74), .Y(n77) );
  AO221X1_HVT U169 ( .A1(op_b[15]), .A2(n79), .A3(n78), .A4(op_c[15]), .A5(n77), .Y(n80) );
  AO221X1_HVT U170 ( .A1(op_b[12]), .A2(n82), .A3(n81), .A4(op_c[12]), .A5(n80), .Y(n110) );
  INVX0_HVT U171 ( .A(op_c[1]), .Y(n91) );
  INVX0_HVT U172 ( .A(op_c[0]), .Y(n88) );
  OAI22X1_HVT U173 ( .A1(n85), .A2(op_c[3]), .A3(n84), .A4(op_c[2]), .Y(n83)
         );
  AO221X1_HVT U174 ( .A1(n85), .A2(op_c[3]), .A3(op_c[2]), .A4(n84), .A5(n83), 
        .Y(n86) );
  AO221X1_HVT U175 ( .A1(op_b[0]), .A2(n88), .A3(n87), .A4(op_c[0]), .A5(n86), 
        .Y(n89) );
  AO221X1_HVT U176 ( .A1(n305), .A2(n91), .A3(n90), .A4(op_c[1]), .A5(n89), 
        .Y(n109) );
  AOI22X1_HVT U177 ( .A1(n94), .A2(op_c[6]), .A3(n93), .A4(op_c[7]), .Y(n92)
         );
  OA221X1_HVT U178 ( .A1(n94), .A2(op_c[6]), .A3(n93), .A4(op_c[7]), .A5(n92), 
        .Y(n107) );
  AOI22X1_HVT U179 ( .A1(n97), .A2(op_c[4]), .A3(n96), .A4(op_c[5]), .Y(n95)
         );
  OA221X1_HVT U180 ( .A1(n97), .A2(op_c[4]), .A3(n96), .A4(op_c[5]), .A5(n95), 
        .Y(n106) );
  AOI22X1_HVT U181 ( .A1(n100), .A2(op_c[10]), .A3(n99), .A4(op_c[11]), .Y(n98) );
  OA221X1_HVT U182 ( .A1(n100), .A2(op_c[10]), .A3(n99), .A4(op_c[11]), .A5(
        n98), .Y(n105) );
  AOI22X1_HVT U183 ( .A1(n103), .A2(op_c[8]), .A3(n102), .A4(op_c[9]), .Y(n101) );
  OA221X1_HVT U184 ( .A1(n103), .A2(op_c[8]), .A3(n102), .A4(op_c[9]), .A5(
        n101), .Y(n104) );
  NAND4X0_HVT U185 ( .A1(n107), .A2(n106), .A3(n105), .A4(n104), .Y(n108) );
  OR4X1_HVT U186 ( .A1(n141), .A2(n110), .A3(n109), .A4(n108), .Y(n117) );
  INVX0_HVT U187 ( .A(n111), .Y(n116) );
  NAND2X0_HVT U188 ( .A1(n113), .A2(n112), .Y(n114) );
  NAND2X0_HVT U189 ( .A1(mult_c_out), .A2(n114), .Y(n115) );
  AND3X1_HVT U190 ( .A1(n117), .A2(n116), .A3(n115), .Y(n123) );
  AND3X1_HVT U191 ( .A1(op_code[2]), .A2(n129), .A3(n118), .Y(n133) );
  NAND4X0_HVT U192 ( .A1(op_code[2]), .A2(op_code[0]), .A3(n129), .A4(n119), 
        .Y(n134) );
  INVX0_HVT U193 ( .A(n134), .Y(n120) );
  AOI22X1_HVT U194 ( .A1(n133), .A2(n2), .A3(n120), .A4(cmpr_lte), .Y(n131) );
  NAND2X0_HVT U195 ( .A1(n121), .A2(n1), .Y(n122) );
  NAND3X0_HVT U196 ( .A1(n123), .A2(n131), .A3(n122), .Y(n124) );
  AO221X1_HVT U197 ( .A1(carry_out[1]), .A2(n143), .A3(carry_out[1]), .A4(n125), .A5(n124), .Y(n126) );
  AO22X1_HVT U198 ( .A1(op_d_p), .A2(n127), .A3(n303), .A4(n126), .Y(res_p) );
  INVX0_HVT U199 ( .A(n127), .Y(n132) );
  NAND3X0_HVT U200 ( .A1(n129), .A2(n128), .A3(op_d_p), .Y(n130) );
  NAND4X0_HVT U201 ( .A1(n132), .A2(n131), .A3(n137), .A4(n130), .Y(n283) );
  NAND2X0_HVT U202 ( .A1(n133), .A2(cmpr_gte), .Y(n138) );
  OA22X1_HVT U203 ( .A1(op_d_p), .A2(n135), .A3(cmpr_lte), .A4(n134), .Y(n136)
         );
  NAND3X0_HVT U204 ( .A1(n138), .A2(n137), .A3(n136), .Y(n268) );
  NBUFFX2_HVT U205 ( .A(n268), .Y(n258) );
  INVX0_HVT U206 ( .A(n139), .Y(n267) );
  OA221X1_HVT U207 ( .A1(n258), .A2(n267), .A3(n258), .A4(op_a[0]), .A5(
        op_b[0]), .Y(n152) );
  AND2X1_HVT U208 ( .A1(op_code[0]), .A2(n140), .Y(n269) );
  INVX0_HVT U209 ( .A(n141), .Y(n304) );
  AO22X1_HVT U210 ( .A1(mult_res[16]), .A2(n269), .A3(\add_res[0][0] ), .A4(
        n304), .Y(n151) );
  INVX0_HVT U211 ( .A(n142), .Y(n270) );
  OR2X1_HVT U212 ( .A1(n144), .A2(n143), .Y(n275) );
  AOI22X1_HVT U213 ( .A1(n270), .A2(n145), .A3(\add_res[1][0] ), .A4(n275), 
        .Y(n149) );
  INVX0_HVT U214 ( .A(n146), .Y(n274) );
  AOI22X1_HVT U215 ( .A1(n274), .A2(mult_res[8]), .A3(shift_res[0]), .A4(n273), 
        .Y(n148) );
  NAND2X0_HVT U216 ( .A1(n272), .A2(mult_res[0]), .Y(n147) );
  NAND3X0_HVT U217 ( .A1(n149), .A2(n148), .A3(n147), .Y(n150) );
  OR3X1_HVT U218 ( .A1(n152), .A2(n151), .A3(n150), .Y(n153) );
  AO22X1_HVT U219 ( .A1(op_a[0]), .A2(n283), .A3(n303), .A4(n153), .Y(res[0])
         );
  OA221X1_HVT U220 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[1]), .A5(n305), 
        .Y(n160) );
  AO22X1_HVT U221 ( .A1(n274), .A2(mult_res[9]), .A3(n270), .A4(n154), .Y(n159) );
  AOI22X1_HVT U222 ( .A1(\add_res[0][1] ), .A2(n304), .A3(\add_res[1][1] ), 
        .A4(n275), .Y(n157) );
  AOI22X1_HVT U223 ( .A1(mult_res[17]), .A2(n269), .A3(shift_res[1]), .A4(n273), .Y(n156) );
  NAND2X0_HVT U224 ( .A1(n272), .A2(mult_res[1]), .Y(n155) );
  NAND3X0_HVT U225 ( .A1(n157), .A2(n156), .A3(n155), .Y(n158) );
  OR3X1_HVT U226 ( .A1(n160), .A2(n159), .A3(n158), .Y(n161) );
  AO22X1_HVT U227 ( .A1(op_a[1]), .A2(n283), .A3(n303), .A4(n161), .Y(res[1])
         );
  OA221X1_HVT U228 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[2]), .A5(
        op_b[2]), .Y(n168) );
  AO22X1_HVT U229 ( .A1(n274), .A2(mult_res[10]), .A3(n270), .A4(n162), .Y(
        n167) );
  AOI22X1_HVT U230 ( .A1(\add_res[0][2] ), .A2(n304), .A3(\add_res[1][2] ), 
        .A4(n275), .Y(n165) );
  AOI22X1_HVT U231 ( .A1(mult_res[18]), .A2(n269), .A3(shift_res[2]), .A4(n273), .Y(n164) );
  NAND2X0_HVT U232 ( .A1(n272), .A2(mult_res[2]), .Y(n163) );
  NAND3X0_HVT U233 ( .A1(n165), .A2(n164), .A3(n163), .Y(n166) );
  OR3X1_HVT U234 ( .A1(n168), .A2(n167), .A3(n166), .Y(n169) );
  AO22X1_HVT U235 ( .A1(op_a[2]), .A2(n283), .A3(n303), .A4(n169), .Y(res[2])
         );
  OA221X1_HVT U236 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[3]), .A5(
        op_b[3]), .Y(n176) );
  AO22X1_HVT U237 ( .A1(n274), .A2(mult_res[11]), .A3(n270), .A4(n170), .Y(
        n175) );
  AOI22X1_HVT U238 ( .A1(\add_res[0][3] ), .A2(n304), .A3(\add_res[1][3] ), 
        .A4(n275), .Y(n173) );
  AOI22X1_HVT U239 ( .A1(mult_res[19]), .A2(n269), .A3(shift_res[3]), .A4(n273), .Y(n172) );
  NAND2X0_HVT U240 ( .A1(n272), .A2(mult_res[3]), .Y(n171) );
  NAND3X0_HVT U241 ( .A1(n173), .A2(n172), .A3(n171), .Y(n174) );
  OR3X1_HVT U242 ( .A1(n176), .A2(n175), .A3(n174), .Y(n177) );
  AO22X1_HVT U243 ( .A1(op_a[3]), .A2(n283), .A3(n303), .A4(n177), .Y(res[3])
         );
  OA221X1_HVT U244 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[4]), .A5(
        op_b[4]), .Y(n184) );
  AO22X1_HVT U245 ( .A1(n274), .A2(mult_res[12]), .A3(n270), .A4(n178), .Y(
        n183) );
  AOI22X1_HVT U246 ( .A1(\add_res[0][4] ), .A2(n304), .A3(\add_res[1][4] ), 
        .A4(n275), .Y(n181) );
  AOI22X1_HVT U247 ( .A1(mult_res[20]), .A2(n269), .A3(shift_res[4]), .A4(n273), .Y(n180) );
  NAND2X0_HVT U248 ( .A1(n272), .A2(mult_res[4]), .Y(n179) );
  NAND3X0_HVT U249 ( .A1(n181), .A2(n180), .A3(n179), .Y(n182) );
  OR3X1_HVT U250 ( .A1(n184), .A2(n183), .A3(n182), .Y(n185) );
  AO22X1_HVT U251 ( .A1(op_a[4]), .A2(n283), .A3(n303), .A4(n185), .Y(res[4])
         );
  OA221X1_HVT U252 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[5]), .A5(
        op_b[5]), .Y(n192) );
  AO22X1_HVT U253 ( .A1(n274), .A2(mult_res[13]), .A3(n270), .A4(n186), .Y(
        n191) );
  AOI22X1_HVT U254 ( .A1(\add_res[0][5] ), .A2(n304), .A3(\add_res[1][5] ), 
        .A4(n275), .Y(n189) );
  AOI22X1_HVT U255 ( .A1(mult_res[21]), .A2(n269), .A3(shift_res[5]), .A4(n273), .Y(n188) );
  NAND2X0_HVT U256 ( .A1(n272), .A2(mult_res[5]), .Y(n187) );
  NAND3X0_HVT U257 ( .A1(n189), .A2(n188), .A3(n187), .Y(n190) );
  OR3X1_HVT U258 ( .A1(n192), .A2(n191), .A3(n190), .Y(n193) );
  AO22X1_HVT U259 ( .A1(op_a[5]), .A2(n283), .A3(n303), .A4(n193), .Y(res[5])
         );
  OA221X1_HVT U260 ( .A1(n258), .A2(n267), .A3(n258), .A4(op_a[6]), .A5(
        op_b[6]), .Y(n200) );
  AO22X1_HVT U261 ( .A1(n274), .A2(mult_res[14]), .A3(n270), .A4(n194), .Y(
        n199) );
  AOI22X1_HVT U262 ( .A1(\add_res[0][6] ), .A2(n304), .A3(\add_res[1][6] ), 
        .A4(n275), .Y(n197) );
  AOI22X1_HVT U263 ( .A1(mult_res[22]), .A2(n269), .A3(shift_res[6]), .A4(n273), .Y(n196) );
  NAND2X0_HVT U264 ( .A1(n272), .A2(mult_res[6]), .Y(n195) );
  NAND3X0_HVT U265 ( .A1(n197), .A2(n196), .A3(n195), .Y(n198) );
  OR3X1_HVT U266 ( .A1(n200), .A2(n199), .A3(n198), .Y(n201) );
  AO22X1_HVT U267 ( .A1(op_a[6]), .A2(n283), .A3(n303), .A4(n201), .Y(res[6])
         );
  OA221X1_HVT U268 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[7]), .A5(
        op_b[7]), .Y(n208) );
  AO22X1_HVT U269 ( .A1(n274), .A2(mult_res[15]), .A3(n270), .A4(n202), .Y(
        n207) );
  AOI22X1_HVT U270 ( .A1(\add_res[0][7] ), .A2(n304), .A3(\add_res[1][7] ), 
        .A4(n275), .Y(n205) );
  AOI22X1_HVT U271 ( .A1(mult_res[23]), .A2(n269), .A3(shift_res[7]), .A4(n273), .Y(n204) );
  NAND2X0_HVT U272 ( .A1(n272), .A2(mult_res[7]), .Y(n203) );
  NAND3X0_HVT U273 ( .A1(n205), .A2(n204), .A3(n203), .Y(n206) );
  OR3X1_HVT U274 ( .A1(n208), .A2(n207), .A3(n206), .Y(n209) );
  AO22X1_HVT U275 ( .A1(op_a[7]), .A2(n283), .A3(n303), .A4(n209), .Y(res[7])
         );
  OA221X1_HVT U276 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[8]), .A5(
        op_b[8]), .Y(n216) );
  AO22X1_HVT U277 ( .A1(n274), .A2(mult_res[16]), .A3(n270), .A4(n210), .Y(
        n215) );
  AOI22X1_HVT U278 ( .A1(\add_res[0][8] ), .A2(n304), .A3(\add_res[1][8] ), 
        .A4(n275), .Y(n213) );
  AOI22X1_HVT U279 ( .A1(mult_res[24]), .A2(n269), .A3(shift_res[8]), .A4(n273), .Y(n212) );
  NAND2X0_HVT U280 ( .A1(n272), .A2(mult_res[8]), .Y(n211) );
  NAND3X0_HVT U281 ( .A1(n213), .A2(n212), .A3(n211), .Y(n214) );
  OR3X1_HVT U282 ( .A1(n216), .A2(n215), .A3(n214), .Y(n217) );
  AO22X1_HVT U283 ( .A1(op_a[8]), .A2(n283), .A3(n303), .A4(n217), .Y(res[8])
         );
  OA221X1_HVT U284 ( .A1(n268), .A2(n267), .A3(n258), .A4(op_a[9]), .A5(
        op_b[9]), .Y(n224) );
  AO22X1_HVT U285 ( .A1(n274), .A2(mult_res[17]), .A3(n270), .A4(n218), .Y(
        n223) );
  AOI22X1_HVT U286 ( .A1(\add_res[0][9] ), .A2(n304), .A3(\add_res[1][9] ), 
        .A4(n275), .Y(n221) );
  AOI22X1_HVT U287 ( .A1(mult_res[25]), .A2(n269), .A3(shift_res[9]), .A4(n273), .Y(n220) );
  NAND2X0_HVT U288 ( .A1(n272), .A2(mult_res[9]), .Y(n219) );
  NAND3X0_HVT U289 ( .A1(n221), .A2(n220), .A3(n219), .Y(n222) );
  OR3X1_HVT U290 ( .A1(n224), .A2(n223), .A3(n222), .Y(n225) );
  AO22X1_HVT U291 ( .A1(op_a[9]), .A2(n283), .A3(n303), .A4(n225), .Y(res[9])
         );
  OA221X1_HVT U292 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[10]), .A5(
        op_b[10]), .Y(n232) );
  AO22X1_HVT U293 ( .A1(n274), .A2(mult_res[18]), .A3(n270), .A4(n226), .Y(
        n231) );
  AOI22X1_HVT U294 ( .A1(\add_res[0][10] ), .A2(n304), .A3(\add_res[1][10] ), 
        .A4(n275), .Y(n229) );
  AOI22X1_HVT U295 ( .A1(mult_res[26]), .A2(n269), .A3(shift_res[10]), .A4(
        n273), .Y(n228) );
  NAND2X0_HVT U296 ( .A1(n272), .A2(mult_res[10]), .Y(n227) );
  NAND3X0_HVT U297 ( .A1(n229), .A2(n228), .A3(n227), .Y(n230) );
  OR3X1_HVT U298 ( .A1(n232), .A2(n231), .A3(n230), .Y(n233) );
  AO22X1_HVT U299 ( .A1(op_a[10]), .A2(n283), .A3(n303), .A4(n233), .Y(res[10]) );
  OA221X1_HVT U300 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[11]), .A5(
        op_b[11]), .Y(n240) );
  AO22X1_HVT U301 ( .A1(n274), .A2(mult_res[19]), .A3(n270), .A4(n234), .Y(
        n239) );
  AOI22X1_HVT U302 ( .A1(\add_res[0][11] ), .A2(n304), .A3(\add_res[1][11] ), 
        .A4(n275), .Y(n237) );
  AOI22X1_HVT U303 ( .A1(mult_res[27]), .A2(n269), .A3(shift_res[11]), .A4(
        n273), .Y(n236) );
  NAND2X0_HVT U304 ( .A1(n272), .A2(mult_res[11]), .Y(n235) );
  NAND3X0_HVT U305 ( .A1(n237), .A2(n236), .A3(n235), .Y(n238) );
  OR3X1_HVT U306 ( .A1(n240), .A2(n239), .A3(n238), .Y(n241) );
  AO22X1_HVT U307 ( .A1(op_a[11]), .A2(n283), .A3(n303), .A4(n241), .Y(res[11]) );
  OA221X1_HVT U308 ( .A1(n268), .A2(n267), .A3(n258), .A4(op_a[12]), .A5(
        op_b[12]), .Y(n248) );
  AO22X1_HVT U309 ( .A1(n274), .A2(mult_res[20]), .A3(n270), .A4(n242), .Y(
        n247) );
  AOI22X1_HVT U310 ( .A1(\add_res[0][12] ), .A2(n304), .A3(\add_res[1][12] ), 
        .A4(n275), .Y(n245) );
  AOI22X1_HVT U311 ( .A1(mult_res[28]), .A2(n269), .A3(shift_res[12]), .A4(
        n273), .Y(n244) );
  NAND2X0_HVT U312 ( .A1(n272), .A2(mult_res[12]), .Y(n243) );
  NAND3X0_HVT U313 ( .A1(n245), .A2(n244), .A3(n243), .Y(n246) );
  OR3X1_HVT U314 ( .A1(n248), .A2(n247), .A3(n246), .Y(n249) );
  AO22X1_HVT U315 ( .A1(op_a[12]), .A2(n283), .A3(n303), .A4(n249), .Y(res[12]) );
  OA221X1_HVT U316 ( .A1(n258), .A2(n267), .A3(n268), .A4(op_a[13]), .A5(
        op_b[13]), .Y(n256) );
  AO22X1_HVT U317 ( .A1(n274), .A2(mult_res[21]), .A3(n270), .A4(n250), .Y(
        n255) );
  AOI22X1_HVT U318 ( .A1(\add_res[0][13] ), .A2(n304), .A3(\add_res[1][13] ), 
        .A4(n275), .Y(n253) );
  AOI22X1_HVT U319 ( .A1(mult_res[29]), .A2(n269), .A3(shift_res[13]), .A4(
        n273), .Y(n252) );
  NAND2X0_HVT U320 ( .A1(n272), .A2(mult_res[13]), .Y(n251) );
  NAND3X0_HVT U321 ( .A1(n253), .A2(n252), .A3(n251), .Y(n254) );
  OR3X1_HVT U322 ( .A1(n256), .A2(n255), .A3(n254), .Y(n257) );
  AO22X1_HVT U323 ( .A1(op_a[13]), .A2(n283), .A3(n303), .A4(n257), .Y(res[13]) );
  OA221X1_HVT U324 ( .A1(n268), .A2(n267), .A3(n258), .A4(op_a[14]), .A5(
        op_b[14]), .Y(n265) );
  AO22X1_HVT U325 ( .A1(n274), .A2(mult_res[22]), .A3(n270), .A4(n259), .Y(
        n264) );
  AOI22X1_HVT U326 ( .A1(\add_res[0][14] ), .A2(n304), .A3(\add_res[1][14] ), 
        .A4(n275), .Y(n262) );
  AOI22X1_HVT U327 ( .A1(mult_res[30]), .A2(n269), .A3(shift_res[14]), .A4(
        n273), .Y(n261) );
  NAND2X0_HVT U328 ( .A1(n272), .A2(mult_res[14]), .Y(n260) );
  NAND3X0_HVT U329 ( .A1(n262), .A2(n261), .A3(n260), .Y(n263) );
  OR3X1_HVT U330 ( .A1(n265), .A2(n264), .A3(n263), .Y(n266) );
  AO22X1_HVT U331 ( .A1(op_a[14]), .A2(n283), .A3(n303), .A4(n266), .Y(res[14]) );
  OA221X1_HVT U332 ( .A1(n268), .A2(op_a[15]), .A3(n268), .A4(n267), .A5(
        op_b[15]), .Y(n281) );
  AO22X1_HVT U333 ( .A1(\add_res[0][15] ), .A2(n304), .A3(mult_res[31]), .A4(
        n269), .Y(n280) );
  AOI22X1_HVT U334 ( .A1(n272), .A2(mult_res[15]), .A3(n271), .A4(n270), .Y(
        n278) );
  AOI22X1_HVT U335 ( .A1(n274), .A2(mult_res[23]), .A3(shift_res[15]), .A4(
        n273), .Y(n277) );
  NAND2X0_HVT U336 ( .A1(\add_res[1][15] ), .A2(n275), .Y(n276) );
  NAND3X0_HVT U337 ( .A1(n278), .A2(n277), .A3(n276), .Y(n279) );
  OR3X1_HVT U338 ( .A1(n281), .A2(n280), .A3(n279), .Y(n282) );
  AO22X1_HVT U339 ( .A1(op_a[15]), .A2(n283), .A3(n303), .A4(n282), .Y(res[15]) );
  NAND2X0_HVT U340 ( .A1(\add_res[0][15] ), .A2(n284), .Y(n302) );
  INVX0_HVT U341 ( .A(\add_res[0][0] ), .Y(n285) );
  AO22X1_HVT U342 ( .A1(\add_res[0][0] ), .A2(n302), .A3(n285), .A4(
        add_c_in[1]), .Y(\add_a[1][0] ) );
  AO22X1_HVT U343 ( .A1(\add_res[0][1] ), .A2(n302), .A3(n286), .A4(
        add_c_in[1]), .Y(\add_a[1][1] ) );
  AO22X1_HVT U344 ( .A1(\add_res[0][2] ), .A2(n302), .A3(n287), .A4(
        add_c_in[1]), .Y(\add_a[1][2] ) );
  AO22X1_HVT U345 ( .A1(\add_res[0][3] ), .A2(n302), .A3(n288), .A4(
        add_c_in[1]), .Y(\add_a[1][3] ) );
  AO22X1_HVT U346 ( .A1(\add_res[0][4] ), .A2(n302), .A3(n289), .A4(
        add_c_in[1]), .Y(\add_a[1][4] ) );
  AO22X1_HVT U347 ( .A1(\add_res[0][5] ), .A2(n302), .A3(n290), .A4(
        add_c_in[1]), .Y(\add_a[1][5] ) );
  AO22X1_HVT U348 ( .A1(\add_res[0][6] ), .A2(n302), .A3(n291), .A4(
        add_c_in[1]), .Y(\add_a[1][6] ) );
  AO22X1_HVT U349 ( .A1(\add_res[0][7] ), .A2(n302), .A3(n293), .A4(
        add_c_in[1]), .Y(\add_a[1][7] ) );
  AO22X1_HVT U350 ( .A1(\add_res[0][8] ), .A2(n302), .A3(n295), .A4(
        add_c_in[1]), .Y(\add_a[1][8] ) );
  AO22X1_HVT U351 ( .A1(\add_res[0][9] ), .A2(n302), .A3(n296), .A4(
        add_c_in[1]), .Y(\add_a[1][9] ) );
  AO22X1_HVT U352 ( .A1(\add_res[0][10] ), .A2(n302), .A3(n297), .A4(
        add_c_in[1]), .Y(\add_a[1][10] ) );
  AO22X1_HVT U353 ( .A1(\add_res[0][11] ), .A2(n302), .A3(n298), .A4(
        add_c_in[1]), .Y(\add_a[1][11] ) );
  AO22X1_HVT U354 ( .A1(\add_res[0][12] ), .A2(n302), .A3(n299), .A4(
        add_c_in[1]), .Y(\add_a[1][12] ) );
  INVX0_HVT U355 ( .A(\add_res[0][13] ), .Y(n300) );
  AO22X1_HVT U356 ( .A1(\add_res[0][13] ), .A2(n302), .A3(n300), .A4(
        add_c_in[1]), .Y(\add_a[1][13] ) );
  INVX0_HVT U357 ( .A(\add_res[0][14] ), .Y(n301) );
  AO22X1_HVT U358 ( .A1(\add_res[0][14] ), .A2(n302), .A3(n301), .A4(
        add_c_in[1]), .Y(\add_a[1][14] ) );
  AND2X1_HVT U359 ( .A1(n304), .A2(n303), .Y(cntr_en) );
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
        \add_res[0][15] ), .is_signed(op_code[6]), .eq(n294), .lte(cmpr_lte), 
        .gte_BAR(cmpr_gte) );
  test_mult_add_DataWidth16_0 test_mult_add ( .is_signed(op_code[6]), .a(op_a), 
        .b({op_b[15:2], n305, op_b[0]}), .c(op_c), .res(mult_res), .c_out(
        mult_c_out) );
  test_shifter_unq1_DataWidth16_0 test_shifter ( .is_signed(op_code[6]), 
        .dir_left(n292), .a(op_a), .b({op_b[3:2], n305, op_b[0]}), .res(
        shift_res) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_lut_DataWidth1_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
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
  wire   N4, net826, n1, n2, n3, n4, n5, n6;

  SDFFARX1_HVT \GEN_LUT[0].lut_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[7]) );
  SDFFARX1_HVT \GEN_LUT[0].lut_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[6]) );
  SDFFARX1_HVT \GEN_LUT[0].lut_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[5]) );
  SDFFARX1_HVT \GEN_LUT[0].lut_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[4]) );
  SDFFARX1_HVT \GEN_LUT[0].lut_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[3]) );
  SDFFARX1_HVT \GEN_LUT[0].lut_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[2]) );
  SDFFARX1_HVT \GEN_LUT[0].lut_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[1]) );
  SDFFARX1_HVT \GEN_LUT[0].lut_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), 
        .CLK(net826), .RSTB(cfg_rst_n), .Q(read_data[0]) );
  NOR4X1_HVT U2 ( .A1(cfg_a[7]), .A2(cfg_a[5]), .A3(cfg_a[4]), .A4(cfg_a[6]), 
        .Y(n1) );
  NAND2X0_HVT U3 ( .A1(n1), .A2(cfg_en), .Y(n2) );
  OR3X1_HVT U4 ( .A1(cfg_a[2]), .A2(cfg_a[0]), .A3(n2), .Y(n3) );
  NOR3X0_HVT U5 ( .A1(cfg_a[1]), .A2(cfg_a[3]), .A3(n3), .Y(N4) );
  MUX41X1_HVT U6 ( .A1(read_data[2]), .A3(read_data[6]), .A2(read_data[3]), 
        .A4(read_data[7]), .S0(op_c_in), .S1(op_a_in[0]), .Y(n6) );
  INVX0_HVT U7 ( .A(op_b_in[0]), .Y(n5) );
  MUX41X1_HVT U8 ( .A1(read_data[0]), .A3(read_data[4]), .A2(read_data[1]), 
        .A4(read_data[5]), .S0(op_c_in), .S1(op_a_in[0]), .Y(n4) );
  AO22X1_HVT U9 ( .A1(op_b_in[0]), .A2(n6), .A3(n5), .A4(n4), .Y(res[0]) );
  SNPS_CLOCK_GATE_HIGH_test_lut_DataWidth1_0 \clk_gate_GEN_LUT[0].lut_reg  ( 
        .CLK(cfg_clk), .EN(N4), .ENCLK(net826), .TE(1'b0) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_debug_reg_DataWidth16_0 ( CLK, EN, ENCLK, TE
 );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
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

  SDFFARX1_HVT \debug_val_reg[15]  ( .D(cfg_d[15]), .SI(1'b0), .SE(1'b0), 
        .CLK(net808), .RSTB(cfg_rst_n), .Q(read_data[15]), .QN(n25) );
  SDFFARX1_HVT \debug_val_reg[14]  ( .D(cfg_d[14]), .SI(1'b0), .SE(1'b0), 
        .CLK(net808), .RSTB(cfg_rst_n), .Q(read_data[14]), .QN(n29) );
  SDFFARX1_HVT \debug_val_reg[13]  ( .D(cfg_d[13]), .SI(1'b0), .SE(1'b0), 
        .CLK(net808), .RSTB(cfg_rst_n), .Q(read_data[13]), .QN(n26) );
  SDFFARX1_HVT \debug_val_reg[12]  ( .D(cfg_d[12]), .SI(1'b0), .SE(1'b0), 
        .CLK(net808), .RSTB(cfg_rst_n), .Q(read_data[12]), .QN(n30) );
  SDFFARX1_HVT \debug_val_reg[11]  ( .D(cfg_d[11]), .SI(1'b0), .SE(1'b0), 
        .CLK(net808), .RSTB(cfg_rst_n), .Q(read_data[11]), .QN(n23) );
  SDFFARX1_HVT \debug_val_reg[10]  ( .D(cfg_d[10]), .SI(1'b0), .SE(1'b0), 
        .CLK(net808), .RSTB(cfg_rst_n), .Q(read_data[10]), .QN(n27) );
  SDFFARX1_HVT \debug_val_reg[9]  ( .D(cfg_d[9]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[9]), .QN(n24) );
  SDFFARX1_HVT \debug_val_reg[8]  ( .D(cfg_d[8]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[8]), .QN(n28) );
  SDFFARX1_HVT \debug_val_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[7]), .QN(n21) );
  SDFFARX1_HVT \debug_val_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[6]), .QN(n32) );
  SDFFARX1_HVT \debug_val_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[5]), .QN(n22) );
  SDFFARX1_HVT \debug_val_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[4]), .QN(n33) );
  SDFFARX1_HVT \debug_val_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[3]), .QN(n19) );
  SDFFARX1_HVT \debug_val_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[2]), .QN(n31) );
  SDFFARX1_HVT \debug_val_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[1]), .QN(n20) );
  SDFFARX1_HVT \debug_val_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), .CLK(
        net808), .RSTB(cfg_rst_n), .Q(read_data[0]), .QN(n34) );
  AOI22X1_HVT U2 ( .A1(n27), .A2(data_in[10]), .A3(n23), .A4(data_in[11]), .Y(
        n1) );
  OA221X1_HVT U3 ( .A1(n27), .A2(data_in[10]), .A3(n23), .A4(data_in[11]), 
        .A5(n1), .Y(n8) );
  AOI22X1_HVT U4 ( .A1(n28), .A2(data_in[8]), .A3(n24), .A4(data_in[9]), .Y(n2) );
  OA221X1_HVT U5 ( .A1(n28), .A2(data_in[8]), .A3(n24), .A4(data_in[9]), .A5(
        n2), .Y(n7) );
  AOI22X1_HVT U6 ( .A1(n29), .A2(data_in[14]), .A3(n25), .A4(data_in[15]), .Y(
        n3) );
  OA221X1_HVT U7 ( .A1(n29), .A2(data_in[14]), .A3(n25), .A4(data_in[15]), 
        .A5(n3), .Y(n6) );
  AOI22X1_HVT U8 ( .A1(n30), .A2(data_in[12]), .A3(n26), .A4(data_in[13]), .Y(
        n4) );
  OA221X1_HVT U9 ( .A1(n30), .A2(data_in[12]), .A3(n26), .A4(data_in[13]), 
        .A5(n4), .Y(n5) );
  NAND4X0_HVT U10 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .Y(n18) );
  AOI22X1_HVT U11 ( .A1(n31), .A2(data_in[2]), .A3(n19), .A4(data_in[3]), .Y(
        n9) );
  OA221X1_HVT U12 ( .A1(n31), .A2(data_in[2]), .A3(n19), .A4(data_in[3]), .A5(
        n9), .Y(n16) );
  AOI22X1_HVT U13 ( .A1(n34), .A2(data_in[0]), .A3(n20), .A4(data_in[1]), .Y(
        n10) );
  OA221X1_HVT U14 ( .A1(n34), .A2(data_in[0]), .A3(n20), .A4(data_in[1]), .A5(
        n10), .Y(n15) );
  AOI22X1_HVT U15 ( .A1(n32), .A2(data_in[6]), .A3(n21), .A4(data_in[7]), .Y(
        n11) );
  OA221X1_HVT U16 ( .A1(n32), .A2(data_in[6]), .A3(n21), .A4(data_in[7]), .A5(
        n11), .Y(n14) );
  AOI22X1_HVT U17 ( .A1(n33), .A2(data_in[4]), .A3(n22), .A4(data_in[5]), .Y(
        n12) );
  OA221X1_HVT U18 ( .A1(n33), .A2(data_in[4]), .A3(n22), .A4(data_in[5]), .A5(
        n12), .Y(n13) );
  NAND4X0_HVT U19 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .Y(n17) );
  OR2X1_HVT U20 ( .A1(n18), .A2(n17), .Y(debug_irq) );
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
  wire   n4, n1;

  SDFFARX1_HVT \debug_val_reg[0]  ( .D(n4), .SI(1'b0), .SE(1'b0), .CLK(cfg_clk), .RSTB(cfg_rst_n), .Q(read_data[0]) );
  HADDX1_HVT U2 ( .A0(read_data[0]), .B0(data_in[0]), .SO(debug_irq) );
  INVX0_HVT U4 ( .A(cfg_en), .Y(n1) );
  AO22X1_HVT U5 ( .A1(cfg_en), .A2(cfg_d[0]), .A3(n1), .A4(read_data[0]), .Y(
        n4) );
endmodule


module SNPS_CLOCK_GATE_HIGH_test_pe_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
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
         \read_data_debug_bit[0] , net790, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272;
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

  SDFFARX1_HVT \op_code_reg[15]  ( .D(cfg_d[15]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[15]), .QN(n269) );
  SDFFARX1_HVT \op_code_reg[14]  ( .D(cfg_d[14]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[14]), .QN(n270) );
  SDFFARX1_HVT \op_code_reg[13]  ( .D(cfg_d[13]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[13]), .QN(n268) );
  SDFFARX1_HVT \op_code_reg[12]  ( .D(cfg_d[12]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[12]), .QN(n271) );
  SDFFARX1_HVT \op_code_reg[11]  ( .D(cfg_d[11]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[11]) );
  SDFFARX1_HVT \op_code_reg[10]  ( .D(cfg_d[10]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[10]) );
  SDFFARX1_HVT \op_code_reg[9]  ( .D(cfg_d[9]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[9]) );
  SDFFARX1_HVT \op_code_reg[8]  ( .D(cfg_d[8]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[8]) );
  SDFFARX1_HVT \op_code_reg[7]  ( .D(cfg_d[7]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[7]) );
  SDFFARX1_HVT \op_code_reg[6]  ( .D(cfg_d[6]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[6]) );
  SDFFARX1_HVT \op_code_reg[5]  ( .D(cfg_d[5]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[5]) );
  SDFFARX1_HVT \op_code_reg[4]  ( .D(cfg_d[4]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[4]) );
  SDFFARX1_HVT \op_code_reg[3]  ( .D(cfg_d[3]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[3]) );
  SDFFARX1_HVT \op_code_reg[2]  ( .D(cfg_d[2]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[2]) );
  SDFFARX1_HVT \op_code_reg[1]  ( .D(cfg_d[1]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[1]) );
  SDFFARX1_HVT \op_code_reg[0]  ( .D(cfg_d[0]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(op_code[0]) );
  SDFFARX1_HVT \inp_code_reg[15]  ( .D(cfg_d[31]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(inp_code[15]) );
  SDFFARX1_HVT \inp_code_reg[14]  ( .D(cfg_d[30]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(inp_code[14]) );
  SDFFARX1_HVT \inp_code_reg[13]  ( .D(cfg_d[29]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(inp_code[13]) );
  SDFFARX1_HVT \inp_code_reg[12]  ( .D(cfg_d[28]), .SI(1'b0), .SE(1'b0), .CLK(
        net790), .RSTB(rst_n), .Q(inp_code[12]) );
  SDFFARX1_HVT \inp_code_reg[11]  ( .D(cfg_d[27]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[11]) );
  SDFFARX1_HVT \inp_code_reg[10]  ( .D(cfg_d[26]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[10]) );
  SDFFARX1_HVT \inp_code_reg[9]  ( .D(cfg_d[25]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[9]) );
  SDFFARX1_HVT \inp_code_reg[8]  ( .D(cfg_d[24]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[8]) );
  SDFFARX1_HVT \inp_code_reg[7]  ( .D(cfg_d[23]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[7]) );
  SDFFARX1_HVT \inp_code_reg[6]  ( .D(cfg_d[22]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[6]) );
  SDFFARX1_HVT \inp_code_reg[5]  ( .D(cfg_d[21]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[5]) );
  SDFFARX1_HVT \inp_code_reg[4]  ( .D(cfg_d[20]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[4]) );
  SDFFARX1_HVT \inp_code_reg[3]  ( .D(cfg_d[19]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[3]) );
  SDFFARX1_HVT \inp_code_reg[2]  ( .D(cfg_d[18]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[2]) );
  SDFFARX1_HVT \inp_code_reg[1]  ( .D(cfg_d[17]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[1]) );
  SDFFARX1_HVT \inp_code_reg[0]  ( .D(cfg_d[16]), .SI(1'b0), .SE(1'b0), .CLK(
        n272), .RSTB(rst_n), .Q(inp_code[0]) );
  NBUFFX2_HVT U178 ( .A(n261), .Y(n160) );
  OR2X2_HVT U179 ( .A1(op_code[9]), .A2(cntr_en), .Y(n262) );
  NBUFFX2_HVT U180 ( .A(n261), .Y(n161) );
  NAND3X0_HVT U181 ( .A1(cfg_a[5]), .A2(cfg_a[6]), .A3(cfg_a[7]), .Y(n184) );
  NOR4X1_HVT U182 ( .A1(cfg_a[2]), .A2(cfg_a[3]), .A3(cfg_a[0]), .A4(n184), 
        .Y(n171) );
  AND3X1_HVT U183 ( .A1(cfg_a[1]), .A2(cfg_a[4]), .A3(n171), .Y(n231) );
  AND2X1_HVT U184 ( .A1(n231), .A2(cfg_en), .Y(_1_net_) );
  NOR3X0_HVT U185 ( .A1(cfg_a[2]), .A2(cfg_a[3]), .A3(n184), .Y(n162) );
  AND2X1_HVT U186 ( .A1(n162), .A2(cfg_a[0]), .Y(n163) );
  INVX0_HVT U187 ( .A(cfg_a[1]), .Y(n176) );
  AND3X1_HVT U188 ( .A1(cfg_a[4]), .A2(n163), .A3(n176), .Y(n233) );
  NAND2X0_HVT U189 ( .A1(n233), .A2(cfg_en), .Y(n264) );
  INVX0_HVT U190 ( .A(n264), .Y(n266) );
  AO21X1_HVT U191 ( .A1(clk_en), .A2(n262), .A3(n266), .Y(op_b_ld) );
  AND3X1_HVT U192 ( .A1(cfg_a[4]), .A2(n171), .A3(n176), .Y(n232) );
  AND2X1_HVT U193 ( .A1(n232), .A2(cfg_en), .Y(_0_net_) );
  INVX0_HVT U194 ( .A(cfg_a[4]), .Y(n175) );
  AND4X1_HVT U195 ( .A1(n163), .A2(cfg_en), .A3(n176), .A4(n175), .Y(_6_net_)
         );
  INVX0_HVT U196 ( .A(cfg_a[3]), .Y(n178) );
  AND4X1_HVT U197 ( .A1(cfg_a[5]), .A2(cfg_a[6]), .A3(cfg_a[7]), .A4(n178), 
        .Y(n167) );
  AND3X1_HVT U198 ( .A1(cfg_a[4]), .A2(cfg_a[2]), .A3(n176), .Y(n165) );
  AND4X1_HVT U199 ( .A1(cfg_a[0]), .A2(n167), .A3(n165), .A4(cfg_en), .Y(
        _4_net_) );
  INVX0_HVT U200 ( .A(cfg_a[0]), .Y(n183) );
  AND4X1_HVT U201 ( .A1(n167), .A2(n165), .A3(cfg_en), .A4(n183), .Y(_3_net_)
         );
  AND4X1_HVT U202 ( .A1(cfg_a[1]), .A2(cfg_a[4]), .A3(n163), .A4(cfg_en), .Y(
        _2_net_) );
  AOI22X1_HVT U203 ( .A1(n233), .A2(op_b_reg[0]), .A3(n231), .A4(op_c_reg[0]), 
        .Y(n174) );
  INVX0_HVT U204 ( .A(cfg_a[2]), .Y(n179) );
  OA221X1_HVT U205 ( .A1(n175), .A2(cfg_a[1]), .A3(n175), .A4(op_d_p_reg), 
        .A5(n179), .Y(n164) );
  AO222X1_HVT U206 ( .A1(n165), .A2(op_f_p_reg), .A3(n165), .A4(n183), .A5(
        cfg_a[0]), .A6(n164), .Y(n166) );
  OA221X1_HVT U207 ( .A1(cfg_a[4]), .A2(\read_data_debug_bit[0] ), .A3(
        cfg_a[4]), .A4(n176), .A5(n166), .Y(n168) );
  AND2X1_HVT U208 ( .A1(n168), .A2(n167), .Y(n170) );
  OR2X1_HVT U209 ( .A1(op_e_p_reg), .A2(cfg_a[0]), .Y(n169) );
  NAND2X0_HVT U210 ( .A1(n170), .A2(n169), .Y(n173) );
  AND3X1_HVT U211 ( .A1(n176), .A2(n175), .A3(n171), .Y(n260) );
  NAND2X0_HVT U212 ( .A1(read_data_debug_data[0]), .A2(n260), .Y(n172) );
  AND3X1_HVT U213 ( .A1(n174), .A2(n173), .A3(n172), .Y(n187) );
  NAND2X0_HVT U214 ( .A1(n176), .A2(n175), .Y(n181) );
  INVX0_HVT U215 ( .A(cfg_a[7]), .Y(n177) );
  NAND4X0_HVT U216 ( .A1(n179), .A2(n178), .A3(n177), .A4(n183), .Y(n180) );
  NOR4X1_HVT U217 ( .A1(cfg_a[5]), .A2(cfg_a[6]), .A3(n181), .A4(n180), .Y(
        n206) );
  NAND4X0_HVT U218 ( .A1(cfg_a[1]), .A2(cfg_a[4]), .A3(cfg_a[2]), .A4(cfg_a[3]), .Y(n182) );
  NOR3X0_HVT U219 ( .A1(n184), .A2(n183), .A3(n182), .Y(n261) );
  AOI22X1_HVT U220 ( .A1(n206), .A2(read_data_lut[0]), .A3(n161), .A4(
        op_code[0]), .Y(n186) );
  NAND2X0_HVT U221 ( .A1(n232), .A2(op_a_reg[0]), .Y(n185) );
  NAND3X0_HVT U222 ( .A1(n187), .A2(n186), .A3(n185), .Y(read_data[0]) );
  AO22X1_HVT U223 ( .A1(n206), .A2(read_data_lut[1]), .A3(n161), .A4(
        op_code[1]), .Y(n190) );
  AO22X1_HVT U224 ( .A1(n232), .A2(op_a_reg[1]), .A3(n260), .A4(
        read_data_debug_data[1]), .Y(n189) );
  AO22X1_HVT U225 ( .A1(n233), .A2(op_b_reg[1]), .A3(n231), .A4(op_c_reg[1]), 
        .Y(n188) );
  OR3X1_HVT U226 ( .A1(n190), .A2(n189), .A3(n188), .Y(read_data[1]) );
  AO22X1_HVT U227 ( .A1(n206), .A2(read_data_lut[2]), .A3(n160), .A4(
        op_code[2]), .Y(n193) );
  AO22X1_HVT U228 ( .A1(n232), .A2(op_a_reg[2]), .A3(n260), .A4(
        read_data_debug_data[2]), .Y(n192) );
  AO22X1_HVT U229 ( .A1(n233), .A2(op_b_reg[2]), .A3(n231), .A4(op_c_reg[2]), 
        .Y(n191) );
  OR3X1_HVT U230 ( .A1(n193), .A2(n192), .A3(n191), .Y(read_data[2]) );
  AO22X1_HVT U231 ( .A1(n206), .A2(read_data_lut[3]), .A3(n161), .A4(
        op_code[3]), .Y(n196) );
  AO22X1_HVT U232 ( .A1(n232), .A2(op_a_reg[3]), .A3(n260), .A4(
        read_data_debug_data[3]), .Y(n195) );
  AO22X1_HVT U233 ( .A1(n233), .A2(op_b_reg[3]), .A3(n231), .A4(op_c_reg[3]), 
        .Y(n194) );
  OR3X1_HVT U234 ( .A1(n196), .A2(n195), .A3(n194), .Y(read_data[3]) );
  AO22X1_HVT U235 ( .A1(n206), .A2(read_data_lut[4]), .A3(n161), .A4(
        op_code[4]), .Y(n199) );
  AO22X1_HVT U236 ( .A1(n232), .A2(op_a_reg[4]), .A3(n260), .A4(
        read_data_debug_data[4]), .Y(n198) );
  AO22X1_HVT U237 ( .A1(n233), .A2(op_b_reg[4]), .A3(n231), .A4(op_c_reg[4]), 
        .Y(n197) );
  OR3X1_HVT U238 ( .A1(n199), .A2(n198), .A3(n197), .Y(read_data[4]) );
  AO22X1_HVT U239 ( .A1(n206), .A2(read_data_lut[5]), .A3(n161), .A4(
        op_code[5]), .Y(n202) );
  AO22X1_HVT U240 ( .A1(n232), .A2(op_a_reg[5]), .A3(n260), .A4(
        read_data_debug_data[5]), .Y(n201) );
  AO22X1_HVT U241 ( .A1(n233), .A2(op_b_reg[5]), .A3(n231), .A4(op_c_reg[5]), 
        .Y(n200) );
  OR3X1_HVT U242 ( .A1(n202), .A2(n201), .A3(n200), .Y(read_data[5]) );
  AO22X1_HVT U243 ( .A1(n206), .A2(read_data_lut[6]), .A3(n160), .A4(
        op_code[6]), .Y(n205) );
  AO22X1_HVT U244 ( .A1(n232), .A2(op_a_reg[6]), .A3(n260), .A4(
        read_data_debug_data[6]), .Y(n204) );
  AO22X1_HVT U245 ( .A1(n233), .A2(op_b_reg[6]), .A3(n231), .A4(op_c_reg[6]), 
        .Y(n203) );
  OR3X1_HVT U246 ( .A1(n205), .A2(n204), .A3(n203), .Y(read_data[6]) );
  AO22X1_HVT U247 ( .A1(n206), .A2(read_data_lut[7]), .A3(n161), .A4(
        op_code[7]), .Y(n209) );
  AO22X1_HVT U248 ( .A1(n232), .A2(op_a_reg[7]), .A3(n260), .A4(
        read_data_debug_data[7]), .Y(n208) );
  AO22X1_HVT U249 ( .A1(n233), .A2(op_b_reg[7]), .A3(n231), .A4(op_c_reg[7]), 
        .Y(n207) );
  OR3X1_HVT U250 ( .A1(n209), .A2(n208), .A3(n207), .Y(read_data[7]) );
  AOI22X1_HVT U251 ( .A1(n232), .A2(op_a_reg[8]), .A3(n231), .A4(op_c_reg[8]), 
        .Y(n212) );
  AOI22X1_HVT U252 ( .A1(n161), .A2(op_code[8]), .A3(n260), .A4(
        read_data_debug_data[8]), .Y(n211) );
  NAND2X0_HVT U253 ( .A1(n233), .A2(op_b_reg[8]), .Y(n210) );
  NAND3X0_HVT U254 ( .A1(n212), .A2(n211), .A3(n210), .Y(read_data[8]) );
  AOI22X1_HVT U255 ( .A1(n232), .A2(op_a_reg[9]), .A3(n231), .A4(op_c_reg[9]), 
        .Y(n215) );
  AOI22X1_HVT U256 ( .A1(n160), .A2(op_code[9]), .A3(n260), .A4(
        read_data_debug_data[9]), .Y(n214) );
  NAND2X0_HVT U257 ( .A1(n233), .A2(op_b_reg[9]), .Y(n213) );
  NAND3X0_HVT U258 ( .A1(n215), .A2(n214), .A3(n213), .Y(read_data[9]) );
  AOI22X1_HVT U259 ( .A1(n232), .A2(op_a_reg[10]), .A3(n231), .A4(op_c_reg[10]), .Y(n218) );
  AOI22X1_HVT U260 ( .A1(n161), .A2(op_code[10]), .A3(n260), .A4(
        read_data_debug_data[10]), .Y(n217) );
  NAND2X0_HVT U261 ( .A1(n233), .A2(op_b_reg[10]), .Y(n216) );
  NAND3X0_HVT U262 ( .A1(n218), .A2(n217), .A3(n216), .Y(read_data[10]) );
  AOI22X1_HVT U263 ( .A1(n232), .A2(op_a_reg[11]), .A3(n231), .A4(op_c_reg[11]), .Y(n221) );
  AOI22X1_HVT U264 ( .A1(n160), .A2(op_code[11]), .A3(n260), .A4(
        read_data_debug_data[11]), .Y(n220) );
  NAND2X0_HVT U265 ( .A1(n233), .A2(op_b_reg[11]), .Y(n219) );
  NAND3X0_HVT U266 ( .A1(n221), .A2(n220), .A3(n219), .Y(read_data[11]) );
  AOI22X1_HVT U267 ( .A1(n232), .A2(op_a_reg[12]), .A3(n231), .A4(op_c_reg[12]), .Y(n224) );
  AOI22X1_HVT U268 ( .A1(op_code[12]), .A2(n161), .A3(n260), .A4(
        read_data_debug_data[12]), .Y(n223) );
  NAND2X0_HVT U269 ( .A1(n233), .A2(op_b_reg[12]), .Y(n222) );
  NAND3X0_HVT U270 ( .A1(n224), .A2(n223), .A3(n222), .Y(read_data[12]) );
  AOI22X1_HVT U271 ( .A1(n232), .A2(op_a_reg[13]), .A3(n231), .A4(op_c_reg[13]), .Y(n227) );
  AOI22X1_HVT U272 ( .A1(op_code[13]), .A2(n160), .A3(n260), .A4(
        read_data_debug_data[13]), .Y(n226) );
  NAND2X0_HVT U273 ( .A1(n233), .A2(op_b_reg[13]), .Y(n225) );
  NAND3X0_HVT U274 ( .A1(n227), .A2(n226), .A3(n225), .Y(read_data[13]) );
  AOI22X1_HVT U275 ( .A1(n232), .A2(op_a_reg[14]), .A3(n231), .A4(op_c_reg[14]), .Y(n230) );
  AOI22X1_HVT U276 ( .A1(op_code[14]), .A2(n161), .A3(n260), .A4(
        read_data_debug_data[14]), .Y(n229) );
  NAND2X0_HVT U277 ( .A1(n233), .A2(op_b_reg[14]), .Y(n228) );
  NAND3X0_HVT U278 ( .A1(n230), .A2(n229), .A3(n228), .Y(read_data[14]) );
  AOI22X1_HVT U279 ( .A1(n232), .A2(op_a_reg[15]), .A3(n231), .A4(op_c_reg[15]), .Y(n236) );
  AOI22X1_HVT U280 ( .A1(op_code[15]), .A2(n160), .A3(n260), .A4(
        read_data_debug_data[15]), .Y(n235) );
  NAND2X0_HVT U281 ( .A1(n233), .A2(op_b_reg[15]), .Y(n234) );
  NAND3X0_HVT U282 ( .A1(n236), .A2(n235), .A3(n234), .Y(read_data[15]) );
  INVX0_HVT U283 ( .A(V), .Y(n237) );
  AO22X1_HVT U284 ( .A1(op_code[15]), .A2(comp_res_p), .A3(n269), .A4(n237), 
        .Y(n240) );
  INVX0_HVT U285 ( .A(comp_res[15]), .Y(n238) );
  OA221X1_HVT U286 ( .A1(V), .A2(n238), .A3(n237), .A4(comp_res[15]), .A5(
        op_code[15]), .Y(n249) );
  AO21X1_HVT U287 ( .A1(\carry_out[1] ), .A2(n269), .A3(n249), .Y(n252) );
  INVX0_HVT U288 ( .A(n252), .Y(n239) );
  AO221X1_HVT U289 ( .A1(op_code[14]), .A2(n240), .A3(n270), .A4(n239), .A5(
        n268), .Y(n259) );
  AND2X1_HVT U290 ( .A1(comp_res[15]), .A2(n269), .Y(n245) );
  NOR4X1_HVT U291 ( .A1(comp_res[15]), .A2(comp_res[14]), .A3(comp_res[13]), 
        .A4(comp_res[12]), .Y(n244) );
  NOR4X1_HVT U292 ( .A1(comp_res[11]), .A2(comp_res[10]), .A3(comp_res[9]), 
        .A4(comp_res[8]), .Y(n243) );
  NOR4X1_HVT U293 ( .A1(comp_res[7]), .A2(comp_res[6]), .A3(comp_res[5]), .A4(
        comp_res[4]), .Y(n242) );
  NOR4X1_HVT U294 ( .A1(comp_res[3]), .A2(comp_res[2]), .A3(comp_res[1]), .A4(
        comp_res[0]), .Y(n241) );
  NAND4X0_HVT U295 ( .A1(n244), .A2(n243), .A3(n242), .A4(n241), .Y(n248) );
  INVX0_HVT U296 ( .A(n248), .Y(n246) );
  AO21X1_HVT U297 ( .A1(\carry_out[1] ), .A2(op_code[15]), .A3(n246), .Y(n253)
         );
  AO222X1_HVT U298 ( .A1(op_code[14]), .A2(n249), .A3(op_code[14]), .A4(n245), 
        .A5(n253), .A6(n270), .Y(n247) );
  NAND2X0_HVT U299 ( .A1(op_code[15]), .A2(n246), .Y(n254) );
  NAND3X0_HVT U300 ( .A1(n247), .A2(n268), .A3(n254), .Y(n258) );
  AO22X1_HVT U301 ( .A1(op_code[15]), .A2(res_lut), .A3(n269), .A4(V), .Y(n251) );
  AO22X1_HVT U302 ( .A1(n249), .A2(n248), .A3(comp_res[15]), .A4(n269), .Y(
        n250) );
  AO22X1_HVT U303 ( .A1(op_code[13]), .A2(n251), .A3(n268), .A4(n250), .Y(n256) );
  OA222X1_HVT U304 ( .A1(op_code[13]), .A2(n254), .A3(op_code[13]), .A4(n253), 
        .A5(n252), .A6(n268), .Y(n255) );
  AO22X1_HVT U305 ( .A1(op_code[14]), .A2(n256), .A3(n270), .A4(n255), .Y(n257) );
  OA222X1_HVT U306 ( .A1(n271), .A2(n259), .A3(n271), .A4(n258), .A5(
        op_code[12]), .A6(n257), .Y(res_p) );
  NBUFFX2_HVT U307 ( .A(net790), .Y(n272) );
  AND2X1_HVT U309 ( .A1(n261), .A2(cfg_en), .Y(N31) );
  AND2X1_HVT U310 ( .A1(n260), .A2(cfg_en), .Y(_5_net_) );
  AO22X1_HVT U311 ( .A1(op_code[10]), .A2(irq_bit), .A3(op_code[11]), .A4(
        irq_data), .Y(irq) );
  AND2X1_HVT U312 ( .A1(n261), .A2(inp_code[0]), .Y(read_data[16]) );
  AND2X1_HVT U313 ( .A1(n261), .A2(inp_code[1]), .Y(read_data[17]) );
  AND2X1_HVT U314 ( .A1(n261), .A2(inp_code[2]), .Y(read_data[18]) );
  AND2X1_HVT U315 ( .A1(n261), .A2(inp_code[3]), .Y(read_data[19]) );
  AND2X1_HVT U316 ( .A1(n160), .A2(inp_code[4]), .Y(read_data[20]) );
  AND2X1_HVT U317 ( .A1(n160), .A2(inp_code[5]), .Y(read_data[21]) );
  AND2X1_HVT U318 ( .A1(n160), .A2(inp_code[6]), .Y(read_data[22]) );
  AND2X1_HVT U319 ( .A1(n161), .A2(inp_code[7]), .Y(read_data[23]) );
  AND2X1_HVT U320 ( .A1(n161), .A2(inp_code[8]), .Y(read_data[24]) );
  AND2X1_HVT U321 ( .A1(n161), .A2(inp_code[9]), .Y(read_data[25]) );
  AND2X1_HVT U322 ( .A1(n161), .A2(inp_code[10]), .Y(read_data[26]) );
  AND2X1_HVT U323 ( .A1(n261), .A2(inp_code[11]), .Y(read_data[27]) );
  AND2X1_HVT U324 ( .A1(n161), .A2(inp_code[12]), .Y(read_data[28]) );
  AND2X1_HVT U325 ( .A1(n161), .A2(inp_code[13]), .Y(read_data[29]) );
  AND2X1_HVT U326 ( .A1(n161), .A2(inp_code[14]), .Y(read_data[30]) );
  AND2X1_HVT U327 ( .A1(n261), .A2(inp_code[15]), .Y(read_data[31]) );
  INVX0_HVT U328 ( .A(n262), .Y(n263) );
  AO22X1_HVT U329 ( .A1(n263), .A2(comp_res[0]), .A3(n262), .A4(op_b[0]), .Y(
        res[0]) );
  AO22X1_HVT U330 ( .A1(n263), .A2(comp_res[1]), .A3(n262), .A4(op_b[1]), .Y(
        res[1]) );
  AO22X1_HVT U331 ( .A1(n263), .A2(comp_res[2]), .A3(n262), .A4(op_b[2]), .Y(
        res[2]) );
  AO22X1_HVT U332 ( .A1(n263), .A2(comp_res[3]), .A3(n262), .A4(op_b[3]), .Y(
        res[3]) );
  AO22X1_HVT U333 ( .A1(n263), .A2(comp_res[4]), .A3(n262), .A4(op_b[4]), .Y(
        res[4]) );
  AO22X1_HVT U334 ( .A1(n263), .A2(comp_res[5]), .A3(n262), .A4(op_b[5]), .Y(
        res[5]) );
  AO22X1_HVT U335 ( .A1(n263), .A2(comp_res[6]), .A3(n262), .A4(op_b[6]), .Y(
        res[6]) );
  AO22X1_HVT U336 ( .A1(n263), .A2(comp_res[7]), .A3(n262), .A4(op_b[7]), .Y(
        res[7]) );
  AO22X1_HVT U337 ( .A1(n263), .A2(comp_res[8]), .A3(n262), .A4(op_b[8]), .Y(
        res[8]) );
  AO22X1_HVT U338 ( .A1(n263), .A2(comp_res[9]), .A3(n262), .A4(op_b[9]), .Y(
        res[9]) );
  AO22X1_HVT U339 ( .A1(n263), .A2(comp_res[10]), .A3(n262), .A4(op_b[10]), 
        .Y(res[10]) );
  AO22X1_HVT U340 ( .A1(n263), .A2(comp_res[11]), .A3(n262), .A4(op_b[11]), 
        .Y(res[11]) );
  AO22X1_HVT U341 ( .A1(n263), .A2(comp_res[12]), .A3(n262), .A4(op_b[12]), 
        .Y(res[12]) );
  AO22X1_HVT U342 ( .A1(n263), .A2(comp_res[13]), .A3(n262), .A4(op_b[13]), 
        .Y(res[13]) );
  AO22X1_HVT U343 ( .A1(n263), .A2(comp_res[14]), .A3(n262), .A4(op_b[14]), 
        .Y(res[14]) );
  AO22X1_HVT U344 ( .A1(n263), .A2(comp_res[15]), .A3(n262), .A4(op_b[15]), 
        .Y(res[15]) );
  AOI22X1_HVT U345 ( .A1(comp_res_p), .A2(cntr_en), .A3(op_code[9]), .A4(
        op_d_p), .Y(n265) );
  AND2X1_HVT U346 ( .A1(n265), .A2(n264), .Y(n267) );
  AO22X1_HVT U347 ( .A1(comp_res[0]), .A2(n267), .A3(n266), .A4(cfg_d[0]), .Y(
        op_b_val[0]) );
  AO22X1_HVT U348 ( .A1(comp_res[1]), .A2(n267), .A3(n266), .A4(cfg_d[1]), .Y(
        op_b_val[1]) );
  AO22X1_HVT U349 ( .A1(comp_res[2]), .A2(n267), .A3(n266), .A4(cfg_d[2]), .Y(
        op_b_val[2]) );
  AO22X1_HVT U350 ( .A1(comp_res[3]), .A2(n267), .A3(n266), .A4(cfg_d[3]), .Y(
        op_b_val[3]) );
  AO22X1_HVT U351 ( .A1(comp_res[4]), .A2(n267), .A3(n266), .A4(cfg_d[4]), .Y(
        op_b_val[4]) );
  AO22X1_HVT U352 ( .A1(comp_res[5]), .A2(n267), .A3(n266), .A4(cfg_d[5]), .Y(
        op_b_val[5]) );
  AO22X1_HVT U353 ( .A1(comp_res[6]), .A2(n267), .A3(n266), .A4(cfg_d[6]), .Y(
        op_b_val[6]) );
  AO22X1_HVT U354 ( .A1(comp_res[7]), .A2(n267), .A3(n266), .A4(cfg_d[7]), .Y(
        op_b_val[7]) );
  AO22X1_HVT U355 ( .A1(comp_res[8]), .A2(n267), .A3(n266), .A4(cfg_d[8]), .Y(
        op_b_val[8]) );
  AO22X1_HVT U356 ( .A1(comp_res[9]), .A2(n267), .A3(n266), .A4(cfg_d[9]), .Y(
        op_b_val[9]) );
  AO22X1_HVT U357 ( .A1(comp_res[10]), .A2(n267), .A3(n266), .A4(cfg_d[10]), 
        .Y(op_b_val[10]) );
  AO22X1_HVT U358 ( .A1(comp_res[11]), .A2(n267), .A3(n266), .A4(cfg_d[11]), 
        .Y(op_b_val[11]) );
  AO22X1_HVT U359 ( .A1(comp_res[12]), .A2(n267), .A3(n266), .A4(cfg_d[12]), 
        .Y(op_b_val[12]) );
  AO22X1_HVT U360 ( .A1(comp_res[13]), .A2(n267), .A3(n266), .A4(cfg_d[13]), 
        .Y(op_b_val[13]) );
  AO22X1_HVT U361 ( .A1(comp_res[14]), .A2(n267), .A3(n266), .A4(cfg_d[14]), 
        .Y(op_b_val[14]) );
  AO22X1_HVT U362 ( .A1(comp_res[15]), .A2(n267), .A3(n266), .A4(cfg_d[15]), 
        .Y(op_b_val[15]) );
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

