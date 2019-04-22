`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:22 04/21/2019 
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
    input [7:0] data_2,
    input [2:0] constant,
    input immediate_flag,
    output [7:0] data_2_final
    );
	
	reg [7:0] sign_extended_constant;
	
//	assign sign_extended_constant[7:0] = {{5{constant[2]}}, constant[2:0]};
	
	always@(*)
	 begin
		sign_extended_constant[7:0] <= {{5{constant[2]}}, constant[2:0]};
	 end
	
	assign data_2_final = (immediate_flag==1)?sign_extended_constant:data_2;


endmodule
