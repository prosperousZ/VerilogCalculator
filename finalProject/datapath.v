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

module datapath(reset,clk,r0,r1,r2,r3,r4,r5,r6,r7);
    // instead of 16 registers, use 8
    // recall: FPGA only has 10 total switches; 8 will be used for numbers

    // each input is 8-bits

    input clk, reset;

    // read number from FPGA (determined by how switches are used) and write to register
    // click button twice, once for each number
    wire regwrite;

    // alu operaiton
    wire [1:0] mode;

    // reg files
    wire [2:0] ra1,ra2;
	wire [7:0] wd, rd1,rd2;
	wire wren;
	wire [7:0] Q;
	//address
	wire [7:0]addr_a;
	 
	//number
	wire [7:0] a,b;
	 
	//result
	wire [7:0] out;
	
    // may not need these to the reg file; left for security
    output [7:0]  r0,r1,r2,r3,r4,r5,r6,r7;

    // REGFILE call
    // instantiate the register bank to use them
    regfile Reg(.clk(clk), .regwrite(regwrite), .ra1(ra1), .ra2(ra2), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2));

    // MEMORY call
    //memory Mem(.data_a(rd1), .addr_a(addr_a), .we_a(we_a), .clk(clk), .q_a(q_a));
	memory Mem(.address(addr_a),.clk(clk), .data(rd1),.wren(wren), .q(Q));

    // alu CALL
    alu Alu(.a(a), .b(b), .mode(mode), .out(out));

    //****************we gonna call mux here*****************
    //mux mux1(some variables);
    //******************************************************

    //****************May add more***************************
    // VGA may be the only other one needed here.
    //*******************************************************

endmodule


