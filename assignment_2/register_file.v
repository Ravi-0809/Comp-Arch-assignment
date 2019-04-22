`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:35 04/20/2019 
// Design Name: 
// Module Name:    register_file 
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
module register_file(
    input [2:0] read_reg_1,
    input [2:0] read_reg_2,
    input [2:0] write_reg,
    input [7:0] write_data,
    input regWrite,
    input rst,
    input clk,
    output [7:0] data1,
    output [7:0] data2
    );
	 
	 reg [7:0] Reg [7:0];
	 always @(posedge clk)
	 begin
		if(rst == 1)
		begin
			Reg[0] <= 8'h01;
			Reg[1] <= 8'h01;
			Reg[2] <= 8'h02;
			Reg[3] <= 8'h03;
			Reg[4] <= 8'h04;
			Reg[5] <= 8'h05;
			Reg[6] <= 8'h06;
			Reg[7] <= 8'h07;
		end
		else
			begin
			end
		
		if(regWrite == 1)
			Reg[write_reg] <= write_data;
		
	 end
	 
	 assign data1 = Reg[read_reg_1];
	 assign data2 = Reg[read_reg_2];


endmodule
