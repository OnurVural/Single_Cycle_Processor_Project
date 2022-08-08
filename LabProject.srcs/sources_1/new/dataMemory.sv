`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2020 16:10:41
// Design Name: 
// Module Name: dataMemory
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


//module dataMemory(
//input logic clk, writeEnable, 
//input logic [3:0] writeAddress, readAddress1, readAddress2,
//input logic [7:0] writeData,
//output logic [7:0] readData1, readData2
//);

//logic [7:0] mem[15:0];

//integer i;
//initial
//begin
//for(i=0; i<16; i=i+1)
//mem[i] <= 8'b0;
//end

//always_ff @ (posedge clk) 
//begin 
//    if (writeEnable)
//        mem[writeAddress] <= writeData;
// end
 
//always_ff @ (posedge clk) begin
//    if ((readAddress1==writeAddress)&& writeEnable) begin
//        readData1 <= writeData; //since if we have read from mem[3], it would be the old data
//        readData2 <= mem[readAddress2];
//end 
//else if ((readAddress2==writeAddress)&& writeEnable) begin
//        readData2 <= writeData; //since if we have read from mem[3], it would be the old data
//        readData1 <= mem[readAddress1];
//end 
//else begin
//       readData1 <= mem[readAddress1] ;
//       readData2 <= mem[readAddress2] ;
//end
//end

//endmodule


module dataMemory( 
input logic clk, writeEnable, 
//readEnable, 
reset,
input logic [3:0] writeAddress, readAddress1, readAddress2,
input logic [7:0] writeData,
output logic [7:0] readData1, readData2
);

//holding 16x8-bit data
logic [7:0] mem[15:0];
integer i;

always_ff @ (posedge clk) 
begin 
    if (reset) begin
    for(i=0; i<16; i=i+1)
        mem[i] <= 8'b0;
    end
    if (writeEnable)
        mem[writeAddress] <= writeData;
 end
 
//assign readData1 = (readEnable == 1'b1) ? mem[readAddress1]: 16'b0;
//assign readData2 = (readEnable == 1'b1) ? mem[readAddress2] : 16'b0;

assign readData1 = mem[readAddress1];
assign readData2 =  mem[readAddress2];
endmodule

