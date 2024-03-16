//module  tiletop (clk,reset,data1,data2,data3,data4,datao1,datao2,datao3,datao4);
module  top (clk,reset,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,
	dataen1,dataen2,dataen3,dataen4,dataen5,dataen6,dataen7,dataen8,dataen9,dataen10,dataen11,dataen12,dataen13,dataen14,dataen15,dataen16,dataen17,dataen18,dataen19,dataen20,
	datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8,datao9,datao10,datao11,datao12,datao13,datao14,datao15,datao16,datao17,datao18,datao19,datao20);



input clk,reset;
input [31:0] data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,
	    data11,data12,data13,data14,data15,data16,data17,data18,data19,data20;

output [31:0] datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8,datao9,datao10,datao11,datao12,datao13,datao14,datao15,datao16,datao17,datao18,datao19,datao20;

input dataen1,dataen2,dataen3,dataen4,dataen5,dataen6,dataen7,dataen8,dataen9,dataen10,dataen11,dataen12,dataen13,dataen14,dataen15,dataen16,dataen17,dataen18,dataen19,dataen20;


wire [31:0]  data11out1,data11out2,data11out3,data11out4,data11out5,
	     data12out1,data12out2,data12out3,data12out4,data12out5,
	     data13out1,data13out2,data13out3,data13out4,data13out5,
             data14out1,data14out2,data14out3,data14out4,data14out5, 
	     data15out1,data15out2,data15out3,data15out4,data15out5;


wire [31:0]  data21out1,data21out2,data21out3,data21out4,data21out5,
	     data22out1,data22out2,data22out3,data22out4,data22out5,
	     data23out1,data23out2,data23out3,data23out4,data23out5,
             data24out1,data24out2,data24out3,data24out4,data24out5, 
	     data25out1,data25out2,data25out3,data25out4,data25out5;

wire [31:0]  data31out1,data31out2,data31out3,data31out4,data31out5,
	     data32out1,data32out2,data32out3,data32out4,data32out5,
	     data33out1,data33out2,data33out3,data33out4,data33out5,
             data34out1,data34out2,data34out3,data34out4,data34out5, 
	     data35out1,data35out2,data35out3,data35out4,data35out5;
     
wire [31:0]  data41out1,data41out2,data41out3,data41out4,data41out5,
	     data42out1,data42out2,data42out3,data42out4,data42out5,
	     data43out1,data43out2,data43out3,data43out4,data43out5,
             data44out1,data44out2,data44out3,data44out4,data44out5, 
	     data45out1,data45out2,data45out3,data45out4,data45out5;


wire [31:0]  data51out1,data51out2,data51out3,data51out4,data51out5,
	     data52out1,data52out2,data52out3,data52out4,data52out5,
	     data53out1,data53out2,data53out3,data53out4,data53out5,
             data54out1,data54out2,data54out3,data54out4,data54out5, 
	     data55out1,data55out2,data55out3,data55out4,data55out5;

  wire [31:0]    data11out6,data22out8,data22out6,data33out6,data33out7,data33out8,data44out6,data44out8,data55out8,data15out7,data24out7,data42out7;

 	     

tile_centre #(
	.ADDR (7'b0000_001)
      )
i_tile11 (
	.clk (clk),
	.reset (reset),
	.data1 (data1),
	.data2 (data12out4),
	.data3 (data21out1),
	.data4 (data20),
	.data5 (0),
	.data6 (data22out8),
	.data7 (0),
	.data8 (0),
	.datao1 (datao1),
	.datao2 (data11out2),
	.datao3 (data11out3),
	.datao4 (datao20),
	.datao5 (),
	.datao6 (data11out6),
	.datao7 (),
	.datao8 ()
);

tile #(
	.ADDR (7'b0000_010)
      )
i_tile12 (
	.clk (clk),
	.reset (reset),
	.data1 (data2),
	.data2 (data13out4),
	.data3 (data22out1),
	.data4 (data11out2),
	.datao1 (datao2),
	.datao2 (data12out2),
	.datao3 (data12out3),
	.datao4 (data12out4)
);


tile #(
	.ADDR (7'b0000_011)
      )
i_tile13 (
	.clk (clk),
	.reset (reset),
	.data1 (data3),
	.data2 (data14out4),
	.data3 (data23out1),
	.data4 (data12out2),
	.datao1 (datao3),
	.datao2 (data13out2),
	.datao3 (data13out3),
	.datao4 (data13out4)
);

tile #(
	.ADDR (7'b0000_100)
      )
i_tile14 (
	.clk (clk),
	.reset (reset),
	.data1 (data4),
	.data2 (data15out4),
	.data3 (data24out1),
	.data4 (data13out2),
	.datao1 (datao4),
	.datao2 (data14out2),
	.datao3 (data14out3),
	.datao4 (data14out4)
);

tile_centre #(
	.ADDR (7'b0000_101)
      )
i_tile15 (
	.clk (clk),
	.reset (reset),
	.data1 (data5),
	.data2 (data6),
	.data3 (data25out1),
	.data4 (data14out2),
       	.data5 (0),
	.data6 (0),
	.data7 (data24out5),
	.data8 (0),
	.datao1 (datao5),
	.datao2 (datao6),
	.datao3 (data15out3),
	.datao4 (data15out4),
	.datao5 (),
	.datao6 (),
	.datao7 (data15out7),
	.datao8 ()
);

////second row 


tile #(
	.ADDR (7'b0001_001)
      )
i_tile21 (
	.clk (clk),
	.reset (reset),
	.data1 (data11out3),
	.data2 (data22out4),
	.data3 (data31out1),
	.data4 (data19),
	.datao1 (data21out1),
	.datao2 (data21out2),
	.datao3 (data21out3),
	.datao4 (datao19)
);



tile_centre #(
	.ADDR (7'b0001_010)
      )
i_tile22 (
	.clk (clk),
	.reset (reset),
	.data1 (data12out3),
	.data2 (data23out4),
	.data3 (data32out1),
	.data4 (data21out2),
	.data5 (0),
	.data6 (data33out8),
	.data7 (0),
	.data8 (data11out6),
	.datao1 (data22out1),
	.datao2 (data22out2),
	.datao3 (data22out3),
	.datao4 (data22out4),
	.datao5 (),
	.datao6 (data22out6),
	.datao7 (),
	.datao8 (data22out8)
);


tile #(
	.ADDR (7'b0001_011)
      )
i_tile23 (
	.clk (clk),
	.reset (reset),
	.data1 (data13out3),
	.data2 (data24out4),
	.data3 (data33out1),
	.data4 (data22out2),
	.datao1 (data23out1),
	.datao2 (data23out2),
	.datao3 (data23out3),
	.datao4 (data23out4)
);


tile_centre #(
	.ADDR (7'b0001_100)
      )
i_tile24 (
	.clk (clk),
	.reset (reset),
	.data1 (data14out3),
	.data2 (data25out4),
	.data3 (data34out1),
	.data4 (data23out2),
	.data5 (data15out7),
	.data6 (0),
	.data7 (data33out5),
	.data8 (0),
	.datao1 (data24out1),
	.datao2 (data24out2),
	.datao3 (data24out3),
	.datao4 (data24out4),
	.datao5 (data24out5),
	.datao6 (),
	.datao7 (data24out7),
	.datao8 ()

);

tile #(
	.ADDR (7'b0001_101)
      )
i_tile25 (
	.clk (clk),
	.reset (reset),
	.data1 (data15out3),
	.data2 (data7),
	.data3 (data35out1),
	.data4 (data24out2),
	.datao1 (data25out1),
	.datao2 (datao7),
	.datao3 (data25out3),
	.datao4 (data25out4)
);



////Third row 


tile #(
	.ADDR (7'b0010_001)
      )
i_tile31 (
	.clk (clk),
	.reset (reset),
	.data1 (data21out3),
	.data2 (data32out4),
	.data3 (data41out1),
	.data4 (data18),
	.datao1 (data31out1),
	.datao2 (data31out2),
	.datao3 (data31out3),
	.datao4 (datao18)
);

