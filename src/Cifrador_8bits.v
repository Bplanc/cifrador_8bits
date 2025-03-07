module Cifrador_8bits (
     input wire A7, A6, A5, A4, A3, A2, A1, A0, // Entradas de 8 bits
     output wire Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0   // Salidas de 8 bits
);
     // Señales intermedias para las mallas
     wire M1_3, M1_2, M1_1, M1_0; // Malla 1: AND
     wire N1_2, N1_1, N1_0;		  // Malla 1: OR
     wire M2_3, M2_2, M2_1, M2_0; // Malla 2: AND
     wire N2_2, N2_1, N2_0;       // Malla 2: OR
	 
	 
     // Señales para la extensión a 8 bits
     wire B7, B6, B5, B4, B3, B2, B1, B0;  
	 
     // Señales para el sumador de 8 bits
     wire S7, S6, S5, S4, S3, S2, S1, S0;
     wire C7, C6, C5, C4, C3, C2, C1, C0;
	 
     // Malla 1: Compuertas AND
     assign M1_3 = A7 & A6;
     assign M1_2 = A5 & A4;
     assign M1_1 = A3 & A2;
     assign M1_0 = A1 & A0;	
	 
     // Malla 1: Compuertas OR
     assign N1_2 = M1_3 | M1_2;
     assign N1_1 = M1_2 | M1_1;
     assign N1_0 = M1_1 | M1_0;
	 
     // Malla 2: Compuertas AND
     assign M2_3 = A7 & A6;
     assign M2_2 = A5 & A4;
     assign M2_1 = A3 & A2;
     assign M2_0 = A1 & A0;
	 
     // Malla 2: Compuertas OR
     assign N2_2 = M2_3 | M2_2;
     assign N2_1 = M2_2 | M2_1;
     assign N2_0 = M2_1 | M2_0;
	 
     // Extensión a 8 bits
     assign B7 = 1'b0;
     assign B6 = 1'b0;
     assign B5 = N1_2;
     assign B4 = N1_1;
     assign B3 = N1_0;
     assign B2 = N2_2;
     assign B1 = N2_1;
     assign B0 = N2_0; 
	 
     // Sumador de 8 bits (bit a bit)
     // Bit 0 (sin acarreo de entrada)
     assign S0 = A0 ^ B0;
     assign C0 = A0 & B0;		 
	 
     // Bit 1 (con acarreo de entrada)
     assign S1 = A1 ^ B1 ^ C0;
     assign C1 = (A1 & B1) | (A1 & C0) | (B1 & C0);
	 
     // Bit 2 (con acarreo de entrada)
     assign S2 = A2 ^ B2 ^ C1;
     assign C2 = (A2 & B2) | (A2 & C1) | (B2 & C1);	
	 
     // Bit 3 (con acarreo de entrada)
     assign S3 = A3 ^ B3 ^ C2;
     assign C3 = (A3 & B3) | (A3 & C2) | (B3 & C2);	
	 
     // Bit 4 (con acarreo de entrada)
     assign S4 = A4 ^ B4 ^ C3;
     assign C4 = (A4 & B4) | (A4 & C3) | (B4 & C3);
	 
     // Bit 5 (con acarreo de entrada)
     assign S5 = A5 ^ B5 ^ C4;
     assign C5 = (A5 & B5) | (A5 & C4) | (B5 & C4);
	 
     // Bit 6 (con acarreo de entrada)
     assign S6 = A6 ^ B6 ^ C5;
     assign C6 = (A6 & B6) | (A6 & C5) | (B6 & C5);
	 
     // Bit 7 (con acarreo de entrada)
     assign S7 = A7 ^ B7 ^ C6;
     assign C7 = (A7 & B7) | (A7 & C6) | (B7 & C6);	 
	 
     // Salidas del sumador
     assign Y7 = S7;
     assign Y6 = S6;
     assign Y5 = S5;
     assign Y4 = S4;
     assign Y3 = S3;
     assign Y2 = S2;
     assign Y1 = S1;
     assign Y0 = S0;	 
	 
endmodule