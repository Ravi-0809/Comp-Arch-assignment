`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:05:30 03/29/2019 
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
    input [5:0] opcode,
	 input [5:0] funct,
    output regWrite,
    output itype,
	 output shift,
	 output reg [2:0] ALUctrl 
    );
	 
	 assign itype = (opcode==6'b000000)?1'b0:1'b1;
	 assign regWrite = 1'b1;
	 assign shift = ((funct == 6'b000000) | (funct == 6'b000010))?1:0;
	 
	 // ALU control :
	 always@(*)
	 begin
	 
	  if(opcode == 6'b111111)
			ALUctrl <= 3'b000;
	  else
	  begin
			case(funct)
				6'b100000 : ALUctrl <= 3'b000;	// ADD
				6'b100010 : ALUctrl <= 3'b001;	//SUB 
				6'b100100 : ALUctrl <= 3'b010;	//AND
				6'b100101 : ALUctrl <= 3'b011;	//OR
				6'b000000 : ALUctrl <= 3'b100;	//sll
				6'b000010 : ALUctrl <= 3'b101;	//srl
			endcase
		end
	 end
endmodule
