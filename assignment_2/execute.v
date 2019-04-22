`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:11 04/20/2019 
// Design Name: 
// Module Name:    execute 
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
module execute(
    input [7:0] data1,
    input [7:0] data2,
//    input [2:0] ALUctrl,
    output [7:0] ALUresult,
    output zero
    );
	 
assign ALUresult = data1+data2;
assign zero = (ALUresult==0)?(1'b1):(1'b0);

endmodule
