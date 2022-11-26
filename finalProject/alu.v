//////////////////////////////////////////////////////////////////////////////////
// Module Name:		alu 
// Description: 	Module to select operation and caculate the result given 2 inputs.
// 					All arithmetic calculations will be done in this module.
//
// Dependencies: 	a - the first operand
//					b - the second operand
//					out - the result from the calculation
//					mode - what operation to carry out
//					neg - whether the number is negative or not
//
// Comments: 		This ALU will operate using the format "a OPERATION b = RESULT"
//
//////////////////////////////////////////////////////////////////////////////////
module alu(a, b, out, mode, neg);
//module alu(a, b, mode, out);
	// definitions of parameters, inputs, outputs, wires, regs...
	//Let me take neg first to test
	
	input [7:0] a, b;
	
	// FPGA has only 10 switches: 8 will be numbers, 2 will be operations
	// which means some numbers and operations will be a combination of 2 switches.
	input [1:0] mode;

	output reg [7:0] out;
	output reg neg;

	// variable names for modes to make things easier
	parameter ADD = 2'b00;
	parameter SUB = 2'b01;
	parameter MUL = 2'b10;
	parameter DIV = 2'b11;

	wire [7:0] tempA;
	wire [7:0] temp;

	
/*	// any wires needed
	wire negA;
	wire negB;
	wire tempA;
	wire tempB;
*/
	// do something whenever a or b changes -> may need more on the list
	always@(a or b or mode)
	begin
		out = 8'b00000000;

/*		// check to see if either operand is negative
		tempA = a >> 8;		// right shift 8 (or is it 7?) spaces to get leading 1
		tempB = b >> 8;
		if(tempA == 1)
			negA = 1;
		else
			negA = 0;
		if (tempB == 1)
			negB = 1;
		else
			negB = 0;
*/
		case(mode)
			ADD:	// 00
			begin
				
				out = a + b;
				neg = 0;
			end

			SUB:	// 01
			begin
				if(b > a)

				begin
					// a = 1st operand, b = 2nd operand
					// so if b is greater, have it become the first operand and set neg = 1
					out = b - a;
					neg = 1;
				end
				else
				begin
					// otherwise normal operation
					out = a - b;
					neg = 0;
				end

			end

			MUL:	// 10
			begin
				out = a * b;
				// neg = 0 only if both a and b are positive or negative
				//neg = 0;
			end

			DIV:	// 11
			begin
				// do nothing for now
			end
		endcase
	end
endmodule
