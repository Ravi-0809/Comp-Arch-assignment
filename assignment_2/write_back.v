`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:39:54 04/20/2019 
// Design Name: 
// Module Name:    write_back 
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
module write_back(
    input [7:0] ALUresult,
    input regWrite,
	 input clk,
	 input rst
    );
	
	always@(posedge clk)
	begin
		if(regWrite == 1)
			Reg[write_reg] <= write_data;
	end

endmodule
