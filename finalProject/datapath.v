//////////////////////////////////////////////////////////////////////////////////
// Module Name:		datapath
// Description: 	The datapath should be the module that handles the interactions between
//                  the ALU and register file. It could also be used to communicat between
//                  the chip and the FPGA.
//
// Dependencies: 	clk - clock
//                  rst - reset
//					r0-r7 - registers
//
// Comments: 		Many of the declarations of the other modules
//
//////////////////////////////////////////////////////////////////////////////////
module datapath(reset,clk,r0,r1,r2,r3,r4,r5,r6,r7);

    // each input is 8-bits

    input clk, reset;
	 

	 wire regwrite;
	 wire [2:0] wa;
	 
	 //alu operation
	 wire [1:0] mode;
	 
	 wire wr_pc, pc_mux;
	 
	 //reg file
	 wire [2:0] ra1,ra2;
	 wire [7:0] wd, rd1,rd2;
	 wire wren;
	 wire [7:0] Q;
	 //address
	 wire [7:0]addr_a;
	 
	 wire [7:0] pc_counter;
	 
	 //result
	 wire [7:0] result;
	 
	 
	 //To regfile, may not need those, have tested yet. Just not clear
	 //If we need to put those outputs to reg file
    output [7:0]  r0,r1,r2,r3,r4,r5,r6,r7;


    //****************we gonna call regfile here************
    // instantiate the register bank to use them
    regfile Reg(.clk(clk), .regwrite(regwrite), .ra1(ra1), .ra2(ra2), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2),.r0(r0), .r1(r1), .r2(r2), .r3(r3), .r4(r4), .r5(r5), .r6(r6), .r7(r7));
    //*****************************************************


    //****************we gonna call memory here****************
    //memory Mem(.data_a(rd1), .addr_a(addr_a), .we_a(we_a), .clk(clk), .q_a(q_a));
	 memory Mem(.address(addr_a),.clk(clk), .data(rd1),.wren(wren), .q(Q));

    //****************************************************


    //****************we gonna call ALU here****************
    alu Alu(.a(rd1), .b(rd2), .mode(mode), .out(out));
    //******************************************************


    //****************we gonna call mux here*****************
	 //PC_mux
    mux mux1(.A(rd2),.B(pc_counter),.sel(pc_mux), .Y(addr_a));
    //******************************************************

	 //Call program counter here
	 pc pc1(.clk(clk), .reset(reset),.ld_pc(rd2),.wr_pc(wr_pc),.pc(pc_counter));


endmodule
