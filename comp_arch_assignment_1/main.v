`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:56 03/28/2019 
// Design Name: 
// Module Name:    main 
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
module main(
    input clk,
    input rst
    );
	 
	 wire [31:0] instruction_code, mux_2_out, mux_3_out, data1, data2, alu_result, data1_final, data2_final, mux_1_out;
	 wire [4:0] read_reg_1, read_reg_2, write_reg;
	 wire itype, regWrite, zero, shift;
	 wire [2:0] ALUctrl;
	 wire [20:0] constant;
	 wire [5:0] opcode, funct;
	 wire [4:0] rs, rt, rd, shamt;
	 
	 instr_fetch instr_f(
	 .clk(clk),
    .rst(rst),
    .instruction_code(instruction_code)
    );
	 
		assign opcode = instruction_code[31:26];
		assign rd = instruction_code[25:21];
		assign rs = instruction_code[20:16];
		assign rt = instruction_code[15:11];
		assign shamt = instruction_code[10:6];
		assign funct = instruction_code[5:0];
		assign constant = instruction_code[20:0];
		
	 control_module ctrl_mod(
    opcode,
	 funct,
    regWrite,
    itype,
	 shift,
	 ALUctrl 
    );

	 register_file reg_file(
    .read_reg_1(rs),
    .read_reg_2(rt),
    .write_reg(rd),
    .write_data(alu_result),
    .regWrite(regWrite),
	 .rst(rst),
	 .clk(clk),
    .data1(data1),
    .data2(data2)
    );
	 
	 mux_2 m2(
    .data1(data1),
    .itype(itype),
    .mux_2_out(data1_final)
    );
	 
	 mux_3 m3(
    .data2(data2),
    .constant(constant),
    .itype(itype),
    .mux_3_out(data2_final)
    );
	 
	 mux_1 m1(
    .mux_3_out(data2_final),
    .shamt(shamt),
    .shift(shift),
    .mux_1_out(mux_1_out)
    );
	 
	 ALU_main alu(
    data1_final,
    mux_1_out,
    ALUctrl,
    alu_result,
    zero
    );
	 
	

endmodule