tile #(
	.ADDR (7'b0010_010)
      )
i_tile32 (
	.clk (clk),
	.reset (reset),
	.data1 (data22out3),
	.data2 (data33out4),
	.data3 (data42out1),
	.data4 (data31out1),
	.datao1 (data32out1),
	.datao2 (data32out2),
	.datao3 (data32out3),
	.datao4 (data32out4)
);

tile_centre #(
	.ADDR (7'b0010_011)
      )
i_tile33 (
	.clk (clk),
	.reset (reset),
	.data1 (data23out3),
	.data2 (data34out4),
	.data3 (data43out1),
	.data4 (data32out2),
		.data5 (data24out7),
	.data6 (data44out8),
	.data7 (data42out5),
	.data8 (data22out6),

	.datao1 (data33out1),
	.datao2 (data33out2),
	.datao3 (data33out3),
	.datao4 (data33out4),
		.datao5 (data33out5),
	.datao6 (data33out6),
	.datao7 (data33out7),
	.datao8 (data33out8)
);


tile #(
	.ADDR (7'b0010_100)
      )
i_tile34 (
	.clk (clk),
	.reset (reset),
	.data1 (data24out3),
	.data2 (data35out4),
	.data3 (data44out1),
	.data4 (data33out2),
	.datao1 (data34out1),
	.datao2 (data34out2),
	.datao3 (data34out3),
	.datao4 (data34out4)
);

tile #(
	.ADDR (7'b0010_101)
      )
i_tile35 (
	.clk (clk),
	.reset (reset),
	.data1 (data25out3),
	.data2 (data8),
	.data3 (data45out1),
	.data4 (data34out2),
	.datao1 (data35out1),
	.datao2 (datao8),
	.datao3 (data35out3),
	.datao4 (data35out4)
);

////Fourth row

tile #(
	.ADDR (7'b0011_001)
      )
i_tile41 (
	.clk (clk),
	.reset (reset),
	.data1 (data31out3),
	.data2 (data42out4),
	.data3 (data51out1),
	.data4 (data17),
	.datao1 (data41out1),
	.datao2 (data41out2),
	.datao3 (data41out3),
	.datao4 (datao17)
);

 tile_centre #(
	.ADDR (7'b0011_010)
      )
i_tile42 (
	.clk (clk),
	.reset (reset),
	.data1 (data32out3),
	.data2 (data43out4),
	.data3 (data52out1),
	.data4 (data41out2),
	.data5 (data33out7),
	.data6 (0),
	.data7 (data51out5),
	.data8 (0),

	.datao1 (data42out1),
	.datao2 (data42out2),
	.datao3 (data42out3),
	.datao4 (data42out4),
	.datao5 (data42out5),
	.datao6 (),
	.datao7 (data42out7),
	.datao8 ()

);

tile #(
	.ADDR (7'b0011_011)
      )
i_tile43 (
	.clk (clk),
	.reset (reset),
	.data1 (data33out3),
	.data2 (data44out4),
	.data3 (data53out1),
	.data4 (data42out2),
	.datao1 (data43out1),
	.datao2 (data43out2),
	.datao3 (data43out3),
	.datao4 (data43out4)
);

tile_centre #(
	.ADDR (7'b0011_100)
      )
i_tile44 (
	.clk (clk),
	.reset (reset),
	.data1 (data34out3),
	.data2 (data45out4),
	.data3 (data54out1),
	.data4 (data43out2),
	.data5 (0),
	.data6 (data55out8),
	.data7 (0),
	.data8 (data33out6),
	.datao1 (data44out1),
	.datao2 (data44out2),
	.datao3 (data44out3),
	.datao4 (data44out4),
	.datao5 (),
	.datao6 (data44out6),
	.datao7 (),
	.datao8 (data44out8)

);


tile #(
	.ADDR (7'b0011_101)
      )
i_tile45 (
	.clk (clk),
	.reset (reset),
	.data1 (data35out3),
	.data2 (data9),
	.data3 (data55out1),
	.data4 (data44out2),
	.datao1 (data45out1),
	.datao2 (datao9),
	.datao3 (data45out3),
	.datao4 (data45out4)
);

