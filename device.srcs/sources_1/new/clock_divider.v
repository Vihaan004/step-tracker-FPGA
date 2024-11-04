///////////////////////////////////////////////////////////////
// There are two clock divider implementations here.
// You can choose to instantiate any of these in your top module.
///////////////////////////////////////////////////////////////

/* Example 1 */
//module simpleDivider(clk100Mhz, slowClk, clr);
//  input clk100Mhz; //fast clock
//  input clr; //active low async reset
//  output slowClk; //slow clock

//  reg[27:0] counter;
//  assign slowClk= counter[27];  //(2^27 / 100E6) = 1.34seconds

//  always @ (posedge clk100Mhz or negedge clr)  
//  begin
//    if (~clr) 
//	  counter <= 0;
//	else
//      counter <= counter + 1; //increment the counter every 10ns (1/100 Mhz) cycle.
//  end

//endmodule


/* Example 2 */
module complexDivider(clk100Mhz, slowClk, clr);
  input clk100Mhz; //fast clock
  input clr; //active low async reset
  output reg slowClk; //slow clock

  reg[27:0] counter;

  always @ (posedge clk100Mhz or negedge clr)
  begin
    if(~clr) begin
	  counter <= 0;
      slowClk <= 0;
	end
    else if(counter == 50000) begin // 1 KHz - 50000
      counter <= 1;
      slowClk <= ~slowClk;
    end
    else begin
      counter <= counter + 1;
    end
  end

endmodule
