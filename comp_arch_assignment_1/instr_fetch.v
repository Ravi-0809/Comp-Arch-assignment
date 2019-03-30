`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:55:43 03/29/2019 
// Design Name: 
// Module Name:    instr_fetch 
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
module instr_fetch(
	 input clk,
    input rst,
    output [31:0] instruction_code
    );
	 
	 reg [4:0] pc;
	 reg [31:0] Mem [4:0];
	 
	 instr_memory im(.pc(pc),
						.rst(rst),
						.instruction_code(instruction_code)
						);

	always @(posedge clk)
	 begin
		if(rst == 1)
			begin
			pc <= 0;
			end
		else
			begin
			pc <= pc + 4;
			end
	 end
	 



endmodule
