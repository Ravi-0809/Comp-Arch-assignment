`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:37 04/21/2019 
// Design Name: 
// Module Name:    jump_function 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jump_function(
    input [7:0] pc,
    input jump,
    input [5:0] partial_addr,
	 output [7:0] pc_new
    );
	 
	 reg [7:0] pc_four, jump_addr;
	 
	 always @(*)
	 begin
		pc_four <= pc + 4;
		jump_addr <= {{pc_four[7:6]}, partial_addr[5:0]};
	 end

	 assign pc_new = (jump == 1)?jump_addr:pc;


endmodule
