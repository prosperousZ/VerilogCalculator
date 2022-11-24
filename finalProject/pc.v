
//////////////////////////////////////////////////////////////////////////////////
// Module Name:		program counter file
// Description: 	address operation
// 					
//
//
//////////////////////////////////////////////////////////////////////////////////

module pc(input clk,
    input reset,
	 input [7:0] ld_pc,
	 input wr_pc,
    output reg [7:0] pc);
	 
	 
	initial begin
	
		pc <= 8'h00;
	end

	
	
	always @(posedge clk)
    begin
    	if (reset == 1)
    	begin
    		pc <= 8'h00;
    	end
    	else
    	begin
			if (wr_pc == 1) begin
				pc <= ld_pc;
			end
    	end 

		//$display("PC=%h",PCResult);
    end

endmodule

