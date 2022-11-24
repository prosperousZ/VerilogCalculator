//This is tb_alu file
`timescale 1ns / 1ps

module tb_alu;

//Test pass

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




A = 80;
B = 90;


#15;
$display("result is :%d", out);




end



endmodule