//fifth row
//
tile_centre #(
	.ADDR (7'b0100_001)
      )
i_tile51 (
	.clk (clk),
	.reset (reset),
	.data1 (data41out3),
	.data2 (data52out4),
	.data3 (data15),
	.data4 (data16),
       	.data5 (data42out7),
	.data6 (0),
	.data7 (0),
	.data8 (0),
	.datao1 (data51out1),
	.datao2 (data51out2),
	.datao3 (datao15),
	.datao4 (datao16),
	.datao5 (data51out5),
	.datao6 (),
	.datao7 (),
	.datao8 ()

);


tile #(
	.ADDR (7'b0100_010)
      )
i_tile52 (
	.clk (clk),
	.reset (reset),
	.data1 (data42out3),
	.data2 (data53out4),
	.data3 (data14),
	.data4 (data51out2),
	.datao1 (data52out1),
	.datao2 (data52out2),
	.datao3 (datao14),
	.datao4 (data52out4)
);

tile #(
	.ADDR (7'b0100_011)
      )
i_tile53 (
	.clk (clk),
	.reset (reset),
	.data1 (data43out3),
	.data2 (data53out4),
	.data3 (data13),
	.data4 (data52out2),
	.datao1 (data53out1),
	.datao2 (data53out2),
	.datao3 (datao13),
	.datao4 (data53out4)
);



tile #(
	.ADDR (7'b0100_100)
      )
i_tile54 (
	.clk (clk),
	.reset (reset),
	.data1 (data44out3),
	.data2 (data54out4),
	.data3 (data12),
	.data4 (data53out2),
	.datao1 (data54out1),
	.datao2 (data54out2),
	.datao3 (datao12),
	.datao4 (data54out4)
);


tile_centre #(
	.ADDR (7'b0100_101)
      )
i_tile55 (
	.clk (clk),
	.reset (reset),
	.data1 (data45out3),
	.data2 (data10),
	.data3 (data11),
	.data4 (data54out2),
	.data5 (0),
	.data6 (0),
	.data7 (0),
	.data8 (data44out6),
	.datao1 (data55out1),
	.datao2 (datao10),
	.datao3 (datao11),
	.datao4 (data55out4),
	.datao5 (),
	.datao6 (),
	.datao7 (),
	.datao8 (data55out8)

);


endmodule
























module  tile (clk,reset,data1,data2,data3,data4,datao1,datao2,datao3,datao4);

parameter [6:0] ADDR  = 7'b0000_000 ;

input clk,reset;
input [31:0] data1,data2,data3,data4;

output [31:0] datao1,datao2,datao3,datao4;

wire  [6:0] inputaddr1, inputaddr2, inputaddr3, inputaddr4;


reg [31:0] datao1,datao2,datao3,datao4;

assign  inputaddr1  = data1[24:18];
assign  inputaddr2  = data2[24:18];
assign  inputaddr3  = data3[24:18];
assign  inputaddr4  = data4[24:18];



