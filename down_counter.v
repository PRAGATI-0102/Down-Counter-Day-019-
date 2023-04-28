`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 10:37:39 AM
// Design Name: 
// Module Name: down_counter
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


module down_counter(clk,reset,counter);

        input clk,reset;
        output reg [3:0] counter;
        
        always@(posedge clk or posedge reset)
        begin
            if(reset)
            counter <= 4'hf;
            else
            counter <= counter - 1;
        end
       
endmodule
