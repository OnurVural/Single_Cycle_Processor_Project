`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2020 19:30:45
// Design Name: 
// Module Name: instructionMemory
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

//The instruction memory should be able to hold 32 instructions and will be read-only memory.
//Therefore the program you write will be hardcoded in the instruction memory
 module instructionMemory(input logic [4:0] pcAd1,input logic [4:0] pcAd2, output logic [15:0] instruction, output logic [15:0] instructionNext);
    logic [15:0] IM[31:0];

    
//   assign IM[0] = 16'b000_1_0000_00000010; //Store - directly add 2 to dm adres 0
//   assign IM[1] = 16'b000_1_0001_00000001; //Store - directly add 1 to dm adres 1
   
//   assign IM[2] = 16'b001_0_0000_0000_0000;  //Load value from DM[0] to RF[0]
//   assign IM[3] = 16'b001_0_0000_0001_0001; //Load value from DM[1] to RF[1] 
   
//   //   //aaaaaaaaa
//   assign IM[4] = 16'b001_1_0010_00000000; //Load 0 immediately to RF[2]
//   assign IM[5] = 16'b001_1_0011_00000000; //Load 0 immediately to RF[3]
//   assign IM[6] = 16'b001_1_0100_00000001; //Load 1 immediately to RF[4]
   
//   assign IM[7] = 16'b101_01011_0010_0001; //Branch to IM[11] if RF[2] == RF[1] 
   
   
//   assign IM[8] = 16'b010_0_0011_0011_0000; //Add RF[3] += RF[0]
//   assign IM[9] = 16'b010_0_0010_0010_0100; //Add RF[2] += RF[4] 
   
//   assign IM[10] = 16'b101_00111_0000_0000; //Branch to IM[7] if RF[0] == RF[0]
   
//   assign IM[11] = 16'b000_0_0000_0011_0011; //Store RF[3] to DM[3]
  //assign IM[12] = 16'b000_1_0000_00000101;

      
      
      
//    assign IM[0] = 16'b000_1_0000_00000001;
//    assign IM[1] = 16'b000_1_0001_00000011;
//    assign IM[2] = 16'b000_1_0111_00000111;
   
//    assign IM[3] = 16'b001_0_0000_0000_0000;  //Load value from DM[0] to RF[0
//    assign IM[4] = 16'b001_0_0000_0001_0001; //Load value from DM[1] to RF[1]
//    assign IM[5] = 16'b001_0_0000_0111_0111; //LOad from DM7 RF7
    
    
//    assign IM[6] = 16'b001_1_0100_00000001; //immediate Load to RF 4
//    assign IM[7] = 16'b001_1_0101_00000001; //immediate Load to RF 5
    
    
//    assign IM[8] = 16'b010_0_0011_0000_0001; //Add RF[3] = RF[0] + RF1
    
//    assign IM[9] = 16'b010_0_0101_0101_0100; //Add RF[3] = RF[0] + RF1
    
//    assign IM[10] = 16'b010_0_1000_0111_0100; //Add RF[3] = RF[0] + RF1
   
//    assign IM[11] = 16'b000_0_0000_0011_0011; //Store RF[3] to DM[3]
//    assign IM[12] = 16'b000_0_0000_0101_0101; //Store RF[3] to DM[3]
//    assign IM[13] = 16'b000_0_0000_1000_1000;
   
      /*
      //-------------------------------ADD TEST-------------------------------------------------------------------
      assign IM[0] = 16'b001_1_0000_00000001;
      assign IM[1] = 16'b001_1_0001_00000011;
      
      //assign IM[2] = 16'b001_0_0000_0000_0000;  //Load value from DM[0] to RF[0
      //assign IM[3] = 16'b001_0_0000_0001_0001;
  
      assign IM[2] = 16'b010_0_0001_0000_0001; //RF1 += RF1 + RF0
      assign IM[3] = 16'b010_0_0101_0000_0001;
      
      assign IM[4] = 16'b000_0_0000_0001_0001; //DM1 = RF1
      assign IM[5] = 16'b000_0_0000_0101_0101;
      //-------------------------------ADD TEST-------------------------------------------------------------------
      
     
    //-------------------------------BEQ TEST-------------------------------------------------------------------
    assign IM[0] = 16'b001_1_0000_00000001;
    assign IM[1] = 16'b001_1_0001_00000010;
    assign IM[2] = 16'b001_1_0010_00000000;
    assign IM[3] = 16'b001_1_0011_00000011;
    
    assign IM[4] = 16'b101_00111_0010_0011;
    assign IM[5] = 16'b010_0_0010_0000_0001;
    assign IM[6] = 16'b101_00100_0000_0000;
    assign IM[7] = 16'b000_0_0000_0010_0010;
    //-------------------------------BEQ TEST-------------------------------------------------------------------
    */
    
    
    
    
      
    //-------------------------------KULLANACAÐIMIZ-------------------------------------------------------------------
    // So if rf[0] = 4, rf[1] = 5, rf[4] = 2 rf[5] = 3, then rf[15] should be rf[4]*rf[5] = 6.
    assign IM[0] = 16'b001_1_0000_00000100;
    assign IM[1] = 16'b001_1_0001_00000101;
    assign IM[2] = 16'b001_1_0100_00000010;
    assign IM[3] = 16'b001_1_0101_00000011;
    //1- You need to first put rf[0] and rf[1] to data memory and check the values on seven segment, where for this example you will see 4 and 5.
    assign IM[4] = 16'b000_0_0000_0000_0000;
    assign IM[5] = 16'b000_0_0000_0001_0001;
    //2- Then you can store the values of register[4] and register[5] to data memory through switch instructions.
    //--------------------SWITCH GÖSTERME -------------------------------------------------------
    // 16'b000_0_xxxx_0100_0100; //store value of register[4]
    // 16'b000_0_xxxx_0101_0101; //store value of register[5]
    //--------------------SWITCH GÖSTERME -------------------------------------------------------
    //3- You will have rf[4] and rf[5] values in data memory, and you can continue with the multiplication instructions in instruction memory.
    assign IM[6] = 16'b001_1_0111_00000000; //Load 0 immediately to RF[7]
    assign IM[7] = 16'b001_1_1000_00000000; //Load 0 immediately to RF[8]
    assign IM[8] = 16'b001_1_1001_00000001; //Load 1 immediately to RF[9]
   
    assign IM[9] = 16'b101_01101_0101_0111; //Branch to IM[13] if RF[5] == RF[7] 
   
    
    assign IM[10] = 16'b010_0_1000_1000_0100; //Add RF[8] += RF[4]
    assign IM[11] = 16'b010_0_0111_0111_1001; //Add RF[7] += RF[9] 
    
      
    assign IM[12] = 16'b101_01001_0100_0100; //Branch to IM[7] if RF[4] == RF[4]
   
    assign IM[13] = 16'b000_0_0000_1111_1000; //Store RF[8] to DM[15]
      
    //-------------------------------KULLANACAÐIMIZ-------------------------------------------------------------------
   
   assign instruction =  IM[pcAd1];
   assign instructionNext = IM[pcAd2];
     
endmodule
