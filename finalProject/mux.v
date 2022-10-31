

//////////////////////////////////////////////////////////////////////////////////
// Module Name:		mux 
// Description: 	   Module to simulate a MUX
//
// Dependencies: 	   A -
//					      B - 
//					      sel - the operator in which chooses whether A or B is passed through
//					      Y - output
//
// Comments: 		
//
//////////////////////////////////////////////////////////////////////////////////
module mux(A,B,sel,Y);
   //Our input and output would be 16 bits
   input [15:0] A, B;
   input sel;

   // these two lines could be combined into output reg [15:0] Y; (?)
   reg[15:0] Y;
   output [15:0] Y;

   always @(A or B or sel)
   begin
      if(sel == 1'b0)
         Y <= A;
      else
         Y <= B;	
   end

endmodule
