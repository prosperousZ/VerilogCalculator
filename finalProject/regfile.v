//////////////////////////////////////////////////////////////////////////////////
// Module Name:		regfile
// Description: 	   May not need this file
//
// Dependencies: 	
//
// Comments: 		
//
//////////////////////////////////////////////////////////////////////////////////
module regfile #(parameter WIDTH = 8, REGBITS = 3)
                (input                clk, 
                 input                regwrite, 
                 input  [REGBITS-1:0] ra1, ra2, wa, 
                 input  [WIDTH-1:0]   wd, 
                 output [WIDTH-1:0]   rd1, rd2);
					  
  reg  [WIDTH-1:0] RAM [(1<<REGBITS)-1:0];


   // three ported register file
   // read two ports combinationally
   // write third port on rising edge of clock
   // register 0 hardwired to 0
   always @(posedge clk)
      if (regwrite) RAM[wa] <= wd;	

   assign rd1 = ra1 ? RAM[ra1] : 8'd0;
   assign rd2 = ra2 ? RAM[ra2] : 8'd0;
	
endmodule
