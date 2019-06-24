//****************************************************************************//
// Verilog models generated by SiliconSmart M-2017.03-2 build date: Apr 12, 2017 14:36:58. (SMSC-2) //
// Siliconsmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart //
// Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 19180       //
// Directory: /home/akashl/Hybrid-RRAM-NEMS/model/sismart                     //
//                                                                            //
// File generated on Mon Jun 24 06:46:47 PDT 2019. (SMSC-3)                   //
//****************************************************************************//


`timescale 1ns/1ps

// udp_data_begin


`celldefine
module DUALRRAM_OFF_func( Vout );
output Vout;

	assign Vout = 1'b0;

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module DUALRRAM_ON_func( Vout );
output Vout;

	assign Vout = 1'b1;

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module INVX1_func( A, Y );
input A;
output Y;

	not MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end