`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:27 03/30/2019 
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
    input [31:0] data2,
    input [20:0] constant,
    input itype,
    output [31:0] mux_3_out
    );
	 
	 reg [31:0] sign_extended_constant;
	 //assign sign_extended_constant[31:0] = { {11{constant[20]}} , constant[20:0]};
	 
	 always@(*)
	 begin
		sign_extended_constant[31:0] <= { {11{constant[20]}} , constant[20:0]};
	 end
	 
	 assign mux_3_out = (itype == 1)?sign_extended_constant:data2;


endmodule