always @ ( posedge clk or negedge reset)
begin
  if (!reset)
  begin
	               datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
	end

   else	if ( (ADDR  [6:3] == inputaddr1[6:3]) &(inputaddr1 != 0))
	begin
	     if (ADDR  [2:0] > inputaddr1[2:0])
               datao4  <= data1;
             else if  (ADDR  [2:0] < inputaddr1[2:0])
		     datao2  <= data1;
	     else if   (ADDR  [2:0]  == inputaddr1[2:0])
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data1;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data1;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data1;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data1;
	     end
	     else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
	       end

	 end
	 else if( (ADDR  [6:3] >= inputaddr1[6:3]) &(inputaddr1 != 0))
	      datao1  <= data1;
         else if ( (ADDR  [6:3] <= inputaddr1[6:3]) &(inputaddr1 != 0))
               datao3  <= data1;


      else if ((ADDR  [6:3] == inputaddr2[6:3]) &(inputaddr2 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr2)
               datao4  <= data2;
            else if  (ADDR  [2:0] < inputaddr2)
		     datao2  <= data2;
	     else if   (ADDR  [2:0]  == inputaddr2)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data2;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data2;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data2;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data2;
	   else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3 <= 0;
		       datao4  <= 0;
	       end
	    end

	 end
	 else if ((ADDR  [6:3] >= inputaddr2[6:3]) &(inputaddr2 != 0))
	      datao1  <= data2;
         else if ( (ADDR  [6:3] <= inputaddr2[6:3]) &(inputaddr2 != 0))
               datao3  <= data2;


      else if ((ADDR  [6:3] == inputaddr3[6:3]) &(inputaddr3 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr3)
               datao4  <= data3;
            else if  (ADDR  [2:0] < inputaddr3)
		     datao2  <= data3;
	     else if   (ADDR  [2:0]  == inputaddr3)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data3;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data3;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data3;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data3;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
	       end
	    end

	 end
	 else if ((ADDR  [6:3] >= inputaddr3[6:3]) &(inputaddr3 != 0))
	      datao1  <= data3;
         else if ( (ADDR  [6:3] <= inputaddr3[6:3]) &(inputaddr3 != 0))
               datao3  <= data3;
 //end


 // always @ (*)
//begin
	else if (( ADDR  [6:3] == inputaddr4[6:3]) &(inputaddr4 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr4)
               datao4  <= data4;
            else if  (ADDR  [2:0] < inputaddr4)
		     datao2  <= data4;
	     else if   (ADDR  [2:0]  == inputaddr4)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data4;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data4;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data4;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data4;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
	       end
	    end

	 end
	 else if ( (ADDR  [6:3] >= inputaddr4[6:3]) &(inputaddr4 != 0))
	      datao1  <= data4;
         else if ( (ADDR  [6:3] <= inputaddr4[6:3])&(inputaddr4 != 0))
               datao3  <= data4;
         else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
	       end


 end



        
  
endmodule
















module  tile_centre (clk,reset,data1,data2,data3,data4,data5,data6,data7,data8,datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8);

parameter [6:0] ADDR  = 7'b0000_000 ;

input clk,reset;
input [31:0] data1,data2,data3,data4,data5,data6,data7,data8;

output [31:0] datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8;

wire  [6:0] inputaddr1, inputaddr2, inputaddr3, inputaddr4,inputaddr5,inputaddr6,inputaddr7,inputaddr8;


reg [31:0] datao1,datao2,datao3,datao4,datao5,datao6,datao7,datao8;

assign  inputaddr1  = data1[24:18];
assign  inputaddr2  = data2[24:18];
assign  inputaddr3  = data3[24:18];
assign  inputaddr4  = data4[24:18];
assign  inputaddr5  = data5[24:18];
assign  inputaddr6  = data6[24:18];
assign  inputaddr7  = data7[24:18];
assign  inputaddr8  = data8[24:18];



always @ ( posedge clk or negedge reset)
begin
  if (!reset)
  begin
	               datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		       datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	end

   else	if ( (ADDR  [6:3] == inputaddr1[6:3]) &(inputaddr1 != 0))
	begin
	     if (ADDR  [2:0] > inputaddr1[2:0])
               datao4  <= data1;
             else if  (ADDR  [2:0] < inputaddr1[2:0])
		     datao2  <= data1;
	     else if   (ADDR  [2:0]  == inputaddr1[2:0])
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data1;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data1;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data1;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data1;
	     end
	     else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		       datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end

	 end
	 //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr1[6:3]) &(inputaddr1 != 0) & (ADDR  [2:0]  == inputaddr1[2:0]) )
	      datao1  <= data1;
         else if ( (ADDR  [6:3] <= inputaddr1[6:3]) &(inputaddr1 != 0) & (ADDR  [2:0]  == inputaddr1[2:0]))
               datao3  <= data1;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr1[6:3]) &(inputaddr1 != 0) & (ADDR  [2:0]  <= inputaddr1[2:0]) ) 
		datao5  <= data1;
	 else if ( (ADDR  [6:3] <= inputaddr1[6:3]) &(inputaddr1 != 0) & (ADDR  [2:0]  <= inputaddr1[2:0]) ) 
		datao6  <= data1;

 else if ( (ADDR  [6:3] <= inputaddr1[6:3]) &(inputaddr1 != 0) & (ADDR  [2:0]  >= inputaddr1[2:0]) ) 
		datao7  <= data1;

           else if ( (ADDR  [6:3] >= inputaddr1[6:3]) &(inputaddr1 != 0) & (ADDR  [2:0]  >= inputaddr1[2:0]) ) 
		datao8  <= data1;




      else if ((ADDR  [6:3] == inputaddr2[6:3]) &(inputaddr2 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr2)
               datao4  <= data2;
            else if  (ADDR  [2:0] < inputaddr2)
		     datao2  <= data2;
	     else if   (ADDR  [2:0]  == inputaddr2)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data2;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data2;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data2;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data2;
	   else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3 <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
	    end

	 end


        //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr2[6:3]) &(inputaddr2 != 0) & (ADDR  [2:0]  == inputaddr2[2:0]) )
	      datao1  <= data2;
         else if ( (ADDR  [6:3] <= inputaddr2[6:3]) &(inputaddr2 != 0) & (ADDR  [2:0]  == inputaddr2[2:0]))
               datao3  <= data2;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr2[6:3]) &(inputaddr2 != 0) & (ADDR  [2:0]  <= inputaddr2[2:0]) ) 
		datao5  <= data2;
	 else if ( (ADDR  [6:3] <= inputaddr2[6:3]) &(inputaddr2 != 0) & (ADDR  [2:0]  <= inputaddr2[2:0]) ) 
		datao6  <= data2;

 else if ( (ADDR  [6:3] <= inputaddr2[6:3]) &(inputaddr2 != 0) & (ADDR  [2:0]  >= inputaddr2[2:0]) ) 
		datao7  <= data2;

           else if ( (ADDR  [6:3] >= inputaddr2[6:3]) &(inputaddr2 != 0) & (ADDR  [2:0]  >= inputaddr2[2:0]) ) 
		datao8  <= data2;


      else if ((ADDR  [6:3] == inputaddr3[6:3]) &(inputaddr3 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr3)
               datao4  <= data3;
            else if  (ADDR  [2:0] < inputaddr3)
		     datao2  <= data3;
	     else if   (ADDR  [2:0]  == inputaddr3)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data3;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data3;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data3;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data3;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
	    end

	 end

 //end
 //
 //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr3[6:3]) &(inputaddr3 != 0) & (ADDR  [2:0]  == inputaddr3[2:0]) )
	      datao1  <= data3;
         else if ( (ADDR  [6:3] <= inputaddr3[6:3]) &(inputaddr3 != 0) & (ADDR  [2:0]  == inputaddr3[2:0]))
               datao3  <= data3;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr3[6:3]) &(inputaddr3 != 0) & (ADDR  [2:0]  <= inputaddr3[2:0]) ) 
		datao5  <= data3;
	 else if ( (ADDR  [6:3] <= inputaddr3[6:3]) &(inputaddr3 != 0) & (ADDR  [2:0]  <= inputaddr3[2:0]) ) 
		datao6  <= data3;

 else if ( (ADDR  [6:3] <= inputaddr3[6:3]) &(inputaddr3 != 0) & (ADDR  [2:0]  >= inputaddr3[2:0]) ) 
		datao7  <= data3;

           else if ( (ADDR  [6:3] >= inputaddr3[6:3]) &(inputaddr3 != 0) & (ADDR  [2:0]  >= inputaddr3[2:0]) ) 
		datao8  <= data3;


 // always @ (*)
