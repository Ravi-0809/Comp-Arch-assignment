`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:48 04/20/2019 
// Design Name: 
// Module Name:    instruction_memory 
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
module instruction_memory(
    input rst,
    input [7:0] pc,
    output [7:0] instruction_code
    );
	 
	 reg [7:0] Mem [31:0];
	 
	always@(rst)
		begin
			if(rst == 1)
			begin
				Mem[0] <= 8'b00000011;
				Mem[4] <= 8'b01000000;
				Mem[8] <= 8'b01000000;
				Mem[12] <= 8'b11010100;
				Mem[16] <= 8'b00000110;
				Mem[20] <= 8'b01000000;
				Mem[24] <= 8'b00000000;
				Mem[28] <= 8'b00000000;
			end
		end 
		
		assign instruction_code = {Mem[pc]};


endmodule
