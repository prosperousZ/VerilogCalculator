

//////////////////////////////////////////////////////////////////////////////////
// Module Name:		tb_alu 
// Description: 	Testbench file for the alu
//
// Dependencies: 	
//
// Comments: 		Test PASS
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_alu;

    parameter WIDTH = 8;
    reg [WIDTH -1:0] A,B;
    reg [1:0]  mode;
    wire [WIDTH -1: 0] out;

    alu AA(.a(A), .b(B), .mode(mode), .out(out));

    initial begin
        //test add
        mode = 2'b00;
        
        A = 8;
        B = 9;
    
        #15;
        $display("result is :%d", out);

        // test 2
        A = 80;
        B = 90;

        #15;
        $display("result is :%d", out);
    end

endmodule
