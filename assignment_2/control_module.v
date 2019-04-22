`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:14 04/20/2019 
// Design Name: 
// Module Name:    control_module 
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
module control_module(
    input clk,
    input rst,
    input [1:0] opcode,
    output reg regWrite,
    output reg jump,
	 output reg immediate_flag
//    output [2:0] ALUctrl
    );

	always@(*)
	begin
	
		if(rst == 1)
		begin
			jump <= 0;
			immediate_flag <= 0;
			regWrite <= 0;
		end
		else
		begin
		end
		
		case(opcode)
			2'b00: 
			begin
				immediate_flag <= 1'b1;
				jump <= 1'b0;
				regWrite <= 1'b1;
			end
			2'b01: 
			begin
				immediate_flag <= 1'b0;
				jump <= 1'b0;
				regWrite <= 1'b1;
			end
			2'b11: 
			begin
				immediate_flag <= 1'b0;
				jump <= 1'b1;
				regWrite <= 1'b0;
			end
		endcase
	end

endmodule
