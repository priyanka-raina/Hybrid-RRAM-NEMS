//****************************************************************************//
// Verilog models generated by SiliconSmart M-2017.03-2 build date: Apr 12, 2017 14:36:58. (SMSC-2) //
// Siliconsmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart //
// Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 19180       //
// Directory: /home/akashl/Hybrid-RRAM-NEMS/model/sismart                     //
//                                                                            //
// File generated on Mon Jun 24 06:46:47 PDT 2019. (SMSC-3)                   //
//****************************************************************************//


`timescale 1ns/1ps



`celldefine
module DUALRRAM_OFF( Vout );
output Vout;

   `ifdef FUNCTIONAL  //  functional //

	DUALRRAM_OFF_func DUALRRAM_OFF_behav_inst(.Vout(Vout));
   `else

	DUALRRAM_OFF_func DUALRRAM_OFF_inst(.Vout(Vout));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine


`celldefine
module DUALRRAM_ON( Vout );
output Vout;

   `ifdef FUNCTIONAL  //  functional //

	DUALRRAM_ON_func DUALRRAM_ON_behav_inst(.Vout(Vout));
   `else

	DUALRRAM_ON_func DUALRRAM_ON_inst(.Vout(Vout));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine


`celldefine
module INVX1( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	INVX1_func INVX1_behav_inst(.A(A),.Y(Y));
   `else

	INVX1_func INVX1_inst(.A(A),.Y(Y));

	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine
