module Cifrador_8bits_TB;	   
//Para simular el circuito, puedes usar el siguiente testbench en verilog	 
    // Entradas
    reg A7, A6, A5, A4, A3, A2, A1, A0;
	
    // Salidas
    wire Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0;
	
    // Instancia del cifrador
    Cifrador_8bits uut (
    .A7(A7), .A6(A6), .A5(A5), .A4(A4),
    .A3(A3), .A2(A2), .A1(A1), .A0(A0),
    .Y7(Y7), .Y6(Y6), .Y5(Y5), .Y4(Y4),
    .Y3(Y3), .Y2(Y2), .Y1(Y1), .Y0(Y0)
 );					  
 
 // Proceso de estimulación
 initial begin 
	 
    // Prueba 1: Entrada 00000000
    A7 = 0; A6 = 0; A5 = 0; A4 = 0;
    A3 = 0; A2 = 0; A1 = 0; A0 = 0;
    #10;  
	
    // Prueba 2: Entrada 11111111
    A7 = 1; A6 = 1; A5 = 1; A4 = 1;
    A3 = 1; A2 = 1; A1 = 1; A0 = 1;
    #10;	  
	
    // Prueba 3: Entrada 10101010
    A7 = 1; A6 = 0; A5 = 1; A4 = 0;
    A3 = 1; A2 = 0; A1 = 1; A0 = 0;
    #10; 
	
    // Prueba 4: Entrada 01010101
    A7 = 0; A6 = 1; A5 = 0; A4 = 1;
    A3 = 0; A2 = 1; A1 = 0; A0 = 1;
    #10; 
	
    // Finalizar simulación
    $stop;
  end	 
 
endmodule
