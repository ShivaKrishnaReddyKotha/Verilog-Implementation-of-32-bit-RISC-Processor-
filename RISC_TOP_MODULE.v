`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:43 05/03/2021 
// Design Name: 
// Module Name:    RISC_TOP_MODULE 
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
  module RISC_TOP_MODULE(
    input [31:0]A,B,
    input  [15:0]ADD,
    input clk,rst,
    input jump,
	 input ldacc,
	 input start,
	 input wre,
    output [31:0]data_out,
    output done	 

    );



wire [3:0]pc_increment;

wire [3:0]instruction_out;


wire fetch;

wire [31:0] alu_out ,acc_out,acc_in,ram_in;


program_counter      pc1(clk ,rst,jump,start,fetch,pc_increment );



instruction_regester   IR1( clk,rst,pc_increment,instruction_out,fetch );


ID_ALU               ID1 ( A,B,instruction_out,clk,rst, alu_out);



demux          de   (alu_out,ldacc,acc_in,ram_in);

RAM            ram1(clk,rst,wre,ram_in,ADD,data_out,done);


accumlator     acc( clk,rst,acc_in,acc_out);

endmodule
