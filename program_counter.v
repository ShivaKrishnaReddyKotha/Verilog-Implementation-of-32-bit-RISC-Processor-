`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:56 05/02/2021 
// Design Name: 
// Module Name:    program_counter 
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
module program_counter(input clk ,rst,jump,start,ldpc,output  reg[3:0] pc_increment );



always@(posedge clk)
begin
       if(rst)
		 begin
  
		 pc_increment = 4'b0000;
     
       end 		 
		  
      else
       begin
		   
		    if(start==1 || ldpc==1  )
			 begin
		 
		      if(jump)
				 
				 pc_increment<=pc_increment + 4'b0100;
           
           else
            	
             pc_increment<=pc_increment + 4'b0001;							 
		   end
			
			else
			
			  pc_increment <=pc_increment;
		 
		 end 






end 







endmodule
