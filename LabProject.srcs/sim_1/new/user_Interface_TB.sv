`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2020 20:20:59
// Design Name: 
// Module Name: user_Interface_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module user_Interface_TB();


logic clk, resetO, displayPrevO, displayNextO, enterDataO,  executeNextInstructionO; 
logic [15:0] sw;
logic [15:0] nextInstruction;
logic [6:0]seg; 
logic dp; 
logic [3:0] an;


user_Interface dut(clk, resetO, displayPrevO, displayNextO, enterDataO,  executeNextInstructionO, sw, nextInstruction, seg, dp, an );

always begin
  clk <= 1; #5;
  clk <= 0; #5;
 end 
 
 initial begin
 displayPrevO = 0; displayNextO=0; enterDataO = 0;
 sw = 0000_0000_0000_0000;
 resetO = 1; #10;
 resetO = 0; #10;
 executeNextInstructionO = 1; #10;
 executeNextInstructionO = 0; #10;
 executeNextInstructionO = 1; #10;
 
 
 
 end
endmodule
