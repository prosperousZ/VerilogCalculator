

//This would be the main file that run the whole program, basic is a main funciton

//In order to run the program and display on screen, we will need a couple of input, and output
//Input is the data from alu etc. which is the number 
//So, vga blue, green, red, is the ouptu, vga clock, horizontal sync, vertical sync, are both output,
//becuase we want to display on screen

module finalProject(

 //clk for this module, rst for this module, data from chip interface, data clk also from chip interface
 //May need more intput, and output
  input clk,rst,data, data_clk,
  //color from 0 - 255, for blue, green, and red
  output [7:0] vga_r, vga_g, vga_b,
  
  output vga_clk, vga_blank, hsync, vsync
  );
  
  // 16 bits number, those are probably needed, may need more, wrtie back to io interface 
  wire [15:0] io_mem, io_write_data, io_mem_address;
  
  // load the operation from FPGA button, and pass the opeartion to ALU
  wire io_enable, load_operation, store_operation;
  
  //This is the basic idea how to run, we gonna pass to processor to deal with the data path and ALU etc, 
  processor proc(clk,rst,io_mem,io_write_data,io_mem_address, io_enable);
  
  
  //Because we need a lot of variables, to be able to display on screen, may be able to reduce, deal with later
  //just write for concept.
  
  
  //*****************concept structure of io**************************
  
  //io_interface io_int(clk, rst, io_enable,load_operation, store_operation, data_clk, data,
  //                  io_mem_address, io_write_data, io_mem,
  //					 vga_clk, vga_blank, hsync, vsync, vga_r, vga_g, vga_b);
							 
  //*****************can be uncommen****************************************
 
endmodule