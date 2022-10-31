//////////////////////////////////////////////////////////////////////////////////
// Module Name:		datapath
// Description: 	The datapath should be the module that handles the interactions between
//                  the ALU and register file. It could also be used to communicat between
//                  the chip and the FPGA.
//
// Dependencies: 	clk - clock
//                  rst - reset
//					r0-r15 - registers
//
// Comments: 		Many of the declarations of the other modules
//
//////////////////////////////////////////////////////////////////////////////////
module datapath(reset,clk,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15);

    // each input is 16-bits

    input clk, reset;
    output [15:0]  r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;


    //****************we gonna call regfile here************
    // instantiate the register bank to use them
    //regfile reg(something inside);
    //*****************************************************


    //****************we gonna call memory here****************
    //memory mem(some variables);
    //****************************************************


    //****************we gonna call ALU here****************
    //alu Alu(some variables);
    //******************************************************


    //****************we gonna call mux here*****************
    //mux mux1(some variables);
    //******************************************************


    //****************May add more***************************
    // VGA may be the only other one needed here.
    //*******************************************************

endmodule


