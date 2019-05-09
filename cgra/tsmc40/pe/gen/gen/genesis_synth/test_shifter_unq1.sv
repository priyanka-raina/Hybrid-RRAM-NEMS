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
//	|  $Change: 11904 $ --- $Date: 2013/08/03 $   |
//	-----------------------------------------------
//	
//
//  Source file: /home/akashl/CGRAGenerator/hardware/generator_z/pe_new/pe/rtl/test_shifter.svp
//  Source template: test_shifter
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
// Parameter is_msb 	= 0
// Parameter en_trick 	= 0
// Parameter en_double 	= 0
// Parameter en_opt 	= 1
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

// en_double (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
// is_msb (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
// en_opt (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// en_trick (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
module  test_shifter_unq1  #(
  parameter DataWidth = 16,
  parameter B_MSB = $clog2(DataWidth)-1+0
) (
  input                  is_signed,
  input                  dir_left,

  input signed [DataWidth-1:0] a,
  input [B_MSB:0]       b,

  output logic [DataWidth-1:0] res
);

logic [DataWidth-1:0] lshift_val;
logic [DataWidth-1:0] rshift_val;

   // opt
   logic signed [DataWidth-1:0] shift_inp;
   logic [DataWidth-1:0] shift_res;
   logic [DataWidth-1:0] a_reverse;


   assign shift_inp = dir_left ? a_reverse : a;
   assign shift_res =  (is_signed & !dir_left)  ? (shift_inp >>> b): (shift_inp >> b);

   assign rshift_val = shift_res; //(a >> b);

   genvar g_i;
   generate
     for(g_i = 0; g_i < DataWidth; g_i++) begin: GEN_L_SHIFT
       assign a_reverse[g_i]  = a[DataWidth-1-g_i];
       assign lshift_val[g_i] = shift_res[DataWidth-1-g_i];
     end
   endgenerate

   assign res = dir_left ? lshift_val: rshift_val;

endmodule


