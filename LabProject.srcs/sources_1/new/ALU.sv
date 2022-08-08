`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2020 19:19:12
// Design Name: 
// Module Name: ALU
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


//module ALU(
// input logic [7:0] firstData, 
// input logic [7:0] secondData,
// input logic  alu_opCode,
// output logic [7:0] result
// //,
// //output logic zero  
// );
    
// always_comb
// begin   
//      case(alu_opCode)  
//      3'b010: result = firstData + secondData; // add  
//      3'b001: result = firstData - secondData; // sub  
//      3'b010: result = firstData & secondData; // and  
//      3'b011: result = firstData | secondData; // or  
//      3'b100: begin if (firstData < secondData) result = 16'd1;  
//                     else result = 16'd0;  
//                     end  
//      default: result = firstData + secondData;   // add  
//      endcase  
// end  
// //assign zero = (result==16'd0) ? 1'b1: 1'b0;
//endmodule


module ALU(
 input logic [7:0] firstData, 
 input logic [7:0] secondData,
 input logic  alu_opCode,
 output logic [7:0] result
 //,
 //output logic zero  
 );
    
 always_comb
 begin   
      case(alu_opCode)  
      3'b0: 
        result = firstData + secondData; // add  
      3'b1: begin 
      if (firstData == secondData) 
        result = 16'b0000_0000_0000_0001;  
      else 
        result = 16'b0000_0000_0000_0000;  
      end  
      default: result = 16'b0000_0000_0000_0000;  
      endcase  
 end  
endmodule

