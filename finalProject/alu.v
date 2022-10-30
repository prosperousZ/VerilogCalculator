

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
// Comments: 		This ALU will operate using the format "a OPERATION b = RESULT" in which 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(a, b, out, mode, neg);
	// definitions of parameters, inputs, outputs, wires, regs...
	input [3:0] a, b, mode;

	reg [7:0] out;

	output [7:0] out;
	output reg neg;

	// variable names for modes to make things easier
	parameter ADD = 4'b0001;
	parameter SUB = 4'b0010;
	parameter MUL = 4'b0011;
	parameter DIV = 4'b0100;

	// do something whenever a or b changes -> may need more on the list
	always@(a or b)
	begin
		out = 8'b00000000;

		case(mode)
			ADD:
			begin
				out = a + b;
				neg = 0;
			end

			SUB:
			begin
				if(b > a)
					begin
						out = b - a;
						neg = 1;
					end
				else
					begin
						out = a - b;
						neg = 0;
					end
			end

			MUL:
			begin
				out = a * b;
				// neg = 0 only if both a and b are positive or negative
				neg = 0;
			end

			DIV:
			begin
				// do nothing for now
			end
	end
endmodule
