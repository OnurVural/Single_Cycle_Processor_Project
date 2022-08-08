`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2020 15:01:44
// Design Name: 
// Module Name: controller
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
////////////////////////////////////////////////////////////////////////////////
module controller(
 input logic [2:0] opcode,  
 input logic reset, next_button, switchButton, clk,  
 output logic mem_writeEnable, reg_writeEnable, jumpEnable, addEnable, alu_opcode
);

always_comb 
begin
      if (next_button == 1'b1 | switchButton == 1'b1 ) begin
      case(opcode) 
        3'b000:
        begin
        mem_writeEnable <= 1'b1;
        reg_writeEnable <= 1'b0;
        jumpEnable <= 1'b0;
        addEnable <= 1'b0; 
        alu_opcode <= 1'b0;
        end
        3'b001: 
        begin
        mem_writeEnable <= 1'b0;
        reg_writeEnable <= 1'b1;
        jumpEnable <= 1'b0;
        addEnable <= 1'b0; 
        alu_opcode <= 1'b0;
        end
        3'b010:
        begin
        mem_writeEnable <= 1'b0;
        reg_writeEnable <= 1'b1;
        jumpEnable <= 1'b0;
        addEnable <= 1'b1; 
        alu_opcode <= 1'b0;
        end
        3'b101: 
        begin
        mem_writeEnable <= 1'b0;
        reg_writeEnable <= 1'b0;
        jumpEnable <= 1'b1;
        addEnable <= 1'b0; 
        alu_opcode <= 1'b1;
        end
        3'b111:
        begin
        mem_writeEnable <= 1'b0;
        reg_writeEnable <= 1'b0;
        jumpEnable <= 1'b0;
        addEnable <= 1'b0; 
        alu_opcode <= 1'b0;
        end
        default: begin
        mem_writeEnable <= 1'b0;
        reg_writeEnable <= 1'b0;
        jumpEnable <= 1'b0;
        addEnable <= 1'b0; 
        alu_opcode <= 1'b0;
        end
        endcase  
     end
     else if (reset)begin
     mem_writeEnable <= 1'b0;
     reg_writeEnable <= 1'b0;
     jumpEnable <= 1'b0;
     addEnable <= 1'b0; 
     alu_opcode <= 1'b0;
     end
     else begin
        mem_writeEnable <= 1'b0;
        reg_writeEnable <= 1'b0;
        jumpEnable <= 1'b0;
        addEnable <= 1'b0; 
        alu_opcode <= 1'b0;
     end
     end   
endmodule


