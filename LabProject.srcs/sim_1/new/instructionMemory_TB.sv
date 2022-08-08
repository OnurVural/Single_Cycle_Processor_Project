`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2020 22:47:28
// Design Name: 
// Module Name: instructionMemory_TB
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


module instructionMemory_TB();
logic [4:0] pcAd1;
logic [4:0] pcAd2;
logic [15:0] instruction;
logic [15:0] instructionNext;
integer i;
instructionMemory dut(pcAd1, pcAd2, instruction, instructionNext);

initial begin
pcAd1 <= 5'b000000; #10;
for (i = 0; i < 32; i = i+1)begin
   pcAd1 <= pcAd1 + 1; #10;
end
pcAd2 <= 16'b00001; #10;
#10;

end
endmodule
