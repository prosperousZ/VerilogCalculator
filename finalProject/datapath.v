//This is a data path file

//16 bits input
module datapath(reset,clk,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15);


input clk, reset;
output [15:0]  r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;


//****************we gonna call regfile here************
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

//*******************************************************

endmodule


