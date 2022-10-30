//This is mux file

module mux(A,B,sel,Y);

//Our input and output would be 16 bits
output [15:0]Y;
input [15:0] A, B;
input sel;
reg[15:0] Y;

always @(A or B or sel)
if(sel == 1'b0)
   Y <= A;
   else
   Y <= B;	


endmodule
