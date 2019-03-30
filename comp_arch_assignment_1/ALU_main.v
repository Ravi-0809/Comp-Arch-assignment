`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:58 03/29/2019 
// Design Name: 
// Module Name:    ALU_main 
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
module ALU_main(
    input [31:0] data1,
    input [31:0] data2,
    input [2:0] ALUctrl,
    output reg [31:0] alu_result,
    output reg zero
    );
	 
	 always@(*)
	 begin
		case(ALUctrl)
			3'b000: alu_result = data1 + data2;
			3'b001: alu_result = data1 - data2;
			3'b010: alu_result = data1 & data2;
			3'b011: alu_result = data1 | data2;
			3'b100: alu_result = data1 << data2;
			3'b101: alu_result = data1 >> data2;
		endcase
		if(alu_result == 0)
			zero = 1'b1;
		else
			zero = 1'b0;
	 end
	 
	 


endmodule
