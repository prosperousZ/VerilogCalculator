//////////////////////////////////////////////////////////////////////////////////
// Module Name:		finalProject
// Description: 	Main file that runs the entire program, like a main function in a C# program.
//
// Dependencies: 	clk - clock
//      					rst - reset
//					      data - data from the chip interface
//      					data_clk - clock data from the chip interface
//					      vga_r - red
//                vga_g - green
//                vga_b - blue
//                vga_clk - clock for the display
//                vga_blank - ?
//                hsync - the horizontal sync for vga
//                vsync - the vertical sync for vga
//
// Comments: 		  May need more input/outputs; can be determined as project continues.
//
//////////////////////////////////////////////////////////////////////////////////
module finalProject(clk,rst,data, data_clk, vga_r, vga_g, vga_b, vga_clk, vga_blank, hsync, vsync);
    input clk, rst, data, data_clk;

    output vga_clk, vga_blank, hsync, vsync;
    output [7:0] vga_r, vga_g, vga_b;

    // hold a 8-bit number--may need to change or add more
    // will eventually write to IO interface
    // TODO: change wire to reg (reg is for storage while wires are scalar values)
    wire[7:0] io_mem, io_write_data, io_mem_address;
  
    // load the operation from FPGA button, and pass the operation to ALU
    // TODO: change wire to reg
    wire io_enable, load_operation, store_operation;
  
    //This is the basic idea how to run, we gonna pass to processor to deal with the data path and ALU etc, 
    processor proc(clk, rst, io_mem, io_write_data, io_mem_address, io_enable);
  
  
  //*****************concept structure of io**************************
  // may not need as we are not really interfacing with another chip at this time
  //io_interface io_int(clk, rst, io_enable,load_operation, store_operation, data_clk, data,
  //                  io_mem_address, io_write_data, io_mem,
  //					 vga_clk, vga_blank, hsync, vsync, vga_r, vga_g, vga_b); 
endmodule