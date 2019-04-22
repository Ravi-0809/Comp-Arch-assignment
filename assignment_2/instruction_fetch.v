`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:19 04/20/2019 
// Design Name: 
// Module Name:    instruction_fetch 
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
module instruction_fetch(
    input clk,
    input rst,
	 input jump,
	 input [5:0] partial_addr,
	 output reg [7:0] pc,
    output [7:0] instruction_code
    );
//	reg [7:0] pc;
//		 reg [7:0] Mem [4:0];
		 
		 instruction_memory im(.pc(pc),
							.rst(rst),
							.instruction_code(instruction_code)
							);
							
		reg [7:0] pc_four, jump_addr;

		always @(posedge clk)
		 begin
			if(rst == 1)
				begin
				pc <= 0;
				end
			else if(jump == 1)
				begin
				pc <= pc + 4;
				pc <= {{pc[7:6]}, partial_addr[5:0]};
				end
			else
				begin
					pc <= pc + 4;
				end
		 end

endmodule
