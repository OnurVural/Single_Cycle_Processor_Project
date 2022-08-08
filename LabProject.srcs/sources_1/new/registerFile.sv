`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2020 23:48:37
// Design Name: 
// Module Name: registerFile
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

module registerFile( 
input logic clk, r_writeEnable, reset,
input logic [3:0] r_writeAddress, r_readAddress1, r_readAddress2,
input logic [7:0] r_writeData,
output logic [7:0] r_readData1, r_readData2  
);

integer i;
//holding 16x8-bit data
logic [7:0] rf[15:0];  

//initial begin
//for( i=0; i<16;i=i+1)  
//    rf[i] <= 8'b0;   
//end

always_ff @ (posedge clk, posedge reset) 
begin 
    if (reset == 1'b1) begin
    for(i=0; i<16; i=i+1)
        rf[i] <= 8'b0;
    end
    else if (r_writeEnable== 1'b1)
        rf[r_writeAddress] <= r_writeData;
 end
 
assign r_readData1 = rf[r_readAddress1];
assign r_readData2 = rf[r_readAddress2];

endmodule


