`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:40:25 03/31/2019 
// Design Name: 
// Module Name:    mux_1 
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
module mux_1(
    input [31:0] mux_3_out,
    input [4:0] shamt,
    input shift,
    output [31:0] mux_1_out
    );
	 
	 reg [31:0] sign_extended_shamt;
	 
	 always@(*)
	 begin
		sign_extended_shamt[31:0] <= { {27{shamt[4]}} , shamt[4:0]};
	 end
	 
	 assign mux_1_out = (shift == 1)?sign_extended_shamt:mux_3_out;


endmodule
