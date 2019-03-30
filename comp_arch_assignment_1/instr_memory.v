`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:06 03/28/2019 
// Design Name: 
// Module Name:    instr_memory 
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
module instr_memory(
    input [4:0] pc,
	 input rst,
    output [31:0] instruction_code
    );
	
	reg [31:0] Mem [31:0];
	
	always@(rst)
	begin
		if(rst == 1)
		begin
			Mem[0] <=  32'b00000000000000000000000000100000;
			Mem[4] <=  32'b00000000010000100000100000100010;
			Mem[8] <=  32'b00000000011000110010100000100100;
			Mem[12] <= 32'b00000000101001010000000010000000;
			Mem[16] <= 32'b11111100110000000000000000000010;
			Mem[20] <= 32'b00000000000000000000000000100000;
			Mem[24] <= 32'b00000000000000000000000000100000;
			Mem[28] <= 32'b00000000000000000000000000100000;
		end
	end 
	
	assign instruction_code = {Mem[pc]};

endmodule
