//
//--------------------------------------------------------------------------------
//          THIS FILE WAS AUTOMATICALLY GENERATED BY THE GENESIS2 ENGINE        
//  FOR MORE INFORMATION: OFER SHACHAM (CHIP GENESIS INC / STANFORD VLSI GROUP)
//    !! THIS VERSION OF GENESIS2 IS NOT FOR ANY COMMERCIAL USE !!
//     FOR COMMERCIAL LICENSE CONTACT SHACHAM@ALUMNI.STANFORD.EDU
//--------------------------------------------------------------------------------
//
//  
//	-----------------------------------------------
//	|            Genesis Release Info             |
//	|  $Change: 11879 $ --- $Date: 2013/06/11 $   |
//	-----------------------------------------------
//	
//
//  Source file: /home/akashl/CGRAGenerator/hardware/generator_z/cb/cb.vp
//  Source template: cb
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
// Parameter width 	= 16
// Parameter has_constant 	= 1
// Parameter feedthrough_outputs 	= 1111111111
// Parameter num_tracks 	= 18
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Command Line input (priority=4):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From XML input (priority=3):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Config File input (priority=2):
//
// ---------------- End Pre-Generation Pramameters Status Report ----------------

// width (_GENESIS2_INHERITANCE_PRIORITY_) = 16
//
// num_tracks (_GENESIS2_INHERITANCE_PRIORITY_) = 18
//
// feedthrough_outputs (_GENESIS2_INHERITANCE_PRIORITY_) = 0x423a35c7
//
// has_constant (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// default_value (_GENESIS2_DECLARATION_PRIORITY_) = 0
//

module cb_unq1 (
clk, reset,
in_0,
in_1,
in_2,
in_3,
in_4,
in_5,
in_6,
in_7,
in_8,
in_9,
out,
config_addr,
config_data,
config_en,
read_data
);

  input  clk;
  input  reset;
  input  config_en;
  input [31:0] config_data;


  /* verilator lint_off UNUSED */
  input [31:0] config_addr;
  /* verilator lint_on UNUSED */
  wire ___genesis_wire_0_16_18_1111111111_1;

  output reg [15:0] out;
  input [15:0] in_0;
  input [15:0] in_1;
  input [15:0] in_2;
  input [15:0] in_3;
  input [15:0] in_4;
  input [15:0] in_5;
  input [15:0] in_6;
  input [15:0] in_7;
  input [15:0] in_8;
  input [15:0] in_9;
  output reg [31:0] read_data;



  /* verilator lint_off UNUSED */
  reg [31:0] config_cb;
  /* verilator lint_on UNUSED */
  always @(posedge clk or posedge reset) begin
    if (reset==1'b1) begin
        config_cb <= {16'd0,4'd10};
    end else begin
      if (config_en==1'b1) begin
         case (config_addr[31:24])
           8'd0: config_cb[31:0] <= config_data;
         endcase
      end
    end
  end

  always @(*) begin
    case (config_addr[31:24])
      8'd0: read_data = config_cb[31:0];
      default: read_data = 'h0;
    endcase
  end

  always @(*) begin
    case (config_cb[3:0])
        4'd0: out = in_0;
        4'd1: out = in_1;
        4'd2: out = in_2;
        4'd3: out = in_3;
        4'd4: out = in_4;
        4'd5: out = in_5;
        4'd6: out = in_6;
        4'd7: out = in_7;
        4'd8: out = in_8;
        4'd9: out = in_9;
        default: out = config_cb[19:4];
    endcase
  end
endmodule
