//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2025 06:40:29 PM
// Design Name: 
// Module Name: tb_and_gate
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

`timescale 1ns / 1ps

module tb_and_gate;
    // �����ź�
    reg a;
    reg b;
    wire y;

    // ʵ����������ģ��
    and_gate uut (
       .a(a), 
       .b(b), 
       .y(y)
    );

    initial begin
        // ��ʼ�������ź�
        a = 0;
        b = 0;

        // �ȴ�һ��ʱ��
        #10;
        a = 0;
        b = 1;

        #10;
        a = 1;
        b = 0;

        #10;
        a = 1;
        b = 1;

        #10;
        $finish;
    end
      
    initial begin
        $monitor("Time: %0t, a = %b, b = %b, y = %b", $time, a, b, y);
    end

endmodule
