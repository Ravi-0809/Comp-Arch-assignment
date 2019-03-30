`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:14:16 03/29/2019 
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
    input [4:0] read_reg_1,
    input [4:0] read_reg_2,
    input [4:0] write_reg,
    input [31:0] write_data,
    input regWrite,
	 input rst,
	 input clk,
    output [31:0] data1,
    output [31:0] data2
    );
	 
	 reg [31:0] Reg [31:0];
	 always @(posedge clk)
	 begin
		if(rst == 1)
		begin
			Reg[0] <= 32'h00000001;
			Reg[1] <= 32'h00000002;
			Reg[2] <= 32'h00000003;
			Reg[3] <= 32'h00000004;
			Reg[4] <= 32'h00000005;
			Reg[5] <= 32'h00000006;
			Reg[6] <= 32'h00000007;
			Reg[7] <= 32'h00000008;
			
			Reg[8] <= 32'h00000000;
			Reg[9] <= 32'h00000000;
			Reg[10] <= 32'h00000000;
			Reg[11] <= 32'h00000000;
			Reg[12] <= 32'h00000000;
			Reg[13] <= 32'h00000000;
			Reg[14] <= 32'h00000000;
			Reg[15] <= 32'h00000000;
			
			Reg[16] <= 32'h00000000;
			Reg[17] <= 32'h00000000;
			Reg[18] <= 32'h00000000;
			Reg[19] <= 32'h00000000;
			Reg[20] <= 32'h00000000;
			Reg[21] <= 32'h00000000;
			Reg[22] <= 32'h00000000;
			Reg[23] <= 32'h00000000;
			
			Reg[24] <= 32'h00000000;
			Reg[25] <= 32'h00000000;
			Reg[26] <= 32'h00000000;
			Reg[27] <= 32'h00000000;
			Reg[28] <= 32'h00000000;
			Reg[29] <= 32'h00000000;
			Reg[30] <= 32'h00000000;
			Reg[31] <= 32'h00000000;
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