//begin
	else if (( ADDR  [6:3] == inputaddr4[6:3]) &(inputaddr4 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr4)
               datao4  <= data4;
            else if  (ADDR  [2:0] < inputaddr4)
		     datao2  <= data4;
	     else if   (ADDR  [2:0]  == inputaddr4)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data4;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data4;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data4;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data4;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
	    end

	 end
	
           //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr4[6:3]) &(inputaddr4 != 0) & (ADDR  [2:0]  == inputaddr4[2:0]) )
	      datao1  <= data4;
         else if ( (ADDR  [6:3] <= inputaddr4[6:3]) &(inputaddr4 != 0) & (ADDR  [2:0]  == inputaddr4[2:0]))
               datao3  <= data4;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr4[6:3]) &(inputaddr4 != 0) & (ADDR  [2:0]  <= inputaddr4[2:0]) ) 
		datao5  <= data4;
	 else if ( (ADDR  [6:3] <= inputaddr4[6:3]) &(inputaddr4 != 0) & (ADDR  [2:0]  <= inputaddr4[2:0]) ) 
		datao6  <= data4;

 else if ( (ADDR  [6:3] <= inputaddr4[6:3]) &(inputaddr4 != 0) & (ADDR  [2:0]  >= inputaddr4[2:0]) ) 
		datao7  <= data4;

           else if ( (ADDR  [6:3] >= inputaddr4[6:3]) &(inputaddr4 != 0) & (ADDR  [2:0]  >= inputaddr4[2:0]) ) 
		datao8  <= data4;


        

 	else if (( ADDR  [6:3] == inputaddr5[6:3]) &(inputaddr5 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr5)
               datao4  <= data5;
            else if  (ADDR  [2:0] < inputaddr5)
		     datao2  <= data5;
	     else if   (ADDR  [2:0]  == inputaddr5)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data5;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data5;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data5;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data5;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
	    end

	 end
	
           //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr5[6:3]) &(inputaddr5 != 0) & (ADDR  [2:0]  == inputaddr5[2:0]) )
	      datao1  <= data5;
         else if ( (ADDR  [6:3] <= inputaddr5[6:3]) &(inputaddr5 != 0) & (ADDR  [2:0]  == inputaddr5[2:0]))
               datao3  <= data5;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr5[6:3]) &(inputaddr5 != 0) & (ADDR  [2:0]  <= inputaddr5[2:0]) ) 
		datao5  <= data5;
	 else if ( (ADDR  [6:3] <= inputaddr5[6:3]) &(inputaddr5 != 0) & (ADDR  [2:0]  <= inputaddr5[2:0]) ) 
		datao6  <= data5;

 else if ( (ADDR  [6:3] <= inputaddr5[6:3]) &(inputaddr5 != 0) & (ADDR  [2:0]  >= inputaddr5[2:0]) ) 
		datao7  <= data5;

           else if ( (ADDR  [6:3] >= inputaddr5[6:3]) &(inputaddr5 != 0) & (ADDR  [2:0]  >= inputaddr5[2:0]) ) 
		datao8  <= data5;


         
       
 	else if (( ADDR  [6:3] == inputaddr6[6:3]) &(inputaddr6 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr6)
               datao4  <= data6;
            else if  (ADDR  [2:0] < inputaddr6)
		     datao2  <= data6;
	     else if   (ADDR  [2:0]  == inputaddr6)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data6;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data6;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data6;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data6;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
	    end

	 end
	
           //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr6[6:3]) &(inputaddr6 != 0) & (ADDR  [2:0]  == inputaddr6[2:0]) )
	      datao1  <= data6;
         else if ( (ADDR  [6:3] <= inputaddr6[6:3]) &(inputaddr6 != 0) & (ADDR  [2:0]  == inputaddr6[2:0]))
               datao3  <= data6;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr6[6:3]) &(inputaddr6 != 0) & (ADDR  [2:0]  <= inputaddr6[2:0]) ) 
		datao5  <= data6;
	 else if ( (ADDR  [6:3] <= inputaddr6[6:3]) &(inputaddr6 != 0) & (ADDR  [2:0]  <= inputaddr6[2:0]) ) 
		datao6  <= data6;

 else if ( (ADDR  [6:3] <= inputaddr6[6:3]) &(inputaddr6 != 0) & (ADDR  [2:0]  >= inputaddr6[2:0]) ) 
		datao7  <= data6;

           else if ( (ADDR  [6:3] >= inputaddr6[6:3]) &(inputaddr6 != 0) & (ADDR  [2:0]  >= inputaddr6[2:0]) ) 
		datao8  <= data6;


        
       
      	else if (( ADDR  [6:3] == inputaddr7[6:3]) &(inputaddr7 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr7)
               datao4  <= data7;
            else if  (ADDR  [2:0] < inputaddr7)
		     datao2  <= data7;
	     else if   (ADDR  [2:0]  == inputaddr7)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data7;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data7;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data7;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data7;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
	    end

	 end
	
           //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr7[6:3]) &(inputaddr7 != 0) & (ADDR  [2:0]  == inputaddr7[2:0]) )
	      datao1  <= data7;
         else if ( (ADDR  [6:3] <= inputaddr7[6:3]) &(inputaddr7 != 0) & (ADDR  [2:0]  == inputaddr7[2:0]))
               datao3  <= data7;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr7[6:3]) &(inputaddr7 != 0) & (ADDR  [2:0]  <= inputaddr7[2:0]) ) 
		datao5  <= data7;
	 else if ( (ADDR  [6:3] <= inputaddr7[6:3]) &(inputaddr7 != 0) & (ADDR  [2:0]  <= inputaddr7[2:0]) ) 
		datao6  <= data7;

 else if ( (ADDR  [6:3] <= inputaddr7[6:3]) &(inputaddr7 != 0) & (ADDR  [2:0]  >= inputaddr7[2:0]) ) 
		datao7  <= data7;

           else if ( (ADDR  [6:3] >= inputaddr7[6:3]) &(inputaddr7 != 0) & (ADDR  [2:0]  >= inputaddr7[2:0]) ) 
		datao8  <= data7;


        
  	else if (( ADDR  [6:3] == inputaddr8[6:3]) &(inputaddr8 != 0))
	begin
	   if (ADDR  [2:0] > inputaddr8)
               datao4  <= data8;
            else if  (ADDR  [2:0] < inputaddr8)
		     datao2  <= data8;
	     else if   (ADDR  [2:0]  == inputaddr8)
             begin
                if  (ADDR  [6:3] == 4'b0000)
                   datao1  <= data8;
	        else if  (ADDR  [6:3] == 4'b0100)
                   datao3  <= data8;
	        else if( ADDR  [2:0] == 3'b001)
                   datao4  <= data8;
	       else if( ADDR  [2:0] == 3'b101)
                   datao2  <= data8;
	       else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
	    end

	 end
	
           //the one exactly above or same row 
	 else if( (ADDR  [6:3] >= inputaddr8[6:3]) &(inputaddr8 != 0) & (ADDR  [2:0]  == inputaddr8[2:0]) )
	      datao1  <= data8;
         else if ( (ADDR  [6:3] <= inputaddr8[6:3]) &(inputaddr8 != 0) & (ADDR  [2:0]  == inputaddr8[2:0]))
               datao3  <= data8;
    //Diagonal movement 
         else if ( (ADDR  [6:3] >= inputaddr8[6:3]) &(inputaddr8 != 0) & (ADDR  [2:0]  <= inputaddr8[2:0]) ) 
		datao5  <= data8;
	 else if ( (ADDR  [6:3] <= inputaddr8[6:3]) &(inputaddr8 != 0) & (ADDR  [2:0]  <= inputaddr8[2:0]) ) 
		datao6  <= data8;

 else if ( (ADDR  [6:3] <= inputaddr8[6:3]) &(inputaddr8 != 0) & (ADDR  [2:0]  >= inputaddr8[2:0]) ) 
		datao7  <= data8;

           else if ( (ADDR  [6:3] >= inputaddr8[6:3]) &(inputaddr8 != 0) & (ADDR  [2:0]  >= inputaddr8[2:0]) ) 
		datao8  <= data8;


         else
               begin
		       datao1  <= 0;
		       datao2  <= 0;
		       datao3  <= 0;
		       datao4  <= 0;
		        datao5  <= 0;
		       datao6  <= 0;
		       datao7  <= 0;
		       datao8  <= 0;
	       end
     
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       end



        
  
endmodule


