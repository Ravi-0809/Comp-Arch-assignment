`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:58:56 04/22/2019 
// Design Name: 
// Module Name:    mux_3 
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
module mux_3(
    input [7:0] pc_actual,
    input [7:0] pc_jump,
    input jump,
    output [7:0] pc
    );
	 
	 assign pc = (jump==1)?pc_jump:pc_actual;


endmodule
