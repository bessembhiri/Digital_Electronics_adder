// DSCH 3.5
// 30/08/2022 09:31:22
// F:\D-windows\A_A-Freelance-2022\Deep-Learn-Keras\A-numerique-op\Mini_projet_dsch35\adder\adder.sch

module adder( C,A,B,Carry,SUM);
 input C,A,B;
 output Carry,SUM;
 wire w4,w6,w7,w10;
 nand #(2) nand2_1(w4,C,B);
 nand #(2) nand2_2(w6,C,A);
 nand #(2) nand2_3(w7,B,A);
 nand #(2) nand3_4(Carry,w7,w6,w4);
 xor #(2) xor2_5(SUM,w10,C);
 xor #(2) xor2_6(w10,A,B);
endmodule

// Simulation parameters in Verilog Format
always
#200 C=~C;
#400 A=~A;
#800 B=~B;

// Simulation parameters
// C CLK 1 1
// A CLK 2 2
// B CLK 4 4
