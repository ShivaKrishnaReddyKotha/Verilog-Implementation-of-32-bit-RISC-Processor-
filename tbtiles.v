
`define IHL_ENABLE
`define WAVE_DUMP


module tbtiles; 
	reg  rstn0;
	reg  clk0;
        reg start ;
        reg start1 ;
    wire [7:0] data_out;
    reg [31:0] data_in;
    reg [31:0] data_in1;
     reg [2:0] addr_in1;
      reg  rw_in1;
   




wire data_op;

initial
begin
  rstn0 = 1'b1;
  #100;
  rstn0 = 1'b0;
  #100;
  @(posedge clk0);
  rstn0 = 1'b1;
end

initial
begin
  start = 1'b0;
  start1 = 1'b0;
  data_in =32'd0;
  data_in1 =32'd0;
  addr_in1 =3'd0;
  rw_in1 =1'd0;
  
  #800;
  start = 1'b0;
  start1 = 1'b0;
  #800;
  @(posedge clk0);
  #1;
  start = 1'b1;
  ///data_in =32'he3331111;
 data_in = {7'b0100100,7'b0000011,18'h123};
  #10
  start = 1'b1;
  @(posedge clk0);
  #1;
  start = 1'b1;
  data_in = 32'd0;
 
  #10
  start = 1'b1;
  @(posedge clk0);
  #1;
  start = 1'b1;
 // data_in1 ={7'b0000011,7'b0000011,18'h123};
   #10
  start = 1'b1;
  @(posedge clk0);
  #1;
  start = 1'b1;

 
   #160
  start = 1'b0;
  start1 = 1'b1;
  addr_in1 =3'd1;
   #160
  #3000
  $finish;

end

/*
initial
begin
  data_in = 1'b0;
  #8000;
  data_in = 1'b0;
  #8000;
  @(posedge clk0);
  #1;
   data_in = 1'b1;
  #100
   data_in = 1'b0;
   #30000;
$finish;
end
*/


initial
begin
  clk0 = 1'b0;
  forever #10 clk0 = ~clk0;
end



 top itop (
	 .clk   (clk0),
	 .reset   (rstn0),
	 .data1   (),
	 .data2   (),
	 .data3   (),
	 .data4   (),
	 .data5   (),
	 .data6   (),
	 .data7   (),
	 .data8   (),
	 .data9   (),
	 .data10   (),
	 .data11   (),
	 .data12   (data_in),
	 .data13   (),
	 .data14   (),
	 .data15   (),
	 .data16   (),
	 .data17   (),
	 .data18   (),
	 .data19   (),
	 .data20   (),
	 .datao1   (),
	 .datao2   (),
	 .datao3   (),
	 .datao4   (),
	 .datao5   (),
	 .datao6   (),
	 .datao7   (),
	 .datao8   (),
	 .datao9   (),
	 .datao10   (),
	 .datao11   (),
	 .datao12   (),
	 .datao13   (),
	 .datao14   (),
	 .datao15   (),
	 .datao16   (),
	 .datao17   (),
	 .datao18   (),
  	 .datao19   (),
	 .datao20   ()
 );
   /*
  ////////////////////////////////////////////////////////////////////////
  `ifdef WAVE_DUMP
  initial
    begin
      $vcdplusautoflushon;
      $printtimescale(tb_hamtop);
      $vcdpluson(0,tb_hamtop);
      $vcdplusmemon();
    end
  `endif
*/
endmodule












