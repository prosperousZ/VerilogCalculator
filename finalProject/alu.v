

//Module to select operation and calculate result
// Module Name:		alu 
// Description: 	Module to select operation and caculate the result given 2 inputs.
// 					All arithmetic calculations will be done in this module.
//
// Dependencies: 
//
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(a,b,out,mode,neg);
	//implement every operation here like 

	// definitions of parameters, inputs, outputs, wires, regs...
	input [3:0]a,b,mode;
	output [7:0]out;
	reg [7:0] out;
	output reg neg;

	// variable names for modes to make things easier
	parameter ADD = 4'b0001;
	parameter SUB = 4'b0010;
	parameter MUL = 4'b0011;
	parameter DIV = 4'b0100;


	// do something whenever a or b changes
	always@(a or b)
	begin
		//add
		out = 8'b00000000;
		if(mode == 4'b0001)
			begin
			out = a+b;
			neg = 0;
			end

		//sub
		if(mode == 4'b0100)
			begin
			if(b > a)
				begin 
				out=b-a;
				neg = 1;
				end
			else
				begin
				out=a-b;
				neg = 0;
				end
			end

		//mul
		if(mode == 4'b0010)
			begin
			out = a*b;
			neg =0;
			end
		//etc.
	end
endmodule
