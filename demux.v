`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:55:07 05/05/2021 
// Design Name: 
// Module Name:    demux 
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
module demux( input [31:0]in ,input sel,output reg [31:0]A,B
    );


always@(*)
begin
     if(sel)
	  
	  A=in;
	  else
	  B=in;

end 


endmodule
