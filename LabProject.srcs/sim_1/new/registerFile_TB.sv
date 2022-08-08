`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2020 22:43:16
// Design Name: 
// Module Name: registerFile_TB
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


module registerFile_TB();

//logic [15:0] nextInstruction;
logic clk, r_writeEnable, reset;
logic [3:0] r_writeAddress, r_readAddress1, r_readAddress2;
logic [7:0] r_writeData;
logic [7:0] r_readData1, r_readData2;
//logic [2:0] opCode;

registerFile dut( clk, r_writeEnable, reset, r_writeAddress, r_readAddress1,
 r_readAddress2, r_writeData, r_readData1, r_readData2);

always begin
  clk <= 1; #5;
  clk <= 0; #5;
 end 
 
 initial begin
 reset <= 1; #10;
 reset <= 0; #10;
 //nextInstruction <= 16'b001_0_0000_0000_0000;#10;
 //nextInstruction <= 16'b111_0_0010_1000_0000;#10;

 
 r_writeEnable <= 0; r_writeAddress <= 4'b0000; r_readAddress1 <= 4'b0001; r_readAddress2 <= 4'b0010; r_writeData <= 8'b0001_0110;  #10;
 r_writeEnable <= 1; #10;
 r_writeAddress <= 4'b0001; r_writeData <= 8'b0000_1100; #10;
 r_writeAddress <= 4'b0010; r_writeData <= 8'b0100_0000; #10;
 r_writeData <= 8'b0000_0001; #10;
 r_readAddress1 <= 4'b0000; #10;
 r_writeData <= 8'b1111_1111; #10;
 r_writeAddress <= 4'b0000; #10;
 end

endmodule