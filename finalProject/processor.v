//This is the processor file

//may do not need this file


//deal data in datapath file
module processor(clk, reset, Q, data, addr, io_enable);

input clk, reset;
input [15:0] Q;

//My add additional variables here


output[15:0] data, addr;
output io_enable;

//pass to datapah, may do something else in processor file



//************************************************************

datapath DP(reset, clk, Q, data, addr, io_enable);

//**********************************************************

endmodule
