`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:43 04/20/2019 
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
	 
	 wire [7:0] instruction_code, data1, data2, write_data, data_2_final, data_1_final, ALUresult, pc_new, pc_inp, pc_jump;
	 reg [7:0] pc;
	 wire [2:0] r_dst, r_src, constant, read_reg_1, read_reg_2, write_reg;
	 wire [1:0] opcode;
	 wire [5:0] partial_addr; 
	 wire regWrite, immediate_flag, zero, jump;

//		always @(posedge clk)
//		 begin
//			if(rst == 1)
//				begin
//				pc <= 0;
//				end
//			else
//				begin
//				pc <= pc + 4;
//				end
//		 end
		 
//	 mux_3 m3(
//    .pc_actual(pc),
//    .pc_jump(pc_jump),
//    .jump(jump),
//    .pc(pc_inp)
//    );
		 
//	 instruction_memory im(
//						.pc(pc_inp),
//						.rst(rst),
//						.instruction_code(instruction_code)
//						);
	 
	
	assign r_dst = instruction_code[5:3];
	assign r_src = instruction_code[2:0];
	assign constant = instruction_code[2:0];
	assign partial_addr = instruction_code[5:0];
	assign opcode = instruction_code[7:6];
	
	instruction_fetch ins_fetch(
		.clk(clk),
		.rst(rst),
		.jump(jump),
		.partial_addr(partial_addr),
		.instruction_code(instruction_code),
		.pc(pc)
	); 
	
	register_file reg_file(
		.read_reg_1(r_dst),
      .read_reg_2(r_src),
      .write_reg(r_dst),
      .write_data(ALUresult),
      .regWrite(regWrite),
      .rst(rst),
      .clk(clk),
      .data1(data1),
      .data2(data2)
	);
	
	mux_1 m1(
		.data_2(data2),
      .constant(constant),
      .immediate_flag(immediate_flag),
      .data_2_final(data_2_final)
	);
	
	mux_2 m2(
		.data1(data1),
      .immediate_flag(immediate_flag),
      .data_1_final(data_1_final)
	);
	
	execute alu(
		.data1(data_1_final),
      .data2(data_2_final),
      .ALUresult(ALUresult),
      .zero(zero)
	);
	
	control_module ctrl_mod(
		.clk(clk),
      .rst(rst),
      .opcode(opcode),
      .regWrite(regWrite),
      .jump(jump),
	   .immediate_flag(immediate_flag)
	);
	
//	jump_function jump_f(
//		.pc(pc),
//      .jump(jump),
//      .partial_addr(partial_addr),
//	   .pc_new(pc_jump)
//	);


endmodule
