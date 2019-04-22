`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:38:27 04/21/2019
// Design Name:   main
// Module Name:   G:/assignment_2/assignment_2/main_tb.v
// Project Name:  assignment_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_tb;

	// Inputs
	reg clk;
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		clk = 0;
		repeat(20)
			begin
			#5
			clk = ~clk;
			end
			$finish;
	end
	
	initial begin
		rst = 1;
		#10
		rst = 0;
		end
      
endmodule

