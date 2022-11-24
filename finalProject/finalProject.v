
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
//                vga_blank - blank for display, for display nothing on the screen.
//                hsync - the horizontal sync for vga
//                vsync - the vertical sync for vga
//
// Comments: 		  May need more input/outputs; can be determined as project continues.
//
//////////////////////////////////////////////////////////////////////////////////
module finalProject(
	input clk,rst,ps2_clk,ps2_data,
	output [7:0] vga_r, vga_g, vga_b,
	output vga_clk, vga_blank_n, hsync,vsync
	); 
	wire [7:0] iomem_q,io_write_data,iomem_addr;
	wire IO_w_en, load_op, stor_op;
	processor proc(clk, rst, iomem_q, io_write_data, iomem_addr, IO_w_en);
	
	//io_interface ioint(clk, rst, IO_w_en,load_op,stor_op,ps2_clk,ps2_data,
		//iomem_addr,io_write_data,0,0,
		//iomem_q,
		//vga_clk,vga_blank_n, hsync, vsync,op_complete,vga_r,vga_g,vga_b);
  
  //Because we need a lot of variables, to be able to display on screen, may be able to reduce, deal with later
  //just write for concept.
  
  
  //*****************concept structure of io**************************
  
  //io_interface io_int(clk, rst, io_enable,load_operation, store_operation, data_clk, data,
  //                  io_mem_address, io_write_data, io_mem,
  //					 vga_clk, vga_blank, hsync, vsync, vga_r, vga_g, vga_b);
							 
  //*****************can be uncommen****************************************
 
endmodule
