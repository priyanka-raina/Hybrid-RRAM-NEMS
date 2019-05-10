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
//  Source file: /home/akashl/CGRAGenerator/hardware/generator_z/jtag/Template/src/digital/template_ifc.svp
//  Source template: template_ifc
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
// Parameter IO_LIST 	= Data structure of type ARRAY
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


// IO_LIST (_GENESIS2_INHERITANCE_PRIORITY_) = 
//	[ { bsr=>no, direction=>in, name=>trst_n, orientation=>right, pad=>digital, width=>1 },
//	  { bsr=>no, direction=>in, name=>tck, orientation=>right, pad=>digital, width=>1 },
//	  { bsr=>no, direction=>in, name=>tms, orientation=>right, pad=>digital, width=>1 },
//	  { bsr=>no, direction=>in, name=>tdi, orientation=>right, pad=>digital, width=>1 },
//	  { bsr=>no, direction=>out, name=>tdo, orientation=>right, pad=>digital, width=>1 },
//	  { bsr=>no, direction=>in, name=>config_data_from_gc, orientation=>right, pad=>digital, width=>32 },
//	  { bsr=>no, direction=>out, name=>config_data_to_gc, orientation=>right, pad=>digital, width=>32 },
//	  { bsr=>no, direction=>out, name=>config_addr_to_gc, orientation=>right, pad=>digital, width=>32 },
//	  { bsr=>no, direction=>out, name=>config_op_to_gc, orientation=>right, pad=>digital, width=>5 }
//	]
//

interface template_ifc_unq1(input Clk, input Reset);
   logic				trst_n;
   logic				tck;
   logic				tms;
   logic				tdi;
   logic				tdo;
   logic [31:0] 		config_data_from_gc;
   logic [31:0] 		config_data_to_gc;
   logic [31:0] 		config_addr_to_gc;
   logic [4:0] 		config_op_to_gc;
   

   modport des(
    input				trst_n,
    input				tck,
    input				tms,
    input				tdi,
    output				tdo,
    input				config_data_from_gc,
    output				config_data_to_gc,
    output				config_addr_to_gc,
    output				config_op_to_gc,
	       
   input Clk,
   input Reset
	       );
    
   
   modport pwrap
     (
    output				trst_n ,
    output				tck ,
    output				tms ,
    output				tdi ,
    input				tdo ,
    output				config_data_from_gc ,
    input				config_data_to_gc ,
    input				config_addr_to_gc ,
    input				config_op_to_gc 
      );

   
   // define testing modport
   modport test 
     (
      output				trst_n,
      output				tck,
      output				tms,
      output				tdi,
      input				tdo,
      output				config_data_from_gc,
      input				config_data_to_gc,
      input				config_addr_to_gc,
      input				config_op_to_gc,
    input Clk,
    input Reset
      );
   
      
      endinterface: template_ifc_unq1