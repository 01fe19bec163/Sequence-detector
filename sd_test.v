`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:30 04/02/2022
// Design Name:   sd
// Module Name:   D:/verilog/Assignments/sd_test.v
// Project Name:  Assignments
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sd_test;

	// Inputs
	reg sequence_in;
	reg clock;
	reg reset;

	// Outputs
	wire detector_out;

	// Instantiate the Unit Under Test (UUT)
	sd uut (
		.sequence_in(sequence_in), 
		.clock(clock), 
		.reset(reset), 
		.detector_out(detector_out)
	);
	
	
 initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end

	initial begin
	 sequence_in = 0;
  reset = 1;
  // Wait 100 ns for global reset to finish
  #30;
      reset = 0;
  #40;
  sequence_in = 1;
  #10;
  sequence_in = 0;
  #10;
  sequence_in = 1; 
  #10;
  sequence_in = 0; 
  #10;
  sequence_in = 1; 
  #10;
  sequence_in = 1;  
  
	end
      
endmodule
 

 

